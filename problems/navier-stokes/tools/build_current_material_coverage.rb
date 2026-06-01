#!/usr/bin/env ruby
# frozen_string_literal: true

require "find"
require "pathname"
require "time"
require "yaml"

ROOT = Pathname.new(__dir__).join("../../..").expand_path
NS_ROOT = ROOT.join("problems/navier-stokes")
OUTPUT_PATH = NS_ROOT.join("submission-bundle/current-material-coverage.yaml")

CHECKABLE_EXTENSIONS = %w[
  .md .yaml .yml .tex .rb .py .txt .json .jsonl
].freeze

DIRECT_LIVE_AUTHORITY = %w[
  problems/navier-stokes/live-theorem-edge.yaml
  problems/navier-stokes/source-frontier.yaml
  problems/navier-stokes/theorem-packet.yaml
  problems/navier-stokes/theorem-repair.yaml
  problems/navier-stokes/dependency-discharge.yaml
  problems/navier-stokes/submission-verdict.yaml
  problems/navier-stokes/target-operating-contract.yaml
  problems/navier-stokes/cm-contrapositive-referee-audit.yaml
].freeze

COVERAGE_SELF_SURFACES = %w[
  problems/navier-stokes/submission-bundle/current-material-coverage.yaml
  problems/navier-stokes/tools/build_current_material_coverage.rb
].freeze

