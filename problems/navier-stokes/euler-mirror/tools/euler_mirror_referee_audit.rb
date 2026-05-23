#!/usr/bin/env ruby
# frozen_string_literal: true

require 'set'
require 'yaml'

args = ARGV.dup
list = args.delete('--list')
mirror_root = File.expand_path(args.shift || File.join(__dir__, '..'))
repo_root = File.expand_path(File.join(mirror_root, '..', '..', '..'))
ledger_path = File.join(mirror_root, 'referee-audit-ledger.yaml')
continuum_closure_path = File.join(mirror_root, 'euler-ns-continuum-closure-ledger.yaml')

abort "missing ledger: #{ledger_path}" unless File.file?(ledger_path)
abort "missing continuum closure ledger: #{continuum_closure_path}" unless File.file?(continuum_closure_path)

ledger = YAML.safe_load(File.read(ledger_path), aliases: true)
continuum_closure = YAML.safe_load(File.read(continuum_closure_path), aliases: true)
allowed = ledger.fetch('classification_vocabulary').map { |row| row.fetch('id') }.to_set
rules = ledger.fetch('surface_rules')
case_matrix = ledger.fetch('case_matrix')

def rel_files(root)
  Dir.chdir(root) do
    Dir.glob('**/*')
       .select { |path| File.file?(path) && path.match?(/\.(md|ya?ml|rb)\z/) }
       .sort
  end
end

errors = []
warnings = []
all_files = rel_files(mirror_root)
covered = Hash.new { |hash, key| hash[key] = [] }

rules.each do |rule|
  rule.fetch('classifications').each do |classification|
    errors << "unknown classification #{classification.inspect} in #{rule.fetch('id')}" unless allowed.include?(classification)
  end

  paths = []
  paths.concat(rule.fetch('paths', []))
  rule.fetch('globs', []).each do |pattern|
    paths.concat(Dir.chdir(mirror_root) { Dir.glob(pattern).select { |path| File.file?(path) } })
  end
  paths.uniq.sort.each do |path|
    if all_files.include?(path)
      covered[path] << rule
    else
      errors << "rule #{rule.fetch('id')} references missing mirror file #{path}"
    end
  end
end

missing = all_files.reject { |path| covered.key?(path) }
missing.each { |path| errors << "uncovered Euler-mirror surface #{path}" }

ledger.fetch('authority_surfaces_requiring_readback').each do |path|
  full_path = File.join(mirror_root, path)
  unless File.file?(full_path)
    errors << "required authority surface is missing: #{path}"
    next
  end
  contents = File.read(full_path)
  unless contents.include?('referee-audit-ledger.yaml')
    errors << "authority surface #{path} does not read back referee-audit-ledger.yaml"
  end
end

ledger.fetch('authority_surfaces_requiring_case_matrix_readback', []).each do |path|
  full_path = File.join(mirror_root, path)
  unless File.file?(full_path)
    errors << "required case-matrix authority surface is missing: #{path}"
    next
  end
  contents = File.read(full_path)
  unless contents.include?('case_matrix') || contents.include?('ESM.')
    errors << "authority surface #{path} does not read back the ESM case_matrix"
  end
end

ledger.fetch('parent_comparison_anchors', []).each do |path|
  full_path = File.join(repo_root, path.sub(%r{\A/}, ''))
  errors << "missing parent comparison anchor #{path}" unless File.file?(full_path)
end

case_classes = Hash.new(0)
case_authorities = Set.new
case_matrix.each do |row|
  id = row.fetch('id')
  classification = row.fetch('classification')
  errors << "unknown case classification #{classification.inspect} in #{id}" unless allowed.include?(classification)
  %w[euler_scenario ns_control_readback authority].each do |key|
    value = row.fetch(key)
    errors << "empty case #{id} #{key}" if value.respond_to?(:empty?) && value.empty?
  end
  row.fetch('authority').each do |path|
    case_authorities << path
    full_path = File.join(repo_root, path.sub(%r{\A/}, ''))
    errors << "missing case #{id} authority #{path}" unless File.file?(full_path)
  end
  case_classes[classification] += 1
end

%w[smooth_by_hypothesis nonsmooth_control proved_conditional_surface false_base_implication non_euler_import].each do |classification|
  errors << "case matrix missing #{classification}" if case_classes[classification].zero?
end

ledger.fetch('parent_comparison_anchors', []).each do |path|
  errors << "parent comparison anchor missing from case_matrix authority: #{path}" unless case_authorities.include?(path)
end

unless continuum_closure.fetch('closure_status') == 'closed-as-route-control'
  errors << "continuum closure ledger is not closed-as-route-control"
end

closed_output_ids = continuum_closure.fetch('closed_outputs').map { |row| row.fetch('id') }.to_set
continuum_closure.fetch('route_closure_tests').fetch('required_closed_output_ids').each do |id|
  errors << "continuum closure missing closed output #{id}" unless closed_output_ids.include?(id)
end

matrix_ids = case_matrix.map { |row| row.fetch('id') }.to_set
closure_rows = Set.new
continuum_closure.fetch('route_closure_tests').fetch('required_rows').each do |group, rows|
  rows.each do |id|
    errors << "continuum closure #{group} references missing matrix row #{id}" unless matrix_ids.include?(id)
    closure_rows << id
  end
end

matrix_ids.each do |id|
  errors << "case matrix row #{id} missing from continuum closure row groups" unless closure_rows.include?(id)
end

stale_patterns = ledger.fetch('stale_failure_patterns', []).map do |entry|
  [entry.fetch('id'), Regexp.new(entry.fetch('pattern'), Regexp::IGNORECASE)]
end

all_files.each do |path|
  File.readlines(File.join(mirror_root, path), chomp: true).each_with_index do |line, index|
    if path == 'referee-audit-ledger.yaml'
      stripped = line.strip
      next if stripped.start_with?('pattern:', '- id: stale')
    end

    stale_patterns.each do |id, regex|
      next unless line.match?(regex)

      warnings << "#{path}:#{index + 1}: stale pattern #{id}: #{line.strip}"
    end
  end
end

if list
  all_files.each do |path|
    classifications = covered[path].flat_map { |rule| rule.fetch('classifications') }.uniq.sort
    rule_ids = covered[path].map { |rule| rule.fetch('id') }.uniq.sort
    puts "#{path}: #{classifications.join(', ')} [#{rule_ids.join(', ')}]"
  end
else
  counts = Hash.new(0)
  covered.each_value do |file_rules|
    file_rules.flat_map { |rule| rule.fetch('classifications') }.uniq.each { |classification| counts[classification] += 1 }
  end
  puts "Euler mirror referee audit"
  puts "mirror_root=#{mirror_root}"
  puts "covered_surfaces=#{covered.length}/#{all_files.length}"
  puts "case_matrix_rows=#{case_matrix.length}"
  allowed.sort.each { |classification| puts "#{classification}=#{counts[classification]}" }
end

warnings.each { |warning| warn "ERROR: #{warning}" }
errors.each { |error| warn "ERROR: #{error}" }
exit(errors.empty? && warnings.empty? ? 0 : 1)
