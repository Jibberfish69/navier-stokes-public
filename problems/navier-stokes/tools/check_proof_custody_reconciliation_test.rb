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
    assert_equal ["D -> R", "R -> I"], governing.fetch("producer_dependencies")
    assert_equal "P -> I", governing.fetch("excluded_producer_dependency")
    refute_includes governing.fetch("producer_dependencies"), "P -> I"
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

  def test_every_august_3_4_marker_surface_receives_exactly_one_class
    selector = classification.fetch("historical_marker_surface_selector")
    matched_paths = selector_matches(selector)
    exceptions = selector.fetch("exceptions")
    exception_paths = exceptions.map { |entry| entry.fetch("path") }

    assert_equal exception_paths.uniq, exception_paths
    assert_equal selector.fetch("verified_match_count_at_reconciliation"), matched_paths.length
    assert_equal 67, matched_paths.length
    assert_empty exception_paths - matched_paths

    assignments = matched_paths.to_h do |path|
      matching = exceptions.select { |entry| entry.fetch("path") == path }
      assert_operator matching.length, :<=, 1, "multiple classes for #{path}"
      assigned = matching.first&.fetch("classification") || selector.fetch("default_classification")
      [path, assigned]
    end

    assert_equal matched_paths.length, assignments.length
    assert_equal 65,
                 assignments.count { |_path, assigned| assigned == selector.fetch("default_classification") }
    assert_equal classification.dig("historical_scalar_equivalence_surface", "current_classification"),
                 assignments.fetch(BPF_PATH.delete_prefix("#{REPO_ROOT}/"))
    assert_equal "governing-proof-bearing-source",
                 assignments.fetch(SPINE_PATH.delete_prefix("#{REPO_ROOT}/"))

    default_paths = assignments.select do |_path, assigned|
      assigned == selector.fetch("default_classification")
    end.keys
    assert_empty default_paths & registry.fetch("direct_authority_surfaces")
    assert_equal "none", selector.fetch("default_current_authority_effect")
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
    assert_equal contract.dig("proof_program_completion", "historical_surface_rule"),
                 projected.dig("proof_program_completion_projection", "precedence")
    assert_equal contract.dig(
      "proof_program_completion",
      "tir37a_custody_reconciliation_20260818"
    ), PaperFactoryRuntime::NavierStokesProofProgramAuthority
      .completion(REPO_ROOT)
      .fetch("tir37a_custody_reconciliation_20260818")
  end

  def test_projection_is_lifecycle_scoped_and_preserves_historical_nested_status
    payload = {
      "mpp_status" => "open",
      "producer_status" => "unproved-direct-prefix",
      "active_direct_boundary" => "TIR.37a",
      "historical_route" => {
        "mpp_status" => "open-at-capture",
        "active_direct_boundary" => "TIR.37a"
      }
    }
    registered = File.join(REPO_ROOT, registry.fetch("current_projection_surfaces").first)

    projected = PaperFactoryRuntime::NavierStokesProofProgramAuthority
      .apply_to_generated_surface(REPO_ROOT, registered, payload)

    assert_equal "solved", projected.fetch("mpp_status")
    assert_equal "proved-datum-generated-whole-terminal-compatible-rectangles",
                 projected.fetch("producer_status")
    assert_equal "none", projected.fetch("active_direct_boundary")
    assert_equal payload.fetch("historical_route"), projected.fetch("historical_route")

    historical_path = selector_matches(
      classification.fetch("historical_marker_surface_selector")
    ).find do |path|
      !classification.dig("historical_marker_surface_selector", "exceptions")
        .any? { |entry| entry.fetch("path") == path }
    end
    untouched = PaperFactoryRuntime::NavierStokesProofProgramAuthority
      .apply_to_generated_surface(REPO_ROOT, File.join(REPO_ROOT, historical_path), payload)
    assert_equal payload, untouched
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


  def test_supersession_chronology_has_one_governing_stage
    chronology = contract.dig(
      "proof_program_completion",
      "tir37a_custody_reconciliation_20260818",
      "supersession_chronology"
    )

    assert_equal [
      "august-3-4-route-local-construction",
      "august-6-governing-proof-authority",
      "august-15-corrected-custody-audit"
    ], chronology.map { |entry| entry.fetch("stage") }
    assert_equal ["none", "governing", "custody-confirmation-not-a-new-theorem-source"],
                 chronology.map { |entry| entry.fetch("current_authority_effect") }
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

  def selector_matches(selector)
    root = File.join(REPO_ROOT, selector.fetch("root"))
    suffixes = selector.fetch("filename_suffixes")
    markers = selector.fetch("content_markers")

    Dir.glob(File.join(root, "*.md"))
      .select { |path| suffixes.any? { |suffix| path.end_with?(suffix) } }
      .select do |path|
        content = File.read(path)
        markers.any? { |marker| content.include?(marker) }
      end
      .map { |path| relative_path(path) }
      .sort
  end
end
