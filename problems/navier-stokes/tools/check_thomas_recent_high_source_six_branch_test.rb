#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasRecentHighSourceSixBranchTest < Minitest::Test
  TOL = 1.0e-12
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-recent-high-source-fixed-selector-six-branch-synchronization-boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_preserves_one_history_and_complete_fixed_selector_join
    assert_includes text, "one-fluid"
    assert_includes text, "one continuing field"
    assert_includes text, "favorable and adverse strain regions"
    assert_includes text, "every finite chord"
    assert_includes text, "pressure heat defect"
    assert_includes text, "None can be clipped"
    refute_includes text.downcase, "rectangle"
  end

  def test_edge_interior_pigeonhole_retains_half_action
    action = 37.0
    edge = 13.2
    interior = action - edge

    assert_operator [edge, interior].max, :>=, action / 2.0
  end

  def test_source_time_pullback_fubini_on_a_discrete_grid
    kernel = [0.0, 1.1, 0.7, 0.2]
    receiver = [0.4, 0.9, 1.3, 0.8, 0.5]
    source_square = [0.3, 1.2, 0.6, 1.7, 0.2]
    pulse_indices = [2, 3, 4]
    lag_steps = 3

    direct = pulse_indices.sum do |time|
      receiver[time] * (1...lag_steps).sum do |age|
        next 0.0 if time - age < 0

        kernel[age] * source_square[time - age]
      end
    end

    omega = Array.new(source_square.length, 0.0)
    pulse_indices.each do |time|
      (1...lag_steps).each do |age|
        next if time - age < 0

        omega[time - age] += kernel[age] * receiver[time]
      end
    end
    pulled_back = omega.zip(source_square).sum { |weight, source| weight * source }

    assert_in_delta direct, pulled_back, TOL
    assert omega.all? { |entry| entry >= 0.0 }
  end

  def test_kernel_mass_turns_rhl_action_into_source_square_charge
    age_constant = 0.019
    kernel_constant = 2.7
    viscosity = 0.8
    record = 512.0
    radius = 81.0
    half_action = age_constant * viscosity * record / 2.0
    kernel_mass = kernel_constant / (viscosity * Math.sqrt(radius))
    charge = half_action / kernel_mass
    formula = age_constant / (2.0 * kernel_constant) *
              viscosity**2 * record * Math.sqrt(radius)

    assert_in_delta formula, charge, TOL
  end

  def test_full_source_port_charge_divides_by_two_viscosity
    source_square_charge = 29.0
    viscosity = 0.8
    joined_source_port_charge = source_square_charge / (2.0 * viscosity)

    assert_in_delta source_square_charge,
                    2.0 * viscosity * joined_source_port_charge,
                    TOL
  end

  def test_weighted_sum_forces_one_signed_half
    required = 14.0
    [[5.0, 9.0], [-3.0, 17.0], [20.0, -6.0]].each do |left, right|
      assert_in_delta required, left + right, TOL
      assert_operator [left, right].max, :>=, required / 2.0
    end
  end

  def test_three_algebraic_allocations_keep_the_same_hes_total
    viscosity = 0.8
    source_integral = 11.0
    target = 2.0 * viscosity**2 * source_integral

    residual = {
      b_left: 0.0,
      b_right: 0.0,
      y_integral: source_integral,
      k_right: 0.0
    }
    k_branch = {
      b_left: 0.0,
      b_right: source_integral,
      y_integral: 0.0,
      k_right: target
    }
    b_branch = {
      b_left: -source_integral,
      b_right: 0.0,
      y_integral: 0.0,
      k_right: 0.0
    }

    [residual, k_branch, b_branch].each do |branch|
      total = branch[:k_right] -
              2.0 * viscosity**2 * branch[:b_left] +
              2.0 * viscosity**2 * branch[:y_integral]
      assert_in_delta target, total, TOL
    end
  end

  def test_six_cell_cartesian_localization
    temporal = %i[edge interior]
    signed = %i[k b y]
    cells = temporal.product(signed)

    assert_equal 6, cells.length
    assert_equal 6, cells.uniq.length
    assert_includes cells, %i[edge k]
    assert_includes cells, %i[interior y]
  end

  def test_boundary_is_honest
    assert_includes text, "six possible co-occurrences"
    assert_includes text, "co-occurrence, not allocation"
    assert_includes text, "only formal"
    assert_includes text, "insufficiency test"
    assert_includes text, "not asserted"
    assert_includes text, "does not prove a strict reduction"
    refute_includes text, "MPP is closed"
  end
end
