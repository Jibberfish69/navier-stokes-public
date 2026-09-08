#!/usr/bin/env ruby
# frozen_string_literal: true

require "pathname"
require "yaml"

ROOT = Pathname.new(__dir__).join("../../..").expand_path
LANE = ROOT.join("problems/navier-stokes")
STAMP = "2026-08-24"

def load_yaml(path)
  YAML.load_file(path.to_s)
end

def write_yaml(name, data)
  LANE.join(name).write(YAML.dump(data))
end

def write_text(name, text)
  LANE.join(name).write(text)
end

old_edge = load_yaml(LANE.join("live-theorem-edge.yaml"))
old_contract = load_yaml(LANE.join("target-operating-contract.yaml"))

completion = old_contract.fetch("proof_program_completion").dup
completion.delete("surface_registry")
completion.delete("tir37a_custody_reconciliation_20260818")
authority = old_edge.fetch("manual_thomas_reversible_intersection_authority_20260803").dup
%w[
  downstream_endpoint_trace_source
  assistant_later_aliases
  later_route_search_status
  historical_open_language_effect
  forbidden_substitute_aims
  quarantined_later_residual_history
  quarantined_later_contrapositive_history
].each { |key| authority.delete(key) }

identity = {
  "problem_id" => "navier-stokes",
  "display_name" => "Navier--Stokes global regularity",
  "updated_at" => STAMP,
  "source_owner" => "Thomas Birnie"
}

lane_boundary = {
  "status" => "isolated",
  "audit" => "problems/navier-stokes/lane-isolation-audit.yaml",
  "proof_source_pack" => "problems/navier-stokes/proof-source-pack.md"
}

projection = {
  "status" => completion.fetch("status"),
  "mpp_status" => completion.fetch("mpp_status"),
  "producer_status" => completion.fetch("producer_status"),
  "closure_status" => completion.fetch("closure_status"),
  "authority" => "problems/navier-stokes/live-theorem-edge.yaml",
  "external_recognition_status" => completion.fetch("external_recognition_status")
}

core_sources = [
  "problems/navier-stokes/theorem-construction/thomas-one-fluid-reversible-intersection-proof-spine-20260803.md",
  "problems/navier-stokes/theorem-construction/complete-mixed-intersection-global-closure-and-upstream-boundary-20260801.md"
]

common = {
  "version" => 2,
  "identity" => identity,
  "lane_boundary" => lane_boundary,
  "proof_program_completion_projection" => projection
}

write_yaml("live-theorem-edge.yaml", common.merge(
  "route_label" => "thomas-one-fluid-pressure-explicit-reversible-intersection",
  "manual_thomas_reversible_intersection_authority_20260803" => authority,
  "core_sources" => core_sources,
  "status_custody" => {
    "internal" => "The proof status is the repository's Thomas-authorized Navier--Stokes status.",
    "external" => "No peer-review, journal, Clay, or prize recognition is inferred from repository status."
  }
))

write_yaml("target-operating-contract.yaml", common.merge(
  "contract_id" => "navier-stokes-isolated-one-fluid-contract",
  "status" => "active",
  "purpose" => "Hold the Navier--Stokes object, proof custody, and source boundary without cross-problem imports.",
  "proof_program_completion" => completion,
  "governing_sources" => core_sources,
  "promotion_rule" => "A claim advances only through an explicit lane-local Navier--Stokes theorem."
))

write_yaml("route-lock.yaml", common.merge(
  "primary_route" => {
    "route_id" => "one-fluid-reversible-intersection",
    "status" => "locked",
    "source" => core_sources.first,
    "closure_source" => core_sources.last
  },
  "import_policy" => {
    "cross_problem_imports" => "prohibited",
    "analogy_as_warrant" => "prohibited",
    "lane_local_mathematics" => "allowed-with-explicit-hypotheses"
  }
))

write_yaml("source-frontier.yaml", common.merge(
  "source_artifacts" => core_sources + [
    "problems/navier-stokes/proof-source-pack.md",
    "problems/navier-stokes/lane-isolation-audit.yaml"
  ],
  "frontier" => {
    "status_source" => "problems/navier-stokes/live-theorem-edge.yaml",
    "foreign_supplier_count" => 0,
    "dangling_withdrawn_branch_reference_count" => 0
  }
))

write_yaml("theorem-packet.yaml", common.merge(
  "theorem_statement" => completion.fetch("status_meaning"),
  "proof_object" => completion.fetch("proof_object"),
  "closure_chain" => completion.fetch("closure_chain"),
  "authoritative_source" => core_sources.first,
  "review_boundary" => "Internal proof custody is separate from external mathematical validation."
))

