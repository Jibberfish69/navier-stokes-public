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
THEOREM_AUTHORITY_FRONTIER_PATH = PROBLEM_ROOT.join("source-frontier.yaml").freeze
SOURCE_FRONTIER_PATH = PROBLEM_ROOT.join("source-frontier.yaml").freeze
OBJECT_FORMALIZATION_PATH = PROBLEM_ROOT.join("object-formalization.yaml").freeze
DEPENDENCY_DISCHARGE_PATH = PROBLEM_ROOT.join("dependency-discharge.yaml").freeze
SOURCE_DISCOVERY_PATH = PROBLEM_ROOT.join("marvin-source-discovery.yaml").freeze
AUTHORITATIVE_SOURCE_DISCOVERY_PATH = PROBLEM_ROOT.join("authoritative-source-discovery.yaml").freeze
ROUTE_REPORT_PATH = PROBLEM_ROOT.join("route-integrity-report.yaml").freeze
WARRANT_COMPILATION_PATH = PROBLEM_ROOT.join("warrant-compilation.yaml").freeze

CURRENT_SOURCEPULSE_FRONTIER = {
  "obligation_id" => "sourcepulse-dtc-placement",
  "label" => "SourcePulseDTCPlacement.A",
  "kind" => "theorem-obligation",
  "status" => "open",
  "source_anchor" => "problems/navier-stokes/theorem-construction/mpp-sourcepulse-dtc-placement-license-audit-note-20260503.md",
  "route_faithfulness_status" => "exact same-family tower-placement license needed for SourcePulseCMExit.A; strong source-exclusion supplier remains nonblocking",
  "route_governing_primitive" => "SourcePulseCMExit.A",
  "current_direct_supplier_target" => "OriginalSmoothData=>SourcePulseExclusion.A (nonblocking strong supplier)"
}.freeze

TERMINAL_WARRANT_OBLIGATION = {
  "obligation_id" => "warrant-theorem-2.1",
  "label" => "Theorem 2.1 (Classical Closure)",
  "kind" => "theorem-warrant",
  "status" => "bridge-pending"
}.freeze

OPEN_ASSEMBLY_OBLIGATIONS = [
  CURRENT_SOURCEPULSE_FRONTIER,
  TERMINAL_WARRANT_OBLIGATION
].freeze
OPEN_ASSEMBLY_OBLIGATION_IDS = OPEN_ASSEMBLY_OBLIGATIONS.map { |entry| entry.fetch("obligation_id") }.freeze
ROUTE_SLOT_OBLIGATIONS = [
  TERMINAL_WARRANT_OBLIGATION
].freeze
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
  path.write(YAML.dump(object))
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
  proof_assembly["remaining_open_obligation_groups"]["math_frontier_obligations"] = [
    {
      "obligation_id" => CURRENT_SOURCEPULSE_FRONTIER.fetch("obligation_id"),
      "label" => CURRENT_SOURCEPULSE_FRONTIER.fetch("label"),
      "kind" => CURRENT_SOURCEPULSE_FRONTIER.fetch("kind"),
      "status" => CURRENT_SOURCEPULSE_FRONTIER.fetch("status")
    }
  ]
  proof_assembly["remaining_open_obligation_groups"]["theorem_warrant_obligations"] = [
    TERMINAL_WARRANT_OBLIGATION.dup
  ]
  proof_assembly["frontier_context"] ||= {}
  proof_assembly["frontier_context"]["route_container_obligations"] ||= []
  proof_assembly["frontier_context"]["downstream_support_obligations"] ||= []
  proof_assembly["frontier_context"]["additional_context_obligations"] = [
    {
      "obligation_id" => CURRENT_SOURCEPULSE_FRONTIER.fetch("obligation_id"),
      "label" => CURRENT_SOURCEPULSE_FRONTIER.fetch("label"),
      "kind" => CURRENT_SOURCEPULSE_FRONTIER.fetch("kind"),
      "status" => CURRENT_SOURCEPULSE_FRONTIER.fetch("status")
    }
  ]

  theorem_surface = proof_assembly["theorem_surface"]
  if theorem_surface.is_a?(Hash)
    theorem_surface["route_slots"] = core_route_slots_with_existing(theorem_surface["route_slots"])
  end

  source_grounded_chain = Array(proof_assembly["source_grounded_chain"])
    .reject { |entry| entry.to_s.downcase.include?("marvin-upstream") }
  OPEN_ASSEMBLY_OBLIGATIONS.each do |entry|
    label = entry.fetch("label")
    source_grounded_chain << label unless source_grounded_chain.include?(label)
  end
  proof_assembly["source_grounded_chain"] = source_grounded_chain

  proof_assembly["tentative_extension_chain"] = Array(proof_assembly["tentative_extension_chain"]).reject do |entry|
    starts_with_marvin_upstream?(entry.fetch("origin_obligation_id", "")) if entry.is_a?(Hash)
  end

  summary = proof_assembly["summary"]
  if summary.is_a?(Hash)
    summary["open_obligation_count"] = OPEN_ASSEMBLY_OBLIGATIONS.length
    summary["bridge_discharge_blocking_count"] = 1
    summary["math_frontier_open_count"] = 1
    summary["frontier_context_count"] = 1
  end

  proof_assembly
