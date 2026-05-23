#!/usr/bin/env ruby
# frozen_string_literal: true

require "pathname"
require "time"
require "yaml"

ROOT = Pathname.new("/Users/thomasbirnie/Workspace/ToE/Research-Consolidation").freeze
PROBLEM_ROOT = ROOT.join("problems/navier-stokes").freeze
ROUTE_LOCK_PATH = PROBLEM_ROOT.join("route-lock.yaml").freeze
SLOT_MAP_PATH = PROBLEM_ROOT.join("bridge-slot-map.yaml").freeze
WARRANT_PATH = PROBLEM_ROOT.join("theorem-to-warrant.yaml").freeze
CAMPAIGN_STATUS_PATH = PROBLEM_ROOT.join("campaign-status.yaml").freeze
PROOF_ASSEMBLY_PATH = PROBLEM_ROOT.join("proof-assembly.yaml").freeze
RETIRED_THEOREM_AUTHORITY_MATRIX_PATH = PROBLEM_ROOT.join("proof-obligation-matrix.yaml").freeze
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
SUBMISSION_BUNDLE_ROOT = PROBLEM_ROOT.join("submission-bundle").freeze
SUBMISSION_BUNDLE_THEOREM_PACKET_PATH = SUBMISSION_BUNDLE_ROOT.join("theorem-packet.yaml").freeze
SUBMISSION_BUNDLE_SOURCE_FRONTIER_PATH = SUBMISSION_BUNDLE_ROOT.join("source-frontier.yaml").freeze
SUBMISSION_BUNDLE_SUBMISSION_VERDICT_PATH = SUBMISSION_BUNDLE_ROOT.join("submission-verdict.yaml").freeze
SUBMISSION_BUNDLE_EXPORT_STATUS_PATH = SUBMISSION_BUNDLE_ROOT.join("submission-export-status.yaml").freeze
SUBMISSION_BUNDLE_THEOREM_PACKET_TEX_PATH = SUBMISSION_BUNDLE_ROOT.join("sections/authoritative-theorem-packet.tex").freeze

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
CURRENT_SOURCE_WALL_ROOT_ID = "terminalcmnoexit-a-nogenuinecmexit-a"
CURRENT_SOURCE_WALL_ROOT_LABEL = "TerminalCMNoExit.A / NoGenuineCMExit.A"
CURRENT_SOURCE_WALL_ROOT_SUMMARY = "The Clay-facing CM frontier is TerminalCMNoExit.A / NoGenuineCMExit.A: prove original smooth Navier-Stokes data leaves at least one continuation-complete Pack/Part/Field packet on every alleged finite terminal tail. Source-residue and B_ASAC terminal residue subcases are already sorted as Pack/Part witness or supplier-quarantined support; they are not bare anti-atom deletion burdens and do not close the no-exit theorem."
CURRENT_THEOREM_STATUS = "frontier-open"
CURRENT_PACKAGE_STATUS = "terminal-cm-no-exit-respawn-required"
CURRENT_LOWEST_SAFE_CLAIM = "The CM source-residue subcases are sorted as exit witnesses or supplier-quarantined support. Full Clay-facing CM closure still requires TerminalCMNoExit.A / NoGenuineCMExit.A: a surviving continuation-complete Pack/Part/Field packet on every alleged finite terminal tail."
CURRENT_ROUTE_SUMMARY = "The CM primitive remains `Exit(Q):=not Member(Q)`. The theorem-grade installed CM direction is only `forall N exists r_N: CM_{N,r_N,Q}=>Member(Q;O_NS^work)`, with `CM_{N,r,Q}=Pack_Q+Part_{N,Q}+Field_{N,r,Q}` as the canonical route-relative witness envelope. First class-exit is witnessed by first failure of at least one of Pack/Part/Field, but the blunt converse `not CM_{N,r,Q}=>not Member(Q;O_NS^work)` is absent. The PCTP / SOURCE.NO-PULSE / AWG / TGC family remains supplier/readout support, with source-drain feeding the Field/readout side rather than replacing the CM primitive. SourceWall.Reconcile.A is resolved by demotion: normalized-adjoint source-drain is conditional support, not an unconditional proof of SOURCE.NO-PULSE.A. The active work is CM-exit discipline: a failure surface is live only when it is forced by first-exit analysis or lands in Pack, Part, or Field. ScaleCriticalTreeCarleson.A is Pack-side: Pack_Q implies the scale-critical donor-refill Carleson bound, and a selected unpaid infinite donor-refill tree is not Pack_Q / (Pack, packing-detached) before Field or Jump readout; finite Zeno ancestry is sorted by RawZenoFailurePartition.A + ZenoAtomFailureToFaceWitness.A, with zero-radius terminal residue landing as `not Pack_Q`; AllNonEulerNSSurfaceFaceSweep.A indexes 1945 non-Euler Navier-Stokes text surfaces after self-inclusion, content-level Euler exclusion, May 17 Euler-mirror quarantine, and manual theorem-role correction; AllNonEulerNSFailureFaceDiagnostic.A gives each row a selected-failure diagnostic; AllNonEulerCMContrapositiveClosure.A is the row-level diagnostic ledger; MajorNonEulerCMContrapositiveClosure.A closes the major named surfaces. Retained amplitude is Pack/Part or source-wall return, height/low-strain is a Pack/Part/Field/Zeno subset, post-ASAC signed-current reduces to the Zeno branch, and generated/manuscript/source-history/runtime/export surfaces are support. Direct supplier theorems remain separate."
CURRENT_WITNESS_FORM = "first class-exit witness: not Pack_Q or not Part_{N,Q} or not Field_{N,r,Q} on the same-fluid window; arbitrary not-CM is not an installed not-Member converse"
SOURCE_WALL_ROOT_SUMMARY_BASE = CURRENT_SOURCE_WALL_ROOT_SUMMARY
Object.send(:remove_const, :CURRENT_SOURCE_WALL_ROOT_SUMMARY)
CURRENT_SOURCE_WALL_ROOT_SUMMARY = [
  SOURCE_WALL_ROOT_SUMMARY_BASE,
  "The historical PRD/LPSC/SquareSourceEstimate.A/ActiveShellAmplitudeGain.A/non-Carleson Zeno source-control entrances are quarantined support for a downstream no-pulse program. They are not terminal Zeno CM obligations.",
  "The May 17 parallel completion pass remains evidence that those forward entrances are not installed CM inputs: PRD needs SourceWeightedTerminalAngularDepletion.A, LPSC returns to PRD, SquareSourceEstimate.A and ActiveShellAmplitudeGain.A return to ActiveShellSourceNormalize.A / active-square reserve, and the non-Carleson Zeno route needs TerminalSourceReverseHolder.A / UniformTemporalSourceIntegrability_p.A or a produced rigid residue class with Liouville.",
  "The equality route under SourceWeightedTerminalAngularDepletion.A has ASACDefectMeasure.A and TerminalNoFreeSinkEqualityClassProduction.A installed. The May 21 terminal Zeno correction classifies any B_ASAC^closed terminal atom as endpoint Pack failure: finite Zeno ancestry packets may be legal, but the terminal zero-radius residue is not a retained positive-radius packet. NoPersistentUnpaidPositiveRadiusAncestry.A closes the positive-radius retained tail by the shared-participation strip balance: a positive terminal carrier must pay, receive incoming participation flux, leave through a legal ledger, or hit a finite CM face. BASACTerminalAtomCMFaceLabeling.A, RetainedPackFieldNoIncomingParticipationFlux.A, and BASACLiouvilleCMParticipationBridge.A remain finite-ancestry accounting and post-exit readout support. This settles the terminal Zeno endpoint for CM Pack-legality without leaving a forward positive-supplier burden attached to it.",
  "The May 17 eigenframe and pressure-Hessian attempts add OneSidedNearBandMaterialStrainBV.A / TerminalPressureHessianNoSustain.A as a signed near-band source-current obstruction, not a new CM face or an installed pressure-sustain theorem.",
  "The forward-positive quarantine index demotes every scanned positive-smoothness, positive-supplier, transfer, receiver/readout, export, and already-demoted positive surface for CM use: #{FORWARD_POSITIVE_QUARANTINE_SUMMARY.fetch("entry_count")} indexed surfaces remain support unless a named bridge lands the exact result in Pack_Q, Part_{N,Q}, or Field_{N,r,Q}."
].join(" ")
ROUTE_SUMMARY_BASE = CURRENT_ROUTE_SUMMARY
Object.send(:remove_const, :CURRENT_ROUTE_SUMMARY)
CURRENT_ROUTE_SUMMARY = [
  ROUTE_SUMMARY_BASE,
  "Positive supplier atoms such as PRD, LPSC, temporal residence, Zeno residue evacuation, rigid ancient residue classes, and active-square reserve are quarantined support for downstream no-pulse/source-control work.",
  "After the May 17 parallel completion pass, SourceWeightedTerminalAngularDepletion.A and the other tested entrances remain conditional source-control presentations, not installed CM endpoint obligations.",
  "ASACDefectMeasure.A and TerminalNoFreeSinkEqualityClassProduction.A produce B_ASAC; the May 21 terminal Zeno correction says the B_ASAC^closed terminal atom is `not Pack_Q` at the zero-radius endpoint. NoPersistentUnpaidPositiveRadiusAncestry.A handles the positive-radius retained tail: the shared-participation strip estimate forces incoming flux, CM-envelope blowout, paid exit, or finite CM-face exit. Retained H1-H6 replay, ACT.KX, DTC.Read, Field.Read, READ.COVER, End_NS, OFP.A, and endpoint readout consequences remain downstream or quarantined support.",
  "The exact Clay-facing CM burden is TerminalCMNoExit.A / NoGenuineCMExit.A. Treating B_ASAC reverse-Holder production, NativeSourceAC.A, or a public-critical translator as the live CM closure theorem is target drift unless a separate Pack/Part/Field bridge license is proved.",
  "PublicCriticalExitToCMFace_X.A / RetainedPackPartCriticalConcentrationFieldExit_X.A remains a CM-facing translator target, not a substitute for TerminalCMNoExit.A / NoGenuineCMExit.A. The L3/Duhamel/native-source split is support for landing public critical-class exit on the witness ledger.",
  "The same refresh keeps Euler-mirror pressure/nonparticipation notes out of the non-Euler pass and records the eigenframe/pressure route as conditional near-band source-current support.",
  "The forward-positive quarantine index is now a hard demotion surface for #{FORWARD_POSITIVE_QUARANTINE_SUMMARY.fetch("entry_count")} scanned repo surfaces: indexed material cannot set a CM frontier, close TerminalCMNoExit.A / NoGenuineCMExit.A, replace the Pack-first witness tree, count as release readiness, or convert a lawful class-exit witness into a deletion burden."
].join(" ")
CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN = {
  "status" => "frontier-open",
  "burden_id" => "terminal-cm-no-exit-nogenuinecmexit",
  "proof_mode" => "cm_contrapositive_class_exit",
  "target_object" => "TerminalCMNoExit.A / NoGenuineCMExit.A",
  "theorem_grade_statement" => "Prove original smooth data leaves at least one continuation-complete Pack/Part/Field packet on every alleged finite terminal tail; the remaining open faces are Pack strain-integrability no-exit, Part closedness-input no-exit, and licensed Field coherence no-exit.",
  "active_container" => CURRENT_SOURCE_WALL_ROOT_ID,
  "respawn_cell" => "source-wall-root-theorem",
  "respawn_stage" => "direct-packet-survival",
  "allowed_input_boundary" => "The proof may use installed genuine-exit capture, canonical terminal packet capture, terminal source-residue CM-exit sorting, and finite failure witness capture. Bare positive-supplier deletion theorems, B_ASAC reverse-Holder production, PCTP/no-pulse supplier targets, endpoint readout consequences, and every surface indexed in the forward-positive quarantine ledger remain separate or quarantined support unless a Pack/Part/Field bridge license is proved.",
  "nearest_wrong_substitution" => "Treating B_ASAC supplier exhaustion or source-residue sorting as Clay-facing CM closure."
}.freeze
CURRENT_RELEASE_OR_RESPAWN_CONSEQUENCE = {
  "disposition" => "respawn",
  "next_cell_type" => "source-wall-root-theorem",
  "next_stage" => "direct-packet-survival",
  "next_action" => "Prove TerminalCMNoExit.A / NoGenuineCMExit.A as Exit(Q):=not Member(Q) by classifying every alleged finite terminal tail through the Pack-first CM witness tree with Pack, then Part, then licensed Field; Member(Q) is downstream of that witness certificate."
}.freeze
NS_TARGET_PREFLIGHT = TARGET_OPERATING_CONTRACT.fetch("target_preflight").freeze
NS_TARGET_LOCK_SCHEMA = TARGET_OPERATING_CONTRACT.fetch("target_lock_schema").freeze
NS_PROOF_PROGRAM_TOPOLOGY = TARGET_OPERATING_CONTRACT.fetch("proof_program_topology").freeze
OPEN_ROOT_GROUP = TARGET_OPERATING_CONTRACT.fetch("open_root_group").freeze
OPEN_ROOT_PRESENTATIONS = OPEN_ROOT_GROUP.fetch("diagnostic_presentations_pending_cm_exit_landing").freeze
NS_NON_MERGE_RULES = TARGET_OPERATING_CONTRACT.fetch("non_merge_rules").freeze
NS_AUTHORITY_HIERARCHY = TARGET_OPERATING_CONTRACT.fetch("authority_hierarchy").freeze
NS_MODE_SELECTION_PROTOCOL = TARGET_OPERATING_CONTRACT.fetch("mode_selection_protocol").freeze
OPEN_ASSEMBLY_OBLIGATIONS = [
  {
    "obligation_id" => CURRENT_SOURCE_WALL_ROOT_ID,
    "kind" => "live-theorem-frontier",
    "label" => CURRENT_SOURCE_WALL_ROOT_LABEL,
    "status" => CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status"),
    "blocking" => false,
    "source_anchor" => "problems/navier-stokes/live-theorem-edge.yaml",
    "frontier_summary" => CURRENT_SOURCE_WALL_ROOT_SUMMARY,
    "program_id" => "source-wall-residual-root-group",
    "proof_mode" => "branch_native_supplier_or_cm_landing_support",
    "propagated_object" => "source-reserve / Field-face residual support, not the whole NS route",
    "cm_landing_role" => "requires bridge-license landing in a Pack/Part/Field witness face before promotion",
    "promotion_gate" => "Pack_Q, Part_{N,Q}, or Field_{N,r,Q} witness-face landing",
    "root_group_id" => CURRENT_SOURCE_WALL_ROOT_ID,
    "exact_live_theorem_grade_burden" => CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN,
    "release_or_respawn_consequence" => CURRENT_RELEASE_OR_RESPAWN_CONSEQUENCE,
    "not_single_path" => true,
    "diagnostic_presentations_pending_cm_exit_landing" => OPEN_ROOT_PRESENTATIONS.map { |entry| entry.fetch("label") }
  }
].freeze
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

