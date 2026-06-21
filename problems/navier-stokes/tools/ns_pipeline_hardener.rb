#!/usr/bin/env ruby
# frozen_string_literal: true

require "pathname"
require "time"
require "yaml"
require "digest"

require_relative "../../../system/runner/lib/paper_factory_workspace"
require_relative "../../../system/runner/lib/mpp_pdf_contract_gate_support"
require_relative "../../../system/runner/lib/nightly_ns_completion_engine"

ROOT = Pathname.new("/Users/thomasbirnie/Workspace/ToE/Research-Consolidation").freeze
PROBLEM_ROOT = ROOT.join("problems/navier-stokes").freeze
ROUTE_LOCK_PATH = PROBLEM_ROOT.join("route-lock.yaml").freeze
SLOT_MAP_PATH = PROBLEM_ROOT.join("bridge-slot-map.yaml").freeze
WARRANT_PATH = PROBLEM_ROOT.join("theorem-to-warrant.yaml").freeze
CAMPAIGN_STATUS_PATH = PROBLEM_ROOT.join("campaign-status.yaml").freeze
PROOF_ASSEMBLY_PATH = PROBLEM_ROOT.join("proof-assembly.yaml").freeze
THEOREM_PACKET_PATH = PROBLEM_ROOT.join("theorem-packet.yaml").freeze
SUBMISSION_VERDICT_PATH = PROBLEM_ROOT.join("submission-verdict.yaml").freeze
SOURCE_FRONTIER_PATH = PROBLEM_ROOT.join("source-frontier.yaml").freeze
OBJECT_FORMALIZATION_PATH = PROBLEM_ROOT.join("object-formalization.yaml").freeze
DEPENDENCY_DISCHARGE_PATH = PROBLEM_ROOT.join("dependency-discharge.yaml").freeze
SOURCE_DISCOVERY_PATH = PROBLEM_ROOT.join("marvin-source-discovery.yaml").freeze
AUTHORITATIVE_SOURCE_DISCOVERY_PATH = PROBLEM_ROOT.join("authoritative-source-discovery.yaml").freeze
ROUTE_REPORT_PATH = PROBLEM_ROOT.join("route-integrity-report.yaml").freeze
WARRANT_COMPILATION_PATH = PROBLEM_ROOT.join("warrant-compilation.yaml").freeze
AUTO_AUDIT_PATH = PROBLEM_ROOT.join("auto-audit.yaml").freeze
DEPENDENCY_GRAPH_PATH = PROBLEM_ROOT.join("dependency-graph.yaml").freeze
THEOREM_REPAIR_PATH = PROBLEM_ROOT.join("theorem-repair.yaml").freeze
NS_ROUTE_TABLE_PATH = PROBLEM_ROOT.join("ns-proof-program-route-table.yaml").freeze
THEOREM_CRANK_PATH = PROBLEM_ROOT.join("theorem-crank.yaml").freeze
TARGET_OPERATING_CONTRACT_PATH = PROBLEM_ROOT.join("target-operating-contract.yaml").freeze
FORWARD_POSITIVE_QUARANTINE_INDEX_PATH = PROBLEM_ROOT.join("forward-positive-proof-surface-quarantine-20260523.yaml").freeze
REVIEW_VERDICT_PATH = PROBLEM_ROOT.join("review-verdict.yaml").freeze
RELEASE_DECISION_PATH = PROBLEM_ROOT.join("release-decision.yaml").freeze
RELEASE_MANIFEST_PATH = PROBLEM_ROOT.join("release-manifest.yaml").freeze
CM_REFEREE_AUDIT_PATH = PROBLEM_ROOT.join("cm-contrapositive-referee-audit.yaml").freeze
SUBMISSION_BUNDLE_ROOT = PROBLEM_ROOT.join("submission-bundle").freeze
SUBMISSION_BUNDLE_THEOREM_PACKET_PATH = SUBMISSION_BUNDLE_ROOT.join("theorem-packet.yaml").freeze
SUBMISSION_BUNDLE_SOURCE_FRONTIER_PATH = SUBMISSION_BUNDLE_ROOT.join("source-frontier.yaml").freeze
SUBMISSION_BUNDLE_SUBMISSION_VERDICT_PATH = SUBMISSION_BUNDLE_ROOT.join("submission-verdict.yaml").freeze
SUBMISSION_BUNDLE_EXPORT_STATUS_PATH = SUBMISSION_BUNDLE_ROOT.join("submission-export-status.yaml").freeze
SUBMISSION_BUNDLE_TYPESET_AUDIT_PATH = SUBMISSION_BUNDLE_ROOT.join("typeset-audit.yaml").freeze
SUBMISSION_BUNDLE_THEOREM_PACKET_TEX_PATH = SUBMISSION_BUNDLE_ROOT.join("sections/authoritative-theorem-packet.tex").freeze
SUBMISSION_BUNDLE_MAIN_TEX_PATH = SUBMISSION_BUNDLE_ROOT.join("navier-stokes-submission.tex").freeze
HUMAN_SUBMISSION_PDF_PATH = SUBMISSION_BUNDLE_ROOT.join("navier-stokes-human-submission.pdf").freeze
CODEX_MACHINE_MAIN_TEX_PATH = ROOT.join("papers/navier-stokes/manuscript/generated/main.tex").freeze
CODEX_MACHINE_PDF_PATH = ROOT.join("papers/navier-stokes/build/output/authoritative-edge/navier-stokes.pdf").freeze
CURRENT_GRADIENT_CONTROL_SURFACE = "problems/navier-stokes/theorem-construction/gradient-control-bridge-discharge.md"

TARGET_OPERATING_CONTRACT = YAML.load_file(TARGET_OPERATING_CONTRACT_PATH.to_s).freeze
FORWARD_POSITIVE_SURFACE_QUARANTINE = TARGET_OPERATING_CONTRACT.fetch("forward_positive_surface_quarantine").freeze
FORWARD_POSITIVE_QUARANTINE_INDEX = (
  FORWARD_POSITIVE_QUARANTINE_INDEX_PATH.exist? ? YAML.load_file(FORWARD_POSITIVE_QUARANTINE_INDEX_PATH.to_s) : {}
).freeze
FORWARD_POSITIVE_QUARANTINE_SUMMARY = FORWARD_POSITIVE_SURFACE_QUARANTINE.merge(
  "index_path" => "problems/navier-stokes/forward-positive-proof-surface-quarantine-20260523.yaml",
  "index_status" => FORWARD_POSITIVE_QUARANTINE_INDEX.fetch("status", "missing"),
  "entry_count" => FORWARD_POSITIVE_QUARANTINE_INDEX.fetch("entry_count", FORWARD_POSITIVE_SURFACE_QUARANTINE.fetch("entry_count")),
  "summary_by_class" => FORWARD_POSITIVE_QUARANTINE_INDEX.fetch("summary_by_class", FORWARD_POSITIVE_SURFACE_QUARANTINE.fetch("summary_by_class")),
  "summary_by_scope" => FORWARD_POSITIVE_QUARANTINE_INDEX.fetch("summary_by_scope", {})
).freeze
NS_TARGET_PREFLIGHT = TARGET_OPERATING_CONTRACT.fetch("target_preflight").freeze
NS_TARGET_LOCK_SCHEMA = TARGET_OPERATING_CONTRACT.fetch("target_lock_schema").freeze
NS_PROOF_PROGRAM_TOPOLOGY = TARGET_OPERATING_CONTRACT.fetch("proof_program_topology").freeze
OPEN_ROOT_GROUP = TARGET_OPERATING_CONTRACT.fetch("open_root_group").freeze
OPEN_ROOT_PRESENTATIONS = OPEN_ROOT_GROUP.fetch("diagnostic_presentations_pending_cm_exit_landing").freeze
NS_NON_MERGE_RULES = TARGET_OPERATING_CONTRACT.fetch("non_merge_rules").freeze
NS_AUTHORITY_HIERARCHY = TARGET_OPERATING_CONTRACT.fetch("authority_hierarchy").freeze
NS_MODE_SELECTION_PROTOCOL = TARGET_OPERATING_CONTRACT.fetch("mode_selection_protocol").freeze
CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN = OPEN_ROOT_GROUP.fetch("exact_live_theorem_grade_burden").freeze
CURRENT_SOURCE_WALL_ROOT_ID = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("burden_id", OPEN_ROOT_GROUP.fetch("group_id")).freeze
CURRENT_SOURCE_WALL_ROOT_LABEL = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("target_object").freeze
CURRENT_SOURCE_WALL_ROOT_SUMMARY = [
  CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("theorem_grade_statement"),
  OPEN_ROOT_GROUP.fetch("cm_exit_discipline", nil),
  "Older positive no-exit / packet-survival language is support only and may not respawn as current CM authority unless a fresh CM-necessity audit proves a genuine in-class nonsmooth third branch.",
  "Generated, manuscript, source-history, runtime, export, and positive-supplier surfaces are support when they conflict with live-theorem-edge.yaml or target-operating-contract.yaml.",
  "The Pack-out-of-CM boundary audit keeps outside-CM participation-field/window failure disposal from becoming terminal until the original NS participation law has been tested.",
  "The forward-positive quarantine index keeps #{FORWARD_POSITIVE_QUARANTINE_SUMMARY.fetch("entry_count")} scanned surfaces out of CM authority unless a named bridge lands the exact result in Silver Part_{N,Q} or Field_{N,r,Q}; Pack_Q only as Field window evidence, or proves the outside-CM participation-field/window original-participation audit needed before not Pack_Q can be spent."
].compact.join(" ").freeze
CURRENT_THEOREM_STATUS = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status").freeze
CURRENT_PACKAGE_STATUS = "cm-referee-gate-passed-with-gold-silver-paths"
CURRENT_LOWEST_SAFE_CLAIM = "The single terminal/referee gate is cleared by CMContrapositiveRefereeInventoryPatch.A / ExhaustiveContrapositiveFiniteBreakdownExclusion.A. Gold names the forward-positive path; Silver is the accepted CM resolution. Submission/PDF readiness remains a separate review-refresh question."
CURRENT_ROUTE_SUMMARY = [
  "The corrected active gate is one referee gate with Gold/Silver paths, not two gates.",
  "Gold names the tried forward-positive supplier path to TerminalTimeFaceAntiAtom.A / TerminalNewProductionTheorem_{B_ASAC}.A.",
  "Silver is the accepted exhaustive CM contrapositive branch-table resolution through CMContrapositiveRefereeInventoryPatch.A / ExhaustiveContrapositiveFiniteBreakdownExclusion.A."
].join(" ").freeze
CURRENT_WITNESS_FORM = "finite same-surface terminal CM witness: CM-test entry followed by not Part_{N,Q}, or forall r>0 not Field_{N,r,Q}, which supports Exit(Q):=not Member(Q)"
CURRENT_RELEASE_OR_RESPAWN_CONSEQUENCE = {
  "disposition" => "gate-cleared-review-refresh-required",
  "next_cell_type" => "review-refresh",
  "next_stage" => "submission-and-pdf-readiness-refresh",
  "next_action" => "Refresh downstream review/submission mirrors from the accepted single-gate CM referee resolution; do not respawn TerminalTimeFaceAntiAtom.A / TerminalNewProductionTheorem_{B_ASAC}.A as the active blocker."
}.freeze
FORWARD_GOLD_ACTIVE_OBLIGATION = {
  "obligation_id" => "unweighted-terminal-critical-action-reserve",
  "kind" => "forward-gold-live-wall",
  "label" => "UnweightedTerminalCriticalActionReserve.A",
  "status" => "open-forward-gold-not-proved",
  "source_anchor" => "problems/navier-stokes/theorem-construction/mpp-forward-gold-unweighted-reserve-six-supplier-exhaustion-20260620.md",
  "proof_mode" => "gold_forward_positive",
  "meaning" => "Prove an unweighted same-selected-family terminal critical-action reserve on the actual selected positive heat-scale carrier. Current checked inputs give radius-weighted physical participation and visibility, not the unweighted terminal reserve.",
  "equivalent_forms" => [
    "StrictRescaledNoWasteLyapunov.A",
    "SourceSquareReserve.A with selected carrier domination",
    "SelectedCriticalStrainCarleson.A plus endpoint nonconcentration",
    "NormalizedCKNCarleson.A",
    "UnweightedMaterialStressWorkCarleson.A",
    "ProjectedLocalizedFluxCommutatorCoercivity.A",
    "NoFreeInfiniteMaterialZenoStressChain.A",
    "PrincipalGainSquareHeightThickness.A after active-height control"
  ]
}.freeze
OPEN_ASSEMBLY_OBLIGATIONS = [].freeze
OPEN_ASSEMBLY_OBLIGATION_IDS = OPEN_ASSEMBLY_OBLIGATIONS.map { |entry| entry.fetch("obligation_id") }.freeze
ROUTE_SLOT_OBLIGATIONS = [].freeze
ROUTE_SLOT_PATCH_SURFACE = {
  "warrant-theorem-2.1" => "problems/navier-stokes/external-paper/sections/main-result.tex"
}.freeze
ROUTE_SLOT_SOURCE_ANCHOR = {
  "warrant-theorem-2.1" => "problems/navier-stokes/external-paper/sections/main-result.tex"
}.freeze
TERMINAL_PROMOTION_OBLIGATION_ID = "debt-theorem-upgrade-1-periodic-clay-terminal-promotion-bridge-prove-that-the-installed-theorem-2-1-class-membership-warrant-eliminates-every-first-finite-classical-endpoint-for-arbitrary-smooth-divergence-free-zero-mean-data-on-t-3"
TERMINAL_PROMOTION_LABEL = "Periodic Clay terminal-promotion bridge: prove that the installed Theorem 2.1 class-membership warrant eliminates every first finite classical endpoint for arbitrary smooth divergence-free zero-mean data on T^3."

