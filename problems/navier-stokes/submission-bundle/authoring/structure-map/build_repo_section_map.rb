#!/usr/bin/env ruby
# frozen_string_literal: true

require "pathname"
require "time"
require "yaml"

ROOT = Pathname.new(__dir__).join("../../../../..").expand_path
RULES_PATH = Pathname.new(__dir__).join("repo-section-map-rules.yaml").expand_path
OUTPUT_PATH = Pathname.new(ARGV[0] || __dir__).expand_path.join("repo-section-map.yaml")

SURFACE_PATTERN = /\b[A-Z][A-Za-z0-9]*(?:[._-][A-Za-z0-9{}\\]+)+\b/.freeze
FACE_PATTERN = /\b(?:Pack_Q|Part_\{N,Q\}|Field_\{N,r,Q\})\b/.freeze
FILE_EXTENSION_PATTERN = /\.(?:md|ya?ml|tex|rb|py|pdf)\b/i.freeze

TITLE_WORD_EXPANSIONS = {
  "CM" => "Class-Membership",
  "NS" => "Navier-Stokes",
  "R3" => "Whole-Space",
  "T3" => "Periodic",
  "Hs" => "Sobolev"
}.freeze

def load_yaml(path)
  YAML.load_file(path.to_s)
end

def write_yaml(path, payload)
  path.write(YAML.dump(payload).lines.map { |line| "#{line.rstrip}\n" }.join)
end

def relative(path)
  Pathname.new(path).expand_path.relative_path_from(ROOT).to_s
end

def source_text(path)
  path.file? ? path.read : ""
end

def extract_handles(text)
  handles = text.scan(SURFACE_PATTERN).flatten + text.scan(FACE_PATTERN).flatten
  handles.map { |handle| clean_handle(handle) }.compact.uniq
end

def clean_handle(handle)
  cleaned = handle.to_s.strip.gsub(/[.,;:)\]]+\z/, "")
  return nil if cleaned.empty?
  return nil if cleaned.include?("/")
  return nil if cleaned.match?(FILE_EXTENSION_PATTERN)
  return nil if cleaned.match?(/\A\d/)

  cleaned
end

def matching_placement(handle, rules)
  placements = Array(rules["placements"])
  placements.find do |placement|
    Array(placement["patterns"]).any? { |pattern| handle.match?(Regexp.new(pattern)) }
  end || rules.fetch("default_placement")
end

def reader_title(handle, rules)
  overrides = rules.fetch("title_overrides", {})
  return overrides[handle] if overrides.key?(handle)

  stem = handle
         .sub(/\.[A-Z]\z/, "")
         .gsub(/[{}\\]/, "")
         .gsub(/[_\.-]+/, " ")
  words = stem.split.flat_map { |part| split_title_part(part) }
  expanded = words.map { |word| TITLE_WORD_EXPANSIONS.fetch(word, word) }
  title_case(expanded.join(" "))
end

def split_title_part(part)
  return [part] if TITLE_WORD_EXPANSIONS.key?(part)

  part.scan(/[A-Z]+(?=[A-Z][a-z]|\z)|[A-Z]?[a-z]+|\d+|[A-Z]+/)
end

def title_case(text)
  text
    .split
    .map.with_index do |word, index|
      if word.match?(/\A[A-Z0-9-]{2,}\z/) || word.include?("-")
        word
      elsif index.positive? && %w[and as at by for from in of on or the to with].include?(word.downcase)
        word.downcase
      else
        word[0].to_s.upcase + word[1..].to_s.downcase
      end
    end
    .join(" ")
end

rules = load_yaml(RULES_PATH)
source_paths = Array(rules.fetch("source_files")).map { |path| ROOT.join(path) }
present_sources = source_paths.select(&:file?)

handle_sources = Hash.new { |hash, key| hash[key] = Hash.new(0) }
present_sources.each do |path|
  extract_handles(source_text(path)).each do |handle|
    handle_sources[handle][relative(path)] += 1
  end
end

entries = handle_sources.keys.sort.map do |handle|
  placement = matching_placement(handle, rules)
  {
    "repo_handle" => handle,
    "reader_title" => reader_title(handle, rules),
    "kind" => placement["kind"],
    "pdf_level" => placement["pdf_level"],
    "pdf_path" => placement["pdf_path"],
    "visibility" => placement["visibility"],
    "placement_rule" => placement["id"],
    "source_files" => handle_sources[handle].sort.to_h,
    "cross_reference_boundary" => "structure-map only; not a formal ENV cref target"
  }
end

payload = {
  "generated_at" => Time.now.utc.iso8601,
  "rules" => relative(RULES_PATH),
  "source_files" => present_sources.map { |path| relative(path) },
  "missing_source_files" => (source_paths - present_sources).map { |path| relative(path) },
  "entry_count" => entries.length,
  "entries" => entries
}

write_yaml(OUTPUT_PATH, payload)
puts "wrote #{relative(OUTPUT_PATH)} with #{entries.length} entries"
