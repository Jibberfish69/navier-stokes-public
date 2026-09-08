#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"
require "pathname"
require "yaml"

class NavierStokesLaneIsolationTest < Minitest::Test
  LANE = Pathname.new(__dir__).join("..").expand_path
  CORE = LANE.join(
    "theorem-construction",
    "thomas-one-fluid-reversible-intersection-proof-spine-20260803.md"
  )
  CLOSURE = LANE.join(
    "theorem-construction",
    "complete-mixed-intersection-global-closure-and-upstream-boundary-20260801.md"
  )
  SURFACES = %w[
    live-theorem-edge.yaml
    target-operating-contract.yaml
    route-lock.yaml
    source-frontier.yaml
    theorem-packet.yaml
    proof-assembly.yaml
    review-verdict.yaml
    theorem-to-warrant.yaml
    warrant-compilation.yaml
    auto-audit.yaml
    route-integrity-report.yaml
    theorem-repair.yaml
  ].freeze
  FOREIGN_PATTERNS = {
    "Yang--Mills import" => /Yang\s*[-–—]{1,2}\s*Mills/i,
    "Hodge proof import" => /Hodge\s+Conjecture/i,
    "black-hole analogy" => /black[- ]hole/i,
    "spacetime-holonomy analogy" => /spacetime[- ]holonomy/i,
    "noncommutative carrier route" => /noncommutative\s+carrier/i,
    "commutative shadow route" => /commutative[- ]shadow/i,
    "shared prize-problem architecture" => /shared\s+(?:selection|persistence|completion|architecture)/i
  }.freeze

  def test_core_sources_exist
    assert CORE.file?, CORE.to_s
    assert CLOSURE.file?, CLOSURE.to_s
    assert LANE.join("proof-source-pack.md").file?
    assert LANE.join("lane-isolation-audit.yaml").file?
  end

  def test_authority_surfaces_are_isolated_and_parseable
    SURFACES.each do |name|
      path = LANE.join(name)
      assert path.file?, path.to_s
      data = YAML.load_file(path.to_s)
      assert_equal "navier-stokes", data.dig("identity", "problem_id"), name
      assert_equal "isolated", data.dig("lane_boundary", "status"), name
      assert_equal "problems/navier-stokes/lane-isolation-audit.yaml",
                   data.dig("lane_boundary", "audit"), name
    end
  end

  def test_theorem_sources_have_no_foreign_problem_imports
    failures = []
    LANE.join("theorem-construction").glob("**/*").each do |path|
      next unless path.file?
      next unless %w[.md .tex .yaml .yml].include?(path.extname)

      text = path.read
      FOREIGN_PATTERNS.each do |label, pattern|
        failures << "#{path.relative_path_from(LANE)}: #{label}" if text.match?(pattern)
      end
    end
    assert_empty failures, failures.join("\n")
  end

  def test_autonomous_mutation_is_disabled
    %w[theorem-crank.yaml theorem-creation.yaml].each do |name|
      data = YAML.load_file(LANE.join(name).to_s)
      assert_equal false, data.dig("runtime", "enabled"), name
    end
  end
end
