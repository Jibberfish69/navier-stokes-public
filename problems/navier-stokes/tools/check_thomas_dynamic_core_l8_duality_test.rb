#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasDynamicCoreL8DualityTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  NOTE = File.join(
    ROOT,
    "theorem-construction",
    "thomas-dynamic-core-l8-duality-and-recombined-throughput-boundary-20260804.md"
  )
  TOL = 1.0e-10

  def test_paid_eighth_power_is_exactly_the_enstrophy_clock
    datum_l2 = 2.7
    viscosity = 0.8
    enstrophy = 11.0
    xi = datum_l2**0.25 * enstrophy**0.125 / Math.sqrt(viscosity)

    assert_in_delta datum_l2**2 * enstrophy / viscosity**4,
                    xi**8,
                    TOL

    integrated_enstrophy = datum_l2**2 / (2.0 * viscosity)
    integrated_xi_eighth = datum_l2**2 / viscosity**4 * integrated_enstrophy
    assert_in_delta datum_l2**4 / (2.0 * viscosity**5),
                    integrated_xi_eighth,
                    TOL
  end

  def test_holder_dual_and_normalized_current_exponents_are_exact
    assert_in_delta 1.0, 1.0 / 8.0 + 1.0 / (8.0 / 7.0), TOL

    # (Z sqrt(D) / Xi)^(8/7)
    # = nu^(4/7) U^(-2/7) Z D^(4/7).
    u = 3.1
    nu = 0.73
    z = 17.0
    d = 29.0
    xi = u**0.25 * z**0.125 / Math.sqrt(nu)
    direct = (z * Math.sqrt(d) / xi)**(8.0 / 7.0)
    factored = nu**(4.0 / 7.0) * u**(-2.0 / 7.0) *
               z * d**(4.0 / 7.0)

    assert_in_delta direct, factored, direct * 1.0e-12
  end

  def test_every_subdual_time_exponent_fails_by_power_counting
    [1.0, 1.05, 1.1, 1.14].each do |q|
      next unless q < 8.0 / 7.0

      # f(t)=t^-a is in L^8; g(t)=t^-b is in L^q; fg is not L^1.
      epsilon = (1.0 / 8.0 + 1.0 / q - 1.0) / 3.0
      a = 1.0 / 8.0 - epsilon
      b = 1.0 / q - epsilon

      assert_operator 8.0 * a, :<, 1.0
      assert_operator q * b, :<, 1.0
      assert_operator a + b, :>, 1.0
    end
  end

  def test_l2_preserving_local_packet_has_the_claimed_sharp_scaling
    amplitude = 1.9
    frequency = 128.0
    viscosity = 0.61

    u = amplitude
    z = amplitude**2 * frequency**2
    d = amplitude**2 * frequency**3
    source_h_minus_half = amplitude**2 * frequency**2
    current = amplitude**3 * frequency**3.5
    xi = amplitude**0.5 * frequency**0.25 / Math.sqrt(viscosity)
    normalized = current / xi

    assert_in_delta z * Math.sqrt(d), current, current * TOL
    assert_in_delta z, source_h_minus_half, TOL
    assert_in_delta(
      viscosity**(4.0 / 7.0) * amplitude**(-6.0 / 7.0) *
        z**(13.0 / 7.0),
      normalized**(8.0 / 7.0),
      normalized**(8.0 / 7.0) * TOL
    )
    assert_in_delta(
      amplitude**(-4.0 / 7.0) * z**2,
      current**(8.0 / 7.0),
      current**(8.0 / 7.0) * TOL
    )
  end

  def test_packet_schedule_pays_xi_eighth_but_not_normalized_dual_norm
    paid = 0.0
    unpaid_terms = []
    throughput_terms = []

    (1..20).each do |n|
      z = 2.0**(2 * n)
      duration = z**(-1.5)
      paid += duration * z
      unpaid_terms << duration * z**(13.0 / 7.0)
      throughput_terms << duration * z**2
    end

    assert_operator paid, :<, 1.0
    assert_operator unpaid_terms.last, :>, unpaid_terms.first
    assert_operator throughput_terms.last, :>, throughput_terms.first
    assert_operator unpaid_terms.sum, :>, 1.0e4
    assert_operator throughput_terms.sum, :>, 1.0e6
  end

  def test_heterochiral_critical_and_enstrophy_currents_have_exact_ratios
    radii = [1.0, 1.6, 2.3]
    singleton_sign_patterns = [
      [-1, 1, 1],
      [1, -1, 1],
      [1, 1, -1]
    ]
    kappas = [
      (radii[0] + radii[1]) * (radii[0] + radii[2]) / (2.0 * radii[0]),
      (radii[0] + radii[1]) * (radii[1] + radii[2]) / (2.0 * radii[1]),
      (radii[0] + radii[2]) * (radii[1] + radii[2]) / (2.0 * radii[2])
    ]

    singleton_sign_patterns.each_with_index do |signs, index|
      transfers = transfer_vector(radii, signs, 0.83)
      critical = dot(radii, transfers)
      enstrophy = dot(radii.map { |radius| radius**2 }, transfers)
      signed_radii = radii.zip(signs).map { |radius, sign| radius * sign }

      assert_in_delta 0.0, transfers.sum, TOL
      assert_in_delta 0.0, dot(signed_radii, transfers), TOL
      assert_in_delta kappas[index] * critical, enstrophy, TOL
      assert_operator critical * enstrophy, :>, 0.0
    end
  end

  def test_two_recombined_triad_blocks_can_cancel_enstrophy_not_critical_current
    kappa_one = 1.7
    kappa_two = 5.4
    critical_one = 2.3
    critical_two = -(kappa_one / kappa_two) * critical_one

    enstrophy_total = kappa_one * critical_one +
                       kappa_two * critical_two
    critical_total = critical_one + critical_two

    assert_in_delta 0.0, enstrophy_total, TOL
    assert_operator critical_total, :>, 0.0
  end

  def test_dynamic_normalization_derivative_imports_the_first_spatial_current
    z = 13.0
    p_one = 7.2
    h_two = 4.1
    z_prime = 2.0 * p_one - 2.0 * h_two
    logarithmic_xi_derivative = z_prime / (8.0 * z)

    assert_in_delta(
      (p_one - h_two) / (4.0 * z),
      logarithmic_xi_derivative,
      TOL
    )
  end

  def test_note_keeps_recombination_exponents_and_closure_boundary_explicit
    note = File.read(NOTE)

    assert_includes note, "after complete modal incidence recombination"
    assert_includes note, "not a donor colouring"
    assert_includes note, "[\\mathcal J_c]_+^{8/7}"
    assert_includes note, "Z(t)D(t)^{4/7}"
    assert_includes note, "Z(u_{A,K})^{13/7}"
    assert_includes note, "Z(u_{A,K})^2"
    assert_includes note, "signed entry/exit flux"
    assert_includes note, "instantaneous norm-insufficiency schedule"
    assert_includes note, "not one Navier--Stokes history"
    assert_includes note, "does not prove `(TIR.37a)`"
  end

  private

  def transfer_vector(radii, signs, gamma)
    signed_radii = radii.zip(signs).map { |radius, sign| radius * sign }
    [
      gamma * (signed_radii[2] - signed_radii[1]),
      gamma * (signed_radii[0] - signed_radii[2]),
      gamma * (signed_radii[1] - signed_radii[0])
    ]
  end

  def dot(left, right)
    left.zip(right).sum { |x, y| x * y }
  end
end