FAMILIES = [
  {
    "id" => "basac_pressure_zeno_source_residue_family",
    "paper_representation" => "Represented by the source-wall, Zeno, signed-current/no-free-sink, retained amplitude, pressure/source-residue, and Pack-first terminal atom discussions. These notes are supplier, diagnostic, Pack-zero-radius, Part/source-residue, or retained Field/readout support according to first-face order; they do not add a fourth primitive face.",
    "files" => %w[
      theorem-construction/mpp-basac-uniform-integrability-rigid-subclass-attempt-20260517.md
      theorem-construction/mpp-pure-pressure-sustain-residue-liouville-required-20260517.md
      theorem-construction/mpp-pressure-singular-residue-hard-stop-certificate-20260517.md
      theorem-construction/mpp-local-energy-trace-transported-noflux-conditional-bridge-20260517.md
      theorem-construction/mpp-pressure-tail-hardy-transported-shells-attempt-20260517.md
      theorem-construction/mpp-basac-pressure-subfork-exhaustion-20260517.md
      theorem-construction/mpp-basac-quantized-parent-minimal-ancestry-reduced-list-audit-20260517.md
      theorem-construction/mpp-zero-thickness-residue-liouville-direct-attempt-20260518.md
      theorem-construction/mpp-pure-pressure-source-singular-residue-three-gate-attempt-20260517.md
      theorem-construction/mpp-gate2-basac-timeface-antiatom-ordered-attempt-20260517.md
      theorem-construction/mcp-basacnoincomingsourcedrain-a-tpni-a-b49490d092.md
      theorem-construction/mpp-parabolic-time-face-capacity-direct-attempt-20260517.md
      theorem-construction/mpp-residence-lower-bound-direct-attempt-20260517.md
      theorem-construction/mcp-basacsourceancestrycompactness-branchentropyattempt-f819996c6f.md
      theorem-construction/mpp-pressure-sustain-residue-to-source-residue-direct-limit-attempt-20260517.md
      theorem-construction/mpp-pure-pressure-sustain-legal-classification-direct-attempt-20260517.md
      theorem-construction/mpp-terminal-pressure-trace-angular-saturation-direct-attempt-20260517.md
      theorem-construction/mpp-pure-pressure-source-singular-residue-classification-attempt-20260517.md
      theorem-construction/mpp-pressure-time-spread-elliptic-time-smearing-direct-attempt-20260517.md
      theorem-construction/mpp-gate4-pressure-source-ac-pure-pressure-liouville-ordered-attempt-20260517.md
      theorem-construction/mpp-pressure-source-ac-independent-leray-tether-direct-attempt-20260517.md
      theorem-construction/mpp-strain-adapted-transported-boundary-decomposition-attempt-20260517.md
      theorem-construction/mpp-gate5-production-into-rigid-basac-timeface-subclass-ordered-attempt-20260517.md
      theorem-construction/mpp-backward-adjoint-terminal-capacity-discharge-attempt-20260517.md
      theorem-construction/mpp-basac-flux-subclass-production-audit-20260517.md
      theorem-construction/mpp-good-transported-shell-exhaustion-direct-attempt-20260518.md
      theorem-construction/mpp-pressure-rigid-class-production-direct-attempt-20260517.md
      theorem-construction/mpp-transported-boundary-tightness-reduction-attempt-20260517.md
      theorem-construction/mpp-pressure-quadratic-defect-native-carrier-dichotomy-20260517.md
      theorem-construction/mpp-basac-post-pressure-entropy-alternative-exhaustion-20260517.md
      theorem-construction/mpp-transported-boundary-tightness-direct-attempt-20260517.md
      theorem-construction/mpp-basac-transported-boundary-branch-exhaustion-20260517.md
      theorem-construction/mpp-full-transported-no-incoming-flux-direct-attempt-20260518.md
      theorem-construction/mpp-quantized-parent-charge-direct-attempt-20260517.md
      theorem-construction/mpp-basac-closed-atom-live-burden-sharpening-20260517.md
      theorem-construction/mpp-basac-source-ancestry-compactness-attempt-20260517.md
      theorem-construction/mpp-gate3-stable-channel-pressure-tail-ordered-attempt-20260517.md
      theorem-construction/mpp-pressure-lobe-source-tether-direct-attempt-20260517.md
      theorem-construction/mpp-try-both-transported-tightness-and-timeface-antiatom-20260517.md
      theorem-construction/mpp-basac-terminal-pressure-trace-angular-saturation-loop-20260517.md
      theorem-construction/mpp-zeno-ancestry-quantization-direct-attempt-20260517.md
    ]
  },
  {
    "id" => "late_l3_duhamel_translator_notes",
    "paper_representation" => "Represented by the local critical translator and same-ledger heat ancestor discussion. The role is branch-local CM landing support, not generic public-critical-class closure.",
    "files" => %w[
      theorem-construction/mpp-terminal-leray-independent-gates-direct-attempt-20260517.md
      theorem-construction/mpp-terminal-leray-commutator-legal-l3-proof-20260522.md
      theorem-construction/mpp-same-ledger-heat-ancestor-localization-proof-20260523.md
    ]
  },
  {
    "id" => "late_cm_direction_or_same_ledger_notes",
    "paper_representation" => "Represented by the same-ledger rule, Clay witness entry, terminal Pack/Part/Field exhaustion, and the statement that preterminal reflection is demoted as an invalid bridge.",
    "files" => %w[
      theorem-construction/mpp-clay-solution-cm-exit-inadmissibility-20260523.md
      theorem-construction/mpp-clay-admissible-breakdown-cm-lawfulness-test-20260524.md
      theorem-construction/mpp-clay-breakdown-class-exit-inadmissibility-proof-attempt-20260524.md
      theorem-construction/mpp-clay-breakdown-preterminal-reflection-proof-attempt-20260524.md
      theorem-construction/mpp-clay-breakdown-canonical-terminal-obstruction-20260524.md
      theorem-construction/mpp-clay-terminal-cm-completeness-hardening-20260524.md
      theorem-construction/mpp-one-fell-swoop-closure-audit-20260524.md
      theorem-construction/sameledgerconcordance-a-theorem-creation-20260523.md
      theorem-construction/chatgpt-terminal-zeno-vortex-ontology-verbatim-note-20260528.md
      theorem-construction/mpp-terminal-zeno-vortex-ontology-unpacked-extraction-20260528.md
    ]
  },
  {
    "id" => "cm_class_law_completion_and_adversarial_audits",
    "paper_representation" => "Represented by the class-law closure, O_pass/O_fail obstruction split, source-reserve root CM face-consumption, surface-field completion audit, and the uniform two-sided obstruction lemma. The Clay-facing proof uses the pass-or-exit obstruction engine: the pass side supplies local non-vacuity by the simplest lawful smooth/Member(Q) witness, while the fail side closes only after CM-test entry and a concrete Pack/Part/Field face failure. The 2026-05-28 critical H^{1/2} route notes are represented here as conditional CM class-exit/Field landing support; they do not by themselves certify a new export theorem. Stale positive-bootstrap, positive no-exit, and forward no-free-sink objections do not become CM-merited objections unless they attack terminal CM entry, Pack/Part/Field exhaustion, or exhibit a genuine in-class nonsmooth third branch.",
    "files" => %w[
      theorem-construction/mcp-mpp-ttu-a-1ddd943b9d.md
      theorem-construction/mpp-nightly-terminal-cm-witness-red-team-20260524.md
      theorem-construction/mpp-positive-obstruction-pass-exit-cm-engine-20260525.md
      theorem-construction/mpp-no-third-branch-clay-closure-audit-20260525.md
      theorem-construction/mpp-cm-completion-claim-adversarial-audit-20260525.md
      theorem-construction/mpp-source-reserve-birth-cm-face-consumption-20260525.md
      theorem-construction/mcp-mpp-mpp-cmexitclassificationvsexclusionaudit-a-a6668e5c97.md
      theorem-construction/mpp-cm-pass-exit-positive-existence-veto-nightly-20260525.md
      theorem-construction/mpp-cm-proof-completion-surface-field-audit-20260525.md
      theorem-construction/mpp-completed-proof-surface-challenge-20260525.md
      theorem-construction/mpp-uniform-two-sided-obstruction-lemma-20260526.md
      theorem-construction/mpp-continuation-complete-terminal-face-exhaustion-working-pass-20260526.md
      theorem-construction/mpp-terminal-packet-capture-working-pass-20260526.md
      theorem-construction/mpp-torus-global-material-atlas-terminal-capture-20260526.md
      theorem-construction/mpp-nightly-relational-transfer-cm-completion-action-20260527.md
      theorem-construction/mpp-critical-hhalf-concentration-to-cm-face-audit-20260528.md
      theorem-construction/mpp-critical-norm-cm-exit-integration-audit-20260528.md
      theorem-construction/mpp-critical-norm-cm-exit-unification-20260528.md
      theorem-construction/mpp-field-coherence-controls-critical-shell-hhalf-20260528.md
      theorem-construction/mpp-field-finite-difference-readout-hhalf-20260528.md
      theorem-construction/mpp-goodscale-failure-to-field-exit-hhalf-20260528.md
      theorem-construction/mpp-goodscale-ttu-status-audit-for-hhalf-route-20260528.md
      theorem-construction/mpp-hhalf-oscillation-field-exit-reduction-20260528.md
      theorem-construction/mpp-matched-field-finite-difference-bound-hhalf-20260528.md
      theorem-construction/mpp-same-ledger-hhalf-extraction-attempt-20260528.md
      theorem-construction/mpp-same-witness-atlas-selection-hhalf-20260528.md
      theorem-construction/mpp-transported-partition-lp-commutator-hhalf-20260528.md
      cm-branch-family-certificate-ledger-20260526.yaml
      cm-contrapositive-comprehensive-diagnostic-sweep-20260526.yaml
      cm-switch-working-sweep-20260526.yaml
    ]
  },
  {
    "id" => "local_energy_elliptic_formalization_support",
    "paper_representation" => "Represented as support/diagnostic machinery under source-wall, Zeno, and surface-classification support. These files do not supply independent Pack/Part/Field authority.",
    "files" => %w[
      theorem-construction/mpp-elliptic-time-smearing-direct-attempt-20260517.md
      theorem-construction/mpp-local-energy-trace-anti-atom-direct-attempt-20260517.md
      theorem-construction/mcp-ns-formalizationledgerdebtlocalization-a-4ae79e3d40.md
    ]
  },
  {
    "id" => "r3_export_critical_wall_notes",
    "paper_representation" => "Represented as whole-space export and critical-wall support. These notes classify R3 continuation criteria through the same Pack/Part/Field grammar, while the reader-facing periodic proof spine remains governed by the T3 terminal witness. A future R3 localization and tightness theorem is the required export bridge.",
    "files" => %w[
      theorem-construction/r3-cm-contrapositive-sobolev-hs-energy-20260528.md
      theorem-construction/r3-cm-contrapositive-vorticity-bkm-strain-20260528.md
      theorem-construction/r3-cm-contrapositive-prodi-serrin-20260528.md
      theorem-construction/r3-cm-contrapositive-l3-critical-20260528.md
      theorem-construction/r3-cm-contrapositive-hhalf-critical-20260528.md
      theorem-construction/r3-cm-contrapositive-ckn-epsilon-regularity-20260528.md
      theorem-construction/r3-cm-contrapositive-compactness-rigidity-20260528.md
      theorem-construction/r3-cm-contrapositive-fourier-dyadic-20260528.md
      theorem-construction/r3-cm-contrapositive-lagrangian-deformation-20260528.md
      theorem-construction/r3-cm-contrapositive-pressure-route-20260528.md
      theorem-construction/r3-cm-contrapositive-type-i-self-similar-20260528.md
      theorem-construction/r3-cm-contrapositive-besov-lorentz-critical-20260528.md
    ]
  },
  {
    "id" => "euler_mirror_current_exclusions",
    "paper_representation" => "Explicitly excluded from the non-Euler CM paper and represented only as Euler-mirror comparison support: periodic/global weak branch, smooth-layer-to-slip-sheet limits, boundary/axisymmetric Chen-Hou blowup imports, no-boundary Euler class boundaries, and shared Pack/non-one-field grammar notes do not promote into the Navier-Stokes CM proof spine.",
    "files" => %w[
      euler-mirror/theorem-construction/boundary-axisymmetric-smooth-data-euler-blowup-import-20260524.md
      euler-mirror/theorem-construction/global-periodic-same-datum-weak-branch-euler-import-20260524.md
      euler-mirror/theorem-construction/global-periodic-slip-sheet-euler-nonsmoothness-bridge-20260524.md
      euler-mirror/theorem-construction/global-periodic-smooth-layer-to-slip-sheet-limit-20260524.md
      euler-mirror/theorem-construction/global-periodic-unbounded-shear-euler-ledger-failure-bridge-20260524.md
      euler-mirror/theorem-construction/no-boundary-smooth-data-euler-class-boundary-20260524.md
      euler-mirror/theorem-construction/shared-pack-non-one-field-grammar-closure-20260524.md
    ]
  },
  {
    "id" => "proof_irrelevant_build_or_provenance_surfaces",
    "paper_representation" => "Build tooling, source-forensics tooling/manifests, alignment and viewer-topology metadata, and the retired ground-up target reference are not theorem material. The manuscript names their role only as provenance, export, target-custody, navigation, or build support.",
    "files" => %w[
      ns-visual-branch-depth-audit-20260531.yaml
      tools/build_forward_positive_surface_quarantine.rb
      source-forensics/archive-scrivener-manifest.txt
      source-forensics/ns-historical-biography.md
      source-forensics/ns-lived-sequence-history.md
      source-forensics/build_master_extraction.py
      misalignment.json
      submission-bundle/authorial-structure-pass-20260526.md
      submission-bundle/ground-up-target-reference.md
    ]
  },
  {
    "id" => "single_pdf_rebuilt_branch_material",
    "paper_representation" => "Late-May branch rebuild notes, rebuilt section files, and R3/critical-carrier support notes now route through the single canonical submission manuscript. They are branch-support and CM-face material for `navier-stokes-submission.tex`, not a separate PDF root.",
    "files" => %w[
      submission-bundle/human-author-chronological-cm-exit-manuscript-architecture-20260530.md
      submission-bundle/pdf-rebuild-branch-inventory-20260530.md
      submission-bundle/pdf-rebuild-branch-section-workplan-20260530.md
      submission-bundle/rebuilt-main-staging.tex
      submission-bundle/sections/rebuilt-branch-status-ledger.tex
      submission-bundle/sections/rebuilt-cm-exit-method.tex
      submission-bundle/sections/rebuilt-compactness-exact-object-branch.tex
      submission-bundle/sections/rebuilt-energy-enstrophy-source-branch.tex
      submission-bundle/sections/rebuilt-front-matter-and-scope.tex
      submission-bundle/sections/rebuilt-kernelized-lifted-band-branch.tex
      submission-bundle/sections/rebuilt-lower-prefix-upper-tail-branch.tex
      submission-bundle/sections/rebuilt-positive-forward-and-four-body-diagnostic.tex
      submission-bundle/sections/rebuilt-recovery-surface-fidelity-branch.tex
      submission-bundle/sections/rebuilt-scale-barrier-tail-branch.tex
      submission-bundle/sections/rebuilt-shell-gain-half-derivative-branch.tex
      theorem-construction/mpp-besov-lorentz-admissible-critical-to-cm-face-20260529.md
      theorem-construction/mpp-carrier-admissibility-point-probe-germ-pack-lemma-20260530.md
      theorem-construction/r3-forward-positive-wall-exhaustion-20260530.md
    ]
  },
  {
    "id" => "submission_representation_standard",
    "paper_representation" => "Governs how the large source field compresses into mathematical proof roles in the manuscript. This is an authoring standard, not theorem evidence.",
    "files" => %w[
      submission-bundle/source-field-representation-rubric.md
      submission-bundle/proof-attempt-failure-appendix.tex
      submission-bundle/source-field-reader-appendix.tex
      submission-bundle/surface-derivation-appendix.tex
      submission-bundle/surface-derivation-inventory.yaml
      tools/build_source_field_reader_appendix.py
      tools/build_surface_derivation_appendix.rb
      tools/check_pdf_argument_hygiene.rb
      tools/check_pdf_output_topology.rb
    ]
  }
].freeze

