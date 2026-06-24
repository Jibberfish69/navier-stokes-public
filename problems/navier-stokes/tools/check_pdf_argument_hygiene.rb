#!/usr/bin/env ruby
# frozen_string_literal: true

require "pathname"

ROOT = Pathname.new(__dir__).join("../../..").expand_path
BUNDLE_ROOT = ROOT.join("problems/navier-stokes/submission-bundle")
MAIN_TEX = BUNDLE_ROOT.join("navier-stokes-submission.tex")
FRONT_PAGES = BUNDLE_ROOT.join("sections/reader-facing-proof-program-front-pages.tex")
PROOF_ATTEMPT_APPENDIX = BUNDLE_ROOT.join("proof-attempt-failure-appendix.tex")
SOURCE_FIELD_APPENDIX = BUNDLE_ROOT.join("source-field-reader-appendix.tex")
SURFACE_APPENDIX = BUNDLE_ROOT.join("surface-derivation-appendix.tex")
SOURCE_FORENSICS_ROOT = ROOT.join("problems/navier-stokes/source-forensics")
PROOF_ATTEMPT_MIN_SOURCE_WORDS = 10_000
SOURCE_FIELD_MIN_SOURCE_WORDS = 300_000
SECRET_TOKEN_PATTERN = /\b(?:sk-(?:proj-)?[A-Za-z0-9_-]{20,}|OPENAI_API_KEY=(?:"sk-[^"\s]+"|'sk-[^'\s]+'))\b/.freeze

CURRENT_FRONT_PAGE_ANCHORS = [
  /\\section\{Introduction\}/,
  /\\section\{Proof program /,
  /\\section\{Main Theorem and Proof /
].freeze

PROOF_ATTEMPT_ANCHORS = [
  /\\section\{Direct Routes That Did Not Close\}/,
  /\\subsection\{How to Read the Failure Record\}/,
  /\\subsection\{How Repo Source Packets Enter This Appendix\}/
].freeze

SURFACE_APPENDIX_ANCHORS = [
  /\\section\{Expanded CM Branch Obligations\}/,
  /\\section\{Expanded Forward-Support Obligations\}/,
  /\\section\{Expanded Branch-Family Obligations\}/
].freeze

SOURCE_HYGIENE_PATTERNS = {
  "secret literal" => SECRET_TOKEN_PATTERN,
  "raw source-storage language" => /\bon disk\b/i,
  "glued source sentence residue" => /\b(?:first-rungledger|viscousfirst|notapressure|isalgebraically)\b/i
}.freeze

def relative(path)
  Pathname.new(path).expand_path.relative_path_from(ROOT).to_s
rescue ArgumentError
  path.to_s
end

def strip_comments(text)
  text.lines.map do |line|
    escaped = false
    cut = line.length
    line.chars.each_with_index do |char, index|
      if char == "\\" && !escaped
        escaped = true
        next
      end
      if char == "%" && !escaped
        cut = index
        break
      end
      escaped = false
    end
    line[0...cut]
  end.join
end

def strip_tex_disabled_blocks(text)
  current = text.dup
  20.times do
    next_text = current.gsub(/\\iffalse.*?\\fi/m, "\n")
    break if next_text == current
    current = next_text
  end
  current
end

def expand_inputs(text, base_dir, seen = [])
  text.gsub(/\\input\{([^}]+)\}/) do |match|
    raw = Regexp.last_match(1)
    candidates = []
    candidate = Pathname.new(raw)
    candidates << candidate if candidate.absolute?
    candidates << base_dir.join(candidate)
    candidates << base_dir.join("#{raw}.tex") unless raw.end_with?(".tex")
    path = candidates.map(&:expand_path).find(&:file?)
    next match unless path
    next "" if seen.include?(path.to_s)

    child = strip_tex_disabled_blocks(strip_comments(path.read))
    expand_inputs(child, path.dirname, seen + [path.to_s])
  end
end

def visible_source(path, expand: true)
  text = path.read
  body = text[/\\begin\{document\}(.*)\\end\{document\}/m, 1] || text
  body = strip_tex_disabled_blocks(strip_comments(body))
  expand ? expand_inputs(body, path.dirname) : body
end

def rough_word_count(text)
  text
    .gsub(/\\[a-zA-Z@]+\*?(?:\[[^\]]*\])?(?:\{[^{}]*\})?/, " ")
    .gsub(/\\./, " ")
    .scan(/[A-Za-z0-9]+(?:[-'][A-Za-z0-9]+)*/)
    .length
end

def line_number(text, offset)
  text[0...offset].count("\n") + 1
end

def scan_patterns(path, text, patterns, errors)
  patterns.each do |label, pattern|
    next unless (match = text.match(pattern))

    errors << "#{relative(path)}:#{line_number(text, match.begin(0))}: forbidden #{label}: #{match[0].strip}"
  end
end

def scan_for_secret_literals(root, errors)
  return unless root.exist?

  root.find do |path|
    next unless path.file?
    next unless [".md", ".txt", ".yaml", ".yml", ".json", ".tex"].include?(path.extname)

    path.read.each_line.with_index(1) do |line, line_no|
      next unless line.match?(SECRET_TOKEN_PATTERN)

      errors << "#{relative(path)}:#{line_no}: source forensics contains an unredacted secret literal"
    end
  end
end

def require_patterns(path, text, patterns, label, errors)
  positions = patterns.map { |pattern| [pattern, text =~ pattern] }
  positions.each do |pattern, position|
    errors << "#{relative(path)}: missing #{label} anchor #{pattern.inspect}" if position.nil?
  end
  positions.each_cons(2) do |(left, left_pos), (right, right_pos)|
    next if left_pos.nil? || right_pos.nil?
    next if left_pos < right_pos

    errors << "#{relative(path)}: #{label} order violation #{left.inspect} must precede #{right.inspect}"
  end
end

errors = []
scan_for_secret_literals(SOURCE_FORENSICS_ROOT, errors)

unless MAIN_TEX.file?
  errors << "missing main TeX source #{relative(MAIN_TEX)}"
else
  main_visible = visible_source(MAIN_TEX, expand: true)
  require_patterns(MAIN_TEX, main_visible, CURRENT_FRONT_PAGE_ANCHORS, "current front-page", errors)
  scan_patterns(MAIN_TEX, main_visible, SOURCE_HYGIENE_PATTERNS, errors)
  errors << "#{relative(MAIN_TEX)}: missing proof-attempt appendix input" unless MAIN_TEX.read.include?("proof-attempt-failure-appendix.tex")
  errors << "#{relative(MAIN_TEX)}: missing source-field reader appendix input" unless MAIN_TEX.read.include?("source-field-reader-appendix.tex")
end

unless FRONT_PAGES.file?
  errors << "missing reader-facing front-page source #{relative(FRONT_PAGES)}"
else
  front_visible = strip_tex_disabled_blocks(strip_comments(FRONT_PAGES.read))
  require_patterns(FRONT_PAGES, front_visible, CURRENT_FRONT_PAGE_ANCHORS, "current front-page", errors)
  scan_patterns(FRONT_PAGES, front_visible, SOURCE_HYGIENE_PATTERNS, errors)
end

unless PROOF_ATTEMPT_APPENDIX.file?
  errors << "missing proof-attempt failure appendix #{relative(PROOF_ATTEMPT_APPENDIX)}"
else
  proof_visible = strip_tex_disabled_blocks(strip_comments(PROOF_ATTEMPT_APPENDIX.read))
  words = rough_word_count(proof_visible)
  errors << "#{relative(PROOF_ATTEMPT_APPENDIX)}: proof-attempt appendix is too shallow: #{words} source words, minimum #{PROOF_ATTEMPT_MIN_SOURCE_WORDS}" if words < PROOF_ATTEMPT_MIN_SOURCE_WORDS
  require_patterns(PROOF_ATTEMPT_APPENDIX, proof_visible, PROOF_ATTEMPT_ANCHORS, "proof-attempt", errors)
  scan_patterns(PROOF_ATTEMPT_APPENDIX, proof_visible, SOURCE_HYGIENE_PATTERNS, errors)
end

unless SOURCE_FIELD_APPENDIX.file?
  errors << "missing source-field reader appendix #{relative(SOURCE_FIELD_APPENDIX)}"
else
  source_visible = strip_tex_disabled_blocks(strip_comments(SOURCE_FIELD_APPENDIX.read))
  words = rough_word_count(source_visible)
  errors << "#{relative(SOURCE_FIELD_APPENDIX)}: source-field appendix is too shallow: #{words} source words, minimum #{SOURCE_FIELD_MIN_SOURCE_WORDS}" if words < SOURCE_FIELD_MIN_SOURCE_WORDS
  scan_patterns(SOURCE_FIELD_APPENDIX, source_visible, { "secret literal" => SECRET_TOKEN_PATTERN }, errors)
end

unless SURFACE_APPENDIX.file?
  errors << "missing mathematical surface expansion appendix #{relative(SURFACE_APPENDIX)}"
else
  surface_visible = strip_tex_disabled_blocks(strip_comments(SURFACE_APPENDIX.read))
  require_patterns(SURFACE_APPENDIX, surface_visible, SURFACE_APPENDIX_ANCHORS, "mathematical appendix", errors)
  scan_patterns(SURFACE_APPENDIX, surface_visible, SOURCE_HYGIENE_PATTERNS, errors)
end

if errors.empty?
  puts "PDF_ARGUMENT_HYGIENE OK: current reader-facing source architecture is anchored and scan-clean."
  exit 0
end

warn errors.join("\n")
exit 1
