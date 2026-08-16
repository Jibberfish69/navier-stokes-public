#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasRecordPulseParentTailEvacuationTest < Minitest::Test
  TOL = 1.0e-11
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-record-pulse-reciprocal-parent-tail-evacuation-and-diagonal-depth-boundary-20260804.md",
    __dir__
  )

  def test_note_keeps_one_fluid_pressure_complete_custody_and_boundary
    text = File.read(NOTE)

    assert_includes text, "Thomas Birnie's one-fluid"
    assert_includes text, "pressure-explicit"
    assert_includes text, "pressure-complete source density"
    assert_includes text, "hypothetical failed history"
    assert_includes text, "CanonicalRecordResolvedParentTurnDown.A"
    assert_includes text, "does not prove that turn-down"
    assert_includes text, "does not prove"
    assert_includes text, "the MPP"
    refute_includes text.downcase, "rectangle"
  end

  def test_record_adapted_depth_makes_tail_coefficient_eta_over_two
    c_r = 1.37
    viscosity = 0.71
    initial_height = 2.3
    record = 512.0
    eta = viscosity * record / (8.0 * (record + initial_height))
    threshold =
      512.0 * c_r**2 * (record + initial_height)**3 /
      (viscosity**2 * record**2)
    depth = threshold.ceil
    coefficient =
      c_r * Math.sqrt(2.0 * (record + initial_height)) /
      Math.sqrt(depth)

    assert_operator coefficient, :<=, eta / 2.0 + TOL
  end

  def test_tail_current_leaves_one_sixteenth_in_resolved_prefix
    viscosity = 0.71
    initial_height = 2.3
    record = 512.0
    eta = viscosity * record / (8.0 * (record + initial_height))
    receiver_action = (record + initial_height) / viscosity
    full_pulse_current = record / 8.0
    tail_current_bound = eta * receiver_action / 2.0
    resolved_current = full_pulse_current - tail_current_bound

    assert_in_delta record / 16.0, tail_current_bound, TOL
    assert_in_delta record / 16.0, resolved_current, TOL
  end

  def test_slowly_deeper_prefix_evacuates_normalized_tail_on_same_record
    viscosity = 0.71
    initial_height = 2.3
    record = 512.0
    eta = viscosity * record / (8.0 * (record + initial_height))
    receiver_action = (record + initial_height) / viscosity

    [1.0, 2.0, 8.0, 32.0].each do |depth_factor|
      tail_current_bound =
        eta * receiver_action / (2.0 * depth_factor)
      normalized_tail = tail_current_bound / record
      resolved_lower = 1.0 / 8.0 - normalized_tail

      assert_in_delta 1.0 / (16.0 * depth_factor),
                      normalized_tail,
                      TOL
      assert_operator resolved_lower, :>=, 1.0 / 16.0 - TOL
    end
  end

  def test_selected_depth_is_inverse_normalized_viscosity_square
    c_r = 1.37
    viscosity = 0.71
    initial_height = 2.3

    [64.0, 256.0, 1024.0, 4096.0].each do |record|
      epsilon_inverse_square = record / viscosity**2
      threshold =
        512.0 * c_r**2 * (record + initial_height)**3 /
        (viscosity**2 * record**2)

      assert_operator threshold, :>=,
                      512.0 * c_r**2 * epsilon_inverse_square - TOL
      assert_operator threshold, :<=,
                      4096.0 * c_r**2 * epsilon_inverse_square + TOL
    end
  end

  def test_finite_prefix_pigeonhole_has_a_fixed_large_record_quantum
    c_r = 1.37
    viscosity = 0.71
    initial_height = 2.3
    quantum_floor = viscosity**2 / (131_072.0 * c_r**2)

    [1.0e4, 4.0e4, 1.6e5].each do |record|
      threshold =
        512.0 * c_r**2 * (record + initial_height)**3 /
        (viscosity**2 * record**2)
      depth = threshold.ceil
      row_quantum = record / (16.0 * depth)

      assert_operator row_quantum, :>=, quantum_floor - TOL
    end
  end

  def test_scalar_pulse_countertest_separates_parent_ratio_from_row_radius
    parent_ratio = 1.0
    reciprocal = parent_ratio / (1.0 + parent_ratio)
    depth = 7
    tail_masses = []
    row_zero_squares = []
    row_two_squares = []

    (1..10).each do |n|
      record = 4.0**n
      mass = 2.0**(-n)
      duration = mass**2 / record
      amplitude = mass / duration
      row_zero_square = amplitude**2 * duration
      row_two_square = row_zero_square * duration**(-4)

      assert_in_delta record, row_zero_square, 1.0e-6
      tail_masses << reciprocal**depth * mass
      row_zero_squares << row_zero_square
      row_two_squares << row_two_square
    end

    assert_operator tail_masses.sum, :<, 0.01
    assert_operator row_zero_squares.last, :>, row_zero_squares.first
    assert_operator row_two_squares.last, :>, row_two_squares.first
    assert_in_delta parent_ratio, 1.0, TOL
  end

  def test_exact_reciprocal_prefix_and_tail_sum
    gamma = 0.9
    parent_rate = 7.3
    depth = 19
    ratio = parent_rate / (gamma + parent_rate)
    weights = (0...depth).map do |m|
      ratio**m / (gamma + parent_rate)
    end
    finite_prefix = gamma * weights.sum
    tail = ratio**depth

    assert_in_delta 1.0, finite_prefix + tail, TOL
  end

  def test_hard_parent_ratio_indicator_has_same_half_derivative_gain
    [0.1, 1.0, 10.0, 100.0].each do |cutoff|
      [0.01, 0.3, 1.0, 9.0, 400.0].each do |ratio|
        indicator = ratio > cutoff ? 1.0 : 0.0
        half_derivative_weight = Math.sqrt(ratio / cutoff)

        assert_operator indicator, :<=, half_derivative_weight + TOL
      end
    end
  end
end