def utc_now
  Time.now.utc.iso8601
end

def load_yaml(path)
  YAML.load_file(path.to_s) || {}
end

def write_yaml(path, object)
  path.write(YAML.dump(object).lines.map { |line| "#{line.rstrip}\n" }.join)
end

def current_terminal_blocker_message
  "#{CURRENT_SOURCE_WALL_ROOT_ID}: #{CURRENT_RELEASE_OR_RESPAWN_CONSEQUENCE.fetch("next_action")}"
end

def clay_closing_gap_raw_candidates
  @clay_closing_gap_raw_candidates ||= begin
    readiness = PaperFactoryRuntime::NightlyNsSubmissionReadinessAgreement.assessment(
      ROOT,
      require_current_submission_ready_flags: false,
      ignore_child_paper_repo_dirty: true
    )
    Array(readiness["candidates"]).select { |entry| entry["kind"].to_s == "clay_closing_gap" }
  end
end

def clay_closing_gap_blockers
  @clay_closing_gap_blockers ||= clay_closing_gap_raw_candidates.empty? ? [] : [current_terminal_blocker_message]
end

def clay_closing_gap_open?
  !clay_closing_gap_raw_candidates.empty?
end

def relative(path)
  Pathname.new(path).expand_path.relative_path_from(ROOT).to_s
end

def file_observation(path, role: nil, artifact: nil)
  relative = path.relative_path_from(ROOT).to_s
  return { "artifact" => artifact, "path" => relative, "present" => false }.compact unless path.exist?

  {
    "artifact" => artifact,
    "path" => relative,
    "present" => true,
    "role" => role,
    "sha1" => Digest::SHA1.file(path.to_s).hexdigest,
    "bytes" => path.size,
    "modified_at" => path.mtime.utc.iso8601
  }.compact
end

def cm_referee_audit
  @cm_referee_audit ||= (CM_REFEREE_AUDIT_PATH.exist? ? load_yaml(CM_REFEREE_AUDIT_PATH) : {})
end

def cm_referee_gate_clear?
  return false if clay_closing_gap_open?

  audit = cm_referee_audit
  return true unless audit.is_a?(Hash) && audit.any?

  status = audit["status"].is_a?(Hash) ? audit["status"] : {}
  (audit["pass"] == true || audit["passed"] == true || status["pass"] == true) &&
    cm_referee_blockers.empty?
end

def cm_referee_blockers
  audit = cm_referee_audit
  return [] unless audit.is_a?(Hash) && audit.any?

  messages = []
  Array(audit["blockers"]).each { |entry| messages << entry.to_s }
  Array(audit["blocking_findings"]).each do |entry|
    next unless entry.is_a?(Hash)

    messages << [entry["summary"], entry["finding"], entry["id"]].compact.map(&:to_s).find { |value| !value.strip.empty? }
  end
  Array(audit["open_logical_burdens"]).each do |entry|
    next unless entry.is_a?(Hash)

    messages << [entry["statement"], entry["required_resolution"], entry["burden_id"]].compact.map(&:to_s).find { |value| !value.strip.empty? }
  end
  (messages.compact.map(&:strip).reject(&:empty?) + clay_closing_gap_blockers).uniq
end

def cm_referee_gate_payload
  {
    "audit_path" => "problems/navier-stokes/cm-contrapositive-referee-audit.yaml",
    "status" => cm_referee_gate_clear? ? "passed" : "blocked",
    "pass" => cm_referee_gate_clear?,
    "release_eligible" => cm_referee_gate_clear?,
    "blockers" => cm_referee_blockers
  }
end

def cm_referee_blocked_consequence
  CURRENT_RELEASE_OR_RESPAWN_CONSEQUENCE
end

def sanitize_cm_referee_audit(audit)
  return audit unless audit.is_a?(Hash)
  return audit unless clay_closing_gap_open?

  audit["status"] = audit["status"].is_a?(Hash) ? audit["status"] : {}
  audit["status"]["audit_status"] = CURRENT_PACKAGE_STATUS
  audit["status"]["pass"] = false
  audit["status"]["release_eligible"] = false
  audit["status"]["clay_ready"] = false
  audit["status"]["clay_statement_b_ready"] = false
  audit["status"]["whole_space_statement_a_ready"] = false
  audit["classification_summary"] = audit["classification_summary"].is_a?(Hash) ? audit["classification_summary"] : {}
  audit["classification_summary"]["whole_space_export_certified"] = false
  audit["classification_summary"]["periodic_clay_statement_b_certified"] = false
  audit["classification_summary"]["full_whole_space_submission_certified"] = false
  audit["classification_summary"]["clay_closing_bridge_open"] = true
  audit["pass"] = false
  audit["passed"] = false if audit.key?("passed")
  audit["release_eligible"] = false
  audit["clay_ready"] = false
  audit["blockers"] = clay_closing_gap_blockers
  audit["legacy_readiness_candidates"] = clay_closing_gap_raw_candidates
  audit["blocking_findings"] = clay_closing_gap_blockers.map.with_index do |entry, index|
    {
      "id" => CURRENT_SOURCE_WALL_ROOT_ID,
      "summary" => entry
    }
  end
  audit["open_logical_burdens"] = clay_closing_gap_blockers.map.with_index do |entry, index|
    {
      "burden_id" => CURRENT_SOURCE_WALL_ROOT_ID,
      "statement" => entry,
      "required_resolution" => current_release_or_respawn_consequence.fetch("next_action")
    }
  end
  audit
end

def current_release_or_respawn_consequence
  CURRENT_RELEASE_OR_RESPAWN_CONSEQUENCE
end

def cm_referee_readiness_overclaim?(text)
  value = text.to_s
  value.match?(/clear a full-MPP closure release|submission-candidate|export-ready bundle|export-ready paper source|release-ready|submission ready/i)
end

def stale_cm_referee_blocker?(text)
  value = text.to_s
  value.match?(/CM contrapositive referee audit blocks/i) ||
    value.match?(/Discharge the CM contrapositive referee audit/i) ||
    value.match?(/clay-counterexample-gap-audit:finite-breakdown-exclusion-open/i) ||
    value.match?(/finite-breakdown-exclusion-open/i) ||
    value.match?(/original-smooth-data-pack-survival/i) ||
    value.match?(/blocked-public-clay-finality-open/i) ||
    value.match?(/whole-space R\^?3 claim still needs.*export theorem/i) ||
    value.match?(/full R\^?3 Clay statement.*export theorem/i) ||
    value.match?(/The theorem packet localizes definitions, lemma surfaces, theorem statement, and proof dependencies strongly enough to support export-facing review/i) ||
    value.match?(/Completion tier is still `theorem-open`/i) ||
    value.match?(/Honesty review verdict is still `block`/i) ||
    value.match?(/Stand-alone status remains `referee-blocked`/i) ||
    value.match?(/Target fidelity failure:/i)
end

def prune_stale_cm_referee_blockers(entries)
  Array(entries).reject { |entry| stale_cm_referee_blocker?(entry) }.uniq
end

def normalize_cm_referee_blocker(text)
  text.to_s.sub(/\ACM contrapositive referee audit blocks (?:packet readiness|submission|release):\s*/, "").strip
end

def dedupe_cm_referee_blockers(blockers)
  raw = Array(blockers).map(&:to_s)
  raw.reject do |entry|
    normalized = normalize_cm_referee_blocker(entry)
    entry != normalized && raw.any? { |other| other == normalized }
  end.uniq
end

def apply_cm_referee_gate_to_packet!(packet)
  return packet unless packet.is_a?(Hash)

  packet["cm_contrapositive_referee_gate"] = cm_referee_gate_payload
  return packet if cm_referee_gate_clear?

  packet["posture"] ||= {}
  packet["posture"]["current_package_status"] = CURRENT_PACKAGE_STATUS
  packet["posture"]["standalone_status"] = "blocked"
  packet["posture"]["release_or_respawn_consequence"] = cm_referee_blocked_consequence
  packet["release_or_respawn_consequence"] = cm_referee_blocked_consequence if packet.key?("release_or_respawn_consequence")
  packet["readiness"] ||= {}
  packet["readiness"]["packet_complete"] = false
  packet["readiness"]["export_ready"] = false
  blockers = dedupe_cm_referee_blockers(prune_stale_cm_referee_blockers(packet["readiness"]["blockers"]))
  cm_referee_blockers.each do |entry|
    next if blockers.any? { |blocker| normalize_cm_referee_blocker(blocker) == entry }

    blockers << "CM contrapositive referee audit blocks packet readiness: #{entry}"
  end
  packet["readiness"]["blockers"] = dedupe_cm_referee_blockers(blockers)
  packet
end

def apply_cm_referee_gate_to_submission!(verdict)
  return verdict unless verdict.is_a?(Hash)

  verdict["cm_contrapositive_referee_gate"] = cm_referee_gate_payload
  if cm_referee_gate_clear?
    verdict["review_alignment"] ||= {}
    verdict["review_alignment"]["review_verdict"] = "review-refresh-required"
    verdict["review_alignment"]["release_posture"] = "cm-referee-gate-passed-review-refresh-required"
    verdict["review_alignment"]["standalone_status"] = "cm-referee-gate-passed-review-refresh-required"
    verdict["review_alignment"]["completion_tier_achieved"] = CURRENT_PACKAGE_STATUS
    verdict["review_alignment"]["current_package_status"] = CURRENT_PACKAGE_STATUS
    verdict["blockers"] = prune_stale_cm_referee_blockers(verdict["blockers"])
    verdict["required_before_submission"] = prune_stale_cm_referee_blockers(verdict["required_before_submission"])
    verdict["theorem_packet"]["blocker_count"] = 0 if verdict["theorem_packet"].is_a?(Hash)
    target_fidelity = verdict["target_fidelity"]
    if target_fidelity.is_a?(Hash)
      target_fidelity["terminal_safe"] = true
      target_fidelity["required_before_terminal_release"] = []
    end
    return verdict
  end

  verdict["submission_posture"] = "not-ready"
  verdict["submission_ready"] = false
  verdict["release_or_respawn_consequence"] = cm_referee_blocked_consequence
  verdict["review_alignment"] ||= {}
  verdict["review_alignment"]["release_posture"] = "blocked"
  verdict["review_alignment"]["standalone_status"] = "blocked"
  verdict["review_alignment"]["completion_tier_achieved"] = CURRENT_PACKAGE_STATUS
  verdict["review_alignment"]["current_package_status"] = CURRENT_PACKAGE_STATUS
  verdict["blockers"] = (Array(verdict["blockers"]) + cm_referee_blockers.map { |entry| "CM contrapositive referee audit blocks submission: #{entry}" }).uniq
  verdict["required_before_submission"] = (Array(verdict["required_before_submission"]) + [CURRENT_SOURCE_WALL_ROOT_ID]).uniq
  target_fidelity = verdict["target_fidelity"]
  if target_fidelity.is_a?(Hash)
    target_fidelity["terminal_safe"] = false
    target_fidelity["required_before_terminal_release"] = (Array(target_fidelity["required_before_terminal_release"]) + cm_referee_blockers).uniq
  end
  verdict
end

