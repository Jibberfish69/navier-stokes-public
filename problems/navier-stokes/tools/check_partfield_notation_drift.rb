#!/usr/bin/env ruby
# frozen_string_literal: true

require "find"
require "pathname"

ROOT = Pathname.new(__dir__).join("../../..").expand_path
DEFAULT_TARGETS = [
  ROOT.join("problems/navier-stokes/theorem-construction")
].freeze

TEXT_EXTENSIONS = %w[
  .md .markdown .yaml .yml .tex .txt .json .rb .py
].freeze

def phrase(*parts)
  parts.join
end

def relative(path)
  Pathname.new(path).expand_path.relative_path_from(ROOT).to_s
end

FORBIDDEN_CONTENT = {
  "caret-bdry Part predicate" => /Part\^(?:\{)?bdry(?:\})?/,
  "caret-bdry Field predicate" => /Field\^(?:\{)?bdry(?:\})?/,
  "boundary-prefixed Part predicate phrase" => /\bboundary\s+`?Part\b/,
  "boundary-prefixed Field predicate phrase" => /\bboundary\s+`?Field\b/,
  "slash compound predicate phrase" => /\bboundary\s+`?Part\/Field\b/,
  "compound boundary-prefixed route theorem" => /#{Regexp.escape(phrase("Boundary", "Part", "Field"))}/,
  "Part boundary-prefixed theorem" => /#{Regexp.escape(phrase("Boundary", "Part"))}/,
  "Field boundary-prefixed theorem" => /#{Regexp.escape(phrase("Boundary", "Field"))}/,
  "affine material boundary-field theorem" => /#{Regexp.escape(phrase("Affine", "Material", "Boundary", "Field"))}/,
  "selector drift boundary-field theorem" => /#{Regexp.escape(phrase("Selector", "Drift", "Boundary", "Field"))}/,
  "cross-profile boundary-field theorem" => /#{Regexp.escape(phrase("Cross", "Profile", "Boundary", "Field"))}/,
  "terminal collar boundary-field theorem" => /#{Regexp.escape(phrase("Terminal", "Collar", "Strain", "Boundary", "Field"))}/,
  "define boundary predicate wording" => /\bDefine\s+boundary\b/i,
  "predicate retitling wording" => /\badjusted\s+Part\/Field\b/i,
  "invented predicate wording" => /\bnew\s+predicates?\b/i
}.freeze

FORBIDDEN_PATH_PARTS = [
  phrase("boundary", "part", "field"),
  phrase("boundary", "-", "strength"),
  phrase("terminal", "measure", "boundary", "part", "field"),
  phrase("Boundary", "Part"),
  phrase("Boundary", "Field")
].freeze

def target_paths
  paths = ARGV.empty? ? DEFAULT_TARGETS : ARGV.map { |arg| ROOT.join(arg).expand_path }
  paths.flat_map do |path|
    if path.directory?
      files = []
      Find.find(path.to_s) do |entry|
        entry_path = Pathname.new(entry)
        next unless entry_path.file?
        next if entry_path.expand_path == Pathname.new(__FILE__).expand_path
        next unless TEXT_EXTENSIONS.include?(entry_path.extname)

        files << entry_path
      end
      files
    elsif path.file?
      [path]
    else
      []
    end
  end
end

violations = []

target_paths.each do |path|
  rel = relative(path)

  FORBIDDEN_PATH_PARTS.each do |part|
    violations << "#{rel}: path contains forbidden notation-drift slug #{part}" if rel.include?(part)
  end

  begin
    path.read.each_line.with_index(1) do |line, line_no|
      FORBIDDEN_CONTENT.each do |label, pattern|
        next unless line.match?(pattern)

        preview = line.gsub(/\s+/, " ").strip
        violations << "#{rel}:#{line_no}: #{label}: #{preview}"
      end
    end
  rescue ArgumentError
    next
  end
end

if violations.empty?
  puts "PARTFIELD_NOTATION_DRIFT OK"
else
  warn violations.join("\n")
  exit 1
end
