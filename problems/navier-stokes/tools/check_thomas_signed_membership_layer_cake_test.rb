#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasSignedMembershipLayerCakeTest < Minitest::Test
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-signed-sharp-membership-layer-cake-finite-chord-refund-" \
    "boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_interior_and_boundary_layer_cake_weights_reconstruct_different_objects
    q = Rational(5, 2)
    c = Rational(7, 3)

    double_interior_layer_cake = q * c
    l_zero_boundary_layer_cake = q
    lambda_zero_boundary_layer_cake = c
    quadratic_c_layer_cake = c**2

    assert_equal Rational(35, 6), double_interior_layer_cake
    assert_equal q, l_zero_boundary_layer_cake
    assert_equal c, lambda_zero_boundary_layer_cake
    assert_equal Rational(49, 9), quadratic_c_layer_cake

    assert_includes text, "d\\lambda\\,\\delta_0(dL)"
    assert_includes text, "\\delta_0(d\\lambda)\\,dL"
    assert_includes text, "=\\mathfrak q_+c"
    assert_includes text, "=2\\int_0^\\infty L\\mathbf1_{E_{0,L}}\\,dL"
  end

  def test_signed_double_threshold_flux_telescopes_but_total_variation_overcounts
    q = 5.to_r
    c = 3.to_r
    q_rate = -2.to_r
    c_rate = 4.to_r

    signed_product_rate = c * q_rate + q * c_rate
    integrated_positive_variation = c * positive(q_rate) + q * positive(c_rate)
    integrated_negative_variation = c * negative(q_rate) + q * negative(c_rate)
    integrated_total_variation =
      c * q_rate.abs + q * c_rate.abs

    assert_equal 14, signed_product_rate
    assert_equal 20, integrated_positive_variation
    assert_equal 6, integrated_negative_variation
    assert_equal 26, integrated_total_variation
    assert_equal signed_product_rate,
                 integrated_positive_variation - integrated_negative_variation

    assert_includes text, "c(D_t\\mathfrak q)_+"
    assert_includes text, "\\mathfrak q(D_tc)_+"
    assert_includes text, "c|D_t\\mathfrak q|"
    assert_includes text, "V_I^+(f)"
    assert_includes text, "potentially undefined extended-real difference"
    assert_includes text, "If both are\ninfinite, that difference is not used"
    assert_includes text, "Total variation retains every entry, exit, and reversal"
  end

  def test_exceptional_thresholds_do_not_use_undefined_delta_compositions
    assert_includes text, "At a jointly regular and transverse threshold pair"
    assert_includes text, "direct\ndistributional derivative"
    assert_includes text, "at a critical level they need not be\ndefined"
    assert_includes text, "\\right]\\!\\circ X"
    assert_includes text, "for \\(r,p\\ge1\\) whenever"
    assert_includes text, "Only the nonsingular case \\(r=p=1\\) is used below"
  end

  def test_time_weighted_signed_flux_reconstructs_the_adverse_action
    q_at_left = 2.to_r
    q_rate = Rational(5, 7)
    duration = 3.to_r

    adverse_action =
      duration * q_at_left + q_rate * duration**2 / 2
    signed_first_moment = q_rate * duration**2 / 2

    assert_equal Rational(129, 14), adverse_action
    assert_equal Rational(45, 14), signed_first_moment
    assert_equal adverse_action - duration * q_at_left,
                 signed_first_moment

    assert_includes text, "\\mathfrak M_I"
    assert_includes text, "-\\Delta\\mathscr Q_+(s)"
    assert_includes text, "(t-\\tau)\\mathscr Q_+'(\\tau)"
  end

  def test_refunded_join_returns_the_same_double_recent_current
    current = Rational(31, 5)
    c_one = Rational(13, 11)
    rho = Rational(7, 4)
    duration = Rational(9, 5)
    q_at_left = Rational(4, 3)
    adverse_action = Rational(17, 6)
    c_rho = rho * c_one
    signed_moment = adverse_action - duration * q_at_left
    refunded_defect = current - c_rho * adverse_action
    remaining_signed_term = refunded_defect + c_rho * signed_moment

    assert_equal current - c_rho * duration * q_at_left,
                 remaining_signed_term
    assert_equal current,
                 c_rho * duration * q_at_left + remaining_signed_term

    remaining_radius_derivative = -c_one * duration * q_at_left
    endpoint_radius_derivative = c_one * duration * q_at_left
    assert_equal 0,
                 remaining_radius_derivative + endpoint_radius_derivative

    assert_includes text, "\\mathfrak U_{n,\\rho}(I)"
    assert_includes text, "\\mathbf J_n-c_\\rho\\Delta\\mathscr Q_+(s)"
    assert_includes text, "\\lim_{\\rho\\downarrow0}\\mathfrak U_{n,\\rho}(I)"
  end

  def test_renormalized_inverse_c_layer_cake_has_a_quadratic_endpoint
    c = 3.to_r
    q = 5.to_r
    q_rate = 7.to_r
    contraction_remainder = -2.to_r
    c_rate = c**2 + contraction_remainder

    h_rate = q_rate / c - q * c_rate / c**2
    normalized_response =
      q_rate / c - q * contraction_remainder / c**2

    assert_equal Rational(-14, 9), h_rate
    assert_equal Rational(31, 9), normalized_response
    assert_equal q, normalized_response - h_rate

    assert_includes text, "\\mathsf h_\\epsilon"
    assert_includes text, "{\\mathfrak q_+\\over\\max\\{c,\\epsilon\\}}"
    assert_includes text, "{D_t\\mathbf1_{E_{\\lambda,L}}\\over L^2}"
    assert_includes text, "0\\le\\mathsf h_\\epsilon\\le\\frac18c^2"
    assert_includes text, "The two\nterms in that bracket are not assigned separate limits"
    assert_includes text, "\\mathsf H(s)-\\mathsf H(t)+\\mathfrak N_I"
    assert_includes text, "=\\frac1{16}\\|\\nabla u_0\\|_2^2"
  end

  def test_inverse_c_regularization_is_exact_on_both_branches
    q = Rational(9, 8)
    c = 3.to_r

    epsilon_below_c = 2.to_r
    epsilon_above_c = 4.to_r

    below_integral = q * (1 / epsilon_below_c - 1 / c)
    h_below = q / epsilon_below_c - below_integral
    h_above = q / epsilon_above_c

    assert_equal q / c, h_below
    assert_equal q / epsilon_above_c, h_above
    assert_operator h_below, :<=, c**2 / 8
    assert_operator h_above, :<=, c**2 / 8
  end

  def test_adverse_face_comparability_and_scaling_are_explicit
    c = 8.to_r
    b = 3.to_r
    e = 5.to_r
    strain_squared = c**2 + b**2 + e**2
    q = Rational(1, 2) * c * b * e

    assert_operator strain_squared, :>=, Rational(3, 2) * c**2
    assert_operator strain_squared, :<=, 2 * c**2
    assert_operator q / c**2, :<=, c / 8

    assert_includes text, "{3\\over2}c^2\\le |S|^2"
    assert_includes text, "{\\mathfrak q\\over c^2}={be\\over2c}\\le{c\\over8}"
    assert_includes text, "u_\\kappa(x,t)=\\kappa u(\\kappa x,\\kappa^2t)"
    assert_includes text, "both spacetime integrals\nscale like \\(\\kappa\\)"
  end

  def test_endpoint_normalized_refund_still_returns_the_current
    current = Rational(23, 7)
    c_one = Rational(5, 4)
    rho = Rational(11, 6)
    h_left = Rational(4, 3)
    h_right = Rational(1, 2)
    adverse_action = Rational(17, 6)
    normalized_response = adverse_action - h_left + h_right
    c_rho = rho * c_one
    defect = current - c_rho * adverse_action
    normalized_refund = defect + c_rho * normalized_response

    assert_equal 2, normalized_response
    assert_equal current - c_rho * h_left + c_rho * h_right,
                 normalized_refund
    assert_equal current,
                 c_rho * h_left - c_rho * h_right + normalized_refund

    normalized_refund_radius_derivative = c_one * (h_right - h_left)
    endpoint_radius_derivative = c_one * (h_left - h_right)
    assert_equal 0,
                 normalized_refund_radius_derivative + endpoint_radius_derivative

    assert_includes text, "\\mathfrak V_{n,\\rho}(I)"
    assert_includes text, "c_1\\bigl(\\mathsf H(t)-\\mathsf H(s)\\bigr)"
    assert_includes text, "\\lim_{\\rho\\downarrow0}\\mathfrak V_{n,\\rho}(I)"
  end

  def test_adverse_eigenvalue_geometry_has_the_exact_constant
    c = 8.to_r
    b = c / 2
    e = c / 2
    q = Rational(1, 2) * c * b * e

    assert_equal c, b + e
    assert_equal c**3 / 8, q
    assert_includes text, "\\mathfrak q=\\frac12cbe"
    assert_includes text, "{\\|u_0\\|_2^2\\over4\\nu}"
    assert_includes text, "{\\Delta\\over6}\\|S_0\\|_{L^3}^3"
  end

  def test_pressure_response_is_kept_complete_and_closure_is_not_claimed
    assert_includes text, "{1\\over12}\\operatorname{tr}(S^2)^2"
    assert_includes text, "+{1\\over2}S^2:(\\nabla^2p)^\\circ"
    assert_includes text, "-{\\nu\\over2}S^2:\\Delta S"
    assert_includes text, "c^2-\\frac14(w_2^2+w_3^2)"
    assert_includes text, "+e_-\\cdot(\\nabla^2p)e_-"
    assert_includes text, "-\\nu e_-\\cdot\\Delta S e_-"
    assert_includes text, "{\\mathfrak q(w_2^2+w_3^2)\\over4c^2}"
    assert_includes text, "-{\\mathfrak q\\,e_-\\cdot(\\nabla^2p)e_-\\over c^2}"
    assert_includes text, "one continuing fixed-viscosity fluid"
    assert_includes text, "pulse or\nspring winding"
    assert_includes text, "imbalanced stretched vortex"
    assert_includes text, "perfectly balanced\nrip-cord"
    assert_includes text, "no new datum bound\nfor `(TIR.37a)`"
    assert_includes text, "no MPP closure"
    refute_includes text.downcase, "rectangle"
  end

  def test_note_has_no_control_byte_corruption
    bytes = File.binread(NOTE).bytes
    forbidden = [0x08, 0x09, 0x0b, 0x0c, 0x0d]

    forbidden.each { |byte| refute_includes bytes, byte }
  end

  private

  def positive(value)
    [value, 0].max
  end

  def negative(value)
    [-value, 0].max
  end
end