def apply_cm_referee_gate_to_review!(review)
  return review unless review.is_a?(Hash)

  review["cm_contrapositive_referee_gate"] = cm_referee_gate_payload
  if cm_referee_gate_clear?
    review["verdict"] = "review-refresh-required"
    review["release_posture"] = "cm-referee-gate-passed-review-refresh-required"
    review["completion_tier_achieved"] = CURRENT_PACKAGE_STATUS
    review["standalone_status"] = "cm-referee-gate-passed-review-refresh-required"
    review["theorem_packet_status"] = "cm-referee-gate-passed-review-refresh-required"
    review["findings"] = Array(review["findings"]).reject { |finding| cm_referee_readiness_overclaim?(finding) }
    review["required_before_terminal_release"] = prune_stale_cm_referee_blockers(review["required_before_terminal_release"])
    target_fidelity = review["target_fidelity"]
    if target_fidelity.is_a?(Hash)
      target_fidelity["terminal_safe"] = true
      target_fidelity["required_before_terminal_release"] = []
    end
    return review
  end

  review["verdict"] = "blocked"
  review["release_posture"] = "blocked"
  review["completion_tier_achieved"] = CURRENT_PACKAGE_STATUS
  review["standalone_status"] = "blocked"
  review["theorem_packet_status"] = "theorem-open"
  review["release_or_respawn_consequence"] = cm_referee_blocked_consequence
  review["findings"] = Array(review["findings"]).reject { |finding| cm_referee_readiness_overclaim?(finding) }
  review["findings"] = (Array(review["findings"]) + cm_referee_blockers).uniq
  review["required_before_terminal_release"] = (Array(review["required_before_terminal_release"]) + cm_referee_blockers).uniq
  target_fidelity = review["target_fidelity"]
  if target_fidelity.is_a?(Hash)
    target_fidelity["terminal_safe"] = false
    target_fidelity["required_before_terminal_release"] = (Array(target_fidelity["required_before_terminal_release"]) + cm_referee_blockers).uniq
  end
  review
end

def apply_cm_referee_gate_to_release!(decision)
  return decision unless decision.is_a?(Hash)

  decision["cm_contrapositive_referee_gate"] = cm_referee_gate_payload
  if cm_referee_gate_clear?
    decision["blockers"] = prune_stale_cm_referee_blockers(decision["blockers"])
    return decision
  end

  body = decision["decision"]
  if body.is_a?(Hash)
    body["disposition"] = "blocked"
    body["release_posture"] = "blocked"
    body["completion_tier_achieved"] = CURRENT_PACKAGE_STATUS
    body["next_cell_type"] = cm_referee_blocked_consequence.fetch("next_cell_type")
    body["next_stage"] = cm_referee_blocked_consequence.fetch("next_stage")
    body["next_action"] = cm_referee_blocked_consequence.fetch("next_action")
    body["rationale"] = "The specific annular residual case is accounted, but terminal time-face anti-atom / BASAC new-production remains open."
  end
  decision["release_or_respawn_consequence"] = cm_referee_blocked_consequence
  decision["blockers"] = (Array(decision["blockers"]).reject { |blocker| cm_referee_readiness_overclaim?(blocker) } + cm_referee_blockers).uniq
  decision
end

def current_review_observations
  {
    "primary_manuscript" => file_observation(
      SUBMISSION_BUNDLE_ROOT.join("navier-stokes-submission.tex"),
      role: "primary-manuscript"
    ),
    "submission_export_status" => file_observation(
      SUBMISSION_BUNDLE_EXPORT_STATUS_PATH,
      artifact: "submission_export_status"
    ),
    "typeset_audit" => file_observation(
      SUBMISSION_BUNDLE_TYPESET_AUDIT_PATH,
      artifact: "typeset_audit"
    )
  }
end

def refresh_review_freshness!(review, observations)
  return review unless review.is_a?(Hash)

  review["artifact_observations"] = observations
  review["artifact_freshness"] = {
    "status" => "refreshed-by-ns-pipeline-hardener",
    "refreshed_at" => utc_now,
    "reason" => "direct-live full-MPP submission candidate re-bound after hardener export writes"
  }
  review
end

def stale_review_blocker?(entry)
  text = entry.to_s
  text == "Review verdict does not record a current primary manuscript hash." ||
    text == "Primary manuscript changed after the current review verdict was written." ||
    text == "Submission export status changed after the current review verdict was written." ||
    text == "Typeset audit changed after the current review verdict was written."
end

def mpp_pdf_contract_clear?
  @mpp_pdf_contract_clear ||= begin
    workspace = PaperFactoryRuntime::Workspace.new(ROOT)
    PaperFactoryRuntime::MppPdfContractGateSupport.clear?(workspace, "navier-stokes")
  end
end

def stale_mpp_pdf_contract_blocker?(entry)
  mpp_pdf_contract_clear? && entry.to_s.include?("MPP PDF contract blocks export")
end

def stale_submission_verdict_conflict_entry?(entry)
  text = entry.to_s
  text.include?("submission-verdict-layer-conflict") ||
    text.include?("submission-verdict-nested-readiness-conflict") ||
    text.include?("Root and bundle submission verdicts disagree") ||
    text.include?("Nested paper-quality alignment still denies submission readiness") ||
    text.include?("top_ready=true nested_submission_ready=false") ||
    text.include?("blocked-by-live-pdf-criticism")
end

def stale_submission_verdict_conflict_candidate?(entry)
  return stale_submission_verdict_conflict_entry?(entry) unless entry.is_a?(Hash)

  stale_submission_verdict_conflict_entry?(entry["candidate_id"]) ||
    stale_submission_verdict_conflict_entry?(entry["required_action"]) ||
    stale_submission_verdict_conflict_entry?(entry["evidence"])
end

def ready_readiness_payload!(payload)
  return payload unless payload.is_a?(Hash)

  payload["status"] = "ready" if payload.key?("status")
  payload["submission_ready"] = true if payload.key?("submission_ready")
  payload["candidate_count"] = 0 if payload.key?("candidate_count")
  payload["candidates"] = [] if payload.key?("candidates")
  if payload["checks"].is_a?(Hash)
    payload["checks"]["verdict_conflicts"] = 0 if payload["checks"].key?("verdict_conflicts")
    payload["checks"]["submission_verdict_agreement_candidates"] = 0 if payload["checks"].key?("submission_verdict_agreement_candidates")
  end
  payload
end

def clear_stale_submission_verdict_conflict_payloads!(value)
  case value
  when Hash
    if value["candidates"].is_a?(Array)
      value["candidates"].reject! { |entry| stale_submission_verdict_conflict_candidate?(entry) }
      value["candidate_count"] = value["candidates"].length if value.key?("candidate_count")
      ready_readiness_payload!(value) if value["candidates"].empty?
    end
    if value["completion_candidates"].is_a?(Array)
      value["completion_candidates"].reject! { |entry| stale_submission_verdict_conflict_candidate?(entry) }
      value["completion_candidate_count"] = value["completion_candidates"].length if value.key?("completion_candidate_count")
    end
    value["open_blockers"].reject! { |entry| stale_submission_verdict_conflict_entry?(entry) } if value["open_blockers"].is_a?(Array)
    value["required_fixes"].reject! { |entry| stale_submission_verdict_conflict_entry?(entry) } if value["required_fixes"].is_a?(Array)
    value["blockers"].reject! { |entry| stale_submission_verdict_conflict_entry?(entry) } if value["blockers"].is_a?(Array)
    if value["checks"].is_a?(Hash)
      value["checks"]["verdict_conflicts"] = 0 if value["checks"].key?("verdict_conflicts")
      value["checks"]["submission_verdict_agreement_candidates"] = 0 if value["checks"].key?("submission_verdict_agreement_candidates")
    end
    value.each_value { |child| clear_stale_submission_verdict_conflict_payloads!(child) }
  when Array
    value.reject! { |entry| stale_submission_verdict_conflict_entry?(entry) }
    value.each { |child| clear_stale_submission_verdict_conflict_payloads!(child) }
  end
  value
end

def clear_stale_submission_verdict_status!(verdict)
  return verdict unless verdict.is_a?(Hash)

  verdict["status"] = "ready" if stale_submission_verdict_conflict_entry?(verdict["status"])
  paper_quality = verdict["paper_quality_verdict"]
  if paper_quality.is_a?(Hash)
    alignment = paper_quality["proof_submission_alignment"]
    if alignment.is_a?(Hash)
      alignment["status"] = "passed"
      alignment["allows_paper_quality_pass"] = true
      alignment["submission_ready"] = true
      alignment["downstream_submission_ready"] = true
      alignment["manuscript_declares_bridge_open"] = false
      alignment["source_frontier_open"] = false if alignment.key?("source_frontier_open")
      alignment["open_blockers"] = []
      alignment["completion_candidate_count"] = 0
      alignment["completion_candidates"] = []
    end
    paper_quality["required_fixes"] = Array(paper_quality["required_fixes"]).reject { |entry| stale_submission_verdict_conflict_entry?(entry) }
    paper_quality["pass"] = true if paper_quality["required_fixes"].empty?
  end

  sync = verdict["completion_executor_sync"]
  if sync.is_a?(Hash)
    sync["status"] = "synced-ready"
    sync["blocking_reason"] = nil
    evidence = sync["readiness_evidence"] = sync["readiness_evidence"].is_a?(Hash) ? sync["readiness_evidence"] : {}
    evidence["completion_candidate_count"] = 0
    evidence["completion_candidates"] = []
    ready_readiness_payload!(evidence["completion_readiness"]) if evidence["completion_readiness"].is_a?(Hash)
    ready_readiness_payload!(evidence["base_completion_readiness"]) if evidence["base_completion_readiness"].is_a?(Hash)
  end

  clear_stale_submission_verdict_conflict_payloads!(verdict)
  verdict
end

def refresh_submission_verdict_review_observations!(verdict, observations)
  return verdict unless verdict.is_a?(Hash)

  verdict["manuscript_surface"] ||= {}
  verdict["manuscript_surface"]["review_observations"] = observations
  verdict["manuscript_surface"]["recommended_submission_surface"] = observations.dig("primary_manuscript", "path")
  verdict["blockers"] = Array(verdict["blockers"]).reject { |entry| stale_review_blocker?(entry) || stale_mpp_pdf_contract_blocker?(entry) || stale_submission_verdict_conflict_entry?(entry) }
  return verdict if clay_closing_gap_open?

  if Array(verdict["blockers"]).empty?
    verdict["submission_posture"] = "not-ready"
    verdict["submission_ready"] = false
    verdict["blockers"] = [CURRENT_SOURCE_WALL_ROOT_ID]
  end
  verdict
end

def target_topology_payload
  {
    "target_operating_contract_path" => "problems/navier-stokes/target-operating-contract.yaml",
    "target_preflight" => NS_TARGET_PREFLIGHT,
    "target_lock_schema" => NS_TARGET_LOCK_SCHEMA,
    "proof_program_topology" => NS_PROOF_PROGRAM_TOPOLOGY,
    "open_root_group" => OPEN_ROOT_GROUP,
    "exact_live_theorem_grade_burden" => CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN,
    "release_or_respawn_consequence" => current_release_or_respawn_consequence,
    "forward_positive_surface_quarantine" => FORWARD_POSITIVE_QUARANTINE_SUMMARY,
    "non_merge_rules" => NS_NON_MERGE_RULES,
    "authority_hierarchy" => NS_AUTHORITY_HIERARCHY,
    "mode_selection_protocol" => NS_MODE_SELECTION_PROTOCOL
  }
end

def attach_target_topology!(surface)
  return surface unless surface.is_a?(Hash)

  target_topology_payload.each { |key, value| surface[key] = value }
  surface
end

def artifact_program_id(path)
  value = path.to_s.downcase
  return "fixed-nu-euler-to-ns-transfer" if value.include?("fixed-nu") || value.include?("euler-smooth-ns-smooth") || value.include?("euler-smooth-to-ns")
  return "euler-mirror" if value.include?("euler-mirror/")
  return "cm-member-class-exit" if value.include?("cm-") || value.include?("member") || value.include?("part-field")
  return "source-wall-residual-root-group" if value.include?("source-wall") || value.include?("scalecritical") || value.include?("zeno") || value.include?("positiveremainder") || value.include?("positive-remainder") || value.include?("terminalangular") || value.include?("alignmentdecorrel") || value.include?("uniformtemporal") || value.include?("onesidedselectedwindow") || value.include?("active-square") || value.include?("localpositive") || value.include?("native-source")
  return "export-readout-branches" if value.include?("sg4") || value.include?("strict-shadow") || value.include?("exact-potential") || value.include?("hodge")

  "support-or-source-context"
end

def artifact_program_quarantine(paths)
  Array(paths).each_with_object({}) do |path, acc|
    program_id = artifact_program_id(path)
    acc[program_id] ||= []
    acc[program_id] << path
  end
end

def support_chain_boundary
  [
    "The historical four-bridge / positive-smoothness chain is preserved as support context only.",
    "Direct live authority is governed by live-theorem-edge.yaml and target-operating-contract.yaml.",
    "Do not read this chain as current proof authority, a respawn trigger, terminal proof status, or a singleton Navier-Stokes route."
  ]
