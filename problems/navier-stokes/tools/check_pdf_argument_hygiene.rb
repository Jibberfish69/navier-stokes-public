#!/usr/bin/env ruby
# frozen_string_literal: true

require "pathname"

ROOT = Pathname.new(__dir__).join("../../..").expand_path
BUNDLE_ROOT = ROOT.join("problems/navier-stokes/submission-bundle")
MAIN_TEX = BUNDLE_ROOT.join("navier-stokes-submission.tex")
GROUND_UP_TEX = BUNDLE_ROOT.join("ground-up/main.tex")
SURFACE_APPENDIX = BUNDLE_ROOT.join("surface-derivation-appendix.tex")

FORBIDDEN_VISIBLE_PATTERNS = {
  "internal path string" => %r{problems/navier-stokes|submission-bundle|source-forensics|theorem-construction|system/runner},
  "file extension in rendered argument" => /\.(?:md|ya?ml|rb|py)\b/i,
  "repo/status vocabulary in rendered argument" => /\b(?:repo-surface|generated surface|surface-derivation|coverage ledger|build record|status surface|audit row|provenance inventory|Family row)\b/i,
  "authoring-meta section" => /\b(?:Representation Standard|Obstruction Census|proof records|working records|Working manuscript)\b/i,
  "visible code/provenance typewriter" => /\\texttt\{/,
  "not-but prose" => /\bnot\b[^.\n]{0,160}\bbut\b/i
}.freeze

ORDERED_ANCHORS = [
  "\\section{The Clay Target And The Reader's Toolkit}",
  "\\section{A Case Study In Class Membership}",
  "\\section{The Working Class Object}",
  "\\section{Terminal Packet Capture}",
  "\\section{Forward Families In The Class Proof}",
  "\\section{Class Exit}",
  "\\section{The Class-Law Proof}",
  "\\section{The Short Proof Spine}",
  "\\section{Mathematical Branch Coverage}",
  "\\section{The Closing Hinges}"
].freeze

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

def visible_body(path)
  text = path.read
  body = text[/\\begin\{document\}(.*)\\end\{document\}/m, 1] || text
  strip_comments(body)
end

def line_number(text, offset)
  text[0...offset].count("\n") + 1
end

errors = []

[MAIN_TEX, GROUND_UP_TEX].each do |path|
  next unless path.exist?

  body = visible_body(path)
  FORBIDDEN_VISIBLE_PATTERNS.each do |label, pattern|
    if (match = body.match(pattern))
      errors << "#{path.relative_path_from(ROOT)}:#{line_number(body, match.begin(0))}: forbidden #{label}: #{match[0].strip}"
    end
  end

  if body.include?("surface-derivation-appendix")
    errors << "#{path.relative_path_from(ROOT)}: includes internal surface appendix"
  end

  positions = ORDERED_ANCHORS.map do |anchor|
    [anchor, body.index(anchor)]
  end
  missing = positions.select { |_anchor, position| position.nil? }
  missing.each do |anchor, _position|
    errors << "#{path.relative_path_from(ROOT)}: missing dependency-forward anchor #{anchor}"
  end

  positions.each_cons(2) do |(left_anchor, left_position), (right_anchor, right_position)|
    next if left_position.nil? || right_position.nil?
    next if left_position < right_position

    errors << "#{path.relative_path_from(ROOT)}: dependency order violation #{left_anchor} must precede #{right_anchor}"
  end
end

if SURFACE_APPENDIX.exist?
  visible = strip_comments(SURFACE_APPENDIX.read).strip
  unless visible.empty?
    errors << "#{SURFACE_APPENDIX.relative_path_from(ROOT)}: internal surface appendix must contain comments only"
  end
end

if errors.empty?
  puts "PDF_ARGUMENT_HYGIENE OK"
else
  warn errors.join("\n")
  exit 1
end
