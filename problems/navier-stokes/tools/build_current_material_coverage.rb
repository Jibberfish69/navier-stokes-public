#!/usr/bin/env ruby
# frozen_string_literal: true

require "find"
require "pathname"
require "time"
require "yaml"

ROOT = Pathname.new(__dir__).join("../../..").expand_path
NS_ROOT = ROOT.join("problems/navier-stokes")
OUTPUT_PATH = NS_ROOT.join("submission-bundle/current-material-coverage.yaml")
TARGET_OPERATING_CONTRACT = NS_ROOT.join("target-operating-contract.yaml")

CHECKABLE_EXTENSIONS = %w[
  .md .yaml .yml .tex .rb .py .txt .json .jsonl
].freeze

DIRECT_LIVE_AUTHORITY = %w[
  problems/navier-stokes/PROOF-PROGRAM.md
  problems/navier-stokes/proof-program-surface-registry.yaml
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
  problems/navier-stokes/submission-bundle/pdf-depth-promotion-check.yaml
  problems/navier-stokes/submission-bundle/pdf-depth-promotion-run.yaml
  problems/navier-stokes/tools/build_current_material_coverage.rb
].freeze

target_contract = YAML.load_file(TARGET_OPERATING_CONTRACT.to_s) || {}
proof_completion = target_contract.fetch("proof_program_completion")
unless proof_completion["status"] == "established-complete" &&
       proof_completion["mpp_status"] == "solved" &&
       proof_completion["producer_status"] == "proved-datum-generated-whole-terminal-compatible-rectangles" &&
       proof_completion["closure_status"] == "proved" &&
       proof_completion["active_direct_boundary"] == "none"
  abort "canonical completed proof-program authority changed"
end
silver_program = Array(target_contract["proof_program_topology"]).find do |entry|
  entry.is_a?(Hash) && entry.key?("silver_vpi_contrapositive_audit_20260722")
end
abort "canonical Silver program missing from #{TARGET_OPERATING_CONTRACT}" unless silver_program

silver_contract = silver_program.fetch("silver_vpi_contrapositive_audit_20260722")
silver_rule = silver_program["silver_vpi_complement_rule"] || silver_program.fetch("silver_one_line_rule_20260722")
gold_lane = target_contract.fetch("open_root_group", {})
gold_burden = gold_lane.fetch("exact_live_theorem_grade_burden", {})
silver_one_line = silver_contract.fetch("one_line")
required_silver_fragments = [
  "not Smooth(Q) => not Member(Q) => not VPIParticipation(Q)",
  "VPIParticipation(Q) => Member(Q) => Smooth(Q)"
]
unless required_silver_fragments.all? { |fragment| silver_one_line.include?(fragment) }
  abort "canonical Silver program no longer contains the VPI complement contrapositive"
end
unless silver_rule.include?("Pack") && silver_rule.include?("outside CM")
  abort "canonical Silver program no longer keeps Pack outside CM"
end
unless silver_contract.fetch("closure_status") == "logical-classification-terminal-participation-retention-unproved"
  abort "canonical Silver classification changed its terminal-retention boundary"
end
unless gold_burden["status"] == "parallel-gold-research-nonblocking" && gold_lane["top_level_release_blocker"] == false
  abort "canonical Gold lane is no longer independent and nonblocking"
end