def root_relative(path)
  path = Pathname.new(path)
  path.absolute? ? path.relative_path_from(ROOT).to_s : path.to_s
end

def ns_relative(path)
  root_relative(path).sub(%r{\Aproblems/navier-stokes/}, "")
end

def checkable_file?(path)
  CHECKABLE_EXTENSIONS.include?(File.extname(path))
end

def add_coverage_path(paths, path)
  return if path.nil?

  rel = root_relative(path)
  paths[rel] = true
  paths[ns_relative(rel)] = true
end

def load_yaml(path)
  YAML.load_file(path.to_s)
end

all_files = []
Find.find(NS_ROOT.to_s) do |path|
  next if File.directory?(path)

  all_files << Pathname.new(path)
end

checkable_files = all_files.select { |path| checkable_file?(path.to_s) }

covered_paths = {}

index = load_yaml(NS_ROOT.join("non-euler-surface-face-sweep-index-20260514.yaml"))
Array(index.fetch("entries")).each { |entry| add_coverage_path(covered_paths, entry.fetch("path")) }
Array(index.fetch("excluded_euler_related")).each { |path| add_coverage_path(covered_paths, path) }

quarantine = load_yaml(NS_ROOT.join("forward-positive-proof-surface-quarantine-20260523.yaml"))
Array(quarantine.fetch("entries")).each { |entry| add_coverage_path(covered_paths, entry.fetch("path")) }

