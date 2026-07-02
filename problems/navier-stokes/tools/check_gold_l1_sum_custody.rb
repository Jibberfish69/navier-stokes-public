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
  ],
  "problems/navier-stokes/theorem-packet.yaml" => [
    "current_authority_override_20260702",
    "summation-type custody audit",
    "coupled-storage",
    "noncircular same-parent coupled"
  ],
  "problems/navier-stokes/submission-bundle/submission-export-status.yaml" => [
    "current_authority_override_20260702",
    "exported-stale-not-submission-ready",
    "noncircular same-parent coupled"
  ],
  "problems/navier-stokes/submission-bundle/submission-verdict.yaml" => [
    "current_authority_override_20260702",
    "submission_ready: false",
    "noncircular same-parent coupled"
  ],
  "problems/navier-stokes/submission-bundle/current-material-coverage.yaml" => [
    "current_authority_override_20260702",
    "provenance/coverage bookkeeping only",
    "noncircular same-parent coupled"
  ],
  "problems/navier-stokes/submission-bundle/surface-derivation-inventory.yaml" => [
    "current_authority_override_20260702",
    "not a closure surface",
    "noncircular same-parent coupled"
  ],
  "papers/navier-stokes/context/generated/snapshots/lane-lab/problems/navier-stokes/theorem-crank.yaml" => [
    "gold-l1-open-signed-height-restart-blocked",
    "gold-l1-open-signed-height-sign-persistence-wall",
    "theorem_authority_gate_all_discharged: false"
  ]
}.freeze

READER_SURFACE_PATHS = %w[
  problems/navier-stokes/external-paper/sections/main-result.tex
  problems/navier-stokes/external-paper/sections/roadmap.tex
  problems/navier-stokes/external-paper/periodic-main-clean.tex
  problems/navier-stokes/external-paper/periodic-appendix-bundle.md
  problems/navier-stokes/external-paper/reader-facing-abstract-intro-checklist.md
  problems/navier-stokes/external-paper/submission-synopsis.md
  problems/navier-stokes/submission-bundle/navier-stokes-submission.tex
  problems/navier-stokes/submission-bundle/periodic-appendix-bundle.md
  problems/navier-stokes/submission-bundle/sections/main-result.tex
  problems/navier-stokes/submission-bundle/sections/reader-facing-proof-program-front-pages.tex
  problems/navier-stokes/submission-bundle/sections/rebuilt-energy-enstrophy-source-branch.tex
  problems/navier-stokes/submission-bundle/sections/rebuilt-scale-barrier-tail-branch.tex
  problems/navier-stokes/submission-bundle/submission-synopsis.md
  problems/navier-stokes/submission-bundle/reader-facing-abstract-intro-checklist.md
  problems/navier-stokes/submission-bundle/source-field-reader-appendix.tex
  papers/navier-stokes/context/generated/snapshots/authority-cut/problems/navier-stokes/live-theorem-edge.md
  papers/navier-stokes/context/generated/snapshots/authority-cut/problems/navier-stokes/release-decision.yaml
  papers/navier-stokes/context/generated/snapshots/authority-cut/problems/navier-stokes/source-frontier.yaml
  papers/navier-stokes/context/generated/snapshots/authority-cut/problems/navier-stokes/theorem-packet.yaml
  papers/navier-stokes/context/generated/snapshots/paper-export/problems/navier-stokes/external-paper/sections/main-result.tex
  papers/navier-stokes/context/generated/snapshots/paper-export/problems/navier-stokes/submission-verdict.yaml
  papers/navier-stokes/context/generated/snapshots/paper-export/problems/navier-stokes/draft-v8.md
  papers/navier-stokes/build/output/authoritative-edge/navier-stokes.tex
  papers/navier-stokes/manuscript/generated/main.tex
].freeze

