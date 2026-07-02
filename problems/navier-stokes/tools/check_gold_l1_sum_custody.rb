#!/usr/bin/env ruby
# frozen_string_literal: true

require "pathname"

ROOT = Pathname.new(ENV.fetch("NS_GOLD_L1_GUARD_ROOT") { Pathname.new(__dir__).join("../../..").expand_path }).expand_path

CUSTODY_AUDIT_PATH = "problems/navier-stokes/theorem-construction/mpp-forward-gold-summation-type-custody-audit-20260702.md"

AUTHORITY_MARKERS = {
  "problems/navier-stokes/live-theorem-edge.yaml" => [
    "summation_type_custody",
    CUSTODY_AUDIT_PATH
  ],
  "problems/navier-stokes/source-frontier.yaml" => [
    "current_gold_l1_summation_type_custody_audit_20260702",
    "current_gold_l1_historical_sum_quarantine_20260702",
    CUSTODY_AUDIT_PATH
  ],
  "problems/navier-stokes/theorem-creation.yaml" => [
    "current_gold_l1_summation_type_custody_audit_20260702",
    "current_gold_l1_historical_sum_quarantine_20260702",
    CUSTODY_AUDIT_PATH
  ]
}.freeze

AUDIT_REQUIRED_MARKERS = [
  "TFE2748B",
  "OriginalCriticalCapacityVariation.A",
  "The physical packet comes first",
  "A_P^{sel,+}",
  "mathfrak m_P",
  "finite-overlap quadrature",
  "Hardy atomic norm",
  "simple-measure approximation",
  "Littlewood-Paley",
  "algebraic channel identity",
  "Untyped sums over atoms, children, shells, packet labels, or point samples are"
].freeze

HIGH_RISK_POSITIVE_SUM_CLAIMS = {
  "point-sample sum promoted to Gold L1 source" =>
    /(?:\\?sum_(?:j|Q|ell|\\ell|alpha|\\alpha)|∑)[^\n]*(?:closes|proves|discharges|supplies|installs)[^\n]*(?:Gold L1|source theorem|OriginalCriticalCapacityVariation|TFE2748B|physical)/i,
  "child or atom count promoted to Gold L1 source" =>
    /(?:physical child count|counting zoomed child|child-normalized(?: unit)?(?: fresh)?(?: readout)? sum|sum over (?:atom|child|packet) labels)[^\n]*(?:closes|proves|discharges|supplies|installs)/i,
  "raw atom bookkeeping promoted to weighted storage" =>
    /raw atom bookkeeping[^\n]*(?:closes|proves|discharges|supplies|installs)[^\n]*(?:selected|weighted|storage|Gold L1)/i
}.freeze

NEGATING_CONTEXT = /\b(?:not|no|never|invalid|quarantine|cannot|can't|must not|only)\b/i.freeze

def relative(path)
  Pathname.new(path).expand_path.relative_path_from(ROOT).to_s
end

def preview(line)
  line.gsub(/\s+/, " ").strip
end

def read_text(path)
  path.read
rescue ArgumentError
  ""
end

violations = []

AUTHORITY_MARKERS.each do |relative_path, markers|
  path = ROOT.join(relative_path)
  unless path.file?
    violations << "#{relative_path}: missing Gold L1 sum-custody authority surface"
    next
  end

  text = read_text(path)
  markers.each do |marker|
    next if text.include?(marker)

    violations << "#{relative_path}: missing sum custody marker #{marker}"
  end

  text.each_line.with_index(1) do |line, line_no|
    next if line.match?(NEGATING_CONTEXT)

    HIGH_RISK_POSITIVE_SUM_CLAIMS.each do |label, pattern|
      next unless line.match?(pattern)

      violations << "#{relative(path)}:#{line_no}: #{label}: #{preview(line)}"
    end
  end
end

audit_path = ROOT.join(CUSTODY_AUDIT_PATH)
if audit_path.file?
  audit_text = read_text(audit_path)
  AUDIT_REQUIRED_MARKERS.each do |marker|
    next if audit_text.include?(marker)

    violations << "#{CUSTODY_AUDIT_PATH}: missing audit marker #{marker}"
  end
else
  violations << "#{CUSTODY_AUDIT_PATH}: missing Gold L1 summation type custody audit"
end

if violations.empty?
  puts "GOLD_L1_SUM_CUSTODY OK"
else
  warn violations.join("\n")
  exit 1
end