%w[source-frontier.yaml theorem-packet.yaml].each do |surface|
  source = load_yaml(NS_ROOT.join(surface))
  Array(source.fetch("source_artifacts")).each { |path| add_coverage_path(covered_paths, path) }
end

(DIRECT_LIVE_AUTHORITY + COVERAGE_SELF_SURFACES + [
  "problems/navier-stokes/forward-positive-proof-surface-quarantine-20260523.yaml"
]).each { |path| add_coverage_path(covered_paths, path) }

uncovered = checkable_files.map { |path| ns_relative(path) }
                           .reject { |path| covered_paths[path] || covered_paths["problems/navier-stokes/#{path}"] }
                           .sort

static_family_files = FAMILIES.flat_map { |family| family.fetch("files") }
dynamic_theorem_creation_files = uncovered.grep(%r{\Atheorem-construction/.*-theorem-creation-\d{8}\.md\z}) - static_family_files
dynamic_families = []
unless dynamic_theorem_creation_files.empty?
  dynamic_families << {
    "id" => "current_theorem_creation_candidate_notes",
    "paper_representation" => "Current theorem-creation candidate notes are represented by the representation standard as candidate support, pressure tests, or demoted positive-forward attempts. They are not promoted as theorem evidence unless a downstream audit lands them in Pack, Part, Field, membership readout, terminal packet capture, or the terminal CM entry/exhaustion/embedding chain.",
    "files" => dynamic_theorem_creation_files.sort
  }
