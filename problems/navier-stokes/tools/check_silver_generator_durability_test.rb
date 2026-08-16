# frozen_string_literal: true

require "minitest/autorun"
require "open3"
require "pathname"
require "rbconfig"
require "yaml"

class SilverGeneratorDurabilityTest < Minitest::Test
  ROOT = Pathname.new(__dir__).join("../../..").expand_path.freeze
  NS_ROOT = ROOT.join("problems/navier-stokes").freeze
  ONE_LINE = "not Smooth(Q) => not Member(Q) => not VPIParticipation(Q); contrapositively VPIParticipation(Q) => Member(Q) => Smooth(Q)"

  def load_yaml(relative_path)
    YAML.load_file(NS_ROOT.join(relative_path).to_s)
  end

  def run_check(relative_path)
    Open3.capture3(RbConfig.ruby, NS_ROOT.join(relative_path).to_s, "--check")
  end

  def test_hardener_validates_completion_and_downstream_silver
    stdout, stderr, status = Open3.capture3(
      RbConfig.ruby,
      NS_ROOT.join("tools/ns_pipeline_hardener.rb").to_s,
      "check"
    )

    assert status.success?, stderr
    assert_includes stdout, "NS_PROOF_PROGRAM_COMPLETE_AND_SILVER_DOWNSTREAM_OK"
    refute_includes stdout, "SILVER_VPI_CONTRAPOSITIVE_CONTRACT_OK"

    source = NS_ROOT.join("tools/ns_pipeline_hardener.rb").read
    assert_includes source, "legacy status-writing refresh is disabled"
    assert_includes source, "REFRESH_PRESERVED_NS_PROOF_PROGRAM_COMPLETION_AND_SILVER_CLASSIFICATION"
    assert_includes source, 'completion["mpp_status"] == "solved"'
    assert_includes source, 'completion["producer_status"] == expected_producer'
  end

  def test_failure_map_keeps_pack_outside_cm_and_carries_the_one_line
    stdout, stderr, status = run_check("tools/build_non_euler_failure_face_map.rb")
    assert status.success?, stderr
    assert_includes stdout, "NON_EULER_FAILURE_FACE_MAP_CHECK"

    source = NS_ROOT.join("tools/build_non_euler_failure_face_map.rb").read
    assert_includes source, '"contrapositive" => closure.fetch("one_line")'
    assert_includes source, '"diagnostic_status" => "vpi_participation_loss_presentation"'
    assert_includes source, '"cm_part_field_question_breaks" => []'
  end

  def test_certificates_are_negative_side_presentations_not_a_terminal_theorem
    stdout, stderr, status = run_check("tools/build_non_euler_contrapositive_certificates.rb")
    assert status.success?, stderr
    assert_includes stdout, "NON_EULER_CONTRAPOSITIVE_CERTIFICATE_CHECK"

    source = NS_ROOT.join("tools/build_non_euler_contrapositive_certificates.rb").read
    assert_includes source, '"theorem" => "AllNonEulerVPIParticipationComplementClassification.A"'
    assert_includes source, '"not Member(Q) => not VPIParticipation(Q)"'
    assert_includes source, '"proved_vpi_participation_loss_presentation"'
    assert_includes source, "Gold remains an independent nonblocking research lane"
  end

  def test_forward_quarantine_cannot_promote_gold_or_pack_into_silver
    source = NS_ROOT.join("tools/build_forward_positive_surface_quarantine.rb").read

    assert_includes source, '"governing_silver_program" => closure.fetch("one_line")'
    assert_includes source, "independent nonblocking Gold research lane"
    assert_includes source, "treat Pack as a CM face or a proof of not Member(Q)"
    assert_includes source, "Pack_Q remains outside CM"
    refute_includes source, "close TerminalCMNoExit"
    refute_includes source, "close NoGenuineCMExit"
  end

  def test_canonical_contract_and_current_projections_are_durable
    contract = load_yaml("target-operating-contract.yaml")
    completion = contract.fetch("proof_program_completion")
    silver = contract.fetch("proof_program_topology").find do |program|
      program["program_id"] == "cm-member-class-exit"
    end
    audit = silver.fetch("silver_vpi_contrapositive_audit_20260722")

    assert_equal "established-complete", completion.fetch("status")
    assert_equal "solved", completion.fetch("mpp_status")
    assert_equal "proved-datum-generated-whole-terminal-compatible-rectangles",
      completion.fetch("producer_status")
    assert_equal "proved", completion.fetch("closure_status")
    assert_equal "none", completion.fetch("active_direct_boundary")
    assert_equal ONE_LINE, audit.fetch("one_line")
    assert_equal(
      "logical-classification-terminal-participation-retention-unproved",
      audit.fetch("closure_status")
    )

    registry = load_yaml("proof-program-surface-registry.yaml")
    registry.fetch("current_projection_surfaces").each do |relative|
      projection = YAML.load_file(ROOT.join(relative).to_s)
        .fetch("proof_program_completion_projection")
      assert_equal "established-complete", projection.fetch("mathematical_status"), relative
      assert_equal "solved", projection.fetch("mpp_status"), relative
      assert_equal "none", projection.fetch("active_direct_boundary"), relative
    end
  end
end