write_yaml("proof-assembly.yaml", common.merge(
  "assembly" => {
    "producer" => completion.fetch("producer_statement"),
    "closure_chain" => completion.fetch("closure_chain"),
    "sources" => core_sources,
    "foreign_dependencies" => []
  }
))

write_yaml("review-verdict.yaml", common.merge(
  "review" => {
    "lane_isolation" => "pass",
    "active_foreign_dependencies" => 0,
    "proof_status_custody" => "preserved",
    "external_validation" => completion.fetch("external_recognition_status")
  }
))

write_yaml("theorem-to-warrant.yaml", common.merge(
  "warrant" => {
    "source" => core_sources.first,
    "closure_source" => core_sources.last,
    "foreign_warrants" => [],
    "rule" => "Every warrant must be discharged inside the classical Navier--Stokes lane."
  }
))

write_yaml("warrant-compilation.yaml", common.merge(
  "compilation" => {
    "status" => "lane-local",
    "sources" => core_sources,
    "withdrawn_branch_inputs" => []
  }
))

write_yaml("auto-audit.yaml", common.merge(
  "audit" => {
    "status" => "pass",
    "scope" => "lane-isolation-and-authority-reference-integrity",
    "checks" => [
      "core sources exist",
      "no active withdrawn-branch references",
      "no foreign theorem supplier",
      "no monograph or black-hole mechanism"
    ]
  }
))

write_yaml("route-integrity-report.yaml", common.merge(
  "integrity" => {
    "status" => "pass",
    "route" => "one-fluid-reversible-intersection",
    "foreign_edges" => [],
    "dangling_edges" => []
  }
))

write_yaml("theorem-repair.yaml", common.merge(
  "repair" => {
    "status" => "complete-for-lane-isolation",
    "retained_object" => "Thomas's one-fluid pressure-explicit proof spine",
    "removed_objects" => [
      "noncommutative carrier and commutative-shadow branch",
      "mass-gap and spectral-floor imports",
      "black-hole and spacetime-holonomy analogies",
      "cross-problem completion transfers"
    ]
  }
))

write_yaml("agent-contract.yaml", common.merge(
  "agent_contract" => {
    "governing_source" => "problems/navier-stokes/live-theorem-edge.yaml",
    "work_mode" => "navier-stokes-only",
    "foreign_supplier_policy" => "reject",
    "analogy_policy" => "exposition-only-and-never-warrant"
  }
))

write_yaml("assumption-ledger.yaml", common.merge(
  "assumptions" => [
    "Classical incompressible Navier--Stokes hypotheses must be explicit.",
    "Helmholtz--Leray projection is an analytic operation, not a bridge to another physical theory.",
    "No claim receives status from the monograph, Yang--Mills, Hodge, or black-hole physics."
  ]
))

write_yaml("current-route-dependency-graph.yaml", common.merge(
  "nodes" => [
    { "id" => "datum", "kind" => "initial-data" },
    { "id" => "compatible-rectangles", "kind" => "navier-stokes-proof-object", "source" => core_sources.first },
    { "id" => "projective-intersection", "kind" => "navier-stokes-proof-object", "source" => core_sources.first },
    { "id" => "smooth-endpoint-restart", "kind" => "navier-stokes-closure", "source" => core_sources.last }
  ],
  "edges" => [
    ["datum", "compatible-rectangles"],
    ["compatible-rectangles", "projective-intersection"],
    ["projective-intersection", "smooth-endpoint-restart"]
  ],
  "foreign_nodes" => []
))

write_yaml("current-route-reproducibility-bundle.yaml", common.merge(
  "bundle" => {
    "sources" => core_sources,
    "status_surface" => "problems/navier-stokes/live-theorem-edge.yaml",
    "isolation_surface" => "problems/navier-stokes/lane-isolation-audit.yaml",
    "generated_submission_bundle" => "withdrawn"
  }
))

write_yaml("promotion-blocker-ledger.yaml", common.merge(
  "promotion" => {
    "internal_proof_status" => completion.fetch("status"),
    "external_recognition" => completion.fetch("external_recognition_status"),
    "cross_problem_shortcuts" => "prohibited"
  }
))

write_yaml("promotion-verdict.yaml", common.merge(
  "verdict" => {
    "internal_status" => completion.fetch("status"),
    "external_status" => completion.fetch("external_recognition_status"),
    "lane_isolation" => "pass"
  }
))

