#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class OverlapMomentInterpolationTest < Minitest::Test
  TOLERANCE = 1.0e-10

  def test_sector_holder_gives_the_sharp_cross_moment_inequality
    plus = [[1.0, 0.7], [2.5, 0.2], [4.0, 0.1]]
    minus = [[0.8, 0.4], [3.0, 0.3], [5.0, 0.2]]
    e_plus, a_plus, d_plus = sector_moments(plus)
    e_minus, a_minus, d_minus = sector_moments(minus)
    overlap = a_plus * a_minus
    cross_energy_enstrophy = e_plus * a_minus + e_minus * a_plus
    cross_critical_loss = d_plus * d_minus

    assert_operator a_plus**3, :<=, 2.0 * e_plus * d_plus**2 + TOLERANCE
    assert_operator a_minus**3, :<=, 2.0 * e_minus * d_minus**2 + TOLERANCE
    assert_operator overlap**2,
                    :<=,
                    cross_energy_enstrophy * cross_critical_loss + TOLERANCE
  end

  def test_common_shell_is_the_equality_profile
    frequency = 3.7
    plus = [[frequency, 0.8]]
    minus = [[frequency, 1.3]]
    e_plus, a_plus, d_plus = sector_moments(plus)
    e_minus, a_minus, d_minus = sector_moments(minus)
    overlap = a_plus * a_minus
    cross_energy_enstrophy = e_plus * a_minus + e_minus * a_plus
    cross_critical_loss = d_plus * d_minus

    assert_in_delta 2.0 * e_plus * d_plus**2, a_plus**3, TOLERANCE
    assert_in_delta 2.0 * e_minus * d_minus**2, a_minus**3, TOLERANCE
    assert_in_delta cross_energy_enstrophy * cross_critical_loss,
                    overlap**2,
                    TOLERANCE
  end

  def test_rising_premises_force_the_cross_participation_floor
    viscosity = 0.7
    current_constant = 1.9
    critical_loss = 5.0
    threshold = 4.0 * viscosity**4 / current_constant**4
    cross_energy_enstrophy = 1.8 * threshold
    overlap = 0.49 * critical_loss * Math.sqrt(cross_energy_enstrophy)
    current = 1.01 * viscosity * critical_loss

    assert_operator overlap,
                    :<=,
                    0.5 * critical_loss * Math.sqrt(cross_energy_enstrophy)
    assert_operator current**2,
                    :<=,
                    current_constant**2 * overlap * critical_loss
    assert_operator overlap, :>, viscosity**2 * critical_loss / current_constant**2
    assert_operator cross_energy_enstrophy, :>, threshold
  end

  def test_sharp_scalar_endpoint_pays_weighted_rows_but_not_overlap
    viscosity = 0.6
    current_constant = 1.1
    q_zero = 1.0
    coefficient = 0.1
    beta = 0.5
    assert_operator q_zero, :>, viscosity**2 / current_constant**2

    scaled_overlap = []
    scaled_paid_rows = []
    [1.0e-3, 1.0e-5, 1.0e-7].each do |tau|
      q = q_zero - coefficient * tau**beta
      # The exact integral of (q_zero - coefficient*sigma^beta)^2.
      integral = q_zero**2 * tau -
                 2.0 * q_zero * coefficient * tau**(beta + 1.0) / (beta + 1.0) +
                 coefficient**2 * tau**(2.0 * beta + 1.0) / (2.0 * beta + 1.0)
      energy = Math.sqrt(4.0 * viscosity * integral)
      q_time_rate = coefficient * beta * tau**(beta - 1.0)
      sector_enstrophy = 2.0 * q**2 / energy
      sector_loss = 2.0 * q**3 / energy**2
      sum = 2.0 * sector_enstrophy
      overlap = sector_enstrophy**2
      total_loss = 2.0 * sector_loss
      harmonic_overlap = overlap / sum
      cross_energy_enstrophy = 4.0 * q**2
      cross_loss = sector_loss**2
      current = 2.0 * q_time_rate + viscosity * total_loss

      assert_in_delta(-viscosity * sector_enstrophy,
                      -2.0 * viscosity * q**2 / energy,
                      TOLERANCE)
      assert_in_delta(overlap**2,
                      cross_energy_enstrophy * cross_loss,
                      [TOLERANCE, overlap**2 * 1.0e-10].max)
      assert_in_delta(total_loss**2 / 4.0,
                      cross_loss,
                      [TOLERANCE, cross_loss * 1.0e-10].max)
      assert_operator current**2,
                      :<=,
                      current_constant**2 * overlap * total_loss

      scaled_overlap << tau * overlap
      scaled_paid_rows << [
        Math.sqrt(tau) * sum,
        Math.sqrt(tau) * total_loss / harmonic_overlap,
        Math.sqrt(tau) * Math.sqrt(cross_loss / cross_energy_enstrophy) / harmonic_overlap
      ]
    end

    target_overlap = q_zero**2 / viscosity
    assert_in_delta target_overlap, scaled_overlap.last, 2.0e-3
    assert_operator (scaled_overlap.last - target_overlap).abs,
                    :<,
                    (scaled_overlap.first - target_overlap).abs
    scaled_paid_rows.flatten.each { |value| assert value.finite? }
  end

  private

  def sector_moments(spectrum)
    energy = spectrum.sum { |_frequency, density| density }
    enstrophy = 2.0 * spectrum.sum { |frequency, density| frequency**2 * density }
    critical_loss = 2.0 * spectrum.sum { |frequency, density| frequency**3 * density }
    [energy, enstrophy, critical_loss]
  end
end