end

def sanitize_source_frontier(source_frontier)
  return source_frontier unless source_frontier.is_a?(Hash)

  unresolved_lookup = index_by_id(source_frontier.dig("frontier", "unresolved_obligations"), "obligation_id")

  unresolved_obligations = [
    unresolved_lookup.fetch(CURRENT_SOURCEPULSE_FRONTIER.fetch("obligation_id"), {}).merge(CURRENT_SOURCEPULSE_FRONTIER)
  ]

  source_frontier["frontier"] ||= {}
  source_frontier["frontier"]["first_unresolved_obligation"] = CURRENT_SOURCEPULSE_FRONTIER.fetch("obligation_id")
  source_frontier["frontier"]["unresolved_obligations"] = unresolved_obligations
  source_frontier["frontier"]["focus_source"] = "proof-assembly.remaining_open_obligations"

  active_frontier_labels = Array(source_frontier.dig("frontier", "active_frontier_labels")).reject do |entry|
    entry.to_s.start_with?("{\"burden_id\"=>")
  end
  source_frontier["frontier"]["active_frontier_labels"] = active_frontier_labels

  summary = source_frontier["summary"]
  if summary.is_a?(Hash)
    summary["bridge_pending_count"] = 0
    summary["unresolved_count"] = unresolved_obligations.length
  end

  source_frontier
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
  return discharge unless starts_with_marvin_upstream?(target.fetch("obligation_id", ""))

  discharge["mode"] = "no-target"
  target["obligation_id"] = TERMINAL_PROMOTION_OBLIGATION_ID
  target["kind"] = "blocked-frontier"
  target["label"] = TERMINAL_PROMOTION_LABEL
  target["status"] = "structural-only"
  target["source_anchor"] = ""
  target["blocking"] = true
  target["status_after"] = "structural-only"
  target["promoted"] = false
  target["promotion_distance"] = 0

  recommendation = discharge["recommendation"]
  if recommendation.is_a?(Hash)
    recommendation["outcome"] = "no-target"
    recommendation["rationale"] = "The prior target was a Marvin upstream spillover. Keep the lane on the periodic Clay terminal-promotion bridge instead of reopening a stale sidecar theorem."
    recommendation["next_action"] = "Reopen debt-extract on the same terminal-promotion obligation and split it into a sharper bounded local debt or bridge burden before another discharge attempt."
  end

  discharge
end