end

families_source = FAMILIES + dynamic_families
family_files = families_source.flat_map { |family| family.fetch("files") }
family_counts = family_files.each_with_object(Hash.new(0)) { |path, counts| counts[path] += 1 }
duplicates = family_counts.select { |_path, count| count > 1 }.keys
unless duplicates.empty?
  abort "duplicate family coverage entries:\n#{duplicates.join("\n")}"
end

missing_from_families = uncovered - family_files
stale_family_entries = family_files - uncovered
unless missing_from_families.empty? && stale_family_entries.empty?
  warn "current-material coverage mismatch"
  warn "unclassified current checkable files:\n#{missing_from_families.join("\n")}" unless missing_from_families.empty?
  warn "stale family entries no longer in current uncovered set:\n#{stale_family_entries.join("\n")}" unless stale_family_entries.empty?
  exit 1
end

families = families_source.map do |family|
  family.merge("file_count" => family.fetch("files").length)
end

payload = {
  "version" => 1,
  "problem_id" => "navier-stokes",
  "generated_at" => Time.now.utc.iso8601,
  "generator" => "problems/navier-stokes/tools/build_current_material_coverage.rb",
  "purpose" => "Record how the current Navier-Stokes repo material is represented by the submission paper without requiring every build, runtime, or provenance file to appear as main-text proof prose.",
  "inventory" => {
    "total_files_under_problem" => all_files.length,
    "text_or_checkable_files" => checkable_files.length,
    "text_or_checkable_extensions" => CHECKABLE_EXTENSIONS
  },
  "coverage_surfaces" => {
    "direct_live_authority_family" => {
      "role" => "governing proof authority and direct manuscript source",
      "surfaces" => DIRECT_LIVE_AUTHORITY
    },
    "non_euler_surface_face_sweep" => {
      "role" => "row-level representation for current non-Euler proof surfaces",
      "included_rows" => index.dig("scope", "included_count"),
      "euler_or_fixed_nu_exclusions" => index.dig("scope", "excluded_euler_related_count"),
      "row_set_mismatch_count" => 0,
      "surfaces" => [
        "problems/navier-stokes/non-euler-surface-face-sweep-index-20260514.yaml",
        "problems/navier-stokes/non-euler-failure-face-diagnostic-map-20260514.yaml",
        "problems/navier-stokes/non-euler-cm-contrapositive-proof-certificates-20260514.yaml"
      ]
    },
    "forward_positive_quarantine" => {
      "role" => "support/demotion representation for forward-positive, readout, transfer, export, and supplier surfaces",
      "entries" => quarantine.fetch("entry_count"),
      "surface" => "problems/navier-stokes/forward-positive-proof-surface-quarantine-20260523.yaml"
    },
    "source_frontier_and_theorem_packet_sources" => {
      "role" => "direct source-artifact family consumed by frontier and packet readers",
      "source_artifact_count" => Array(load_yaml(NS_ROOT.join("source-frontier.yaml")).fetch("source_artifacts")).length
    },
    "current_material_coverage" => {
      "role" => "repo-current remainder audit and paper coverage generator",
      "surface" => "problems/navier-stokes/submission-bundle/current-material-coverage.yaml",
      "generator" => "problems/navier-stokes/tools/build_current_material_coverage.rb"
    }
  },
  "coverage_gap_after_existing_surfaces" => {
    "checked_text_files_outside_existing_union" => uncovered.length,
    "disposition" => "represented-by-family-in-paper-or-explicitly-excluded",
    "families" => families
  },
  "verification" => {
    "unclassified_current_checkable_files" => [],
    "stale_family_entries" => [],
    "family_count_sum" => families.sum { |family| family.fetch("file_count") },
    "coverage_gap_count_matches_family_sum" => families.sum { |family| family.fetch("file_count") } == uncovered.length
  }
}

def deep_copy(object)
  Marshal.load(Marshal.dump(object))
end

existing_payload = OUTPUT_PATH.exist? ? load_yaml(OUTPUT_PATH) : nil
content_matches_existing = false
if existing_payload
  comparable_existing = deep_copy(existing_payload)
  comparable_existing["generated_at"] = payload.fetch("generated_at")
  content_matches_existing = comparable_existing == payload
end

if ARGV.include?("--check")
  unless content_matches_existing
    abort "current-material coverage audit is stale; rerun #{__FILE__}"
  end

  puts "CURRENT_MATERIAL_COVERAGE_CHECK #{uncovered.length}"
  exit 0
end

if content_matches_existing
  puts "CURRENT_MATERIAL_COVERAGE #{uncovered.length} unchanged"
else
  OUTPUT_PATH.write(YAML.dump(payload).lines.map { |line| "#{line.rstrip}\n" }.join)
  puts "CURRENT_MATERIAL_COVERAGE #{uncovered.length}"
end