CURRENT_AUTHORITY_OVERRIDE_20260722 = "This inventory is provenance and coverage bookkeeping only. The direct datum-generated compatible-intersection proof is established complete: compatible whole-terminal rectangles, projective intersection, common smooth endpoint, pressure-complete jet, restart, uniqueness, and T_*=infinity. Silver remains an exact downstream participation-loss classification; Pack remains Field-window evidence outside CM.".freeze
GOLD_L1_CUSTODY_PROVENANCE_20260702 = {
  "current_authority_override_20260702" => "The 2026-07-02 Gold custody audits remain historical downstream support under the completed direct proof.",
  "inventory_role" => "provenance/coverage bookkeeping only",
  "historical_sufficient_route" => "signed critical-height sign-persistence / peak-height theorem",
  "current_interpretation" => "Preserve the sum and coupled-storage custody constraints without creating a second live theorem obligation."
}.freeze
CURRENT_SILVER_AUTHORITY_20260722 = {
  "status" => "downstream-logical-classification-not-required-for-direct-closure",
  "classification_status" => silver_contract.fetch("closure_status"),
  "mathematical_status" => proof_completion.fetch("status"),
  "mpp_status" => proof_completion.fetch("mpp_status"),
  "active_direct_boundary" => proof_completion.fetch("active_direct_boundary"),
  "producer_status" => proof_completion.fetch("producer_status"),
  "closure_status" => proof_completion.fetch("closure_status"),
  "authority" => silver_contract.fetch("authority"),
  "one_line" => silver_one_line,
  "proof_method" => silver_contract.fetch("proof_method"),
  "same_history_rule" => silver_rule,
  "terminal_presentations" => silver_contract.fetch("terminal_presentations"),
  "conditional_euler" => silver_contract.fetch("conditional_euler"),
  "weak_record_boundary" => silver_contract.fetch("weak_record_boundary"),
  "pack_boundary" => "Pack is Field-window evidence outside CM.",
  "gold_status" => gold_burden.fetch("status"),
  "gold_top_level_release_blocker" => gold_lane.fetch("top_level_release_blocker"),
  "artifact_boundary" => "Paper and PDF work is separate from mathematical proof status and outside this no-paper repair."
}.freeze

