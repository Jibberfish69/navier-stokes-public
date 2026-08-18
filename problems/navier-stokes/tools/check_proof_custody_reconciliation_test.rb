#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"
require "yaml"

REPO_ROOT = File.expand_path("../../..", __dir__)
NS_ROOT = File.join(REPO_ROOT, "problems", "navier-stokes")

require File.join(REPO_ROOT, "system", "runner", "lib", "navier_stokes_proof_program_authority")
require File.join(REPO_ROOT, "system", "runner", "lib", "codex_conversation_guard")

class ProofCustodyReconciliationTest < Minitest::Test
  CONTRACT_PATH = File.join(NS_ROOT, "target-operating-contract.yaml")
  REGISTRY_PATH = File.join(NS_ROOT, "proof-program-surface-registry.yaml")
  BPF_PATH = File.join(
    NS_ROOT,
    "theorem-construction",
    "thomas-first-signed-prefix-generates-complete-intersection-20260803.md"
  )
  SPINE_PATH = File.join(
    NS_ROOT,
    "theorem-construction",
    "thomas-one-fluid-reversible-intersection-proof-spine-20260803.md"
  )

  HISTORICAL_STATUS_PATTERN = Regexp.new(
    "(?:TIR\\.37a.{0,160}(?:open|not proved|unproved|remaining|no datum-finite|not closed)|" \
      "(?:open|not proved|unproved|remaining|no datum-finite|not closed).{0,160}TIR\\.37a)",
    Regexp::IGNORECASE | Regexp::MULTILINE
  )

  FAILED_AUTHORITY_SELECTION = {
    "selected_authority" => "repo theorem-construction TIR.37a historical surface",
    "surface_role" => "current proof truth",
    "presented_to_user" => "true",
    "independent_audit_performed" => "false"
  }.freeze

  def test_formal_graph_disposes_of_the_old_direct_prefix_target_without_circularity
    reconciliation = contract.fetch("proof_program_completion")
      .fetch("tir37a_custody_reconciliation_20260818")

    historical = reconciliation.fetch("historical_scalar_route")
    governing = reconciliation.fetch("governing_rectangle_route")

    assert_equal ["P -> I", "I -> P", "I -> C"], historical.fetch("valid_implications")
    assert_equal "P <-> I", historical.fetch("equivalence")
    assert_equal "D -> P", historical.fetch("former_direct_datum_target")
    assert_equal "D -> R -> I", governing.fetch("producer_factorization")
    assert_equal ["I -> P", "I -> C"], governing.fetch("downstream_implications")
    assert_equal "D -> R -> I -> {P,C}", governing.fetch("complete_composition")
    assert_includes governing.fetch("circularity_rule"), "does not use P -> I"
    assert_equal "D -> R -> I -> P",
                 reconciliation.dig("tir37a_classification", "discharge_path")
  end

  def test_proof_sources_carry_the_equivalence_old_target_and_new_factorization
    bpf = File.read(BPF_PATH)
    spine = File.read(SPINE_PATH)

    assert_includes bpf, "\\tag{BPF.23}"
    assert_includes bpf, "Hence the first signed prefix and the complete intersection\nare equivalent"
    assert_includes bpf, "\\tag{BPF.24}"
    assert_includes bpf, "The still-unproved datum theorem is"

    assert_includes spine, "\\tag{TIR.11a}"
    assert_includes spine, "The established datum theorem supplies (TIR.11a-pre)"
    assert_includes spine, "including BPF.24, are alternate readouts"
    assert_includes spine, "It is not a separate datum-side payment or closure prerequisite."
  end

  def test_every_august_3_4_tir37a_open_status_surface_is_classified
    registry_paths = classification.fetch("historical_route_local_open_status_surfaces").sort
    scanned_paths = Dir.glob(File.join(NS_ROOT, "theorem-construction", "*2026080[34].md"))
      .select { |path| File.read(path).match?(HISTORICAL_STATUS_PATTERN) }
      .map { |path| relative_path(path) }
      .sort

    assert_equal scanned_paths, registry_paths
    registry_paths.each do |path|
      assert File.file?(File.join(REPO_ROOT, path)), "missing historical surface: #{path}"
      refute_includes registry.fetch("direct_authority_surfaces"), path
    end
  end

  def test_history_is_preserved_while_its_current_status_effect_is_zero
    scalar = classification.fetch("historical_scalar_equivalence_surface")
    rules = classification.fetch("classification_rules")

    assert_equal "P <-> I", scalar.fetch("retained_equivalence")
    assert_equal "none", scalar.fetch("current_authority_effect")
    assert_equal true, rules.fetch("preserve_historical_files_without_rewriting")
    assert_equal true, rules.fetch("reject_historical_status_as_current_authority")
    assert_equal true, rules.fetch("permit_historical_status_as_provenance_after_explicit_classification")
  end

  def test_runtime_authority_projection_overrides_a_historical_global_status_payload
    payload = {
      "mpp_status" => "open",
      "mathematical_status" => "unresolved",
      "active_direct_boundary" => "TIR.37a",
      "producer_status" => "unproved-direct-prefix",
      "global_closure_status" => "unproved"
    }

    projected = PaperFactoryRuntime::NavierStokesProofProgramAuthority.apply_to_payload(
      REPO_ROOT,
      payload
    )

    assert_equal "solved", projected.fetch("mpp_status")
    assert_equal "established-complete", projected.fetch("mathematical_status")
    assert_equal "none", projected.fetch("active_direct_boundary")
    assert_equal "proved-datum-generated-whole-terminal-compatible-rectangles",
                 projected.fetch("producer_status")
    assert_equal "proved", projected.fetch("global_closure_status")
    assert_includes projected.dig("proof_program_completion_projection", "precedence"),
                    "D -> R -> I -> P"
  end

  def test_conversation_guard_blocks_the_observed_unaudited_authority_selection
    assert_equal true,
                 PaperFactoryRuntime::CodexConversationGuard.repo_surface_gospel_violation?(
                   FAILED_AUTHORITY_SELECTION
                 )
  end

  def test_conversation_guard_allows_the_same_surface_as_classified_history
    event = FAILED_AUTHORITY_SELECTION.merge(
      "surface_role" => "historical route-local status evidence",
      "independent_audit_performed" => "true"
    )

    assert_equal false,
                 PaperFactoryRuntime::CodexConversationGuard.repo_surface_gospel_violation?(event)
  end

  def test_august_15_audit_confirms_custody_without_becoming_theorem_authority
    audit = classification.fetch("august_15_corrected_custody_audit")

    assert_equal "2026-08-15", audit.fetch("effective_at").to_s
    assert_equal "supersession-and-downstream-classification-not-independent-theorem-authority",
                 audit.fetch("role")
    audit.fetch("sources").each do |path|
      assert File.file?(File.join(REPO_ROOT, path)), "missing corrected audit source: #{path}"
      refute_includes registry.fetch("direct_authority_surfaces"), path
    end
  end

  private

  def contract
    @contract ||= YAML.load_file(CONTRACT_PATH)
  end

  def registry
    @registry ||= YAML.load_file(REGISTRY_PATH)
  end

  def classification
    @classification ||= registry.fetch("tir37a_surface_classification_20260818")
  end

  def relative_path(path)
    path.delete_prefix("#{REPO_ROOT}/")
  end
end
