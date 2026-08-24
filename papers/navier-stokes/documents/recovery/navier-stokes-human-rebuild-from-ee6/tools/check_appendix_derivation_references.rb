#!/usr/bin/env ruby
# frozen_string_literal: true

# Input: an optional manuscript-workspace root and optional TeX root filename.
# Output: no output on success; source locations and a nonzero exit on failure.
# Authority: enforces the compressed-claim rule owned by Project Instructions, section 5.
# Writes: none.

ROOT = File.expand_path(ARGV.fetch(0, Dir.pwd))
TEX_ROOT = File.expand_path(ARGV.fetch(1, "navier-stokes-manuscript.tex"), ROOT)
FORMAL_ENVIRONMENTS = %w[theorem proposition lemma corollary].freeze
RESULT_NOUN = /\b(?:identity|inequality|estimate|calculation|embedding|recurrence|formula|bound)\b/i
BRIDGE_VERB = /\b(?:gives?|shows?|yields?|implies?|supplies?|provides?|forces?|controls|bounds|establishes?)\b/i
EXTERNAL_CITATION = /\\(?:paren|text|auto)cite(?:\[[^\]]*\])?\{[^}]+\}/
EXACT_REFERENCE = /\\[Cc]ref\{([^}]+)\}/
FORMAL_LABEL = /\A(?:thm|prop|lem|cor):/
LABEL_PATTERN = /\\label(?:\[[^\]]+\])?\{([^}]+)\}/

Record = Struct.new(:path, :line_number, :source, :appendix)

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

def input_path(root, source_path, input_name)
  names = [input_name]
  names << "#{input_name}.tex" unless File.extname(input_name) == ".tex"
  candidates = names.flat_map do |name|
    [File.expand_path(name, root), File.expand_path(name, File.dirname(source_path))]
  end
  candidates.find { |candidate| File.file?(candidate) }
end

def expand_inputs(path, appendix, root, stack, records, errors)
  if stack.include?(path)
    errors << "#{path.delete_prefix("#{root}/")}: cyclic \\input graph"
    return appendix
  end

  unless File.file?(path)
    errors << "#{path.delete_prefix("#{root}/")}: missing active TeX input"
    return appendix
  end

  current_appendix = appendix
  next_stack = stack + [path]
  File.foreach(path).with_index(1) do |line, line_number|
    visible = strip_tex_comment(line)
    current_appendix = true if visible.match?(/\\appendix\b/)
    records << Record.new(path, line_number, visible, current_appendix)

    visible.scan(/\\input\s*\{([^}]+)\}/).flatten.each do |input_name|
      resolved = input_path(root, path, input_name)
      unless resolved
        errors << "#{path.delete_prefix("#{root}/")}:#{line_number}: unresolved active input #{input_name}"
        next
      end
      current_appendix = expand_inputs(resolved, current_appendix, root, next_stack, records, errors)
    end
  end
  current_appendix
end

def proof_bearing_appendix_labels(records)
  label_counts = Hash.new(0)
  proof_labels = []
  formal = nil
  pending = nil

  records.each do |record|
    next unless record.appendix

    source = record.source
    source.scan(LABEL_PATTERN).flatten.each { |label| label_counts[label] += 1 }

    if (match = source.match(/\\begin\{(#{FORMAL_ENVIRONMENTS.join("|")})\}/))
      formal = { environment: match[1], labels: [] }
    end
    if formal
      source.scan(LABEL_PATTERN).flatten.each do |label|
        formal[:labels] << label if label.match?(FORMAL_LABEL)
      end
    end
    if formal && source.match?(/\\end\{#{Regexp.escape(formal[:environment])}\}/)
      pending = formal
      formal = nil
      next
    end

    next unless pending
    stripped = source.strip
    next if stripped.empty?

    if stripped.match?(/\\begin\{proof\}/)
      proof_labels.concat(pending[:labels])
    end
    pending = nil
  end

  [label_counts, proof_labels.uniq]
end

def sentence_windows(records)
  windows = []
  records.group_by(&:path).each_value do |file_records|
    current = []
    file_records.each do |record|
      next if record.appendix
      next if record.path.include?("/FrontMatter/")

      stripped = record.source.strip
      next if stripped.empty? && current.empty?
      current << record
      sentence_end = stripped.match?(/[.!?](?:[})\]]*)\s*\z/)
      if sentence_end || current.length >= 24
        windows << current
        current = []
      end
    end
    windows << current unless current.empty?
  end
  windows
end

records = []
graph_errors = []
expand_inputs(TEX_ROOT, false, ROOT, [], records, graph_errors)
unless graph_errors.empty?
  $stderr.puts "Appendix derivation-reference check failed:"
  graph_errors.each { |error| $stderr.puts "- #{error}" }
  exit 1
end

label_counts, proof_labels = proof_bearing_appendix_labels(records)
violations = []

sentence_windows(records).each do |window|
  sentence = window.map(&:source).join(" ")
  next unless sentence.match?(RESULT_NOUN) && sentence.match?(BRIDGE_VERB)
  next if sentence.match?(EXTERNAL_CITATION)

  referenced_labels = sentence.scan(EXACT_REFERENCE).flatten.flat_map { |labels| labels.split(",") }.map(&:strip)
  valid = referenced_labels.any? do |label|
    label_counts[label] == 1 && proof_labels.include?(label)
  end
  next if valid

  first = window.first
  relative_path = first.path.delete_prefix("#{ROOT}/")
  violations << "#{relative_path}:#{first.line_number}: compressed internal result lacks a same-sentence \\cref to one proof-bearing appendix result"
end

exit 0 if violations.empty?

$stderr.puts "Appendix derivation-reference check failed:"
violations.uniq.each { |violation| $stderr.puts "- #{violation}" }
exit 1