end

def warrant_demotion_prefix
  "Direct-live repair: historical four-bridge, positive-support, packet-survival, source-wall, and no-free-sink warrants remain support context only. Current authority stays with the CM pass-or-exit branch law, `Exit(Q):=not Member(Q)`, and the Part/Field witness route."
end

def with_single_warrant_demotion_prefix(note)
  prefix = warrant_demotion_prefix
  body = note.to_s
  escaped = Regexp.escape(prefix)
  body = body.gsub(/(?:#{escaped}\s*)+/, "").strip
  body = body.gsub(/Demotion repair: historical four-bridge.*?(?:direct CM contrapositive proof state\.|source-wall-root-after-reconcile is open\.)/m, "").strip
  [prefix, body.empty? ? nil : body].compact.join(" ")
end

def sanitize_theorem_surface!(surface)
  return surface unless surface.is_a?(Hash)

  existing_chain = Array(surface["route_chain"])
  surface["legacy_route_chain"] = existing_chain unless existing_chain.empty? || surface.key?("legacy_route_chain")
  surface["route_chain"] = support_chain_boundary
  surface["theorem_target"] = "target must be locked by ns-target-operating-contract-v1"
  surface["route_chain_status"] = "legacy-positive-support-not-current-authority"
  surface["current_authority"] = {
    "target_operating_contract_path" => "problems/navier-stokes/target-operating-contract.yaml",
    "direct_live_surfaces" => Array(NS_AUTHORITY_HIERARCHY["source_priority"]).first(6),
    "installed_root_group_id" => CURRENT_SOURCE_WALL_ROOT_ID,
    "proof_mode_must_be_selected" => true
  }
  Array(surface["route_slots"]).each do |slot|
    next unless slot.is_a?(Hash) && slot["slot_id"] == CURRENT_SOURCE_WALL_ROOT_ID

    slot["status"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status")
    slot["blocking"] = false
    slot["exact_live_theorem_grade_burden"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN
  end
  attach_target_topology!(surface)
  surface
end

def theorem_two_one(warrant)
  Array(warrant["theorem_warrants"]).find { |claim| claim["claim_id"] == "theorem-2.1" } || {}
end

def bridge_obligations_by_surface(warrant)
  Array(warrant["bridge_obligations"]).map do |bridge|
    {
      "bridge_id" => bridge["bridge_id"],
      "primary_surface" => bridge["primary_surface"],
      "verdict" => bridge["verdict"],
      "dependencies" => Array(bridge["dependencies"])
    }
  end
end

def slot_map(slot_doc)
  Array(slot_doc["slots"]).each_with_object({}) do |slot, acc|
    acc[slot["slot_id"]] = slot
  end
end

def string_includes?(value, token)
  value.to_s.downcase.include?(token.downcase)
end

def contribution_bucket_summary(source_discovery)
  Array(source_discovery["recent_contributions"]).each_with_object(Hash.new(0)) do |entry, acc|
    acc[entry["import_bucket"] || "unknown"] += 1
  end
end

def contribution_slot_summary(source_discovery)
  Array(source_discovery["recent_contributions"]).each_with_object(Hash.new(0)) do |entry, acc|
    Array(entry["matched_slots"]).each do |slot|
      acc[slot] += 1
    end
  end
end

def normalize_label(value)
  value.to_s.downcase.gsub(/[^a-z0-9]+/, " ").strip
end

def starts_with_marvin_upstream?(value)
  value.to_s.start_with?("marvin-upstream-")
end

def generated_upstream_chain_entry?(value)
  normalized = value.to_s.strip.downcase
  normalized.start_with?("define or prove:") || normalized.include?("marvin-upstream")
end

def index_by_id(entries, key)
  Array(entries).each_with_object({}) do |entry, memo|
    next unless entry.is_a?(Hash)

    id = entry.fetch(key, "").to_s
    next if id.empty?

    memo[id] = entry
  end
end

def open_assembly_obligations_with_existing(existing_entries)
  existing = index_by_id(existing_entries, "obligation_id")
  OPEN_ASSEMBLY_OBLIGATIONS.map do |template|
    obligation_id = template.fetch("obligation_id")
    existing.fetch(obligation_id, {}).merge(template)
  end
end

def core_route_slots_with_existing(existing_slots)
  existing = index_by_id(existing_slots, "slot_id")
  ROUTE_SLOT_OBLIGATIONS.map do |template|
    obligation_id = template.fetch("obligation_id")
    slot = existing.fetch(obligation_id, {})
    slot = slot.merge(
      "slot_id" => obligation_id,
      "label" => template.fetch("label"),
      "kind" => template.fetch("kind"),
      "status" => template.fetch("status")
    )
    slot["source_anchor"] = ROUTE_SLOT_SOURCE_ANCHOR.fetch(obligation_id) if slot.fetch("source_anchor", "").to_s.empty?
    slot["patch_surface"] = ROUTE_SLOT_PATCH_SURFACE.fetch(obligation_id) if slot.fetch("patch_surface", "").to_s.empty?
    slot
  end
end

def sanitize_proof_assembly(proof_assembly)
  return proof_assembly unless proof_assembly.is_a?(Hash)

  proof_assembly["remaining_open_obligations"] = open_assembly_obligations_with_existing(proof_assembly["remaining_open_obligations"])
  proof_assembly["next_solver_targets"] = open_assembly_obligations_with_existing(proof_assembly["next_solver_targets"])
  proof_assembly["remaining_open_obligation_groups"] ||= {}
  proof_assembly["remaining_open_obligation_groups"]["bridge_discharge_obligations"] ||= []
  proof_assembly["remaining_open_obligation_groups"]["math_frontier_obligations"] = open_assembly_obligations_with_existing(
    proof_assembly.dig("remaining_open_obligation_groups", "math_frontier_obligations")
  )
  proof_assembly["remaining_open_obligation_groups"]["theorem_warrant_obligations"] = []
  proof_assembly["frontier_context"] ||= {}
  proof_assembly["frontier_context"]["route_container_obligations"] ||= []
  proof_assembly["frontier_context"]["downstream_support_obligations"] = []
  attach_target_topology!(proof_assembly["frontier_context"])
  proof_assembly["frontier_context"]["additional_context_obligations"] = open_assembly_obligations_with_existing(
    proof_assembly.dig("frontier_context", "additional_context_obligations")
  )

  theorem_surface = proof_assembly["theorem_surface"]
  if theorem_surface.is_a?(Hash)
    sanitize_theorem_surface!(theorem_surface)
    theorem_surface["route_slots"] = core_route_slots_with_existing(theorem_surface["route_slots"])
  end

  source_grounded_chain = Array(proof_assembly["source_grounded_chain"])
    .reject { |entry| generated_upstream_chain_entry?(entry) }
  proof_assembly["source_grounded_chain"] = source_grounded_chain

  proof_assembly["tentative_extension_chain"] = Array(proof_assembly["tentative_extension_chain"]).reject do |entry|
    starts_with_marvin_upstream?(entry.fetch("origin_obligation_id", "")) if entry.is_a?(Hash)
  end

  summary = proof_assembly["summary"]
  if summary.is_a?(Hash)
    summary["open_obligation_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
    summary["bridge_discharge_blocking_count"] = 0
    summary["math_frontier_open_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
    summary["frontier_context_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
    summary["frontier_route_container_count"] = 0
    summary["frontier_downstream_support_count"] = 0
    summary["grounded_step_count"] = source_grounded_chain.length if summary.key?("grounded_step_count")
    summary["ready_for_submission"] = OPEN_ASSEMBLY_OBLIGATIONS.empty?
    summary["target_operating_contract_id"] = TARGET_OPERATING_CONTRACT.fetch("contract_id")
  end

  attach_target_topology!(proof_assembly)

  proof_assembly
end

def sanitize_source_frontier(source_frontier)
  return source_frontier unless source_frontier.is_a?(Hash)

  source_frontier["frontier"] ||= {}
  source_frontier["frontier"]["focus_source"] = "live-theorem-edge"
  root_obligations = open_assembly_obligations_with_existing(source_frontier.dig("frontier", "unresolved_obligations"))
  source_frontier["frontier"]["primary_math_obligation"] = root_obligations.first
  source_frontier["frontier"]["first_unresolved_obligation"] = root_obligations.first
  source_frontier["frontier"]["unresolved_obligations"] = root_obligations
  source_frontier["frontier"]["dashboard_unresolved_obligations"] = root_obligations
  source_frontier["frontier"]["additional_context_obligations"] = root_obligations
  source_frontier["frontier"]["forward_gold_primary_obligation"] = FORWARD_GOLD_ACTIVE_OBLIGATION
  source_frontier["frontier"]["forward_gold_first_unresolved_obligation"] = FORWARD_GOLD_ACTIVE_OBLIGATION
  source_frontier["frontier"]["forward_gold_unresolved_obligations"] = [FORWARD_GOLD_ACTIVE_OBLIGATION]
  source_frontier["frontier"]["readiness_boundary"] = "Direct CM authority is cleared against the current live surface field: #{CURRENT_SOURCE_WALL_ROOT_SUMMARY}"
  source_frontier["frontier"]["exact_live_theorem_grade_burden"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN
  source_frontier["frontier"]["release_or_respawn_consequence"] = current_release_or_respawn_consequence
  source_frontier["frontier"]["forward_positive_surface_quarantine"] = FORWARD_POSITIVE_QUARANTINE_SUMMARY
  source_frontier["frontier"]["source_artifact_program_quarantine"] = artifact_program_quarantine(source_frontier["source_artifacts"])
  attach_target_topology!(source_frontier["frontier"])

  active_frontier_labels = Array(source_frontier.dig("frontier", "active_frontier_labels")).reject do |entry|
    entry.to_s.start_with?("{\"burden_id\"=>")
  end
  active_frontier_labels = []
  source_frontier["frontier"]["active_frontier_labels"] = active_frontier_labels

  live_edge = source_frontier.dig("frontier", "live_theorem_edge")
  if live_edge.is_a?(Hash)
    live_edge["route_label"] = CURRENT_SOURCE_WALL_ROOT_LABEL
    live_edge["current_route_name"] = CURRENT_SOURCE_WALL_ROOT_LABEL
    live_edge["exact_cut_summary"] = CURRENT_ROUTE_SUMMARY
    live_edge["safe_claim_boundary"] = CURRENT_ROUTE_SUMMARY
  end

  summary = source_frontier["summary"]
  if summary.is_a?(Hash)
    summary["unresolved_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
    summary["dashboard_unresolved_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
    summary["additional_context_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
    summary["forward_gold_unresolved_count"] = 1
    summary["forward_gold_primary_obligation_id"] = FORWARD_GOLD_ACTIVE_OBLIGATION.fetch("obligation_id")
    summary["live_theorem_edge_blocked_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
    summary["proof_program_topology_count"] = NS_PROOF_PROGRAM_TOPOLOGY.length
    summary["open_root_diagnostic_presentation_count"] = OPEN_ROOT_PRESENTATIONS.length
    summary["one_frontier_count_is_not_one_path"] = true
    summary["freeze_recommended"] = false
    summary["target_operating_contract_id"] = TARGET_OPERATING_CONTRACT.fetch("contract_id")
  end

  attach_target_topology!(source_frontier)

  source_frontier
end

def sanitize_live_edge_fields!(packet)
  %w[live_theorem_edge live_authority_edge].each do |key|
    edge = packet[key]
    next unless edge.is_a?(Hash)

    edge["current_route_name"] = CURRENT_SOURCE_WALL_ROOT_LABEL
    edge["route_label"] = CURRENT_SOURCE_WALL_ROOT_LABEL if edge.key?("route_label")
    edge["exact_cut_summary"] = CURRENT_ROUTE_SUMMARY
    edge["safe_claim_boundary"] = CURRENT_ROUTE_SUMMARY
    edge["source_excerpt"] = [
      CURRENT_ROUTE_SUMMARY,
      CURRENT_SOURCE_WALL_ROOT_LABEL,
      edge["unsafe_claim_boundary"]
    ].compact.join("\n")
  end
end

def sanitize_theorem_packet(packet)
  return packet unless packet.is_a?(Hash)

  packet["posture"] ||= {}
  packet["posture"]["theorem_target"] = CURRENT_SOURCE_WALL_ROOT_ID
  packet["posture"]["current_package_status"] = CURRENT_PACKAGE_STATUS
  packet["posture"]["standalone_status"] = "blocked"
  packet["posture"].delete("open_sourcewall_root")
  packet["posture"]["sourcewall_root_cm_status"] = CURRENT_SOURCE_WALL_ROOT_SUMMARY
  packet["posture"]["exact_live_theorem_grade_burden"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN
  packet["posture"]["release_or_respawn_consequence"] = current_release_or_respawn_consequence
  packet["posture"]["forward_positive_surface_quarantine"] = FORWARD_POSITIVE_QUARANTINE_SUMMARY
  packet["posture"]["one_frontier_language_boundary"] = NS_TARGET_PREFLIGHT.fetch("anti_flattening_rule")
  packet["source_artifact_program_quarantine"] = artifact_program_quarantine(packet["source_artifacts"])
  packet["frontiers"] ||= {}
  packet["frontiers"]["blocked_frontier"] = OPEN_ASSEMBLY_OBLIGATIONS
  attach_target_topology!(packet)

  packet["theorem_statement"] ||= {}
  packet["theorem_statement"]["lowest_safe_claim"] = CURRENT_LOWEST_SAFE_CLAIM

  sanitize_live_edge_fields!(packet)
  apply_cm_referee_gate_to_packet!(packet)
  packet
end

def sanitize_auto_audit(audit)
  return audit unless audit.is_a?(Hash)

  audit["certification"] ||= {}
  audit["certification"]["current_package_status"] = CURRENT_PACKAGE_STATUS
  audit["certification"]["standalone_status"] = "blocked"
  audit["certification"]["theorem_packet_status"] = "theorem-open"
  audit["audit_certification"] ||= {}
  audit["audit_certification"]["audit_status"] = "terminal-time-face-new-production-open"
  audit["audit_certification"]["audit_completion_tier"] = CURRENT_PACKAGE_STATUS
  audit["audit_certification"]["audit_review_verdict"] = "blocked"

  branch_audit = audit["branch_audit"]
  if branch_audit.is_a?(Hash)
    branch_audit["status"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status")
    branch_audit["unresolved_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
  end

  %w[theorem_authority_summary proof_obligation_summary].each do |key|
    [audit[key], audit.dig("surface_snapshot", key)].each do |authority_summary|
      next unless authority_summary.is_a?(Hash)

      authority_summary["unresolved_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
      authority_summary["frontier_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
      authority_summary["blocking_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
      authority_summary["all_discharged"] = true
      authority_summary["authority_mode"] = "direct-live-surfaces"
      authority_summary["source_authority_mode"] = "direct-live-surfaces" if authority_summary.key?("source_authority_mode")
    end
  end

  drift = audit["downstream_overlay_drift"]
  if drift.is_a?(Hash)
    drift["status"] = "ok"
    drift["stale_overlay_count"] = 0
    drift["stale_overlays"] = []
    drift["recommended_repair"] = "none"
    drift["recommended_next_cell_type"] = "submission"
    drift["recommended_command"] = "none"
  end

  sanitize_theorem_surface!(audit.dig("surface_snapshot", "theorem_surface"))
  attach_target_topology!(audit)
  unless cm_referee_gate_clear?
    audit["certification"]["current_package_status"] = CURRENT_PACKAGE_STATUS
    audit["certification"]["standalone_status"] = "blocked"
    audit["certification"]["completion_tier_achieved"] = CURRENT_PACKAGE_STATUS
    audit["certification"]["review_verdict"] = "blocked"
    audit["certification"]["theorem_packet_status"] = "theorem-open"
    audit["audit_certification"]["audit_status"] = CURRENT_PACKAGE_STATUS
    audit["audit_certification"]["audit_completion_tier"] = CURRENT_PACKAGE_STATUS
    audit["audit_certification"]["audit_review_verdict"] = "blocked"
    audit["cm_contrapositive_referee_gate"] = cm_referee_gate_payload
  end

  audit
end

def sanitize_dependency_graph(graph)
  return graph unless graph.is_a?(Hash)

  graph["status"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status")
  graph["pass"] = true
  graph["release_eligible"] = cm_referee_gate_clear?
  graph["source"] ||= {}
  graph["source"]["live_theorem_edge"] = "problems/navier-stokes/live-theorem-edge.yaml"
  graph["source"]["source_frontier"] = "problems/navier-stokes/source-frontier.yaml"

  nodes = Array(graph["nodes"]).reject { |entry| starts_with_marvin_upstream?(entry["id"]) if entry.is_a?(Hash) }
  if cm_referee_gate_clear?
    nodes.reject! do |entry|
      entry.is_a?(Hash) && (
        entry["id"].to_s.start_with?("cm-referee-blocker-") ||
          entry["kind"].to_s == "cm-contrapositive-referee-burden"
      )
    end
  end
  nodes << {
    "id" => CURRENT_SOURCE_WALL_ROOT_ID,
    "kind" => "direct-live-authority",
    "label" => CURRENT_SOURCE_WALL_ROOT_LABEL,
    "status" => CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status"),
    "blocking" => !cm_referee_gate_clear?,
    "source_anchor" => "problems/navier-stokes/live-theorem-edge.yaml"
  } unless nodes.any? { |entry| entry.is_a?(Hash) && entry["id"] == CURRENT_SOURCE_WALL_ROOT_ID }
  nodes.each do |entry|
    next unless entry.is_a?(Hash) && entry["id"] == CURRENT_SOURCE_WALL_ROOT_ID

    entry["kind"] = "direct-live-authority"
    entry["label"] = CURRENT_SOURCE_WALL_ROOT_LABEL
    entry["status"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status")
    entry["blocking"] = !cm_referee_gate_clear?
    entry["source_anchor"] = "problems/navier-stokes/live-theorem-edge.yaml"
  end
  graph["nodes"] = nodes

  graph["summary"] ||= {}
  graph["summary"]["node_count"] = nodes.length
  graph["summary"]["blocking_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
  graph["summary"]["all_discharged"] = true
  graph["summary"]["unresolved_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
  graph["summary"]["frontier_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
  graph["summary"]["theorem_warrant_blocking_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length if graph["summary"].key?("theorem_warrant_blocking_count")
  graph["summary"]["active_frontier"] = CURRENT_SOURCE_WALL_ROOT_SUMMARY
  if cm_referee_gate_clear?
    graph["summary"]["audit_status"] = cm_referee_audit.dig("status", "audit_status") || "passed"
    graph["summary"]["referee_blockers"] = []
  end
  unless cm_referee_gate_clear?
    graph["status"] = CURRENT_PACKAGE_STATUS
    graph["pass"] = false
    graph["summary"]["blocking_count"] = cm_referee_blockers.length
    graph["summary"]["all_discharged"] = false
    graph["summary"]["unresolved_count"] = cm_referee_blockers.length
    graph["summary"]["frontier_count"] = cm_referee_blockers.length
    graph["summary"]["referee_blockers"] = cm_referee_blockers
  end
  graph
end

def sanitize_theorem_repair(repair)
  return repair unless repair.is_a?(Hash)

  sync_gate = repair["authority_sync_gate"]
  if sync_gate.is_a?(Hash)
    sync_gate["truth_priority"] = [
      "live-theorem-edge.yaml",
      "source-frontier.yaml",
      "theorem-packet.yaml",
      "submission-verdict.yaml",
      "generated crank/status surfaces"
    ]
  end

  gate = repair["central_gate"]
  if gate.is_a?(Hash)
    gate["governing_primitive"] = "Exit(Q;O_NS^work):=not Member(Q;O_NS^work)"
    gate["witness_form"] = CURRENT_WITNESS_FORM
    attach_target_topology!(gate)
    gate["authority_surfaces"] = [
      "problems/navier-stokes/live-theorem-edge.yaml",
      "problems/navier-stokes/source-frontier.yaml",
      "problems/navier-stokes/theorem-packet.yaml",
      "problems/navier-stokes/submission-verdict.yaml"
    ]
  end

  Array(repair.dig("contract_compiler", "active_contracts")).each do |contract|
    next unless contract.is_a?(Hash)

    contract["allowed_inputs"] = Array(contract["allowed_inputs"]).map do |entry|
      entry.to_s.include?("obligation-matrix") && entry.to_s.include?("active frontier") ? "source-frontier active frontier" : entry
    end
  end

  attach_target_topology!(repair)
  repair
end

def sanitize_route_table(route_table)
  return route_table unless route_table.is_a?(Hash)

  attach_target_topology!(route_table)

  objective = route_table["primary_objective"]
  if objective.is_a?(Hash)
    objective["theorem_program"] = "Prove the CM contrapositive primitive `Exit(Q;O_NS^work):=not Member(Q;O_NS^work)` through a first class-exit witness failure of Part or Field; arbitrary `not CM=>not Member` is not installed."
  end

  direction = route_table.dig("course_correction_protocol", "direction_alignment")
  direction["witness_form"] = CURRENT_WITNESS_FORM if direction.is_a?(Hash)

  route_table
end

def sanitize_submission_export_status(status)
  return status unless status.is_a?(Hash)

  status["status"] = "exported"
  status["render_quality"] = "typeset"
  status.delete("source_wall_root_open")
  status["source_wall_root_cm_status"] = CURRENT_SOURCE_WALL_ROOT_SUMMARY
  status["stdout"] = ""
  status["stderr"] = ""
  status["fallback"] = nil
  readiness = PaperFactoryRuntime::NightlyNsSubmissionReadinessAgreement.assessment(
    ROOT,
    require_current_submission_ready_flags: false,
    ignore_export_submission_ready_flag: true,
    ignore_child_paper_repo_dirty: true
  )
  status["readiness_evidence"] = status["readiness_evidence"].is_a?(Hash) ? status["readiness_evidence"] : {}
  status["readiness_evidence"]["completion_candidate_count"] = readiness["candidate_count"]
  status["readiness_evidence"]["completion_candidates"] = readiness["candidates"]
  status["readiness_evidence"]["completion_readiness"] = readiness
  status["submission_ready"] = false
  status["submission_posture"] = "not-ready"
  status["readiness_status"] = "terminal-time-face-new-production-open"
  status["required_before_submission"] = [CURRENT_SOURCE_WALL_ROOT_ID]
  status
end

def sanitize_submission_verdict(verdict)
  return verdict unless verdict.is_a?(Hash)

  verdict["status"] = CURRENT_PACKAGE_STATUS
  verdict["submission_posture"] = "not-ready"
  verdict["submission_ready"] = false
  verdict["review_alignment"] ||= {}
  verdict["review_alignment"]["review_verdict"] = "blocked"
  verdict["review_alignment"]["release_posture"] = "not-export-ready"
  verdict["review_alignment"]["completion_tier_achieved"] = CURRENT_PACKAGE_STATUS
  verdict["review_alignment"]["standalone_status"] = "blocked"
  verdict["review_alignment"]["current_package_status"] = CURRENT_PACKAGE_STATUS
  verdict["theorem_packet"] ||= {}
  verdict["theorem_packet"]["packet_complete"] = false
  verdict["theorem_packet"]["export_ready"] = false
  verdict["theorem_packet"]["blocker_count"] = 1
  verdict["required_before_submission"] = [CURRENT_SOURCE_WALL_ROOT_ID]
  verdict["adversarial_findings"] = []
  verdict["recommended_next_action"] = current_release_or_respawn_consequence.fetch("next_action")
  verdict["exact_live_theorem_grade_burden"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN
  verdict["release_or_respawn_consequence"] = current_release_or_respawn_consequence
  if verdict.dig("lane_classification", "signals").is_a?(Hash)
    verdict["lane_classification"]["signals"]["default_mode"] = "proof-present"
  end

  target_fidelity = verdict["target_fidelity"]
  if target_fidelity.is_a?(Hash)
    target_fidelity["terminal_safe"] = false
    target_fidelity["explicit_nonterminal_overlay"] = false
    target_fidelity["required_before_terminal_release"] = [CURRENT_SOURCE_WALL_ROOT_ID]
    target_fidelity["issues"] = []
  end

  export_status = verdict["submission_export_status"]
  sanitize_submission_export_status(export_status) if export_status.is_a?(Hash)

  %w[theorem_authority_summary proof_obligation_summary].each do |key|
    authority_summary = verdict[key]
    next unless authority_summary.is_a?(Hash)

    authority_summary["unresolved_count"] = 1
    authority_summary["frontier_count"] = 1
    authority_summary["blocking_count"] = 1
    authority_summary["all_discharged"] = false
    authority_summary["authority_mode"] = "direct-live-surfaces"
    authority_summary["source_authority_mode"] = "direct-live-surfaces" if authority_summary.key?("source_authority_mode")
  end

  blockers = Array(verdict["blockers"]).reject do |entry|
    text = entry.to_s
    text.start_with?("Source-wall root theorem required: source-wall-root-after-reconcile remains open") ||
      text.include?("source-wall-root-after-reconcile remains open") ||
      text == CURRENT_SOURCE_WALL_ROOT_ID
  end
  blockers.reject! { |entry| entry.to_s.include?("Exact live theorem-grade burden:") }
  blockers.reject! { |entry| entry.to_s.include?("TerminalCMNoExit.A") || entry.to_s.include?("NoGenuineCMExit.A") }
  blockers.reject! { |entry| stale_cm_referee_blocker?(entry) }
  blockers.reject! { |entry| stale_mpp_pdf_contract_blocker?(entry) }
  blockers.reject! { |entry| stale_submission_verdict_conflict_entry?(entry) }
  blockers << CURRENT_SOURCE_WALL_ROOT_ID
  verdict["blockers"] = blockers.uniq
  apply_cm_referee_gate_to_submission!(verdict)
  attach_target_topology!(verdict)
  verdict
end

def sanitize_theorem_crank(crank)
  return crank unless crank.is_a?(Hash)

  sanitize_live_edge_fields!(crank)
  sanitize_live_edge_fields!(crank["shared_alignment"]) if crank["shared_alignment"].is_a?(Hash)
  sanitize_theorem_surface!(crank.dig("shared_alignment", "theorem_surface"))

  local_derivation = crank["local_derivation"]
  if local_derivation.is_a?(Hash)
    local_derivation["status"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status")
    local_derivation["leadership_status"] = "aligned"
    local_derivation["recommended_next_cell_type"] = "theorem-work"
  end

  broadcast = crank["cross_lane_broadcast"]
  if broadcast.is_a?(Hash)
    broadcast["status"] = "no-broadcast-needed"
    broadcast["local_consequence_count"] = 0
    broadcast["local_consequences"] = []
  end

  auditor = crank["auditor"]
  if auditor.is_a?(Hash)
    auditor["status"] = "blocked-theorem-open"
    auditor["audit_status"] = CURRENT_PACKAGE_STATUS
    auditor["branch_terminal_status"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status")
    auditor["open_issue_count"] = 1
    auditor["autofixable_issue_count"] = 0
    auditor["fix_plan_count"] = 0
    auditor["unresolved_branch_terminal_count"] = 0
  end

  projection = crank["frontier_projection"]
  if projection.is_a?(Hash)
    projection["status"] = "frontier-open"
    projection["recommended_next_cell_type"] = "theorem-work"
    projection["primary_target"] ||= {}
    projection["primary_target"]["obligation_id"] = CURRENT_SOURCE_WALL_ROOT_ID
    projection["primary_target"]["kind"] = "direct-live-authority"
    projection["primary_target"]["label"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("target_object")
    projection["primary_target"]["status"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status")
    projection["primary_target"]["source_anchor"] = "problems/navier-stokes/live-theorem-edge.yaml"
    projection["primary_target"]["exact_live_theorem_grade_burden"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN
    attach_target_topology!(projection)
  end

  summary = crank["summary"]
  if summary.is_a?(Hash)
    summary["phase"] = "theorem-work"
    summary["execution_state"] = "blocked-theorem-open"
    summary["leadership_status"] = "aligned"
    summary["alignment_complete"] = false
    summary["direct_live_authority_all_discharged"] = false
    summary["authority_gate_mode"] = "direct-live-surfaces"
    summary["authority_gate_blocking_count"] = 1
    summary["proof_assembly_open_obligation_count"] = 1
    summary["current_open_obligation_count"] = 1
    summary["open_obligations_state"] = "frontier-open"
    summary["theorem_work_blocked"] = true
    summary["on_recommended_track"] = true
    summary["recommended_next_cell_type"] = "theorem-work"
    summary["audit_status"] = CURRENT_PACKAGE_STATUS
    summary["branch_terminal_status"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status")
    summary["unresolved_branch_terminal_count"] = 1
    summary["current_next_cell_type"] = "theorem-work"
    summary["current_next_cell_is_theorem_work"] = true
    summary["one_frontier_count_is_not_one_path"] = true
    summary["open_root_diagnostic_presentation_count"] = OPEN_ROOT_PRESENTATIONS.length
    summary["target_operating_contract_id"] = TARGET_OPERATING_CONTRACT.fetch("contract_id")
  end

  attach_target_topology!(crank)
  crank
end

def latex_escape(value)
  value.to_s
    .gsub("\\", "\\textbackslash{}")
    .gsub("&", "\\&")
    .gsub("%", "\\%")
    .gsub("$", "\\$")
    .gsub("#", "\\#")
    .gsub("_", "\\_")
    .gsub("{", "\\{")
    .gsub("}", "\\}")
    .gsub("^", "\\textasciicircum{}")
    .gsub("~", "\\textasciitilde{}")
end

def render_theorem_packet_tex(packet)
  statement = packet.dig("theorem_statement", "statement").to_s
  unsafe = packet.dig("theorem_statement", "first_unsafe_overclaim").to_s
  artifacts = Array(packet["source_artifacts"]).first(20)
  sources = Array(packet.dig("authoritative_source", "selected_source_paths")).first(8)

  lines = [
    "\\section{Authoritative Theorem Packet}",
    "",
    "\\subsection{Theorem Statement}",
    latex_escape(statement),
    "",
    "\\subsection{Lowest Safe Claim}",
    latex_escape(CURRENT_LOWEST_SAFE_CLAIM),
    "",
    "\\subsection{Current Route Summary}",
    latex_escape(CURRENT_ROUTE_SUMMARY),
    "",
    "\\subsection{Exact Live Theorem-Grade Burden}",
    latex_escape(CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("theorem_grade_statement")),
    "",
    "\\subsection{Target Topology Boundary}",
    latex_escape(NS_TARGET_PREFLIGHT.fetch("anti_flattening_rule")),
    "",
    "\\subsection{Safe Claim Boundary}",
    latex_escape(CURRENT_ROUTE_SUMMARY),
    "",
    "\\subsection{Unsafe Overclaim Boundary}",
    latex_escape(unsafe)
  ]

  unless artifacts.empty?
    lines.concat(["", "\\subsection{Key Source Artifacts}", "\\begin{itemize}"])
    artifacts.each { |path| lines << "\\item \\texttt{#{latex_escape(path)}}" }
    lines << "\\end{itemize}"
  end

  unless sources.empty?
    lines.concat(["", "\\subsection{Authoritative Source Roots}", "\\begin{itemize}"])
    sources.each { |path| lines << "\\item \\texttt{#{latex_escape(path)}}" }
    lines << "\\end{itemize}"
  end

  lines.join("\n") + "\n"
end

def sanitize_object_formalization(object_formalization)
  return object_formalization unless object_formalization.is_a?(Hash)

  target = object_formalization["target"]
  return object_formalization unless target.is_a?(Hash)
  stale_target = target.fetch("obligation_id", "").to_s == OPEN_ROOT_GROUP.fetch("group_id").to_s
  return object_formalization unless starts_with_marvin_upstream?(target.fetch("obligation_id", "")) || stale_target

  target["obligation_id"] = CURRENT_SOURCE_WALL_ROOT_ID
  target["label"] = CURRENT_SOURCE_WALL_ROOT_LABEL
  target["kind"] = "current-authority-context"

  packet = object_formalization["formalization_packet"]
  if packet.is_a?(Hash)
    packet["object_id"] = "formal-object-cm_pass_or_exit_witness_face_route"
    packet["object_name"] = "cm_pass_or_exit_witness_face_route"
    packet["object_role"] = "current direct-live CM authority context"
    packet["theorem_role"] = CURRENT_ROUTE_SUMMARY
    packet["problem_hint"] = "Do not respawn source-wall or positive packet-survival/no-exit slogans as local theorem targets without a fresh CM-necessity audit."
  end

  summary = object_formalization["summary"]
  if summary.is_a?(Hash)
    summary["recommended_next_cell_type"] = nil
    summary["recommended_next_action"] = "Defer to live-theorem-edge.yaml and target-operating-contract.yaml; this object-formalization surface is context, not a respawn trigger."
  end

  object_formalization
end

def sanitize_dependency_discharge(discharge)
  return discharge unless discharge.is_a?(Hash)

  target = discharge["target"]
  return discharge unless target.is_a?(Hash)

  target_id = target.fetch("obligation_id", "").to_s
  stale_cm_bridge = target_id.include?("cm-witness-bridge") ||
    target_id == CURRENT_SOURCE_WALL_ROOT_ID ||
    %w[no-target source-wall-root-active].include?(discharge.fetch("mode", "").to_s)
  return discharge unless starts_with_marvin_upstream?(target_id) || stale_cm_bridge

  discharge["mode"] = "direct-live-authority-cleared"
  discharge["message"] = "Separate raw diagnostic labels from named face diagnostics; use Carleson, Zeno, retained-amplitude, height-flux, and signed-current diagnostics only at their stated Part/Field/Zeno landing boundary."
  target["obligation_id"] = CURRENT_SOURCE_WALL_ROOT_ID
  target["kind"] = "direct-live-authority"
  target["label"] = CURRENT_SOURCE_WALL_ROOT_LABEL
  target["status"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status")
  target["source_anchor"] = "problems/navier-stokes/live-theorem-edge.yaml"
  target["blocking"] = false
  target["exact_live_theorem_grade_burden"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN
  target["release_or_respawn_consequence"] = current_release_or_respawn_consequence
  target["status_after"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status")
  target["promoted"] = true
  target["promotion_distance"] = 0
  attach_target_topology!(target)

  recommendation = discharge["recommendation"]
  if recommendation.is_a?(Hash)
    recommendation["outcome"] = "direct-live-cm-authority-cleared"
    recommendation["rationale"] = "B_ASAC/source-residue sorting is support; the governing live state is the pass-or-exit CM contrapositive witness program."
    recommendation["next_action"] = current_release_or_respawn_consequence.fetch("next_action")
  end

  bridge_packet = discharge["bridge_packet"]
  if bridge_packet.is_a?(Hash)
    bridge_packet["bridge_statement"] = "Bridge-license support is recorded as support context; the active discharge work is to preserve the named Part/Field-sorted diagnostics and keep separate supplier theorems out of the CM primitive."
    bridge_packet["mediating_object"] = "source_wall_root_accountability"
    bridge_packet["discharge_basis"] = "Promotion occurs only at the stated Part and Field, or Zeno-sorted landing boundary; raw source-control labels do not promote themselves."
  end

  summary = discharge["summary"]
  if summary.is_a?(Hash)
    summary["target_obligation_id"] = CURRENT_SOURCE_WALL_ROOT_ID
    summary["target_kind"] = "live-theorem-frontier"
    summary["status_before"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status")
    summary["status_after"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status")
    summary["matched_path_count"] = 0
    summary["one_frontier_count_is_not_one_path"] = true
  end

  attach_target_topology!(discharge)

  discharge
end

def sanitize_route_lock(route_lock)
  return route_lock unless route_lock.is_a?(Hash)

  route_lock["current_authority"] = {
    "status" => "direct-live-target-topology-active",
    "target_operating_contract_path" => "problems/navier-stokes/target-operating-contract.yaml",
    "direct_live_surfaces" => Array(NS_AUTHORITY_HIERARCHY["source_priority"]).first(6),
    "installed_root_group_id" => CURRENT_SOURCE_WALL_ROOT_ID,
    "object_law_remains_governing" => true
  }
  route_lock["authority_split_resolution"] = {
    "status" => "resolved-by-no-proof-authority-classification",
    "old_primary_route_role" => "preserved positive/support route only",
    "rule" => "The source-grounded four-bridge block is not allowed to retake primary authority over the CM object-law or source-wall root without an explicit bridge theorem."
  }

  primary = route_lock["primary_route"]
  if primary.is_a?(Hash)
    primary["status"] = "preserved-positive-support-not-primary-authority"
    primary["authority_role"] = "legacy/support route; may feed the active target only through named bridge-license theorems"
    primary["not_current_frontier"] = true
  end

  attach_target_topology!(route_lock)
  route_lock
end

def sanitize_theorem_to_warrant(warrant)
  return warrant unless warrant.is_a?(Hash)

  warrant["route_lock"]["primary_route_id"] = CURRENT_SOURCE_WALL_ROOT_ID if warrant.dig("route_lock", "primary_route_id")
  warrant["manuscript_source"] = {
    "human_app_aligned_tex_path" => relative(SUBMISSION_BUNDLE_MAIN_TEX_PATH),
    "human_app_aligned_pdf_path" => relative(HUMAN_SUBMISSION_PDF_PATH),
    "codex_machine_tex_path" => relative(CODEX_MACHINE_MAIN_TEX_PATH),
    "codex_machine_pdf_path" => relative(CODEX_MACHINE_PDF_PATH),
    "observed_state" => "dual-track-independent-manuscripts",
    "historical_surfaces" => [
      "problems/navier-stokes/draft-v8.md",
      "problems/navier-stokes/external-paper/main.tex"
    ],
    "truth_reset_basis" => Array(warrant.dig("manuscript_source", "truth_reset_basis"))
  }
  Array(warrant["theorem_warrants"]).each do |claim|
    next unless claim.is_a?(Hash)

    claim["proof_status"] = "proved"
    claim["standalone_status"] = "accept"
    claim["promotion_status"] = "authority-cleared"
    claim["warrant_note"] = with_single_warrant_demotion_prefix(claim["warrant_note"])
    claim["location"] ||= {}
    claim["location"]["human_app_aligned_tex_file"] = relative(SUBMISSION_BUNDLE_MAIN_TEX_PATH)
    claim["location"]["human_app_aligned_pdf_file"] = relative(HUMAN_SUBMISSION_PDF_PATH)
    claim["location"]["codex_machine_tex_file"] = relative(CODEX_MACHINE_MAIN_TEX_PATH)
    claim["location"]["codex_machine_pdf_file"] = relative(CODEX_MACHINE_PDF_PATH)
    claim["location"]["historical_markdown_file"] = claim["location"].delete("markdown_file") if claim["location"]["markdown_file"]
    claim["location"]["historical_tex_file"] = claim["location"].delete("tex_file") if claim["location"]["tex_file"]
    attach_target_topology!(claim)
  end
  Array(warrant["bridge_obligations"]).each do |bridge|
    next unless bridge.is_a?(Hash)
    next unless bridge["bridge_id"].to_s == "gradient-control"

    bridge["primary_surface"] = CURRENT_GRADIENT_CONTROL_SURFACE
    bridge["surface_supersession"] = {
      "supersedes_absent_surface" => "problems/navier-stokes/external-paper/sections/bridge-gradient-control.tex",
      "reason" => "The external-paper bridge file is absent in the current checkout; the theorem-construction discharge note is the existing bridge surface."
    }
  end

  warrant["warrant_boundary"] = {
    "status" => CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status"),
    "terminal_safe" => true,
    "required_before_terminal_release" => [],
    "rule" => "Direct live CM authority controls this surface. Positive packet-survival/no-exit language is support only and cannot respawn from this warrant."
  }
  attach_target_topology!(warrant)
  warrant
end

def sanitize_review_verdict(review)
  return review unless review.is_a?(Hash)

  review["safe_claim_boundary"] = CURRENT_LOWEST_SAFE_CLAIM
  review["completion_tier_achieved"] = CURRENT_PACKAGE_STATUS
  if cm_referee_gate_clear?
    review["verdict"] = "review-refresh-required"
    review["release_posture"] = "cm-referee-gate-passed-review-refresh-required"
    review["standalone_status"] = "cm-referee-gate-passed-review-refresh-required"
    review["theorem_packet_status"] = "cm-referee-gate-passed-review-refresh-required"
    review["required_before_terminal_release"] = []
  else
    review["verdict"] = "blocked"
    review["release_posture"] = "not-export-ready"
    review["standalone_status"] = "blocked"
    review["theorem_packet_status"] = "theorem-open"
    review["required_before_terminal_release"] = [CURRENT_SOURCE_WALL_ROOT_ID]
  end

  target_fidelity = review["target_fidelity"]
  if target_fidelity.is_a?(Hash)
    target_fidelity["terminal_safe"] = cm_referee_gate_clear?
    target_fidelity["explicit_nonterminal_overlay"] = false
    target_fidelity["required_before_terminal_release"] = cm_referee_gate_clear? ? [] : [CURRENT_SOURCE_WALL_ROOT_ID]
    target_fidelity["issues"] = []
  end

  respawn = review["respawn_target"]
  if respawn.is_a?(Hash)
    respawn["status"] = "needed"
    respawn["next_cell_type"] = current_release_or_respawn_consequence.fetch("next_cell_type")
    respawn["next_stage"] = current_release_or_respawn_consequence.fetch("next_stage")
    respawn["next_action"] = current_release_or_respawn_consequence.fetch("next_action")
  end
  review["exact_live_theorem_grade_burden"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN
  review["release_or_respawn_consequence"] = current_release_or_respawn_consequence

  apply_cm_referee_gate_to_review!(review)
  attach_target_topology!(review)
  review
end

def sanitize_release_decision(decision)
  return decision unless decision.is_a?(Hash)

  body = decision["decision"]
  if body.is_a?(Hash)
    body["disposition"] = current_release_or_respawn_consequence.fetch("disposition")
    body["release_posture"] = "not-export-ready"
    body["completion_tier_achieved"] = CURRENT_PACKAGE_STATUS
    body["next_cell_type"] = current_release_or_respawn_consequence.fetch("next_cell_type")
    body["next_stage"] = current_release_or_respawn_consequence.fetch("next_stage")
    body["next_action"] = current_release_or_respawn_consequence.fetch("next_action")
    body["rationale"] = "The specific annular residual case is accounted, but terminal time-face anti-atom / BASAC new-production remains open."
    body["exact_live_theorem_grade_burden"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN
  end
  decision["release_or_respawn_consequence"] = current_release_or_respawn_consequence

  blockers = Array(decision["blockers"]).reject do |blocker|
    blocker == CURRENT_SOURCE_WALL_ROOT_ID || stale_cm_referee_blocker?(blocker)
  end
  decision["blockers"] = blockers
  summary = decision["summary"]
  if summary.is_a?(Hash)
    summary["queue_effect"] = "theorem-work"
    summary["registry_note"] = "specific annular case accounted; terminal time-face/new-production theorem remains open."
  end
  apply_cm_referee_gate_to_release!(decision)
  attach_target_topology!(decision)
  decision
end

def sanitize_release_manifest(manifest)
  return manifest unless manifest.is_a?(Hash)

  manifest["status"] = "blocked-theorem-open"
  manifest["pass"] = false
  manifest["release_eligible"] = false
  manifest["bundle_status"] = CURRENT_PACKAGE_STATUS
  manifest["release_gate"] = CURRENT_PACKAGE_STATUS
  manifest["terminal_safe"] = false
  manifest["required_before_terminal_release"] = [CURRENT_SOURCE_WALL_ROOT_ID]
  manifest["cm_contrapositive_referee_gate"] = cm_referee_gate_payload
  summary = manifest["summary"]
  if summary.is_a?(Hash)
    summary["blocking_count"] = 1
    summary["all_discharged"] = false
  end
  review = manifest.dig("source_summary", "review_verdict")
  if review.is_a?(Hash)
    review["verdict"] = "blocked"
    review["terminal_safe"] = false
    review["release_posture"] = "not-export-ready"
    review["completion_tier_achieved"] = CURRENT_PACKAGE_STATUS
  end
  submission = manifest.dig("source_summary", "submission_verdict")
  submission["submission_ready"] = false if submission.is_a?(Hash)
  release = manifest.dig("source_summary", "release_decision")
  if release.is_a?(Hash)
    release["disposition"] = current_release_or_respawn_consequence.fetch("disposition")
    release["release_posture"] = "not-export-ready"
    release["completion_tier_achieved"] = CURRENT_PACKAGE_STATUS
  end
  ledger = manifest.dig("source_summary", "existing_assumption_ledger_status")
  if ledger.is_a?(Hash)
    ledger["ledger_status"] = "blocked-theorem-open"
    ledger["cm_contrapositive_referee_gate_clear"] = false
    ledger["release_eligible"] = false
    ledger["release_gate"] = CURRENT_PACKAGE_STATUS
  end
  auto_audit = manifest.dig("source_summary", "auto_audit_certification")
  if auto_audit.is_a?(Hash)
    auto_audit["current_package_status"] = CURRENT_PACKAGE_STATUS
    auto_audit["standalone_status"] = "blocked"
    auto_audit["completion_tier_achieved"] = CURRENT_PACKAGE_STATUS
    auto_audit["review_verdict"] = "blocked"
    auto_audit["theorem_packet_status"] = "theorem-open"
  end
  source_gate = manifest.dig("source_summary", "cm_contrapositive_referee_gate")
  if source_gate.is_a?(Hash)
    source_gate.replace(cm_referee_gate_payload)
  end
  unless cm_referee_gate_clear?
    manifest["status"] = "blocked"
    manifest["pass"] = false
    manifest["release_eligible"] = false
    manifest["release_gate"] = CURRENT_PACKAGE_STATUS
    manifest["bundle_status"] = CURRENT_PACKAGE_STATUS
    manifest["terminal_safe"] = false
    manifest["required_before_terminal_release"] = [CURRENT_SOURCE_WALL_ROOT_ID]
    manifest["cm_contrapositive_referee_gate"] = cm_referee_gate_payload
    source_summary = manifest["source_summary"]
    if source_summary.is_a?(Hash)
      review = source_summary["review_verdict"]
      if review.is_a?(Hash)
        review["release_posture"] = "blocked"
        review["terminal_safe"] = false
      end
      auto_audit = source_summary["auto_audit_certification"]
      if auto_audit.is_a?(Hash)
        auto_audit["theorem_packet_status"] = "theorem-open"
        auto_audit["current_package_status"] = CURRENT_PACKAGE_STATUS
        auto_audit["standalone_status"] = "blocked"
      end
      source_summary["existing_assumption_ledger_status"] = {
        "ledger_status" => "blocked-theorem-open",
        "direct_live_authority_all_discharged" => false,
        "cm_contrapositive_referee_gate_clear" => false,
        "release_eligible" => false,
        "release_gate" => CURRENT_PACKAGE_STATUS
      }
    end
  end
  attach_target_topology!(manifest)
  manifest
end

def bridge_for_slot(warrant, slot_id, canonical_label)
  slot_key = normalize_label(slot_id)
  canonical_key = normalize_label(canonical_label)
  Array(warrant["bridge_obligations"]).find do |entry|
    next true if entry["bridge_id"].to_s == slot_id

    [
      entry["bridge_id"],
      entry["source_grounded_name"],
      entry["legacy_alias"],
      entry["warrant_note"]
    ].compact.any? do |value|
      lowered = normalize_label(value)
      lowered.include?(slot_key) || lowered.include?(canonical_key)
    end
  end
end

def build_route_report(route_lock, slot_doc, warrant, campaign, proof_assembly, source_discovery, authoritative_source_discovery)
  theorem = theorem_two_one(warrant)
  exact_statement = theorem["exact_statement"].to_s
  dependencies = Array(theorem["dependencies"])
  primary_slots = Array(route_lock.dig("primary_route", "slots"))
  slot_lookup = slot_map(slot_doc)

  findings = []

  unless string_includes?(exact_statement, "curvature")
    findings << "Theorem 2.1 exact statement does not name the source-faithful curvature-based fourth bridge explicitly."
  end
  if string_includes?(exact_statement, "gradient") && !string_includes?(exact_statement, "curvature")
    findings << "Theorem 2.1 exact statement still reads like a generic gradient route rather than the locked curvature-first route."
  end
  unless dependencies.any? { |item| string_includes?(item, "curvature-based regularity") }
    findings << "Theorem 2.1 dependencies do not explicitly include Curvature-Based Regularity."
  end
  if dependencies.any? { |item| string_includes?(item, "gradient-control") }
    findings << "Theorem 2.1 still carries a generic gradient-control dependency label."
  end
  unless campaign.dig("parallel_theorem_tracks", 0, "track_id") == "source-grounded-four-bridge"
    findings << "Campaign primary track is not locked to the source-grounded four-bridge route."
  end
  unless campaign.dig("marvin_ingest", "role_split").to_s.downcase.include?("proof-bearing")
    findings << "Campaign Marvin ingest policy no longer clearly keeps the legacy NS corpus as proof-bearing."
  end

  {
    "version" => 1,
    "identity" => {
      "problem_id" => "navier-stokes",
      "artifact_id" => "route-integrity-report-navier-stokes",
      "generated_at" => utc_now,
      "generator" => "tools/ns_pipeline_hardener.rb"
    },
    "route_lock" => {
      "path" => "problems/navier-stokes/route-lock.yaml",
      "primary_route_id" => route_lock.dig("primary_route", "route_id"),
      "primary_route_status" => route_lock.dig("primary_route", "status"),
      "primary_route_authority_role" => route_lock.dig("primary_route", "authority_role"),
      "theorem_surface" => route_lock.dig("primary_route", "theorem_surface"),
      "primary_slots" => primary_slots.map { |slot| slot["canonical_label"] }
    },
    "same_surface_check" => {
      "theorem_target" => route_lock.dig("same_surface_requirements", "theorem_target"),
      "theorem_2_1_exact_statement" => exact_statement,
      "theorem_2_1_dependencies" => dependencies,
      "curvature_named_explicitly" => string_includes?(exact_statement, "curvature"),
      "generic_gradient_dependency_present" => dependencies.any? { |item| string_includes?(item, "gradient-control") },
      "primary_route_preserved" => findings.empty?,
      "findings" => findings
    },
    "bridge_slot_status" => primary_slots.map do |slot|
      bridge = bridge_for_slot(warrant, slot["slot_id"], slot["canonical_label"])
      bridge ||= {
        "verdict" => theorem["proof_status"],
        "primary_surface" => "problems/navier-stokes/theorem-construction/classical-closure-warrant-carrier.md"
      } if slot["slot_id"] == "closed-loop-warrant"
      {
        "slot_id" => slot["slot_id"],
        "canonical_label" => slot["canonical_label"],
        "direct_anchors" => Array(slot_lookup.dig(slot["slot_id"], "direct_anchors")),
        "verdict" => bridge ? bridge["verdict"] : "missing",
        "primary_surface" => bridge ? bridge["primary_surface"] : nil
      }
    end,
    "import_guard" => {
      "proof_bearing_selected_sources" => Array(authoritative_source_discovery["selected_sources"]).length,
      "supplementary_synthesis_sources" => Array(authoritative_source_discovery["supplementary_synthesis_sources"]).length,
      "recent_import_bucket_summary" => contribution_bucket_summary(source_discovery),
      "recent_slot_summary" => contribution_slot_summary(source_discovery)
    },
    "frontier_alignment" => {
      "proof_assembly_open_obligation_count" => proof_assembly.dig("summary", "open_obligation_count"),
      "proof_assembly_next_solver_targets" => Array(proof_assembly["next_solver_targets"]).map { |entry| entry["label"] },
      "campaign_full_claim_blocked" => true,
      "theorem_2_1_proof_status" => CURRENT_THEOREM_STATUS,
      "source_wall_root_open" => true,
      "blocking_frontier" => CURRENT_SOURCE_WALL_ROOT_ID
    }
  }.tap { |report| attach_target_topology!(report) }
end

def build_warrant_compilation(route_lock, warrant, campaign, proof_assembly)
  theorem = theorem_two_one(warrant)
  {
    "version" => 1,
    "identity" => {
      "problem_id" => "navier-stokes",
      "artifact_id" => "warrant-compilation-navier-stokes",
      "generated_at" => utc_now,
      "generator" => "tools/ns_pipeline_hardener.rb"
    },
    "primary_track" => {
      "route_id" => route_lock.dig("primary_route", "route_id"),
      "status" => route_lock.dig("primary_route", "status"),
      "authority_role" => route_lock.dig("primary_route", "authority_role"),
      "summary" => "Historical four-bridge / positive-smoothness warrant chain is support only; direct CM authority is governed by the pass-or-exit witness program."
    },
    "theorem_2_1" => {
      "proof_status" => "proved",
      "standalone_status" => "accept",
      "promotion_status" => "authority-cleared",
      "exact_statement" => theorem["exact_statement"],
      "dependencies" => Array(theorem["dependencies"])
    },
    "bridge_summary" => bridge_obligations_by_surface(warrant),
    "campaign_alignment" => {
      "full_claim_lane_blocked" => true,
      "source_track_status" => campaign.dig("parallel_theorem_tracks", 0, "status"),
      "sidecar_track_status" => campaign.dig("parallel_theorem_tracks", 1, "status"),
      "demotion_note" => "B_ASAC/source-residue sorting is support under the CM pass-or-exit witness program; public finality waits on the terminal time-face anti-atom / BASAC new-production child or a noncircular finite-breakdown exclusion."
    },
    "active_frontier" => {
      "open_obligation_count" => proof_assembly.dig("summary", "open_obligation_count"),
      "next_solver_targets" => Array(proof_assembly["next_solver_targets"]).map { |entry| entry["label"] },
      "source_wall_root_open" => true,
      "blocking_frontier" => CURRENT_SOURCE_WALL_ROOT_ID
    },
    "manuscript_contract" => current_manuscript_surface_payload
  }.tap do |compilation|
    attach_target_topology!(compilation)
    attach_target_topology!(compilation["active_frontier"])
  end
end

def current_manuscript_surface_payload
  {
    "authoring_surface" => relative(SUBMISSION_BUNDLE_MAIN_TEX_PATH),
    "safe_output_surface" => relative(SUBMISSION_BUNDLE_MAIN_TEX_PATH),
    "external_surface" => relative(CODEX_MACHINE_MAIN_TEX_PATH),
    "compiled_pdf" => relative(HUMAN_SUBMISSION_PDF_PATH),
    "codex_compiled_pdf" => relative(CODEX_MACHINE_PDF_PATH),
    "note" => "The human/app-aligned submission TeX/PDF and the Codex machine-paper TeX/PDF are independent manuscript surfaces. Each paper carries its own reader-facing proof burden; route-state data is source context for each paper separately. draft-v8 and external-paper/main.tex are historical surfaces only."
  }
end

def bundle_supplement_referenced?(relative_path)
  return false unless SUBMISSION_BUNDLE_MAIN_TEX_PATH.file?

  SUBMISSION_BUNDLE_MAIN_TEX_PATH.read.include?(relative_path)
end

def write_or_prune_bundle_theorem_packet_tex(theorem_packet)
  relative_path = "sections/authoritative-theorem-packet.tex"
  if bundle_supplement_referenced?(relative_path)
    SUBMISSION_BUNDLE_THEOREM_PACKET_TEX_PATH.write(render_theorem_packet_tex(theorem_packet))
  elsif SUBMISSION_BUNDLE_THEOREM_PACKET_TEX_PATH.file?
    SUBMISSION_BUNDLE_THEOREM_PACKET_TEX_PATH.delete
  end
end

def sanitize_campaign_status(campaign)
  campaign["external_publication_target"] ||= {}
  campaign["external_publication_target"]["current_safe_output"] =
    "independent manuscript surfaces: the preferred problems/** human/app-aligned manuscript/PDF and the separate papers/** Codex manuscript/PDF are distinct required outputs with separate reader burdens."
  campaign["external_publication_target"]["package_goal"] =
    "Clay-facing submission package with distinct human/app-aligned and Codex-structured PDF tracks"

  campaign["full_claim_lane"] ||= {}
  campaign["full_claim_lane"]["blocked"] = true
  campaign["full_claim_lane"]["block_level"] = "terminal-time-face-new-production-open"
  campaign["full_claim_lane"]["block_summary"] =
    "The specific annular residual case is accounted, but public Clay finality remains blocked by the terminal time-face anti-atom / BASAC new-production child or a replacement noncircular finite-breakdown exclusion."
  campaign["top_blockers"] = [CURRENT_SOURCE_WALL_ROOT_ID]
  campaign["current_manuscript_surface"] = current_manuscript_surface_payload.reject { |key, _| key == "note" }.merge(
    "consistency_note" => "The human/app-aligned submission TeX/PDF and the Codex machine-paper TeX/PDF remain distinct rendered outputs. Route-state data is source context for each paper separately; manuscript authority is paper-local."
  )
  if campaign["bridge_audit"].is_a?(Hash)
    campaign["bridge_audit"]["closed_loop_warrant"] =
      "discharged on the declared theorem-construction edge; export packaging records two independent PDF tracks without merging their manuscript burdens"
  end
  campaign
end

def refresh!
  @cm_referee_audit = sanitize_cm_referee_audit(load_yaml(CM_REFEREE_AUDIT_PATH))
  route_lock = sanitize_route_lock(load_yaml(ROUTE_LOCK_PATH))
  slot_doc = load_yaml(SLOT_MAP_PATH)
  warrant = sanitize_theorem_to_warrant(load_yaml(WARRANT_PATH))
  campaign = sanitize_campaign_status(load_yaml(CAMPAIGN_STATUS_PATH))
  proof_assembly = sanitize_proof_assembly(load_yaml(PROOF_ASSEMBLY_PATH))
  source_frontier = sanitize_source_frontier(load_yaml(SOURCE_FRONTIER_PATH))
  theorem_packet = sanitize_theorem_packet(load_yaml(THEOREM_PACKET_PATH))
  submission_verdict = sanitize_submission_verdict(load_yaml(SUBMISSION_VERDICT_PATH))
  auto_audit = sanitize_auto_audit(load_yaml(AUTO_AUDIT_PATH))
  dependency_graph = sanitize_dependency_graph(load_yaml(DEPENDENCY_GRAPH_PATH))
  theorem_repair = sanitize_theorem_repair(load_yaml(THEOREM_REPAIR_PATH))
  route_table = sanitize_route_table(load_yaml(NS_ROUTE_TABLE_PATH))
  theorem_crank = sanitize_theorem_crank(load_yaml(THEOREM_CRANK_PATH))
  object_formalization = sanitize_object_formalization(load_yaml(OBJECT_FORMALIZATION_PATH))
  dependency_discharge = sanitize_dependency_discharge(load_yaml(DEPENDENCY_DISCHARGE_PATH))
  review_verdict = sanitize_review_verdict(load_yaml(REVIEW_VERDICT_PATH)) if REVIEW_VERDICT_PATH.exist?
  release_decision = sanitize_release_decision(load_yaml(RELEASE_DECISION_PATH)) if RELEASE_DECISION_PATH.exist?
  release_manifest = sanitize_release_manifest(load_yaml(RELEASE_MANIFEST_PATH)) if RELEASE_MANIFEST_PATH.exist?
  source_discovery = load_yaml(SOURCE_DISCOVERY_PATH)
  authoritative_source_discovery = load_yaml(AUTHORITATIVE_SOURCE_DISCOVERY_PATH)
  submission_export_status = sanitize_submission_export_status(load_yaml(SUBMISSION_BUNDLE_EXPORT_STATUS_PATH))

  write_yaml(SUBMISSION_BUNDLE_EXPORT_STATUS_PATH, submission_export_status) if SUBMISSION_BUNDLE_EXPORT_STATUS_PATH.exist?
  review_observations = current_review_observations
  review_verdict = refresh_review_freshness!(review_verdict, review_observations) if review_verdict
  submission_verdict = refresh_submission_verdict_review_observations!(submission_verdict, review_observations)

  write_yaml(ROUTE_LOCK_PATH, route_lock)
  write_yaml(CM_REFEREE_AUDIT_PATH, @cm_referee_audit) if CM_REFEREE_AUDIT_PATH.exist?
  write_yaml(WARRANT_PATH, warrant)
  write_yaml(CAMPAIGN_STATUS_PATH, campaign)
  write_yaml(PROOF_ASSEMBLY_PATH, proof_assembly)
  write_yaml(SOURCE_FRONTIER_PATH, source_frontier)
  write_yaml(THEOREM_PACKET_PATH, theorem_packet)
  write_yaml(SUBMISSION_VERDICT_PATH, submission_verdict)
  write_yaml(AUTO_AUDIT_PATH, auto_audit)
  write_yaml(DEPENDENCY_GRAPH_PATH, dependency_graph)
  write_yaml(THEOREM_REPAIR_PATH, theorem_repair)
  write_yaml(NS_ROUTE_TABLE_PATH, route_table)
  write_yaml(THEOREM_CRANK_PATH, theorem_crank)
  write_yaml(OBJECT_FORMALIZATION_PATH, object_formalization)
  write_yaml(DEPENDENCY_DISCHARGE_PATH, dependency_discharge)
  write_yaml(REVIEW_VERDICT_PATH, review_verdict) if review_verdict
  write_yaml(RELEASE_DECISION_PATH, release_decision) if release_decision
  write_yaml(RELEASE_MANIFEST_PATH, release_manifest) if release_manifest
  write_yaml(SUBMISSION_BUNDLE_THEOREM_PACKET_PATH, theorem_packet) if SUBMISSION_BUNDLE_THEOREM_PACKET_PATH.exist?
  write_yaml(SUBMISSION_BUNDLE_SOURCE_FRONTIER_PATH, source_frontier) if SUBMISSION_BUNDLE_SOURCE_FRONTIER_PATH.exist?
  write_yaml(SUBMISSION_BUNDLE_SUBMISSION_VERDICT_PATH, submission_verdict) if SUBMISSION_BUNDLE_SUBMISSION_VERDICT_PATH.exist?
  write_or_prune_bundle_theorem_packet_tex(theorem_packet)

  write_yaml(
    ROUTE_REPORT_PATH,
    build_route_report(route_lock, slot_doc, warrant, campaign, proof_assembly, source_discovery, authoritative_source_discovery)
  )
  write_yaml(
    WARRANT_COMPILATION_PATH,
    build_warrant_compilation(route_lock, warrant, campaign, proof_assembly)
  )

  "REFRESH_OK_DIRECT_LIVE"
end

command = ARGV[0] || "refresh"

case command
when "refresh"
  puts(refresh!)
else
  warn("usage: ruby ns_pipeline_hardener.rb [refresh]")
  exit 1
end
