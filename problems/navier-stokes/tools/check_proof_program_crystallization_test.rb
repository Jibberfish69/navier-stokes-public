#!/usr/bin/env ruby
# frozen_string_literal: true

require "digest"
require "minitest/autorun"
require "yaml"

class ProofProgramCrystallizationTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)

  DIRECT_AUTHORITY = %w[
    live-theorem-edge.yaml
    source-frontier.yaml
    theorem-packet.yaml
    theorem-repair.yaml
    dependency-discharge.yaml
  ].freeze

  EXPECTED_STATUS = "established-complete"
  EXPECTED_MPP_STATUS = "solved"
  EXPECTED_PRODUCER =
    "proved-datum-generated-whole-terminal-compatible-rectangles"

  def load_yaml(name)
    YAML.load_file(File.join(ROOT, name))
  end

  def registry
    @registry ||= load_yaml("proof-program-surface-registry.yaml")
  end

  def ns_relative(path)
    path.delete_prefix("problems/navier-stokes/")
  end

  def test_canonical_contract_states_the_exact_topology
    contract = load_yaml("target-operating-contract.yaml")
    completion = contract.fetch("proof_program_completion")

    assert_equal EXPECTED_STATUS, completion.fetch("status")
    assert_equal EXPECTED_MPP_STATUS, completion.fetch("mpp_status")
    assert_equal EXPECTED_PRODUCER, completion.fetch("producer_status")
    assert_equal "proved", completion.fetch("closure_status")
    assert_equal "none", completion.fetch("active_direct_boundary")
    assert_empty completion.fetch("active_mathematical_blockers")

    producer = completion.fetch("producer_statement")
    assert_includes producer, "For every finite N,M"
    assert_includes producer, "one maximal u_0-generated"
    assert_includes producer, "agree under restriction"

    chain = completion.fetch("closure_chain")
    %w[u_0 rectangles intersection S_0 endpoint jet restart T_*=infinity].each do |term|
      assert_includes chain, term
    end
    assert_equal "established-complete",
      contract.dig("mixed_sobolev_tower_object_authority_20260801", "status")
  end

  def test_registry_preserves_repo_and_thread_custody
    assert_equal EXPECTED_MPP_STATUS, registry.fetch("mpp_status")
    assert_equal EXPECTED_STATUS, registry.fetch("mathematical_status")
    assert_equal true, registry.dig(
      "authority_policy",
      "status_fields_project_the_governing_proof_but_do_not_replace_it"
    )
    assert_equal true,
      registry.dig("authority_policy", "direct_mathematics_outranks_generated_status")
    assert_equal true,
      registry.dig("authority_policy", "established_starting_theorem_is_not_reopened_by_partial_recovery")

    registry.fetch("thread_evidence").each do |entry|
      paths = [entry.fetch("path")] + Array(entry["duplicate_paths"])
      paths.each do |path|
        assert File.file?(path), path
        next if entry["mutable"] == true

        assert_equal(
          entry.fetch("sha256"),
          Digest::SHA256.file(path).hexdigest,
          "#{entry.fetch('id')}: #{path}"
        )
      end
    end
  end

  def test_direct_authority_projects_the_completed_proof
    DIRECT_AUTHORITY.each do |name|
      projection = load_yaml(name).fetch("proof_program_completion_projection")

      assert_equal EXPECTED_STATUS, projection.fetch("mathematical_status"), name
      assert_equal EXPECTED_MPP_STATUS, projection.fetch("mpp_status"), name
      assert_equal "none", projection.fetch("active_direct_boundary"), name
      assert_equal EXPECTED_PRODUCER, projection.fetch("producer_status"), name
      assert_equal "proved", projection.fetch("closure_status"), name
      assert_includes projection.fetch("proof_chain"), "rectangles", name
      assert_includes projection.fetch("proof_chain"), "restart", name
    end
  end

  def test_projection_surfaces_agree_with_canonical_status
    registry.fetch("current_projection_surfaces").each do |path|
      projection = load_yaml(ns_relative(path))
        .fetch("proof_program_completion_projection")

      assert_equal EXPECTED_STATUS, projection.fetch("mathematical_status"), path
      assert_equal EXPECTED_MPP_STATUS, projection.fetch("mpp_status"), path
      assert_equal(
        "none",
        projection.fetch("active_direct_boundary"),
        path
      )
    end
  end

  def test_reader_entries_lead_with_the_completed_proof
    registry.fetch("reader_entry_surfaces").each do |path|
      prefix = File.binread(File.join(ROOT, ns_relative(path)), 14_000)
        .force_encoding("UTF-8")

      assert_match(/solved|established complete/i, prefix, path)
      assert_match(/datum-generated/i, prefix, path)
      assert_match(/whole-terminal|compatible rectangles/i, prefix, path)
      assert_match(/intersection/i, prefix, path)
      assert_match(/endpoint|restart/i, prefix, path)
    end
  end

  def test_proof_spine_composes_producer_and_closure
    spine = File.read(File.join(
      ROOT,
      "theorem-construction/thomas-one-fluid-reversible-intersection-proof-spine-20260803.md"
    ))

    assert_includes spine, "Repository MPP status: **solved by the established compatible-intersection proof**"
    assert_includes spine, "datum-generated whole-terminal"
    assert_includes spine, "first theorem"
    assert_includes spine, "same-history restart"
    assert_includes spine, "T_*=\\infty"
  end

  def test_signed_prefix_source_is_preserved_as_a_downstream_readout
    completion = load_yaml("target-operating-contract.yaml")
      .fetch("proof_program_completion")
    source = completion.dig("source_roles", "signed_prefix_readout")
      .split("#", 2).first
    assert File.file?(File.join(ROOT, ns_relative(source))), source
    assert_includes completion.fetch("signed_prefix_status"), "downstream"
  end

  def test_silver_is_typed_as_classification_not_solution
    silver = File.read(File.join(
      ROOT,
      "theorem-construction/mpp-silver-participation-complement-contrapositive-repair-20260722.md"
    ))

    assert_includes silver, "not an independent proof of"
    assert_includes silver, "This inventory can exhaust the negative side without excluding it."
    assert_includes silver, "terminal participation is retained"

    contract = load_yaml("target-operating-contract.yaml")
    program = contract.fetch("proof_program_topology").find do |entry|
      entry["program_id"] == "cm-member-class-exit"
    end
    assert_includes program.fetch("current_role"), "downstream"
  end

  def test_paper_tree_is_outside_this_repair
    excluded = registry.dig("scope", "excluded_mutation")
    assert_includes excluded, "papers/navier-stokes/**"
    refute registry.fetch("current_projection_surfaces").any? { |path| path.include?("submission-bundle/") }
  end
end
