#!/usr/bin/env ruby
# frozen_string_literal: true

require "find"
require "pathname"
require "time"
require "yaml"

NS_ROOT = Pathname.new(__dir__).join("..").realpath.freeze
ROOT = NS_ROOT.parent.parent.freeze
OUTPUT_PATH = NS_ROOT.join("periodic-2d3c-surface-quarantine-20260714.yaml").freeze

TEXT_EXTENSIONS = %w[
  .md .yaml .yml .tex .rb .txt .json .jsonl
].freeze

EXCLUDED_PATH_PARTS = [
  "/.git/",
  "/runtime/leases/",
  "/runtime/events/",
  "/tools/build_periodic_2d3c_surface_quarantine.rb",
  "/periodic-2d3c-surface-quarantine-20260714.yaml"
].freeze

DIRECT_AUTHORITY_PATHS = %w[
  problems/navier-stokes/target-operating-contract.yaml
  problems/navier-stokes/live-theorem-edge.yaml
  problems/navier-stokes/source-frontier.yaml
  problems/navier-stokes/theorem-packet.yaml
  problems/navier-stokes/theorem-repair.yaml
  problems/navier-stokes/dependency-discharge.yaml
  problems/navier-stokes/submission-bundle/source-frontier.yaml
  problems/navier-stokes/submission-bundle/theorem-packet.yaml
].freeze

CATEGORY_PATTERNS = {
  "direct_2d3c_mention" => [
    /\b2D3C\b/i,
    /\b3C2D\b/i,
    /two[- ]dimensional three[- ]component/i,
    /three[- ]component two[- ]dimensional/i
  ],
  "periodic_comparison_markers" => [
    /periodic.*(?:witness|countertest|comparison|counterfamily|class)/i,
    /comparison[- ]only/i,
    /countertest/i,
    /counterfamily/i
  ],
  "false_live_scenario_build_language" => [
    /2D3C.*participant/i,
    /2D3C.*history/i,
    /2D3C.*same[- ]history/i,
    /2D3C.*same[- ]fluid/i,
    /2D3C.*restarter/i,
    /2D3C.*carrier/i,
    /2D3C.*terminal/i,
    /2D3C.*recurrence/i,
    /globally (?:smooth|regular).*2D3C/i,
    /exact.*2D3C.*class/i,
    /same participating 2D3C/i,
    /smooth 2D3C null activation/i
  ],
  "cycle001_periodic_datum_markers" => [
    /Cycle[- ]?001.*2D3C/i,
    /2D3C.*Cycle[- ]?001/i,
    /zero average vorticity/i,
    /mean[- ]square vorticity/i,
    /A\s*>\s*7\s*nu/i
  ],
  "candidate_turn_f1_dependency_markers" => [
    /F1\.14/i,
    /F1\.15/i,
    /F1\.16/i,
    /Section VI/i
  ],
  "authority_quarantine_overlay" => [
    /2D3C.*quarantine/i,
    /quarantine.*2D3C/i,
    /comparison[- ]only.*2D3C/i
  ]
}.freeze

CLASS_BY_CATEGORY = {
  "direct_2d3c_mention" => "2d3c-direct-surface",
  "periodic_comparison_markers" => "comparison-only-periodic-countertest",
  "false_live_scenario_build_language" => "false-live-scenario-build-surface",
  "cycle001_periodic_datum_markers" => "cycle001-periodic-datum-flag",
  "candidate_turn_f1_dependency_markers" => "f1-14-to-f1-16-candidate-turn-rebuild-flag",
  "authority_quarantine_overlay" => "authority-quarantine-overlay"
}.freeze

def relative_path(path)
  path.relative_path_from(ROOT).to_s
end

def excluded?(path)
  as_string = "/#{relative_path(path)}"
  EXCLUDED_PATH_PARTS.any? { |part| as_string.include?(part) }
end

def text_file?(path)
  TEXT_EXTENSIONS.include?(path.extname)
end

def surface_scope(relative)
  return "direct-authority" if DIRECT_AUTHORITY_PATHS.include?(relative)
  return "frozen-archive" if relative.include?("/ontology-archive/")
  return "theorem-construction" if relative.include?("/theorem-construction/")
  return "submission-bundle" if relative.include?("/submission-bundle/")

  "repo-surface"
end

def normalized_excerpt(line)
  line.strip.gsub(/\s+/, " ")[0, 240]
