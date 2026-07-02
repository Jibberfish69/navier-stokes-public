#!/usr/bin/env ruby
# frozen_string_literal: true

require "pathname"

ROOT = Pathname.new(ENV.fetch("NS_GOLD_L1_GUARD_ROOT") { Pathname.new(__dir__).join("../../..").expand_path }).expand_path

SUM_CUSTODY_AUDIT_PATH = "problems/navier-stokes/theorem-construction/mpp-forward-gold-summation-type-custody-audit-20260702.md"
COUPLED_STORAGE_AUDIT_PATH = "problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-coupled-storage-loop-audit-20260702.md"

AUTHORITY_MARKERS = {
  "problems/navier-stokes/live-theorem-edge.yaml" => [
    "summation_type_custody",
    SUM_CUSTODY_AUDIT_PATH,
    "coupled_storage_loop_custody",
    COUPLED_STORAGE_AUDIT_PATH
  ],
  "problems/navier-stokes/source-frontier.yaml" => [
    "current_gold_l1_summation_type_custody_audit_20260702",
    "current_gold_l1_historical_sum_quarantine_20260702",
    SUM_CUSTODY_AUDIT_PATH,
    "current_gold_l1_coupled_storage_loop_audit_20260702",
    "current_gold_l1_coupled_storage_loop_correction_20260702",
    COUPLED_STORAGE_AUDIT_PATH
  ],
  "problems/navier-stokes/theorem-creation.yaml" => [
    "current_gold_l1_summation_type_custody_audit_20260702",
    "current_gold_l1_historical_sum_quarantine_20260702",
    SUM_CUSTODY_AUDIT_PATH,
    "current_gold_l1_coupled_storage_loop_audit_20260702",
    "current_gold_l1_coupled_storage_loop_correction_20260702",
    COUPLED_STORAGE_AUDIT_PATH
  ]
}.freeze

SUM_AUDIT_REQUIRED_MARKERS = [
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

COUPLED_STORAGE_AUDIT_REQUIRED_MARKERS = [
  "TFE2748B.1393",
  "TFE2748B.1541a",
  "TFE2748B.1548",
  "TFE2748B.1555",
  "TFE2748B.1556",
  "CSA.4",
  "rho(K_P)<1",
  "one same-parent coupled storage theorem",
  "simultaneous strict coupled storage inequality",
  "independent proof of one face",
  "It is wrong as a linear proof chain",
  "not a proof of the wall"
].freeze

SUM_TOKEN = /
  (?:sum_|\\sum_)(?:j|Q|ell|\\ell|alpha|\\alpha)|
  \\sum(?:\\limits)?_\{?\s*(?:j|Q|ell|\\ell|alpha|\\alpha)|
  ∑|
  dyadic\s+sum\s+over\s+(?:shells|children|atoms|packet\s+labels|point\s+samples)
/ix.freeze

CLOSURE_VERB = /
  closes|proves|discharges|supplies|installs|yields|gives|settles|establishes|certifies
/ix.freeze

HIGH_RISK_POSITIVE_SUM_CLAIMS = {
  "point-sample sum promoted to Gold L1 source" =>
    /(?:#{SUM_TOKEN.source})[^\n]*(?:#{CLOSURE_VERB.source})[^\n]*(?:Gold L1|source theorem|OriginalCriticalCapacityVariation|TFE2748B|physical)/ix,
  "child or atom count promoted to Gold L1 source" =>
    /(?:physical child count|counting zoomed child|child-normalized(?: unit)?(?: fresh)?(?: readout)? sum|sum over (?:atom|child|packet) labels)[^\n]*(?:#{CLOSURE_VERB.source})/ix,
  "raw atom bookkeeping promoted to weighted storage" =>
    /raw atom bookkeeping[^\n]*(?:#{CLOSURE_VERB.source})[^\n]*(?:selected|weighted|storage|Gold L1)/ix
}.freeze

HIGH_RISK_COUPLED_STORAGE_CLAIMS = {
  "coupled storage loop promoted to Gold L1 closure" =>
    /(?:TFE2748B\.(?:1392|1393|1541a|1548|1555|1556)|ActiveTransitLocalStorage\.A|FullExchangeNoSelfFeedingStorage\.A|ParentActivePotentialCapacityDomination\.A|CriticalEndpointDepletionStorage\.A|FiniteCapacitaryExcess\.A|preallocated critical[-\s]source storage)[^\n]*(?:#{CLOSURE_VERB.source})[^\n]*(?:Gold L1|Gold|source theorem|OriginalCriticalCapacityVariation|CriticalCapacityVariationStorage|closure)/ix,
  "linear storage chain promoted to closure" =>
    /(?:linear|sequential|mutual)\s+(?:proof\s+)?(?:chain|implication|loop)[^\n]*(?:#{CLOSURE_VERB.source})[^\n]*(?:Gold|source theorem|closure)/ix
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
    HIGH_RISK_COUPLED_STORAGE_CLAIMS.each do |label, pattern|
      next unless line.match?(pattern)

      violations << "#{relative(path)}:#{line_no}: #{label}: #{preview(line)}"
    end
  end
end

audit_requirements = {
  SUM_CUSTODY_AUDIT_PATH => SUM_AUDIT_REQUIRED_MARKERS,
  COUPLED_STORAGE_AUDIT_PATH => COUPLED_STORAGE_AUDIT_REQUIRED_MARKERS
}.freeze

audit_requirements.each do |audit_relative_path, markers|
  audit_path = ROOT.join(audit_relative_path)
  if audit_path.file?
    audit_text = read_text(audit_path)
    markers.each do |marker|
      next if audit_text.include?(marker)

      violations << "#{audit_relative_path}: missing audit marker #{marker}"
    end
  else
    violations << "#{audit_relative_path}: missing Gold L1 custody audit"
  end
end

if violations.empty?
  puts "GOLD_L1_SUM_CUSTODY OK"
else
  warn violations.join("\n")
  exit 1
end
