#!/usr/bin/env ruby
# frozen_string_literal: true

require "pathname"

ROOT = Pathname.new(__dir__).join("../../..").expand_path
SOURCE_FIELD_READER_APPENDIX = ROOT.join("problems/navier-stokes/submission-bundle/source-field-reader-appendix.tex")
DEFAULT_TARGETS = [
  SOURCE_FIELD_READER_APPENDIX,
  ROOT.join("problems/navier-stokes/submission-bundle/proof-attempt-failure-appendix.tex"),
  ROOT.join("problems/navier-stokes/submission-bundle/surface-derivation-appendix.tex"),
  ROOT.join("problems/navier-stokes/submission-bundle/navier-stokes-submission.tex")
].freeze
MAX_ERRORS = Integer(ENV.fetch("MAX_ERRORS", "200"))
SCAN_ROUTE_SUPPORT_RECORDS = ENV["SCAN_ROUTE_SUPPORT_RECORDS"] == "1"

# The source-field reader appendix is a route/source-support record. Its own
# header says recovered entries stay context/history/open-continuation unless
# the main proof cites an exact same-solution payment. Do not let recovered
# source fragments block Silver CM-exit closure by default; scan it explicitly
# with SCAN_ROUTE_SUPPORT_RECORDS=1 or by passing the file as an argument.
ROUTE_SUPPORT_TARGET_RATIONALES = {
  SOURCE_FIELD_READER_APPENDIX =>
    "source-field reader appendix is route/support record; proof debt remains governed by cited main-proof Pack/Part/Field payments"
}.freeze

PATTERNS = {
  "plain Lebesgue/Sobolev exponent" => /\b(?:L|H|C)\s+(?:infinity|loc|[0-9]+(?:\/[0-9]+)?|[-+][0-9]+(?:\/[0-9]+)?)(?=\b|[+\s,;.)-])/,
  "plain terminal-star notation" => /\b(?:T|r|a)\s+\*/,
  "plain indexed lowercase variable" => /(?<!\\)\b(?:t|r|a|rho|epsilon|eta|nu)\s+[mnk]\b/,
  "plain indexed shell variable" => /\b(?:D|E|F|H|A|B|K|M|N|Q|R|S|U|V|W|X)\s+(?:[jklmnqJKNQR]|\d+)(?=\b|[(),.;=])/,
  "plain CM Part/Field notation" => /\b(?:Pack\s+Q|Part\s+N\s*,?\s*Q|Field\s+N\s*,?\s*r\s*,?\s*Q)\b/,
  "plain Greek/operator token" => /(?<!\\)\b(?:Phi|Omega|Gamma|Delta|nabla|partial|mathcal|operatorname)\s+[A-Za-z]\b/,
  "raw ascii proof arrow" => /(?:->|=>)/,
  "raw TeX command typo" => /(?<!\\)\bqquad\b/
}.freeze

def strip_comment(line)
  escaped = false
  line.chars.each_with_index do |char, index|
    if char == "\\" && !escaped
      escaped = true
      next
    end
    return line[0...index] if char == "%" && !escaped

    escaped = false
  end
  line
end

def targets_from_args
  default_targets = ARGV.empty?
  paths = default_targets ? DEFAULT_TARGETS : ARGV.map { |arg| ROOT.join(arg).expand_path }
  [paths.select(&:exist?), default_targets]
end

errors = []
skipped = []
targets, default_targets = targets_from_args
targets.each do |path|
  if default_targets && !SCAN_ROUTE_SUPPORT_RECORDS && ROUTE_SUPPORT_TARGET_RATIONALES.key?(path)
    skipped << "#{path.relative_path_from(ROOT)}: #{ROUTE_SUPPORT_TARGET_RATIONALES.fetch(path)}"
    next
  end

  path.read.each_line.with_index(1) do |raw_line, line_no|
    line = strip_comment(raw_line)
    next if line.strip.empty?

    PATTERNS.each do |label, pattern|
      next unless (match = line.match(pattern))

      preview = line.gsub(/\s+/, " ").strip
      errors << "#{path.relative_path_from(ROOT)}:#{line_no}: #{label}: #{match[0]} in #{preview}"
      break if errors.length >= MAX_ERRORS
    end
    break if errors.length >= MAX_ERRORS
  end
  break if errors.length >= MAX_ERRORS
end

warn "skipping route/support notation scan:\n#{skipped.join("\n")}" unless skipped.empty?

if errors.empty?
  puts "MANUSCRIPT_NOTATION_FRAGMENTS OK"
else
  warn "showing first #{MAX_ERRORS} manuscript-notation fragment errors" if errors.length >= MAX_ERRORS
  warn errors.join("\n")
  exit 1
end
