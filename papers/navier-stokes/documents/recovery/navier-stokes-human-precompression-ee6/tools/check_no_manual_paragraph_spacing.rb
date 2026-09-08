#!/usr/bin/env ruby
# frozen_string_literal: true

# Input: an optional manuscript-workspace root, defaulting to the current directory.
# Output: no output on success; source locations and a nonzero exit on failure.
# Authority: enforces the prose-and-display rhythm rules owned by ProjectInstructions/Format.txt.
# Writes: none.

require "find"

ROOT = File.expand_path(ARGV.fetch(0, Dir.pwd))
EXCLUDED_DIRECTORIES = %w[
  .cache
  .git
  .latexmk-out
  Archive
  Audit
  preamble
  reports
  tmp
  work
].freeze
FORBIDDEN_PATTERNS = {
  "manual vertical spacing" => /\\(?:vspace\*?|smallskip|medskip|bigskip|addvspace|vskip)\b/,
  "explicit paragraph break" => /\\par\b/,
  "local display-spacing override" => /\\(?:abovedisplayskip|abovedisplayshortskip|belowdisplayskip|belowdisplayshortskip|jot)\b/,
  "manual display-row spacing" => /\\\\\s*\[[^\]]+\]/
}.freeze

def strip_tex_comment(line)
  line.each_char.with_index do |character, index|
    next unless character == "%"

    backslashes = 0
    cursor = index - 1
    while cursor >= 0 && line[cursor] == "\\"
      backslashes += 1
      cursor -= 1
    end
    return line[0...index] if backslashes.even?
  end
  line
end

tex_files = []
Find.find(ROOT) do |path|
  if File.directory?(path) && path != ROOT && EXCLUDED_DIRECTORIES.include?(File.basename(path))
    Find.prune
  elsif File.file?(path) && File.extname(path) == ".tex"
    tex_files << path
  end
end

violations = []
tex_files.sort.each do |path|
  File.foreach(path).with_index(1) do |line, line_number|
    visible_source = strip_tex_comment(line)
    FORBIDDEN_PATTERNS.each do |description, pattern|
      next unless visible_source.match?(pattern)

      relative_path = path.delete_prefix("#{ROOT}/")
      violations << "#{relative_path}:#{line_number}: prohibited #{description}"
    end
  end
end

exit 0 if violations.empty?

$stderr.puts "Manuscript prose-and-display spacing check failed:"
violations.each { |violation| $stderr.puts "- #{violation}" }
exit 1