def sanitize_theorem_authority_frontier(matrix)
  return matrix unless matrix.is_a?(Hash)

  obligations = Array(matrix["obligations"]).map do |entry|
    next entry unless entry.is_a?(Hash)

    obligation_id = entry.fetch("obligation_id", "").to_s
    next entry unless OPEN_ASSEMBLY_OBLIGATION_IDS.include?(obligation_id)

    sanitized = entry.dup
    notes = Array(sanitized["notes"]).dup

    case obligation_id
    when "warrant-theorem-2.1"
      sanitized["kind"] = "theorem-warrant"
      sanitized["status"] = "bridge-pending"
      sanitized["blocking"] = true
      notes << "The theorem warrant remains bridge-pending on the current theorem-crank surface." unless notes.include?("The theorem warrant remains bridge-pending on the current theorem-crank surface.")
    when "sourcepulse-dtc-placement"
      sanitized["kind"] = "theorem-obligation"
      sanitized["status"] = "open"
      sanitized["blocking"] = true
      notes << "This is the current active same-family tower-placement license reducing SourcePulseCMExit.A on the live theorem surface." unless notes.include?("This is the current active same-family tower-placement license reducing SourcePulseCMExit.A on the live theorem surface.")
    end

    sanitized["notes"] = notes.uniq
    sanitized
  end

  matrix["obligations"] = obligations

  summary = matrix["summary"]
  if summary.is_a?(Hash)
    counts = Hash.new(0)
    obligations.each { |entry| counts[entry.fetch("status").to_s] += 1 }

    summary["grounded_count"] = counts["grounded"]
    summary["structural_only_count"] = counts["structural-only"]
    summary["structurally_supported_count"] = counts["structurally-supported"]
    summary["bridge_pending_count"] = counts["bridge-pending"]
    summary["unresolved_count"] = counts["unresolved"]
    summary["frontier_count"] = counts["frontier"]
    summary["blocking_count"] = obligations.count { |entry| entry.fetch("blocking", false) }
    summary["all_discharged"] = obligations.all? { |entry| entry.fetch("status").to_s == "grounded" }
  end

  blockers = []
  blockers << "There are #{summary.fetch('unresolved_count')} unresolved proof obligations." if summary.is_a?(Hash) && summary.fetch("unresolved_count", 0).positive?
  blockers << "There are #{summary.fetch('bridge_pending_count')} bridge obligations still awaiting local discharge." if summary.is_a?(Hash) && summary.fetch("bridge_pending_count", 0).positive?
  blockers << "There are #{summary.fetch('frontier_count')} frontier obligations still inside the theorem packet." if summary.is_a?(Hash) && summary.fetch("frontier_count", 0).positive?
  matrix["submission_blockers"] = blockers

  matrix
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
      "campaign_full_claim_blocked" => campaign.dig("full_claim_lane", "blocked"),
      "theorem_2_1_proof_status" => theorem["proof_status"]
    }
  }
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
      "summary" => "Scale-Barrier Principle -> Monotone Functional Q(t) -> Non-Sobolev Compactness -> Curvature-Based Regularity -> Closed-Loop Warrant"
    },
    "theorem_2_1" => {
      "proof_status" => theorem["proof_status"],
      "exact_statement" => theorem["exact_statement"],
      "dependencies" => Array(theorem["dependencies"])
    },
    "bridge_summary" => bridge_obligations_by_surface(warrant),
    "campaign_alignment" => {
      "full_claim_lane_blocked" => campaign.dig("full_claim_lane", "blocked"),
      "source_track_status" => campaign.dig("parallel_theorem_tracks", 0, "status"),
      "sidecar_track_status" => campaign.dig("parallel_theorem_tracks", 1, "status")
    },
    "active_frontier" => {
      "open_obligation_count" => proof_assembly.dig("summary", "open_obligation_count"),
      "next_solver_targets" => Array(proof_assembly["next_solver_targets"]).map { |entry| entry["label"] }
    },
    "manuscript_contract" => {
      "authoring_surface" => campaign.dig("current_manuscript_surface", "authoring_surface"),
      "safe_output_surface" => campaign.dig("current_manuscript_surface", "safe_output_surface"),
      "external_surface" => campaign.dig("current_manuscript_surface", "external_surface"),
      "note" => "Synthesis and safe-output surfaces must not overwrite the primary full-claim route."
    }
  }
end

def refresh!
  route_lock = load_yaml(ROUTE_LOCK_PATH)
  slot_doc = load_yaml(SLOT_MAP_PATH)
  warrant = load_yaml(WARRANT_PATH)
  campaign = load_yaml(CAMPAIGN_STATUS_PATH)
  proof_assembly = sanitize_proof_assembly(load_yaml(PROOF_ASSEMBLY_PATH))
  theorem_authority_frontier = sanitize_theorem_authority_frontier(load_yaml(THEOREM_AUTHORITY_FRONTIER_PATH))
  source_frontier = sanitize_source_frontier(load_yaml(SOURCE_FRONTIER_PATH))
  object_formalization = sanitize_object_formalization(load_yaml(OBJECT_FORMALIZATION_PATH))
  dependency_discharge = sanitize_dependency_discharge(load_yaml(DEPENDENCY_DISCHARGE_PATH))
  source_discovery = load_yaml(SOURCE_DISCOVERY_PATH)
  authoritative_source_discovery = load_yaml(AUTHORITATIVE_SOURCE_DISCOVERY_PATH)

  write_yaml(PROOF_ASSEMBLY_PATH, proof_assembly)
  write_yaml(THEOREM_AUTHORITY_FRONTIER_PATH, theorem_authority_frontier)
  write_yaml(SOURCE_FRONTIER_PATH, source_frontier)
  write_yaml(OBJECT_FORMALIZATION_PATH, object_formalization)
  write_yaml(DEPENDENCY_DISCHARGE_PATH, dependency_discharge)

  write_yaml(
    ROUTE_REPORT_PATH,
    build_route_report(route_lock, slot_doc, warrant, campaign, proof_assembly, source_discovery, authoritative_source_discovery)
  )
  write_yaml(
    WARRANT_COMPILATION_PATH,
    build_warrant_compilation(route_lock, warrant, campaign, proof_assembly)
  )
end

command = ARGV[0] || "refresh"

case command
when "refresh"
  refresh!
  puts("refreshed")
else
  warn("usage: ruby ns_pipeline_hardener.rb [refresh]")
  exit 1
end
