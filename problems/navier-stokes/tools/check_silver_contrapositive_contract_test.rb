#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"
require "pathname"
require "yaml"

class SilverContrapositiveContractTest < Minitest::Test
  ROOT = Pathname(__dir__).join("../../..").expand_path
  NOTE =
    "problems/navier-stokes/theorem-construction/" \
    "mpp-silver-participation-complement-contrapositive-repair-20260722.md"
  DIRECT_AUTHORITY_SURFACES = %w[
    problems/navier-stokes/target-operating-contract.yaml
    problems/navier-stokes/live-theorem-edge.yaml
    problems/navier-stokes/source-frontier.yaml
    problems/navier-stokes/theorem-packet.yaml
    problems/navier-stokes/theorem-repair.yaml
    problems/navier-stokes/dependency-discharge.yaml
  ].freeze

  def test_operating_contract_preserves_the_valid_one_line_as_downstream
    contract = yaml("problems/navier-stokes/target-operating-contract.yaml")
    silver = contract.fetch("proof_program_topology").find do |program|
      program["program_id"] == "cm-member-class-exit"
    end
    audit = silver.fetch("silver_vpi_contrapositive_audit_20260722")

    assert_includes audit.fetch("one_line"), "not Smooth(Q)"
    assert_includes audit.fetch("one_line"),
      "VPIParticipation(Q) => Member(Q) => Smooth(Q)"
    assert_equal "logical-classification-terminal-participation-retention-unproved",
      audit.fetch("closure_status")
    assert_includes audit.fetch("weak_record_boundary"), "not full VPI participation"
    assert_includes silver.fetch("current_role"), "downstream"
    assert_includes audit.fetch("authority_effect"), "cannot reopen"
  end

  def test_global_status_records_the_completed_direct_proof
    completion = yaml("problems/navier-stokes/target-operating-contract.yaml")
      .fetch("proof_program_completion")

    assert_equal "established-complete", completion.fetch("status")
    assert_equal "solved", completion.fetch("mpp_status")
    assert_equal "proved-datum-generated-whole-terminal-compatible-rectangles",
      completion.fetch("producer_status")
    assert_equal "proved", completion.fetch("closure_status")
    assert_equal "none", completion.fetch("active_direct_boundary")
    assert_includes completion.fetch("producer_statement"), "For every finite N,M"
    assert_includes completion.fetch("closure_chain"), "T_*=infinity"
  end

  def test_audit_note_distinguishes_classification_from_terminal_retention
    note = ROOT.join(NOTE).read

    assert_includes note, "not an independent proof of"
    assert_includes note, "This inventory can exhaust the negative side without excluding it."
    assert_includes note, "terminal participation is retained"
    %w[Dead Blown Jump Part Field].each do |presentation|
      assert_includes note, presentation
    end
  end

  def test_direct_authorities_project_the_direct_proof_not_silver
    DIRECT_AUTHORITY_SURFACES.each do |relative|
      document = yaml(relative)
      projection = relative.end_with?("target-operating-contract.yaml") ?
        document.fetch("proof_program_completion") :
        document.fetch("proof_program_completion_projection")
      status_key = relative.end_with?("target-operating-contract.yaml") ?
        "status" : "mathematical_status"

      assert_equal "established-complete", projection.fetch(status_key), relative
      assert_equal "solved", projection.fetch("mpp_status"), relative
      assert_equal "proved-datum-generated-whole-terminal-compatible-rectangles",
        projection.fetch("producer_status"), relative
      assert_equal "proved", projection.fetch("closure_status"), relative
      assert_equal "none", projection.fetch("active_direct_boundary"), relative
    end
  end

  def test_current_projections_inherit_completion
    registry = yaml("problems/navier-stokes/proof-program-surface-registry.yaml")

    registry.fetch("current_projection_surfaces").each do |relative|
      projection = yaml(relative).fetch("proof_program_completion_projection")
      assert_equal "established-complete",
        projection.fetch("mathematical_status"), relative
      assert_equal "solved", projection.fetch("mpp_status"), relative
      assert_equal "none",
        projection.fetch("active_direct_boundary"), relative
    end
  end

  private

  def yaml(relative)
    YAML.load_file(ROOT.join(relative))
  end
end