FAMILIES = [
  {
    "id" => "basac_pressure_zeno_source_residue_family",
    "paper_representation" => "Historical source-wall, Zeno, signed-current, retained-amplitude, pressure/source-residue, and terminal-atom notes are preserved as provenance and negative-side presentation support. Any lawful use must reduce the alleged departure to loss of membership and full VPI participation on the same original history. Part and Field may locate that one loss; Pack remains Field-window evidence outside CM and never becomes an extra Silver premise.",
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
    "paper_representation" => "The local critical translator and same-ledger heat-ancestor notes are preserved as branch-local support for identifying a presentation of lost full VPI participation. They are not independent Silver premises or generic critical-class closure.",
    "files" => %w[
      theorem-construction/mpp-terminal-leray-independent-gates-direct-attempt-20260517.md
      theorem-construction/mpp-terminal-leray-commutator-legal-l3-proof-20260522.md
      theorem-construction/mpp-same-ledger-heat-ancestor-localization-proof-20260523.md
    ]
  },
  {
    "id" => "late_cm_direction_or_same_ledger_notes",
    "paper_representation" => "The same-ledger, witness-entry, terminal Part/Field, and preterminal-reflection notes are retained as provenance for the negative inventory. The exhaustive implication and its direct contrapositive classify full VPI participation; they do not prove terminal retention of that participation or supply a separate no-exit theorem.",
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
    "paper_representation" => "These class-law, pass/fail, no-third-branch, source-reserve, Part/Field, surface-field, and critical H^{1/2} notes are historical provenance beneath the current Silver classification. They may help exhaust how an alleged nonsmooth departure loses membership and full VPI participation, but no pass-or-exit engine, positive witness, no-third theorem, no-exit theorem, or Gold estimate proves terminal retention. Dead, Blown, Jump, Part, Field, Reynolds/pressure/coherence defects, and a conditionally selected other PDE are presentations of the one negative-side participation loss; Pack remains outside CM.",
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
      theorem-construction/mcp-sourcepulsecmexit-a-explanation-only-read-mbr-e-463b9bda50.md
      theorem-construction/mpp-branch-native-jumpavg-noescape-direct-work-20260601.md
      theorem-construction/mpp-clay-counterexample-exclusion-bridge-direct-work-20260601.md
      theorem-construction/mpp-clay-counterexample-exclusion-gap-audit-20260601.md
      cm-branch-family-certificate-ledger-20260526.yaml
      cm-contrapositive-comprehensive-diagnostic-sweep-20260526.yaml
      cm-switch-working-sweep-20260526.yaml
    ]
  },
  {
    "id" => "local_energy_elliptic_formalization_support",
    "paper_representation" => "These local-energy and elliptic formalization files are preserved as diagnostic provenance. They may help recognize a negative-side loss of full VPI participation, but they do not supply independent Silver, Part, or Field authority.",
    "files" => %w[
      theorem-construction/mpp-elliptic-time-smearing-direct-attempt-20260517.md
      theorem-construction/mpp-local-energy-trace-anti-atom-direct-attempt-20260517.md
      theorem-construction/mcp-ns-formalizationledgerdebtlocalization-a-4ae79e3d40.md
    ]
  },
  {
    "id" => "r3_export_critical_wall_notes",
    "paper_representation" => "These whole-space and critical-wall notes are retained as R3 comparison and Gold-support provenance. Silver remains the same one-history VPI complement contrapositive; no R3 localization, tightness, continuation estimate, or Gold theorem is a Silver premise. Any Part or Field language here is only a presentation of negative-side nonparticipation, with Pack outside CM.",
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
    "paper_representation" => "Euler-mirror files are comparison provenance only and never a backward premise for Navier--Stokes smoothness. The proof begins with the original fixed-positive-viscosity Navier--Stokes history. Euler is selected forward from that same history only when effective viscosity and all Reynolds, forcing, pressure, incompressibility, and ancestry defects vanish; imported Euler branches do not promote into Silver. Pack remains outside CM.",
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
    "paper_representation" => "Build tooling, source-forensics tooling/manifests, review/readthrough criticism inventories, alignment and viewer-topology metadata, and the retired ground-up target reference are not theorem material. The manuscript names their role only as provenance, export, target-custody, navigation, review, or build support.",
    "files" => %w[
      ns-visual-branch-depth-audit-20260531.yaml
      tools/build_forward_positive_surface_quarantine.rb
      source-forensics/archive-scrivener-manifest.txt
      source-forensics/ns-historical-biography.md
      source-forensics/ns-lived-sequence-history.md
      source-forensics/build_master_extraction.py
      misalignment.json
      review/human-submission-pdf-readthrough-criticism-inventory-2026-06-08.md
      submission-bundle/authorial-structure-pass-20260526.md
      submission-bundle/ground-up-target-reference.md
    ]
  },
  {
    "id" => "human_app_aligned_branch_material",
    "paper_representation" => "Late-May branch rebuild notes, rebuilt sections, and R3/critical-carrier notes are manuscript provenance and negative-side presentation support. They do not replace the one-line Silver classification or prove terminal participation retention. Human/app-aligned and Codex-structured PDF tracks are separate artifact surfaces outside this proof-program repair.",
    "files" => %w[
      submission-bundle/human-author-chronological-cm-exit-manuscript-architecture-20260530.md
      submission-bundle/pdf-rebuild-branch-inventory-20260530.md
      submission-bundle/pdf-rebuild-branch-section-workplan-20260530.md
      submission-bundle/rebuilt-main-staging.tex
      submission-bundle/sections/rebuilt-branch-proof-roles.tex
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
    "id" => "june_2026_active_cm_completion_notes",
    "paper_representation" => "June 2026 inventory, pressure, Jump, receiver, RSCB/SCF, Part, Field, and no-exit notes are retained as historical provenance for exhausting presentations of participation loss. The governing proof-facing use is only the negative implication not Smooth(Q) => not Member(Q) => not VPIParticipation(Q); Part and Field locate that loss, Pack is Field-window evidence outside CM, and generic rows remain support-only.",
    "files" => %w[
      theorem-construction/mpp-nightly-20260602-clay-counterexample-exclusion-pressure-note.md
      theorem-construction/mpp-clay-counterexample-exclusion-target-correction-20260603.md
      theorem-construction/mpp-finite-terminal-obstruction-inventory-row-audit-20260605.md
      theorem-construction/mpp-pack-q-cm-certification-reader-explanation-20260605.md
      theorem-construction/mpp-retained-pressure-package-cm-face-placement-20260605.md
      theorem-construction/mpp-finite-energy-point-pressure-derivative-obstruction-20260606.md
      theorem-construction/mpp-pressure-derivative-obstruction-trajectory-integration-20260606.md
      theorem-construction/mpp-averaged-field-face-admission-20260607.md
      theorem-construction/mpp-averaged-jumpavg-field-face-reduction-20260607.md
      theorem-construction/mpp-averaged-receiver-no-upstream-readout-20260607.md
      theorem-construction/mpp-averaged-terminal-cover-common-scheduler-reentry-20260607.md
      theorem-construction/mpp-field-failure-realization-proof-method-audit-20260607.md
      theorem-construction/mpp-clay-field-failure-realization-proof-20260607.md
      theorem-construction/mpp-r3-exterior-source-dyadic-escape-cm-face-20260607.md
      theorem-construction/mpp-r3-exterior-dyadic-survivor-field-incompatibility-20260607.md
      theorem-construction/mpp-r3-tail-hs-duhamel-source-reduction-20260607.md
      theorem-construction/mpp-rscb-scfavg-face-landing-20260607.md
      theorem-construction/mpp-clay-field-face-exclusion-working-pass-20260607.md
      theorem-construction/mpp-clay-pack-face-exclusion-working-pass-20260607.md
      theorem-construction/mpp-clay-part-face-exclusion-working-pass-20260607.md
      theorem-construction/mpp-generic-pack-part-face-exclusion-blocker-demotion-20260607.md
      theorem-construction/mpp-generic-pack-face-exclusion-work-order-demotion-20260607.md
      theorem-construction/mpp-generic-part-face-exclusion-work-order-demotion-20260607.md
      theorem-construction/mpp-retained-pack-part-survival-proof-method-audit-20260607.md
      theorem-construction/mpp-terminal-collar-strain-integrability-proof-method-audit-20260607.md
      theorem-construction/mpp-terminal-record-entry-standard-pde-hardening-20260608.md
      theorem-construction/mpp-r3-exterior-tail-cm-endpoint-consumption-20260608.md
      theorem-construction/mpp-clay-bridge-reconciled-by-finite-obstruction-inventory-20260608.md
      theorem-construction/ns-completion-executor-proof-blocker-20260607-iteration-2.md
      theorem-construction/ns-completion-executor-proof-frontier-20260607.md
    ]
  },
  {
    "id" => "d8_route_app_graph_pdf_sync_surfaces",
    "paper_representation" => "D8 route maps and executor sync payloads are app, graph, manuscript, and submission coordination provenance. They have no independent proof force and must inherit the canonical Silver VPI complement contrapositive from the direct authority surfaces.",
    "files" => %w[
      d8-completion-route-map.yaml
      ns-logical-tree-bridge-reconciliation-20260607.yaml
      ns-completion-engine.yaml
      ns-completion-executor.yaml
      ns-completion-executor-route-sync-20260607-iteration-2.yaml
      ns-completion-executor-route-sync-20260607.yaml
      ns-completion-route-sync-payload-20260607-iteration-2.yaml
      ns-completion-route-sync-payload-20260607.yaml
    ]
  },
  {
    "id" => "dual_pdf_submission_independent_surfaces",
    "paper_representation" => "Submission executor scaffolds, boundary records, and submission-sync ledgers are PDF/manuscript provenance only. They may record distinct artifact outputs, but theorem authority remains the canonical Silver VPI complement contrapositive; PDF and export readiness are audited separately, and Gold remains independent nonblocking research.",
    "files" => %w[
      submission-bundle/ns-completion-executor-proof-scaffold-20260607-iteration-2.md
      submission-bundle/ns-completion-executor-proof-scaffold-20260607.md
      submission-bundle/ns-completion-executor-submission-boundary-20260607-iteration-2.yaml
      submission-bundle/ns-completion-executor-submission-boundary-20260607.yaml
      submission-bundle/ns-completion-submission-sync-20260607-iteration-2.yaml
      submission-bundle/ns-completion-submission-sync-20260607.yaml
    ]
  },
  {
    "id" => "submission_representation_rule",
    "paper_representation" => "Governs how the large source field compresses into mathematical proof roles in the manuscript. This is an authoring rule, not theorem evidence.",
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
      tools/promote_repo_depth_to_pdf.rb
    ]
  },
  {
    "id" => "quarantined_codex_reversible_intersection_draft",
    "paper_representation" => "The Codex-created reversible-intersection bundle is retained only as forensic provenance. It has no theorem-authority, manuscript-baseline, source, or referee-audit role and cannot validate any generated artifact.",
    "files" => %w[
      quarantine/codex-reversible-intersection-draft-20260816/QUARANTINE.md
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

static_families = FAMILIES.map do |family|
  current_files = family.fetch("files").select { |path| uncovered.include?(path) }
  next if current_files.empty?

  family.merge("files" => current_files)
end.compact

remaining_uncovered = uncovered - static_families.flat_map { |family| family.fetch("files") }
dynamic_families = []

add_dynamic_family = lambda do |id, paper_representation, pattern|
  files = remaining_uncovered.grep(pattern).sort
  return if files.empty?

  dynamic_families << {
    "id" => id,
    "paper_representation" => paper_representation,
    "files" => files
  }
  remaining_uncovered -= files
end

add_dynamic_family.call(
  "current_theorem_creation_candidate_notes",
  "Current theorem-creation candidate notes are support, pressure tests, or positive-forward attempts with no independent Silver closure force. They may only help classify a concrete nonsmooth presentation as loss of membership and full VPI participation on the same original history; they do not prove terminal retention. Pack remains outside CM.",
  %r{\Atheorem-construction/.*-theorem-creation-\d{8}\.md\z}
)

add_dynamic_family.call(
  "current_executor_route_app_graph_pdf_sync_surfaces",
  "Current executor route-sync and proof-lane files are app, graph, MCP, and theorem-frontier coordination provenance. They must inherit the established direct compatible-intersection proof and preserve Silver as a downstream classification.",
  %r{\A(?:(?:ns-completion-executor-route-sync|ns-completion-route-sync-payload)-\d{8}(?:-iteration-\d+)?\.yaml|theorem-construction/ns-completion-executor-proof-(?:blocker|frontier)-\d{8}(?:-iteration-\d+)?\.md)\z}
)

add_dynamic_family.call(
  "current_executor_dual_pdf_submission_independent_surfaces",
  "Current executor submission, proof-scaffold, and submission-sync files are PDF/manuscript provenance. They may track distinct artifact outputs, but they must preserve the established whole-terminal producer and completed endpoint/restart closure.",
  %r{\Asubmission-bundle/ns-completion-(?:executor-proof-scaffold|executor-submission-boundary|submission-sync)-\d{8}(?:-iteration-\d+)?\.(?:md|yaml)\z}
)

add_dynamic_family.call(
  "current_authoring_lab_transcript_template_residue",
  "Authoring lab material, sample proof templates, and conversational transcripts are preserved source residue or authoring examples. Pulling-teeth transcript material may be quoted as evidence of the failed linear-profile assumption, but it has no proof or decision authority unless reworked into an exact theorem surface.",
  %r{\Asubmission-bundle/authoring/}
)

add_dynamic_family.call(
  "current_completion_criticism_and_source_writing_batches",
  "Completion criticism ledgers and source-writing batches are manuscript production and review support. They may guide edits, but they do not certify theorem closure or downstream proof force without a direct manuscript/theorem surface carrying the exact statement and hypotheses.",
  %r{\Asubmission-bundle/(?:ns-active-completion.*|ns-completion-source-writing-batch-\d{8}(?:-iteration-\d+)?\.md)\z}
)

add_dynamic_family.call(
  "current_paper_arc_production_support",
  "Paper-arc production runs, author packs, prompts, critic reports, verifier files, snapshots, and next-author targets are authoring support with no independent proof authority. Any proof-facing summary must inherit the completed datum-generated compatible-intersection proof from direct authority.",
  %r{\Asubmission-bundle/paper-arc-production-runs/}
)

add_dynamic_family.call(
  "current_source_spine_production_support",
  "Source-spine production runs, rewrite packs, supervisor plans, dry runs, and math-unknown queues are manuscript/source-production support. They may record open mathematical work or authoring instructions, but they do not settle a proof step unless the exact result is installed in a proof-facing theorem or manuscript surface.",
  %r{\Asubmission-bundle/source-spine-production-runs/}
)

add_dynamic_family.call(
  "current_thread_trajectory_support",
  "Thread trajectory files preserve active thread, goal-loop, and routing state. They can identify the live working lane and required rehydration surfaces, but they do not create theorem authority; direct mathematics and its quantified estimates decide proof force.",
  %r{\Athread-trajectories/}
)

add_dynamic_family.call(
  "current_ontology_provenance",
  "Ontology, ontology-derivation, participation-hierarchy, and archived ontology files preserve the one-fluid vocabulary and its development. They do not independently prove terminal participation retention; proof-facing consumers must preserve the one-history classification boundary and keep Pack outside CM.",
  %r{\Aontology(?:-archive/|[-.]|\.md)}
)

add_dynamic_family.call(
  "current_external_paper_provenance",
  "External-paper drafts are comparison and writing provenance with no independent Navier--Stokes theorem authority. They may not replace the original fixed-viscosity history, the exhaustive VPI complement, or its direct contrapositive.",
  %r{\Aexternal-paper/}
)

add_dynamic_family.call(
  "current_periodic_comparison_quarantine",
  "Periodic 2D3C quarantine records are comparison-control provenance. They cannot supply a live Silver premise or replace the same original Navier--Stokes participant; Gold remains independent and nonblocking.",
  %r{\Aperiodic-2d3c-surface-quarantine-\d{8}\.yaml\z}
)

add_dynamic_family.call(
  "current_theorem_construction_remainder",
  "Current theorem-construction files outside direct live authority are theorem-attempt or audit provenance. They carry no independent authority to reopen the established whole-terminal producer; terminal labels and Part/Field rows remain downstream negative-side presentations of lost full participation, with Pack outside CM.",
  %r{\Atheorem-construction/}
)

add_dynamic_family.call(
  "current_tooling_support_remainder",
  "Current checker and notation tools are support machinery. Their output can detect drift or hygiene failures, but the tools themselves are not theorem evidence and carry no proof authority.",
  %r{\Atools/}
)

families_source = static_families + dynamic_families
family_files = families_source.flat_map { |family| family.fetch("files") }
family_counts = family_files.each_with_object(Hash.new(0)) { |path, counts| counts[path] += 1 }
duplicates = family_counts.select { |_path, count| count > 1 }.keys
unless duplicates.empty?
  abort "duplicate family coverage entries:\n#{duplicates.join("\n")}"
end

missing_from_families = uncovered - family_files
unless missing_from_families.empty?
  warn "current-material coverage mismatch"
  warn "unclassified current checkable files:\n#{missing_from_families.join("\n")}" unless missing_from_families.empty?
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
  "purpose" => "Record how the current Navier-Stokes repo material is classified without assigning proof authority to coverage bookkeeping.",
  "current_authority_override_20260722" => CURRENT_AUTHORITY_OVERRIDE_20260722,
  "gold_l1_custody_provenance_20260702" => GOLD_L1_CUSTODY_PROVENANCE_20260702,
  "current_silver_authority_20260722" => CURRENT_SILVER_AUTHORITY_20260722,
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
      "role" => "support/no-proof-authority representation for forward-positive, readout, transfer, export, and supplier surfaces",
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
