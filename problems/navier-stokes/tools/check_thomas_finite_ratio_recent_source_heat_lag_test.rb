#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasFiniteRatioRecentSourceHeatLagTest < Minitest::Test
  TOL = 1.0e-12
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-finite-ratio-double-duhamel-recent-source-heat-lag-boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_preserves_one_history_pressure_complete_custody
    assert_includes text, "one-fluid"
    assert_includes text, "complete nonlinear-pressure source"
    assert_includes text, "Both ordered parents"
    assert_includes text, "Leray/pressure projection"
    assert_includes text, "same Duhamel history"
    refute_includes text.downcase, "rectangle"
  end

  def test_old_high_parent_is_exponentially_evacuated
    c_old = 7.3
    energy = 2.4
    radius = 11.0
    receiver_mass = 0.017
    viscosity = 0.8
    record = 256.0
    eta = 0.003
    ratio = c_old * energy * radius**2 * receiver_mass /
            (eta * viscosity * record)
    lag = (1.0 + Math.log(1.0 + ratio)) /
          (2.0 * viscosity * radius**2)
    old_square = c_old * energy * radius**2 *
                 Math.exp(-2.0 * viscosity * lag * radius**2) *
                 receiver_mass

    assert_operator 2.0 * viscosity * lag * radius**2, :>=, 1.0
    assert_operator old_square, :<=,
                    Math.exp(-1.0) * eta * viscosity * record + TOL
  end

  def test_reverse_triangle_leaves_fixed_recent_fraction
    overlap = 0.42
    old = overlap / 8.0
    recent = (Math.sqrt(overlap / 2.0) - Math.sqrt(old))**2

    assert_in_delta overlap / 8.0, recent, TOL
    assert_operator recent, :>, 0.0
  end

  def test_heat_kernel_has_three_half_derivative_gap
    viscosity = 0.7
    radius = 5.0
    heat_age = 0.03
    frequencies = (0..20_000).map { |j| radius + j * 0.002 }
    exact = frequencies.map do |rho|
      rho**1.5 * Math.exp(-viscosity * heat_age * rho**2)
    end.max
    constant = (3.0 / (2.0 * Math::E))**0.75
    bound = constant * (viscosity * heat_age)**(-0.75) *
            Math.exp(-viscosity * radius**2 * heat_age / 2.0)

    assert_operator exact, :<=, bound + 1.0e-10
  end

  def test_kernel_first_moment_decays_like_inverse_square_root_radius
    viscosity = 0.9
    radii = [4.0, 16.0, 64.0]
    normalized = radii.map do |radius|
      integral = numerical_integral(radius, viscosity)
      integral * viscosity * Math.sqrt(radius)
    end

    assert_operator normalized.max / normalized.min, :<, 1.03
  end

  def test_source_square_charge_gains_inverse_kernel_mass
    age_constant = 0.013
    kernel_constant = 2.2
    viscosity = 0.8
    record = 512.0
    radius = 49.0
    kernel_mass = kernel_constant / (viscosity * Math.sqrt(radius))
    synchronized = age_constant * viscosity * record
    source_square = synchronized / kernel_mass
    formula = age_constant / kernel_constant *
              viscosity**2 * record * Math.sqrt(radius)

    assert_in_delta formula, source_square, TOL
  end

  def test_receiver_square_converts_synchronization_to_fourth_moment
    age_constant = 0.013
    receiver_constant = 71.0
    viscosity = 0.8
    record = 512.0
    synchronized = age_constant * viscosity * record
    receiver_l2 = Math.sqrt(receiver_constant * record**2 / viscosity)
    fourth_root_square = synchronized / receiver_l2
    fourth_moment = fourth_root_square**2
    formula = age_constant**2 / receiver_constant * viscosity**3

    assert_in_delta formula, fourth_moment, TOL
  end

  def test_record_interior_keeps_backward_source_in_same_interval
    left = 1.2
    right = 1.8
    lag = 0.07
    100.times do |index|
      time = left + lag + (right - left - lag) * index / 100.0
      heat_age = lag * (index + 1) / 101.0
      source_time = time - heat_age

      assert_operator source_time, :>=, left
      assert_operator source_time, :<, right
    end
  end

  def test_boundary_is_exact_and_honest
    assert_includes text,
                    "CanonicalFiniteRatioRecentDuhamelSourceDesynchronization.A"
    assert_includes text, "There is no positive lower bound"
    assert_includes text, "datum-paid repeated-source count"
    assert_includes text, "What is not proved"
    assert_match(/does\s+not prove/, text)
    refute_includes text, "MPP is closed"
  end

  private

  def numerical_integral(radius, viscosity)
    # Integrate the exact supremum after scaling s = y/(nu R^2).
    step = 0.0005
    total = 0.0
    100_000.times do |index|
      y = (index + 0.5) * step
      heat_age = y / (viscosity * radius**2)
      critical = Math.sqrt(3.0 / (4.0 * viscosity * heat_age))
      frequency = [radius, critical].max
      kernel = frequency**1.5 *
               Math.exp(-viscosity * heat_age * frequency**2)
      total += kernel * step / (viscosity * radius**2)
    end
    total
  end
end
