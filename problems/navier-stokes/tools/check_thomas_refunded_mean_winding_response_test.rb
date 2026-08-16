#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasRefundedMeanWindingResponseTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  NOTE = File.join(
    ROOT,
    "theorem-construction",
    "thomas-refunded-full-current-mean-winding-and-pressure-response-covariance-boundary-20260804.md"
  )

  def text
    @text ||= File.read(NOTE)
  end

  def weighted_mean(weights, values)
    weights.zip(values).sum { |weight, value| weight * value } / weights.sum
  end

  def test_normalized_pair_transport_collapses_refunded_response_exactly
    weights = [2.to_r, 3.to_r]
    alpha = [-2.to_r, 1.to_r]
    beta_squared = [4.to_r, 1.to_r]
    radial_response = [3.to_r, -2.to_r]
    chi = [1.to_r, -3.to_r]

    mean_alpha = weighted_mean(weights, alpha)
    mean_chi = weighted_mean(weights, chi)
    mean_alpha_squared = weighted_mean(weights, alpha.map { |value| value**2 })
    variance_alpha = mean_alpha_squared - mean_alpha**2
    mean_alpha_chi = weighted_mean(
      weights,
      alpha.zip(chi).map { |left, right| left * right }
    )
    covariance = mean_alpha_chi - mean_alpha * mean_chi
    mean_beta_and_radial = weighted_mean(
      weights,
      beta_squared.zip(radial_response).map { |left, right| left + right }
    )

    mean_rate_derivative = -mean_alpha**2 + mean_beta_and_radial +
      2 * covariance - 5 * variance_alpha
    direct_refunded_response = mean_beta_and_radial + 2 * mean_alpha_chi -
      5 * variance_alpha
    collapsed_response = mean_rate_derivative + mean_alpha**2 +
      2 * mean_alpha * mean_chi

    assert_equal direct_refunded_response, collapsed_response
    assert_equal Rational(-345, 25), direct_refunded_response
    assert_includes text, "{d\\over dt}\\langle f\\rangle_e"
    assert_includes text, "\\operatorname{Cov}_e(f,2\\chi-4\\alpha)"
    assert_includes text, "{\\mathcal C_{\\rm all}\\over H}"
    assert_includes text, "=m'+m^2-{\\nu m\\mathscr D\\over H}"
  end

  def test_positive_current_mean_winding_identity_has_all_three_terms
    assert_includes text, "\\lambda:={Q\\over4H}"
    assert_includes text, "\\widehat{\\mathcal C}"
    assert_includes text, "-\\lambda'+\\lambda^2"
    assert_includes text, "+{\\nu\\lambda\\mathscr D\\over H}"
    assert_includes text, "coherent spring-winding square"
    assert_includes text, "imbalanced angular and longitudinal turn"
    assert_includes text, "balanced rip-cord response"
  end

  def test_full_pressure_mean_is_removed_before_covariance_estimate
    assert_includes text, "\\bar\\chi=-{\\nu\\mathscr D\\over2H}"
    assert_includes text, "2\\iint e\\alpha\\chi"
    assert_includes text, "{\\nu\\mathcal P_{1/2}\\mathscr D\\over4H}"
    assert_includes text, "+2H\\operatorname{Cov}_e(\\alpha,\\chi)"
    assert_includes text, "complete pressure cancellation pays the coherent mean response"
    assert_includes text, "does not assign a sign to the centered correlation"
  end

  def test_variance_refund_has_sharp_young_constant
    variance_alpha = Rational(4, 5)
    variance_chi = Rational(9, 5)
    covariance = Rational(3, 5)
    left = 2 * covariance - 5 * variance_alpha
    right = variance_chi / 5

    assert_operator left, :<=, right
    assert_includes text, "2H\\operatorname{Cov}_e(\\alpha,\\chi)"
    assert_includes text, "-5H\\operatorname{Var}_e(\\alpha)"
    assert_includes text, "{H\\over5}\\operatorname{Var}_e(\\chi)"
  end

  def test_complete_chord_and_acceleration_rows_keep_all_pairs
    assert_includes text, "\\mathcal K_{\\rm ch}"
    assert_includes text, "{|V|^4\\over|R|^6}"
    assert_includes text, "\\mathcal R_A"
    assert_includes text, "{|A|^2\\over|R|^4}"
    assert_includes text, "H\\operatorname{Var}_e(\\chi)"
    assert_includes text, "\\le\\mathcal R_A"
    assert_includes text, "\\left|\\iint e\\mathfrak c\\right|"
    assert_includes text, "\\le \\mathcal K_{\\rm ch}^{1/2}\\mathcal R_A^{1/2}"
  end

  def test_material_acceleration_hodge_square_is_pressure_explicit
    assert_includes text, "\\mathscr A:=D_tu=-\\nabla p+\\nu\\Delta u"
    assert_includes text, "\\mathcal R_A={1\\over2}\\|\\Lambda^{1/2}\\mathscr A\\|_2^2"
    assert_includes text, "\\|\\Lambda^{3/2}p\\|_2^2"
    assert_includes text, "+\\nu^2\\|\\Lambda^{5/2}u\\|_2^2"
    assert_includes text, "pressure-explicit Hodge identity"
  end

  def test_clean_upper_bound_constants_are_exact
    chord = 4.to_r
    acceleration = 9.to_r
    square_root_cross = Math.sqrt((chord * acceleration).to_f)
    viscous_cross_upper = chord / 2 + 2 * acceleration
    pre_young_upper = chord + square_root_cross + viscous_cross_upper + acceleration / 5
    final_upper = 2 * chord + Rational(27, 10) * acceleration

    assert_operator pre_young_upper, :<=, final_upper
    assert_equal Rational(323, 10), final_upper
    assert_includes text, "2\\mathcal K_{\\rm ch}+{27\\over10}\\mathcal R_A"
    assert_includes text, "{27\\over20}"
    assert_includes text, "\\|\\Lambda^{3/2}u\\|_2^4"
  end

  def test_canonical_landing_does_not_claim_datum_payment
    assert_includes text, "\\Gamma_n:="
    assert_includes text, "\\int_{I_n}\\mathscr D(t)^2"
    assert_includes text, "\\int_{I_n}"
    assert_includes text, "\\|\\Lambda^{3/2}p\\|_2^2"
    assert_includes text, "neither of which is paid"
    assert_includes text, "not an independently paid theorem"
    assert_includes text, "do not prove `(FSQ.37)`"
    assert_includes text, "and the MPP"
    assert_includes text, "remain open"
  end

  def test_failed_response_branch_forces_exact_chord_or_acceleration_row
    response_floor = Rational(5, 256)
    half_floor = response_floor / 2
    chord_floor = half_floor / 2
    acceleration_floor = half_floor / Rational(27, 10)

    assert_equal Rational(5, 1024), chord_floor
    assert_equal Rational(25, 6912), acceleration_floor
    assert_includes text, "2\\mathfrak K_n+{27\\over10}\\mathfrak R_n"
    assert_includes text, "\\ge {5\\over256}"
    assert_includes text, "\\mathfrak K_n\\ge {5\\over1024}"
    assert_includes text, "\\mathfrak R_n\\ge {25\\over6912}"
    assert_includes text, "complete pressure--viscous material-acceleration action"
  end

  def test_completed_pulse_subtracts_the_coherent_winding_square
    coherent_floor = Rational(1, 256)
    residual_floor = 5 * coherent_floor - 2 * coherent_floor

    assert_equal Rational(3, 256), residual_floor
    assert_includes text, "The coherent winding square cannot pay its own turn-down"
    assert_includes text, "\\mathcal K_{\\rm ch}"
    assert_includes text, "=H\\lambda^2+H\\operatorname{Var}_e(\\alpha)"
    assert_includes text, "+\\mathcal A_{\\rm all}"
    assert_includes text, "3\\int_{K_n}H\\lambda^2"
    assert_includes text, "\\ge {3A_n^2\\over256B_n}"
    assert_includes text, "{3\\over256h_n}\\longrightarrow\\infty"
    assert_includes text, "forced higher-response concentration theorem"
    assert_includes text, "does not give the missing upper payment"
  end

  def test_only_thomas_one_fluid_method_is_used
    assert_includes text, "one maximal classical Navier--Stokes history"
    assert_includes text, "all expanding directions, pair orientations, pressure, and viscosity"
    assert_includes text, "No Fourier receiver"
    assert_includes text, "No datum-finite"
    refute_includes text.downcase, "rectangle"
  end

  def test_note_has_no_control_byte_corruption
    bytes = File.binread(NOTE).bytes
    forbidden = [0x08, 0x09, 0x0b, 0x0c, 0x0d]

    forbidden.each { |byte| refute_includes bytes, byte }
  end
end