end

entries = []

Find.find(NS_ROOT.to_s) do |candidate|
  path = Pathname.new(candidate)
  next if path.directory?
  next unless text_file?(path)
  next if excluded?(path)

  relative = relative_path(path)
  lines = path.readlines(chomp: true)
  matched_categories = {}

  lines.each_with_index do |line, index|
    CATEGORY_PATTERNS.each do |category, patterns|
      patterns.each do |pattern|
        next unless line.match?(pattern)

        matched_categories[category] ||= []
        matched_categories[category] << {
          "line" => index + 1,
          "pattern" => pattern.source,
          "excerpt" => normalized_excerpt(line)
        }
      end
    end
  end

  next if matched_categories.empty?

  quarantine_classes = matched_categories.keys.map { |category| CLASS_BY_CATEGORY.fetch(category) }.uniq.sort
  authority_overlay = DIRECT_AUTHORITY_PATHS.include?(relative)
  false_scenario_flag = (quarantine_classes & [
    "false-live-scenario-build-surface",
    "cycle001-periodic-datum-flag",
    "f1-14-to-f1-16-candidate-turn-rebuild-flag"
  ]).any?

  entries << {
    "path" => relative,
    "surface_scope" => surface_scope(relative),
    "matched_categories" => matched_categories.transform_values { |hits| hits.first(12) },
    "quarantine_classes" => quarantine_classes,
    "authority_overlay" => authority_overlay,
    "flagged_downstream_of_false_live_scenario" => false_scenario_flag,
    "live_clay_authority" => "no-proof-authority",
    "allowed_use" => "periodic comparison/countertest only at exact proved hypotheses",
    "forbidden_build_use" => true,
    "promotion_allowed_only_by" => "fresh same-fluid bridge theorem from the F1 participation root, plus affected-consumer re-audit, with no reliance on the quarantined 2D3C live-scenario reading"
  }
end

entries.sort_by! { |entry| entry.fetch("path") }

summary_by_class = entries.each_with_object(Hash.new(0)) do |entry, counts|
  entry.fetch("quarantine_classes").each { |klass| counts[klass] += 1 }
end.sort.to_h

summary_by_scope = entries.each_with_object(Hash.new(0)) do |entry, counts|
  counts[entry.fetch("surface_scope")] += 1
end.sort.to_h

payload = {
  "version" => 1,
  "artifact_id" => "periodic-2d3c-surface-quarantine-20260714",
  "problem_id" => "navier-stokes",
  "generated_at" => Time.now.utc.iso8601,
  "generator" => "problems/navier-stokes/tools/build_periodic_2d3c_surface_quarantine.rb",
  "status" => "active-hard-quarantine-no-build-authority",
  "scan_scope" => "problems/navier-stokes/** text surfaces",
  "excluded_generated_self_surfaces" => EXCLUDED_PATH_PARTS,
  "entry_count" => entries.length,
  "summary_by_class" => summary_by_class,
  "summary_by_scope" => summary_by_scope,
  "quarantine_law" => {
    "ruling" => "The periodic 2D3C datum is lawful only as a periodic comparison witness/countertest. It is not admitted as the live Clay fluid and has no authority as a same-fluid scenario.",
    "allowed_use" => "exact periodic calculation, sign-independence comparison, countertest against overbroad universal statements at the same periodic scope",
    "forbidden_uses" => [
      "live Clay datum or live terminal history",
      "same-fluid participant for the decaying R3 proof object",
      "carrier, cell, packet, annulus, source, restarter, recurrence, persistence, or location claim",
      "bridge from periodic comparison to Gold, Silver, CM, F1, or VPI premise weight",
      "basis for F1.14-F1.16-style candidate-turn ontology promotion without full rederivation"
    ],
    "downstream_flag" => "Every indexed surface must be rebuilt from the F1 participation root before it can be used as theorem premise. Existing text remains provenance or comparison-only support.",
    "promotion_gate" => "Only a named same-fluid bridge theorem, proved without using the quarantined 2D3C live-scenario reading and followed by affected-consumer re-audit, can lift any indexed surface out of quarantine."
  },
  "entries" => entries
}

OUTPUT_PATH.write(YAML.dump(payload).lines.map { |line| "#{line.rstrip}\n" }.join)
puts "PERIODIC_2D3C_QUARANTINE #{entries.length}"
