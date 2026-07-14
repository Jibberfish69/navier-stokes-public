#!/usr/bin/env ruby
# frozen_string_literal: true

require "digest"
require "pathname"
require "yaml"

class OntologyContractChecker
  FACT_HEADING = /^### (F[1-7]\.[0-9]+) (.+)$/
  LEGACY_ENTRY = /^- <a id="([^"]+)"><\/a>\*\*((F[1-7]\.[0-9]+) .+)\*\* — \[full statement and derivation\]\(([^)]+)\)\.$/

  attr_reader :errors

  def self.default_root
    Pathname(__dir__).join("../../..").expand_path
  end

  def initialize(root: self.class.default_root,
                 contract_path: "problems/navier-stokes/ontology-write-contract.yaml")
    @root = Pathname(root).expand_path
    @contract_path = absolute(contract_path)
    @errors = []
  end

  def run
    @errors = []
    @contract = YAML.load_file(@contract_path.to_s)
    @map_path = absolute(@contract.dig("surfaces", "canonical_map"))
    @snapshot_path = absolute(@contract.dig("surfaces", "frozen_detailed_snapshot"))
    @target_path = absolute(@contract.dig("surfaces", "target_operating_contract"))

    check_required_files
    return errors unless errors.empty?

    @map = @map_path.read
    @snapshot = @snapshot_path.read
    @target = @target_path.read

    check_map_limits
    check_snapshot_integrity
    check_legacy_catalog
    check_post_cutover_cards
    check_target_contract
    errors
  rescue Psych::SyntaxError => e
    errors << "invalid YAML: #{e.message.lines.first.strip}"
    errors
  rescue KeyError, TypeError => e
    errors << "invalid ontology contract: #{e.message}"
    errors
  end

  private

  def absolute(path)
    candidate = Pathname(path.to_s)
    candidate.absolute? ? candidate : @root.join(candidate)
  end

  def check_required_files
    {
      "write contract" => @contract_path,
      "canonical map" => @map_path,
      "frozen detailed snapshot" => @snapshot_path,
      "target operating contract" => @target_path
    }.each do |label, path|
      errors << "missing #{label}: #{path}" unless path.file?
    end
  end

  def check_map_limits
    limits = @contract.fetch("map_limits")
    line_count = @map.lines.length
    byte_count = @map.bytesize
    errors << "ontology map exceeds #{limits.fetch('max_lines')} lines (#{line_count})" if line_count > limits.fetch("max_lines")
    errors << "ontology map exceeds #{limits.fetch('max_bytes')} bytes (#{byte_count})" if byte_count > limits.fetch("max_bytes")

    if limits.fetch("display_math_allowed") == false && @map.match?(/^\s*(?:\\\[|\\begin\{)/)
      errors << "ontology map contains display mathematics; move the derivation to its source artifact"
    end

    if limits.fetch("append_only_source_ledger_allowed") == false &&
       @map.match?(/^## Checked repo derivations and audits\s*$/)
      errors << "ontology map contains an append-only source ledger"
    end

    cycle_headings = @map.lines.grep(/^\#{2,} .*Cycle [0-9]{3}/)
    errors << "ontology map contains numbered-cycle headings" unless cycle_headings.empty?
  end

  def check_snapshot_integrity
    catalog = @contract.fetch("legacy_catalog")
    actual_snapshot_sha = Digest::SHA256.hexdigest(@snapshot)
    expected_snapshot_sha = catalog.fetch("snapshot_sha256")
    errors << "frozen snapshot SHA changed: #{actual_snapshot_sha}" unless actual_snapshot_sha == expected_snapshot_sha

    lines = @snapshot.lines
    source_lines = lines.dup
    source_lines.slice!(
      catalog.fetch("banner_inserted_after_line"),
      catalog.fetch("banner_inserted_line_count")
    )
    actual_source_sha = Digest::SHA256.hexdigest(source_lines.join)
    expected_source_sha = catalog.fetch("source_sha256_before_banner")
    errors << "frozen snapshot no longer preserves the pre-consolidation source bytes" unless actual_source_sha == expected_source_sha
  end

  def check_legacy_catalog
    catalog = @contract.fetch("legacy_catalog")
    legacy = section_between(
      @map,
      catalog.fetch("start_marker"),
      catalog.fetch("end_marker"),
      "legacy catalog"
    )
    return unless legacy

    expected = snapshot_fact_records
    actual = legacy.lines.filter_map do |line|
      match = LEGACY_ENTRY.match(line.chomp)
      next unless match

      {
        anchor: match[1],
        id: match[3],
        title: match[2],
        link: match[4]
      }
    end

    expected_count = catalog.fetch("expected_fact_headings")
    errors << "frozen snapshot fact count changed: expected #{expected_count}, found #{expected.length}" unless expected.length == expected_count
    errors << "legacy catalog fact count changed: expected #{expected_count}, found #{actual.length}" unless actual.length == expected_count

    expected.zip(actual).each_with_index do |(source, entry), index|
      next if source == entry

      errors << "legacy catalog mismatch at fact #{index + 1}: expected #{source && source[:id]}, found #{entry && entry[:id]}"
      break
    end

    malformed = legacy.lines.grep(/^- /).reject { |line| LEGACY_ENTRY.match?(line.chomp) }
    errors << "legacy catalog contains malformed entries" unless malformed.empty?
  end

  def snapshot_fact_records
    detail_path = @contract.dig("surfaces", "frozen_detailed_snapshot")
    @snapshot.lines.filter_map do |line|
      match = FACT_HEADING.match(line.chomp)
      next unless match

      title = "#{match[1]} #{match[2]}"
      anchor = github_slug(title)
      {
        anchor: anchor,
        id: match[1],
        title: title,
        link: "#{detail_path.sub(%r{\Aproblems/navier-stokes/}, '')}##{anchor}"
      }
    end
  end

  def check_post_cutover_cards
    cards = @contract.fetch("post_cutover_cards")
    section_heading = cards.fetch("section_heading")
    start = @map.index(section_heading)
    unless start
      errors << "missing post-cutover card section"
      return
    end

    post_section = @map[(start + section_heading.length)..]
    invalid_headings = post_section.lines.grep(/^### /).reject { |line| FACT_HEADING.match?(line.chomp) }
    errors << "post-cutover section contains an invalid card heading" unless invalid_headings.empty?

    legacy_ids = snapshot_fact_records.map { |record| record[:id] }
    seen_ids = legacy_ids.dup
    card_blocks(post_section).each do |heading, id, body|
      errors << "duplicate ontology fact id #{id}" if seen_ids.include?(id)
      seen_ids << id

      line_count = 1 + body.lines.length
      max_lines = @contract.dig("map_limits", "max_post_cutover_card_lines")
      errors << "#{id} exceeds the #{max_lines}-line card limit (#{line_count})" if line_count > max_lines

      cards.fetch("required_fields").each do |field|
        marker = /^- \*\*#{Regexp.escape(field)}:\*\*\s+\S/
        errors << "#{id} is missing #{field}" unless body.match?(marker)
      end

      status = body[/^- \*\*Status:\*\*\s+(.+)$/, 1]
      if status && !cards.fetch("allowed_statuses").include?(status.strip)
        errors << "#{id} has non-promotable status #{status.strip.inspect}"
      end

      source = body[/^- \*\*Source:\*\*\s+(.+)$/, 1]
      derivation_root = @contract.dig("surfaces", "derivation_root")
      if source && !source.include?(derivation_root) && !source.include?("theorem-construction/")
        errors << "#{id} source is not a named theorem-construction artifact"
      end
    end
  end

  def card_blocks(section)
    matches = []
    positions = []
    section.to_enum(:scan, /^### (F[1-7]\.[0-9]+) (.+)$/).each do
      match = Regexp.last_match
      positions << [match.begin(0), match.end(0), match[1], match[0]]
    end
    positions.each_with_index do |(start_pos, end_pos, id, heading), index|
      body_end = positions[index + 1]&.first || section.length
      matches << [heading, id, section[end_pos...body_end]]
    end
    matches
  end

  def check_target_contract
    target_data = YAML.load_file(@target_path.to_s)
    gate = target_data.fetch("ontology_research_gate")
    pointers = {
      "canonical_ontology" => @contract.dig("surfaces", "canonical_map"),
      "ontology_write_contract" => relative(@contract_path),
      "frozen_detailed_snapshot" => @contract.dig("surfaces", "frozen_detailed_snapshot"),
      "validation_command" => @contract.dig("validation", "command")
    }
    pointers.each do |key, expected|
      errors << "target operating contract has wrong #{key}" unless gate[key] == expected
    end

    available = @map.scan(/<a id="([^"]+)"><\/a>/).flatten
    available.concat(@map.lines.filter_map do |line|
      next unless line.match?(/^\#{1,6} /)
      github_slug(line.sub(/^\#{1,6}\s+/, "").strip)
    end)
    referenced = @target.scan(%r{problems/navier-stokes/ontology\.md#([a-z0-9_-]+)}).flatten.uniq
    unresolved = referenced - available.uniq
    errors << "unresolved ontology anchors in target operating contract: #{unresolved.join(', ')}" unless unresolved.empty?
  end

  def relative(path)
    path.relative_path_from(@root).to_s
  end

  def section_between(content, start_marker, end_marker, label)
    starts = content.enum_for(:scan, Regexp.new(Regexp.escape(start_marker))).map { Regexp.last_match.begin(0) }
    ends = content.enum_for(:scan, Regexp.new(Regexp.escape(end_marker))).map { Regexp.last_match.begin(0) }
    unless starts.length == 1 && ends.length == 1 && starts.first < ends.first
      errors << "#{label} markers are missing, duplicated, or reversed"
      return nil
    end
    content[(starts.first + start_marker.length)...ends.first]
  end

  def github_slug(text)
    text.unicode_normalize(:nfkd)
        .downcase
        .gsub(/\p{Mn}/, "")
        .gsub(/[^\p{Alnum}\s_-]/, "")
        .strip
        .gsub(/\s+/, "-")
  end
end

if $PROGRAM_NAME == __FILE__
  checker = OntologyContractChecker.new
  errors = checker.run
  if errors.empty?
    puts "ONTOLOGY_CONTRACT_OK"
    exit 0
  end

  warn "ONTOLOGY_CONTRACT_FAILED"
  errors.each { |error| warn "- #{error}" }
  exit 1
end