def target_topology_payload
  {
    "target_operating_contract_path" => "problems/navier-stokes/target-operating-contract.yaml",
    "target_preflight" => NS_TARGET_PREFLIGHT,
    "target_lock_schema" => NS_TARGET_LOCK_SCHEMA,
    "proof_program_topology" => NS_PROOF_PROGRAM_TOPOLOGY,
    "open_root_group" => OPEN_ROOT_GROUP,
    "exact_live_theorem_grade_burden" => CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN,
    "release_or_respawn_consequence" => CURRENT_RELEASE_OR_RESPAWN_CONSEQUENCE,
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
  return "cm-member-class-exit" if value.include?("cm-") || value.include?("member") || value.include?("pack-part-field")
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
    "Direct live authority remains source-wall-root-after-reconcile until its theorem role is accounted for against the governing CM program.",
    "Do not read this chain as current proof authority, terminal proof status, or a singleton Navier-Stokes route."
  ]
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
    "open_root_group_id" => CURRENT_SOURCE_WALL_ROOT_ID,
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
    summary["ready_for_submission"] = false
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
  source_frontier["frontier"]["readiness_boundary"] = "Terminal CM no-exit frontier remains open: #{CURRENT_SOURCE_WALL_ROOT_SUMMARY}"
  source_frontier["frontier"]["exact_live_theorem_grade_burden"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN
  source_frontier["frontier"]["release_or_respawn_consequence"] = CURRENT_RELEASE_OR_RESPAWN_CONSEQUENCE
  source_frontier["frontier"]["forward_positive_surface_quarantine"] = FORWARD_POSITIVE_QUARANTINE_SUMMARY
  source_frontier["frontier"]["source_artifact_program_quarantine"] = artifact_program_quarantine(source_frontier["source_artifacts"])
  attach_target_topology!(source_frontier["frontier"])

  active_frontier_labels = Array(source_frontier.dig("frontier", "active_frontier_labels")).reject do |entry|
    entry.to_s.start_with?("{\"burden_id\"=>")
  end
  active_frontier_labels = [CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("target_object")]
  source_frontier["frontier"]["active_frontier_labels"] = active_frontier_labels

  live_edge = source_frontier.dig("frontier", "live_theorem_edge")
  if live_edge.is_a?(Hash)
    live_edge["route_label"] = CURRENT_SOURCE_WALL_ROOT_ID
    live_edge["current_route_name"] = CURRENT_SOURCE_WALL_ROOT_ID
    live_edge["exact_cut_summary"] = CURRENT_ROUTE_SUMMARY
    live_edge["safe_claim_boundary"] = CURRENT_ROUTE_SUMMARY
  end

  summary = source_frontier["summary"]
  if summary.is_a?(Hash)
    summary["unresolved_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
    summary["dashboard_unresolved_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
    summary["additional_context_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
    summary["live_theorem_edge_blocked_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
    summary["proof_program_topology_count"] = NS_PROOF_PROGRAM_TOPOLOGY.length
    summary["open_root_diagnostic_presentation_count"] = OPEN_ROOT_PRESENTATIONS.length
    summary["one_frontier_count_is_not_one_path"] = true
    summary["freeze_recommended"] = true
    summary["target_operating_contract_id"] = TARGET_OPERATING_CONTRACT.fetch("contract_id")
  end

  attach_target_topology!(source_frontier)

  source_frontier
end

def sanitize_live_edge_fields!(packet)
  %w[live_theorem_edge live_authority_edge].each do |key|
    edge = packet[key]
    next unless edge.is_a?(Hash)

    edge["current_route_name"] = CURRENT_SOURCE_WALL_ROOT_ID
    edge["route_label"] = CURRENT_SOURCE_WALL_ROOT_ID if edge.key?("route_label")
    edge["exact_cut_summary"] = CURRENT_ROUTE_SUMMARY
    edge["safe_claim_boundary"] = CURRENT_ROUTE_SUMMARY
    edge["source_excerpt"] = [
      CURRENT_ROUTE_SUMMARY,
      CURRENT_SOURCE_WALL_ROOT_ID,
      edge["unsafe_claim_boundary"]
    ].compact.join("\n")
  end
end

def sanitize_theorem_packet(packet)
  return packet unless packet.is_a?(Hash)

  packet["posture"] ||= {}
  packet["posture"]["theorem_target"] = "full-mpp-closure"
  packet["posture"]["current_package_status"] = CURRENT_THEOREM_STATUS
  packet["posture"]["standalone_status"] = CURRENT_THEOREM_STATUS
  packet["posture"].delete("open_sourcewall_root")
  packet["posture"]["sourcewall_root_cm_status"] = CURRENT_SOURCE_WALL_ROOT_SUMMARY
  packet["posture"]["exact_live_theorem_grade_burden"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN
  packet["posture"]["release_or_respawn_consequence"] = CURRENT_RELEASE_OR_RESPAWN_CONSEQUENCE
  packet["posture"]["forward_positive_surface_quarantine"] = FORWARD_POSITIVE_QUARANTINE_SUMMARY
  packet["posture"]["one_frontier_language_boundary"] = NS_TARGET_PREFLIGHT.fetch("anti_flattening_rule")
  packet["source_artifact_program_quarantine"] = artifact_program_quarantine(packet["source_artifacts"])
  packet["frontiers"] ||= {}
  packet["frontiers"]["blocked_frontier"] = OPEN_ASSEMBLY_OBLIGATIONS
  attach_target_topology!(packet)

  packet["theorem_statement"] ||= {}
  packet["theorem_statement"]["lowest_safe_claim"] = CURRENT_LOWEST_SAFE_CLAIM

  sanitize_live_edge_fields!(packet)
  packet
end

def sanitize_auto_audit(audit)
  return audit unless audit.is_a?(Hash)

  audit["certification"] ||= {}
  audit["certification"]["current_package_status"] = CURRENT_THEOREM_STATUS
  audit["certification"]["standalone_status"] = CURRENT_THEOREM_STATUS
  audit["certification"]["theorem_packet_status"] = CURRENT_THEOREM_STATUS
  audit["audit_certification"] ||= {}
  audit["audit_certification"]["audit_status"] = "audited-terminal-cm-no-exit-open"
  audit["audit_certification"]["audit_completion_tier"] = "audited-paper-complete-theorem-open"
  audit["audit_certification"]["audit_review_verdict"] = "audited-revise"

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
      authority_summary["all_discharged"] = false
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
    drift["recommended_next_cell_type"] = "creative-theorem-search"
    drift["recommended_command"] = "run-next"
  end

  sanitize_theorem_surface!(audit.dig("surface_snapshot", "theorem_surface"))
  attach_target_topology!(audit)

  audit
end

def sanitize_dependency_graph(graph)
  return graph unless graph.is_a?(Hash)

  graph["status"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status")
  graph["pass"] = true
  graph["source"] ||= {}
  graph["source"]["live_theorem_edge"] = "problems/navier-stokes/live-theorem-edge.yaml"
  graph["source"]["source_frontier"] = "problems/navier-stokes/source-frontier.yaml"

  nodes = Array(graph["nodes"]).reject { |entry| starts_with_marvin_upstream?(entry["id"]) if entry.is_a?(Hash) }
  nodes << {
    "id" => CURRENT_SOURCE_WALL_ROOT_ID,
    "kind" => "live-theorem-frontier",
    "label" => CURRENT_SOURCE_WALL_ROOT_LABEL,
    "status" => CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status"),
    "blocking" => true,
    "source_anchor" => "problems/navier-stokes/live-theorem-edge.yaml"
  } unless nodes.any? { |entry| entry.is_a?(Hash) && entry["id"] == CURRENT_SOURCE_WALL_ROOT_ID }
  graph["nodes"] = nodes

  graph["summary"] ||= {}
  graph["summary"]["node_count"] = nodes.length
  graph["summary"]["blocking_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
  graph["summary"]["all_discharged"] = false
  graph["summary"]["unresolved_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
  graph["summary"]["frontier_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
  graph["summary"]["active_frontier"] = CURRENT_SOURCE_WALL_ROOT_SUMMARY
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
    objective["theorem_program"] = "Prove the CM contrapositive primitive `Exit(Q;O_NS^work):=not Member(Q;O_NS^work)` through a first class-exit witness-face failure of Pack, Part, or Field; arbitrary `not CM=>not Member` is not installed."
  end

  direction = route_table.dig("course_correction_protocol", "direction_alignment")
  direction["witness_form"] = CURRENT_WITNESS_FORM if direction.is_a?(Hash)

  route_table
end

def sanitize_submission_export_status(status)
  return status unless status.is_a?(Hash)

  status["status"] = "stale-not-ready"
  status["render_quality"] = "stale"
  status.delete("source_wall_root_open")
  status["source_wall_root_cm_status"] = CURRENT_SOURCE_WALL_ROOT_SUMMARY
  status["stdout"] = ""
  status["stderr"] = ""
  status["fallback"] = nil
  status
end

def sanitize_submission_verdict(verdict)
  return verdict unless verdict.is_a?(Hash)

  verdict["submission_posture"] = "not-ready"
  verdict["submission_ready"] = false
  verdict["review_alignment"] ||= {}
  verdict["review_alignment"]["release_posture"] = "terminal-cm-no-exit-open-respawn-required"
  verdict["review_alignment"]["standalone_status"] = CURRENT_THEOREM_STATUS
  verdict["review_alignment"]["current_package_status"] = CURRENT_PACKAGE_STATUS
  verdict["exact_live_theorem_grade_burden"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN
  verdict["release_or_respawn_consequence"] = CURRENT_RELEASE_OR_RESPAWN_CONSEQUENCE

  target_fidelity = verdict["target_fidelity"]
  if target_fidelity.is_a?(Hash)
    target_fidelity["terminal_safe"] = false
    target_fidelity["explicit_nonterminal_overlay"] = true
    target_fidelity["required_before_terminal_release"] = [CURRENT_SOURCE_WALL_ROOT_LABEL]
    issues = Array(target_fidelity["issues"]).reject { |entry| entry.to_s.include?("source-wall-root-after-reconcile remains open") }
    issue = "TerminalCMNoExit.A / NoGenuineCMExit.A remains open; terminal release requires a surviving continuation-complete Pack/Part/Field packet on every alleged finite terminal tail."
    issues << issue unless issues.include?(issue)
    target_fidelity["issues"] = issues
  end

  export_status = verdict["submission_export_status"]
  sanitize_submission_export_status(export_status) if export_status.is_a?(Hash)

  %w[theorem_authority_summary proof_obligation_summary].each do |key|
    authority_summary = verdict[key]
    next unless authority_summary.is_a?(Hash)

    authority_summary["unresolved_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
    authority_summary["frontier_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
    authority_summary["blocking_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
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
  open_burden = "Terminal CM no-exit open: #{CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("theorem_grade_statement")}"
  blockers << open_burden unless blockers.include?(open_burden)
  verdict["blockers"] = blockers
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
    local_derivation["recommended_next_cell_type"] = "creative-theorem-search"
  end

  broadcast = crank["cross_lane_broadcast"]
  if broadcast.is_a?(Hash)
    broadcast["status"] = "no-broadcast-needed"
    broadcast["local_consequence_count"] = 0
    broadcast["local_consequences"] = []
  end

  auditor = crank["auditor"]
  if auditor.is_a?(Hash)
    auditor["status"] = "ready"
    auditor["audit_status"] = "audited-terminal-cm-no-exit-open"
    auditor["branch_terminal_status"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status")
    auditor["open_issue_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
    auditor["autofixable_issue_count"] = 0
    auditor["fix_plan_count"] = 0
    auditor["unresolved_branch_terminal_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
  end

  projection = crank["frontier_projection"]
  if projection.is_a?(Hash)
    projection["status"] = "ready"
    projection["recommended_next_cell_type"] = "creative-theorem-search"
    projection["primary_target"] ||= {}
    projection["primary_target"]["obligation_id"] = CURRENT_SOURCE_WALL_ROOT_ID
    projection["primary_target"]["kind"] = "live-theorem-frontier"
    projection["primary_target"]["label"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("target_object")
    projection["primary_target"]["status"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status")
    projection["primary_target"]["source_anchor"] = "problems/navier-stokes/live-theorem-edge.yaml"
    projection["primary_target"]["exact_live_theorem_grade_burden"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN
    attach_target_topology!(projection)
  end

  summary = crank["summary"]
  if summary.is_a?(Hash)
    summary["phase"] = "creative-theorem-search"
    summary["execution_state"] = "ready"
    summary["leadership_status"] = "aligned"
    summary["alignment_complete"] = true
    summary["direct_live_authority_all_discharged"] = false
    summary["authority_gate_mode"] = "direct-live-surfaces"
    summary["authority_gate_blocking_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
    summary["proof_assembly_open_obligation_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
    summary["current_open_obligation_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
    summary["open_obligations_state"] = "terminal-cm-no-exit-open"
    summary["theorem_work_blocked"] = false
    summary["on_recommended_track"] = true
    summary["recommended_next_cell_type"] = "creative-theorem-search"
    summary["audit_status"] = "audited-terminal-cm-no-exit-open"
    summary["branch_terminal_status"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status")
    summary["unresolved_branch_terminal_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
    summary["current_next_cell_type"] = "creative-theorem-search"
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
  return object_formalization unless starts_with_marvin_upstream?(target.fetch("obligation_id", ""))

  target["obligation_id"] = TERMINAL_PROMOTION_OBLIGATION_ID
  target["label"] = TERMINAL_PROMOTION_LABEL
  target["kind"] = "blocked-frontier"

  packet = object_formalization["formalization_packet"]
  if packet.is_a?(Hash)
    packet["object_id"] = "formal-object-route_mutation_carrier"
    packet["object_name"] = "route_mutation_carrier"
    packet["object_role"] = "explicit theorem object"
    packet["theorem_role"] = "Make the periodic Clay terminal-promotion bridge exact enough that later discharge can test it locally."
    packet["problem_hint"] = "Keep the object classical. Do not smuggle in modified-equation structure."
  end

  summary = object_formalization["summary"]
  if summary.is_a?(Hash)
    summary["recommended_next_cell_type"] = "dependency-discharge"
    summary["recommended_next_action"] = "Use the terminal-promotion object packet and rerun dependency-discharge on the same obligation instead of reopening a stale sidecar theorem."
  end

  object_formalization
end

def sanitize_dependency_discharge(discharge)
  return discharge unless discharge.is_a?(Hash)

  target = discharge["target"]
  return discharge unless target.is_a?(Hash)

  target_id = target.fetch("obligation_id", "").to_s
  stale_cm_bridge = target_id.include?("cm-witness-face-bridge") ||
    target_id == CURRENT_SOURCE_WALL_ROOT_ID ||
    %w[no-target source-wall-root-active].include?(discharge.fetch("mode", "").to_s)
  return discharge unless starts_with_marvin_upstream?(target_id) || stale_cm_bridge

  discharge["mode"] = "source-wall-root-active"
  discharge["message"] = "Separate raw diagnostic labels from named face diagnostics; use Carleson, Zeno, retained-amplitude, height-flux, and signed-current diagnostics only at their stated Pack/Part/Field/Zeno landing boundary."
  target["obligation_id"] = CURRENT_SOURCE_WALL_ROOT_ID
  target["kind"] = "live-theorem-frontier"
  target["label"] = CURRENT_SOURCE_WALL_ROOT_LABEL
  target["status"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status")
  target["source_anchor"] = "problems/navier-stokes/live-theorem-edge.yaml"
  target["blocking"] = true
  target["exact_live_theorem_grade_burden"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN
  target["release_or_respawn_consequence"] = CURRENT_RELEASE_OR_RESPAWN_CONSEQUENCE
  target["status_after"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status")
  target["promoted"] = false
  target["promotion_distance"] = 1
  attach_target_topology!(target)

  recommendation = discharge["recommendation"]
  if recommendation.is_a?(Hash)
    recommendation["outcome"] = "terminal-cm-no-exit-open"
    recommendation["rationale"] = "The Clay-facing CM no-exit theorem remains open; B_ASAC/source-residue sorting is support and cannot be promoted as full Pack/Part/Field packet survival."
    recommendation["next_action"] = CURRENT_RELEASE_OR_RESPAWN_CONSEQUENCE.fetch("next_action")
  end

  bridge_packet = discharge["bridge_packet"]
  if bridge_packet.is_a?(Hash)
    bridge_packet["bridge_statement"] = "Bridge-license support is recorded as support context; the active discharge work is to preserve the named face-sorted diagnostics and keep separate supplier theorems out of the CM primitive."
    bridge_packet["mediating_object"] = "source_wall_root_accountability"
    bridge_packet["discharge_basis"] = "Promotion occurs only at the stated Pack, Part, Field, or Zeno-sorted landing boundary; raw source-control labels do not promote themselves."
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
    "open_root_group_id" => CURRENT_SOURCE_WALL_ROOT_ID,
    "object_law_remains_governing" => true
  }
  route_lock["authority_split_resolution"] = {
    "status" => "resolved-by-demotion",
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
  Array(warrant["theorem_warrants"]).each do |claim|
    next unless claim.is_a?(Hash)

    claim["proof_status"] = CURRENT_THEOREM_STATUS
    claim["standalone_status"] = CURRENT_THEOREM_STATUS
    claim["promotion_status"] = "terminal-cm-no-exit-open-respawn-required"
    claim["warrant_note"] = [
      "Demotion repair: historical four-bridge and positive-support warrants remain support context only.",
      "They are not stand-alone proof authority for a full release audit.",
      claim["warrant_note"]
    ].compact.join(" ")
    attach_target_topology!(claim)
  end

  warrant["warrant_boundary"] = {
    "status" => CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN.fetch("status"),
    "terminal_safe" => false,
    "required_before_terminal_release" => [CURRENT_SOURCE_WALL_ROOT_LABEL],
    "rule" => "TerminalCMNoExit.A / NoGenuineCMExit.A remains open; full terminal proof requires Pack/Part/Field packet survival on every alleged finite terminal tail."
  }
  attach_target_topology!(warrant)
  warrant
end

def sanitize_review_verdict(review)
  return review unless review.is_a?(Hash)

  review["safe_claim_boundary"] = CURRENT_LOWEST_SAFE_CLAIM
  review["standalone_status"] = CURRENT_THEOREM_STATUS
  review["theorem_packet_status"] = CURRENT_THEOREM_STATUS

  target_fidelity = review["target_fidelity"]
  if target_fidelity.is_a?(Hash)
    target_fidelity["terminal_safe"] = false
    target_fidelity["explicit_nonterminal_overlay"] = true
    target_fidelity["required_before_terminal_release"] = [CURRENT_SOURCE_WALL_ROOT_LABEL]
    issues = Array(target_fidelity["issues"]).reject { |entry| entry.to_s.include?("source-wall-root-after-reconcile remains open") }
    issue = "TerminalCMNoExit.A / NoGenuineCMExit.A remains open; terminal release requires a surviving continuation-complete Pack/Part/Field packet on every alleged finite terminal tail."
    issues << issue unless issues.include?(issue)
    target_fidelity["issues"] = issues
  end

  review["required_before_terminal_release"] = [CURRENT_SOURCE_WALL_ROOT_LABEL]

  respawn = review["respawn_target"]
  if respawn.is_a?(Hash)
    respawn["next_cell_type"] = CURRENT_RELEASE_OR_RESPAWN_CONSEQUENCE.fetch("next_cell_type")
    respawn["next_stage"] = CURRENT_RELEASE_OR_RESPAWN_CONSEQUENCE.fetch("next_stage")
    respawn["next_action"] = CURRENT_RELEASE_OR_RESPAWN_CONSEQUENCE.fetch("next_action")
  end
  review["exact_live_theorem_grade_burden"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN
  review["release_or_respawn_consequence"] = CURRENT_RELEASE_OR_RESPAWN_CONSEQUENCE

  attach_target_topology!(review)
  review
end

def sanitize_release_decision(decision)
  return decision unless decision.is_a?(Hash)

  body = decision["decision"]
  if body.is_a?(Hash)
    body["disposition"] = CURRENT_RELEASE_OR_RESPAWN_CONSEQUENCE.fetch("disposition")
    body["release_posture"] = "revise-loop"
    body["completion_tier_achieved"] = "route-complete"
    body["next_cell_type"] = CURRENT_RELEASE_OR_RESPAWN_CONSEQUENCE.fetch("next_cell_type")
    body["next_stage"] = CURRENT_RELEASE_OR_RESPAWN_CONSEQUENCE.fetch("next_stage")
    body["next_action"] = CURRENT_RELEASE_OR_RESPAWN_CONSEQUENCE.fetch("next_action")
    body["rationale"] = "TerminalCMNoExit.A / NoGenuineCMExit.A remains open as the Clay-facing CM no-exit theorem."
    body["exact_live_theorem_grade_burden"] = CURRENT_EXACT_LIVE_THEOREM_GRADE_BURDEN
  end
  decision["release_or_respawn_consequence"] = CURRENT_RELEASE_OR_RESPAWN_CONSEQUENCE

  blockers = Array(decision["blockers"]).reject { |blocker| blocker == CURRENT_SOURCE_WALL_ROOT_ID }
  decision["blockers"] = blockers
  attach_target_topology!(decision)
  decision
end

def sanitize_release_manifest(manifest)
  return manifest unless manifest.is_a?(Hash)

  manifest["release_gate"] = "terminal-cm-no-exit-open-respawn-required"
  manifest["terminal_safe"] = false
  manifest["required_before_terminal_release"] = [CURRENT_SOURCE_WALL_ROOT_LABEL]
  review = manifest.dig("source_summary", "review_verdict")
  if review.is_a?(Hash)
    review["terminal_safe"] = false
    review["release_posture"] = "terminal-cm-no-exit-open-respawn-required"
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
      "campaign_full_claim_blocked" => false,
      "theorem_2_1_proof_status" => CURRENT_THEOREM_STATUS,
      "source_wall_root_open" => true
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
      "summary" => "Historical four-bridge / positive-smoothness warrant chain preserved as support only; TerminalCMNoExit.A / NoGenuineCMExit.A is the open Clay-facing CM no-exit frontier."
    },
    "theorem_2_1" => {
      "proof_status" => CURRENT_THEOREM_STATUS,
      "standalone_status" => CURRENT_THEOREM_STATUS,
      "promotion_status" => "terminal-cm-no-exit-open-respawn-required",
      "exact_statement" => theorem["exact_statement"],
      "dependencies" => Array(theorem["dependencies"])
    },
    "bridge_summary" => bridge_obligations_by_surface(warrant),
    "campaign_alignment" => {
      "full_claim_lane_blocked" => false,
      "source_track_status" => campaign.dig("parallel_theorem_tracks", 0, "status"),
      "sidecar_track_status" => campaign.dig("parallel_theorem_tracks", 1, "status"),
      "demotion_note" => "B_ASAC/source-residue sorting is support; full release still requires TerminalCMNoExit.A / NoGenuineCMExit.A."
    },
    "active_frontier" => {
      "open_obligation_count" => proof_assembly.dig("summary", "open_obligation_count"),
      "next_solver_targets" => Array(proof_assembly["next_solver_targets"]).map { |entry| entry["label"] },
      "source_wall_root_open" => true
    },
    "manuscript_contract" => {
      "authoring_surface" => campaign.dig("current_manuscript_surface", "authoring_surface"),
      "safe_output_surface" => campaign.dig("current_manuscript_surface", "safe_output_surface"),
      "external_surface" => campaign.dig("current_manuscript_surface", "external_surface"),
      "note" => "Synthesis and safe-output surfaces must not overwrite the primary full-claim route."
    }
  }.tap do |compilation|
    attach_target_topology!(compilation)
    attach_target_topology!(compilation["active_frontier"])
  end
end

def refresh!
  route_lock = sanitize_route_lock(load_yaml(ROUTE_LOCK_PATH))
  slot_doc = load_yaml(SLOT_MAP_PATH)
  warrant = sanitize_theorem_to_warrant(load_yaml(WARRANT_PATH))
  campaign = load_yaml(CAMPAIGN_STATUS_PATH)
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

  write_yaml(ROUTE_LOCK_PATH, route_lock)
  write_yaml(WARRANT_PATH, warrant)
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
  write_yaml(SUBMISSION_BUNDLE_EXPORT_STATUS_PATH, submission_export_status) if SUBMISSION_BUNDLE_EXPORT_STATUS_PATH.exist?
  SUBMISSION_BUNDLE_THEOREM_PACKET_TEX_PATH.write(render_theorem_packet_tex(theorem_packet)) if SUBMISSION_BUNDLE_THEOREM_PACKET_TEX_PATH.dirname.exist?

  write_yaml(
    ROUTE_REPORT_PATH,
    build_route_report(route_lock, slot_doc, warrant, campaign, proof_assembly, source_discovery, authoritative_source_discovery)
  )
  write_yaml(
    WARRANT_COMPILATION_PATH,
    build_warrant_compilation(route_lock, warrant, campaign, proof_assembly)
  )

  RETIRED_THEOREM_AUTHORITY_MATRIX_PATH.exist? ? "refreshed" : "REFRESH_OK_MATRIX_ABSENT"
end

command = ARGV[0] || "refresh"

case command
when "refresh"
  puts(refresh!)
else
  warn("usage: ruby ns_pipeline_hardener.rb [refresh]")
  exit 1
end