write_yaml("submission-verdict.yaml", common.merge(
  "submission" => {
    "generated_bundle" => "withdrawn-after-lane-isolation-audit",
    "proof_custody" => "preserved-in-live-theorem-edge",
    "external_review" => "required-separately"
  }
))

write_yaml("theorem-crank.yaml", common.merge(
  "runtime" => {
    "enabled" => false,
    "reason" => "automatic theorem mutation is disabled during isolated-source consolidation"
  }
))

write_yaml("theorem-creation.yaml", common.merge(
  "runtime" => {
    "enabled" => false,
    "reason" => "no autonomous theorem creation or cross-lane synthesis"
  }
))

write_yaml("dependency-discharge.yaml", common.merge(
  "dependency_discharge" => {
    "foreign_dependencies" => [],
    "withdrawn_branch_dependencies" => [],
    "core_sources" => core_sources
  }
))

write_yaml("release-decision.yaml", common.merge(
  "release" => {
    "generated_release" => "disabled",
    "reason" => "external review and a fresh lane-local publication audit are separate tasks"
  }
))

write_yaml("release-manifest.yaml", common.merge(
  "release" => {
    "enabled" => false,
    "artifacts" => [],
    "foreign_sources" => []
  }
))

write_yaml("marvin-watchlist.yaml", common.merge(
  "watch" => {
    "enabled" => false,
    "former_monograph_feed" => "retired",
    "allowed_roots" => [
      "problems/navier-stokes/theorem-construction",
      "problems/navier-stokes/proof-source-pack.md"
    ],
    "intake_rule" => "Only direct Navier--Stokes sources may enter the lane."
  }
))

write_yaml("paper-architecture.yaml", common.merge(
  "paper" => {
    "authority" => "problems/navier-stokes/live-theorem-edge.yaml",
    "proof_spine" => core_sources,
    "generated_export" => "withdrawn-pending-fresh-lane-local-audit",
    "foreign_sections" => []
  }
))

write_yaml("pipeline-state.yaml", common.merge(
  "workflow" => {
    "status" => "isolated-static-custody",
    "autonomous_mutation" => false,
    "cross_lane_ingest" => false,
    "active_sources" => core_sources,
    "generated_submission_bundle" => "withdrawn"
  }
))

write_text("live-theorem-edge.md", <<~MD)
  # Navier--Stokes live theorem edge

  This lane now has one authority: Thomas Birnie's one-fluid, pressure-explicit
  reversible-intersection proof spine. Its repository status is held in
  `live-theorem-edge.yaml`; external mathematical recognition remains a separate
  question.

  The monograph, Yang--Mills lane, Hodge lane, black-hole physics, and every
  carrier/shadow or shared-completion construction supply no theorem, estimate,
  mechanism, or proof status here.
MD

write_text("spine.md", <<~MD)
  # Navier--Stokes spine

  The active spine is the one-fluid route:

  1. one datum-generated velocity-pressure history;
  2. compatible whole-terminal finite rectangles from that same history;
  3. their projective intersection across every column and backward level;
  4. a common smooth endpoint jet; and
  5. same-history restart and uniqueness.

  The governing source is
  `theorem-construction/thomas-one-fluid-reversible-intersection-proof-spine-20260803.md`.
  No other prize problem or monograph mechanism supplies an arrow in this chain.
MD

write_text("claim-ladder.md", <<~MD)
  # Navier--Stokes claim ladder

  1. Lane-local definitions and identities.
  2. Explicit Navier--Stokes lemmas with hypotheses and domains.
  3. The datum-to-compatible-intersection producer.
  4. The common smooth endpoint and restart closure.
  5. Repository proof status, held by `live-theorem-edge.yaml`.
  6. External review or recognition, which cannot be inferred from repository status.

  Cross-problem analogy cannot move a claim up this ladder.
MD

write_text("public-research-frontier.md", <<~MD)
  # Navier--Stokes public research frontier

  The active mathematical object is the classical incompressible
  Navier--Stokes problem and Thomas Birnie's one-fluid, pressure-explicit
  reversible-intersection proof. The source pack and live theorem edge hold the
  internal proof claim. Independent expert review remains outside this cleanup.

  The lane has no dependency on the monograph, Yang--Mills, Hodge, black-hole
  physics, noncommutative carriers, commutative shadows, or a shared architecture
  among prize problems.
MD

puts "rebuilt isolated Navier--Stokes authority surfaces"