SUM_DRIFT_GUARD_PATHS = %w[
  problems/navier-stokes/source-frontier.yaml
  problems/navier-stokes/theorem-creation.yaml
  problems/navier-stokes/theorem-construction/mpp-forward-gold-native-birth-charge-packing-obstruction-test-20260627.md
  problems/navier-stokes/theorem-construction/mpp-forward-gold-scale-native-active-participation-native-reserve-hinge-20260628.md
  problems/navier-stokes/theorem-construction/mpp-forward-gold-tower-feedback-entropy-l1-attempt-20260630.md
  problems/navier-stokes/submission-bundle/navier-stokes-submission.tex
  papers/navier-stokes/manuscript/generated/main.tex
  papers/navier-stokes/build/output/authoritative-edge/navier-stokes.tex
].freeze

FORBIDDEN_SUM_DRIFT_CLAIMS = {
  "discrete charge-packing promoted as Gold target" =>
    /better\s+Gold\s+target.*?discrete\s+charge-packing/im,
  "native reserve atom theorem promoted as MPP-bearing producer" =>
    /MPP-bearing\s+native\s+reserve\s+theorem|build\s+the\s+native\s+reserve\s+atoms/i,
  "endpoint anti-atom promoted as direct missing theorem" =>
    /direct\s+theorem\s+still\s+missing\s+is.*?TerminalTimeFaceAntiAtom/im,
  "endpoint seed promoted as physical first-birth producer" =>
    /physical\s+first-birth\s+form\s+of\s+the\s+missing\s+producer/i,
  "Carleson readout promoted as selected-child count" =>
    /first\s+inequality\s+controls\s+the\s+number\s+and\s+weight\s+of\s+selected\s+children/i,
  "native reserve atom promoted as source object" =>
    /parent-known\s+native\s+reserve\s+atom|required\s+critical\s+atom|Gold\s+now\s+needs\s+SelectedSizeAtomLowerBound\.A\s+plus\s+CriticalNativeAtomPacking/i,
  "endpoint-seed packing promoted as global producer" =>
    /unproved\s+global\s+producer\s+is\s+endpoint-seed\s+packing/i,
  "singular entry atom packing promoted as real source" =>
    /real\s+source\s+is\s+packing\s+singular\s+entry\s+atoms/i
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
    /(?:#{SUM_TOKEN.source})[^\n]*(?:#{CLOSURE_VERB.source})[^\n]*(?:Gold\s+L1|source\s+theorem|OriginalCriticalCapacityVariation|TFE2748B|physical)/ix,
  "child or atom count promoted to Gold L1 source" =>
    /(?:physical child count|counting zoomed child|child-normalized(?: unit)?(?: fresh)?(?: readout)? sum|sum over (?:atom|child|packet) labels)[^\n]*(?:#{CLOSURE_VERB.source})/ix,
  "raw atom bookkeeping promoted to weighted storage" =>
    /raw\s+atom\s+bookkeeping[^\n]*(?:#{CLOSURE_VERB.source})[^\n]*(?:selected|weighted|storage|Gold\s+L1)/ix
}.freeze

HIGH_RISK_COUPLED_STORAGE_CLAIMS = {
  "coupled storage loop promoted to Gold L1 closure" =>
    /(?:TFE2748B\.(?:1392|1393|1541a|1548|1555|1556)|ActiveTransitLocalStorage\.A|FullExchangeNoSelfFeedingStorage\.A|ParentActivePotentialCapacityDomination\.A|CriticalEndpointDepletionStorage\.A|FiniteCapacitaryExcess\.A|preallocated\s+critical[-\s]source\s+storage)[^\n]*(?:#{CLOSURE_VERB.source})[^\n]*(?:Gold\s+L1|Gold|source\s+theorem|OriginalCriticalCapacityVariation|CriticalCapacityVariationStorage|closure)/ix,
  "linear storage chain promoted to closure" =>
    /(?:linear|sequential|mutual)\s+(?:proof\s+)?(?:chain|implication|loop)[^\n]*(?:#{CLOSURE_VERB.source})[^\n]*(?:Gold|source\s+theorem|closure)/ix
}.freeze

NEGATING_CONTEXT = /\b(?:not|no|never|invalid|quarantine|cannot|can't|must not|only)\b/i.freeze
READER_SAFE_CONTEXT = /\b(?:not\s+(?:a\s+)?closed|conditional|only\s+(?:as\s+)?(?:the\s+)?conditional|pending|open(?:\s+ingredient)?|requires|after\s+.*proved|once\s+.*proved|under\s+.*input|provenance\s+only|stale|readout)\b/i.freeze

HIGH_RISK_READER_CLAIMS = {
  "reader surface claims global smoothness is proved" =>
    /(?:We\s+prove\s+global\s+smoothness|We\s+present\s+(?:a\s+)?(?:CM-contrapositive\s+)?proof\s+of\s+Navier[-\u2013]Stokes\s+global\s+regularity|Navier-Stokes\s+global\s+regularity\s+is\s+proved|For\s+every\s+smooth\s+divergence-free\s+zero-mean\s+datum\s+on\s+T\s*3[^\n]*global\s+smooth\s+solution|Smooth\s+divergence-free\s+zero-mean\s+data\s+on\s+T\s*3\s+generate\s+a\s+unique\s+global\s+smooth\s+periodic\s+Navier-Stokes\s+solution|has\s+a\s+unique\s+global\s+smooth\s+periodic\s+solution)/i,
  "reader surface uses conditional global-smoothness sentence as theorem-like conclusion" =>
    /would\s+have\s+a\s+unique\s+global\s+smooth\s+periodic\s+solution/i,
  "reader surface claims closed periodic theorem" =>
    /(?:closed\s+periodic\s+theorem\s+surface|closed\s+theorem-program\s+surface|current\s+closed\s+theorem\s+remains|periodic[^\n]*remains[^\n]*closed\s+theorem-program|route-accurate\s+closure\s+statement|proof\s+promotion\s+packet\s+reports[^\n]*passed|proof\s+is\s+closed|no\s+unresolved\s+source-frontier\s+obligation|no\s+authoritative-source\s+gaps\s+block\s+export\s+readiness|is\s+closed\s+conditionally|already\s+localized\s+and\s+discharged|no\s+longer\s+a\s+separate\s+frontier)/i,
  "reader surface uses stale Gold frontier" =>
    /(?:positive\s+critical\s+transfer\s+theorem\s+inside\s+the\s+native-reserve|current\s+open\s+theorem\s+is\s+the\s+positive\s+critical\s+transfer|complete-frame\s+Hodge\s+clock|Gold\s+closes\s+this\s+boundary\s+only\s+by\s+proving\s+scale-uniform\s+control|exact\s+gold\s+child\s+left\s+by\s+that\s+pulse|missing\s+Pack\s+anti-concentration\s+theorem\s+stays\s+visible|gold\s+Pack\s+anti-concentration\s+theorem)/i,
  "generated status surface marks submission or authority closed" =>
    /(?:submission_ready:\s*true|source_frontier_clear:\s*true|all_discharged:\s*true|terminal_safe:\s*true|submission_posture:\s*submission-candidate|disposition:\s*submission-candidate|status:\s*submission-candidate|current_stage:\s*submission-candidate|current_package_status:\s*full-mpp-closure-ready)/i
}.freeze

def relative(path)
  Pathname.new(path).expand_path.relative_path_from(ROOT).to_s
end

def normalized_text(text)
  text.gsub(/\s+/, " ")
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
  normalized = normalized_text(text)
  markers.each do |marker|
    next if normalized.include?(normalized_text(marker))

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

READER_SURFACE_PATHS.each do |relative_path|
  path = ROOT.join(relative_path)
  next unless path.file?

  read_text(path).each_line.with_index(1) do |line, line_no|
    next if line.match?(READER_SAFE_CONTEXT)

    HIGH_RISK_READER_CLAIMS.each do |label, pattern|
      next unless line.match?(pattern)

      violations << "#{relative(path)}:#{line_no}: #{label}: #{preview(line)}"
    end
  end
end

SUM_DRIFT_GUARD_PATHS.each do |relative_path|
  path = ROOT.join(relative_path)
  next unless path.file?

  text = read_text(path)
  FORBIDDEN_SUM_DRIFT_CLAIMS.each do |label, pattern|
    match = text.match(pattern)
    next unless match

    line_no = text[0...match.begin(0)].count("\n") + 1
    line = text.lines[line_no - 1].to_s
    violations << "#{relative(path)}:#{line_no}: #{label}: #{preview(line)}"
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
