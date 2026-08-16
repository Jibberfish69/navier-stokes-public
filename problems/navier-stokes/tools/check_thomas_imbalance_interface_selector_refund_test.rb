#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasImbalanceInterfaceSelectorRefundTest < Minitest::Test
  TOL = 1.0e-12
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-imbalance-interface-material-coarea-selector-refund-boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_preserves_thomas_one_fluid_physical_order_and_scope
    assert_includes text, "one continuing fixed-viscosity fluid"
    assert_includes text, "pulse or spring winding"
    assert_includes text, "imbalanced stretched vortex"
    assert_includes text, "perfectly\nbalanced rip-cord"
    assert_includes text, "pressure-explicit binomial/VPI"
    assert_includes text, "simultaneous intersected readings"
    refute_includes text.downcase, "rectangle"
  end

  def test_clipped_join_adds_the_favorable_face_and_corrected_join_does_not
    samples = [
      [7.0, 3.0, 2.0, 0.5],
      [-4.0, 0.25, 8.0, 1.7],
      [12.0, 9.5, 1.25, 0.03]
    ]

    samples.each do |current, q_plus, q_minus, coefficient|
      q_signed = q_plus - q_minus
      defect = current - coefficient * q_signed
      uncorrected = coefficient * q_plus + defect
      corrected_defect = defect - coefficient * q_minus
      corrected = coefficient * q_plus + corrected_defect

      assert_in_delta current + coefficient * q_minus, uncorrected, TOL
      assert_in_delta current, corrected, TOL
    end

    assert_includes text, "=J_n^{\\rm rr}+c_\\zeta\\mathscr Q_-"
    assert_includes text, "\\mathcal D_{\\zeta,n}^{+,\\rm rr}"
  end

  def test_radial_selector_rescaling_is_exactly_covariant
    current = 11.0
    q_signed = -2.75
    base_coefficient = 3.2

    [0.001, 0.1, 1.0, 7.0].each do |rho|
      coefficient = rho * base_coefficient
      defect = current - coefficient * q_signed
      assert_in_delta current, coefficient * q_signed + defect, TOL
    end

    assert_includes text, "c_\\rho:=\\frac{64\\ell_\\rho}{15\\pi}=\\rho c_1"
    assert_includes text, "selector-invariant"
    assert_includes text, "finite chords refund the difference"
  end

  def test_material_coarea_row_has_the_exact_coefficients
    assert_includes text, "\\frac1{16}\\frac d{dt}"
    assert_includes text, "-\\frac1{16}\\int|\\omega|^2D_t\\chi_\\varepsilon"
    assert_includes text, "+\\frac\\nu8\\int\\chi_\\varepsilon|\\nabla\\omega|^2"
    assert_includes text, "+\\frac\\nu{16}\\int\\nabla\\chi_\\varepsilon"
    assert_includes text, "+\\frac16\\int\\nabla\\chi_\\varepsilon\\cdot C"
    assert_includes text, "selected enstrophy storage, material interface"
  end

  def test_pressure_explicit_next_response_is_kept_in_the_interface_velocity
    assert_includes text, "D_t\\mathfrak q"
    assert_includes text, "\\frac12S^2:(\\nabla^2p)^\\circ"
    assert_includes text, "-\\frac\\nu2S^2:\\Delta S"
    assert_includes text, "D_t\\chi_\\varepsilon"
    assert_includes text, "trace-free pressure Hessian"
    assert_includes text, "V_\\lambda'(t)"
  end

  def test_one_contraction_geometry_has_the_sharp_cubic_upper_bound
    [[1.0, 3.0], [0.2, 0.8], [9.0, 11.0], [2.5, 2.5]].each do |b, e|
      c = b + e
      q = 0.5 * c * b * e
      assert_operator q, :<=, c**3 / 8.0 + TOL
    end

    assert_includes text, "\\mathfrak q=\\frac12cbe"
    assert_includes text, "0<\\mathfrak q\\leq\\frac18c^3"
  end

  def test_material_deformation_charge_is_cauchy_schwarz_with_volume_preservation
    delta = 0.4
    rates_by_label = [
      [1.0, 2.0, 0.0, 1.0],
      [0.0, 3.0, 2.0, 1.0],
      [4.0, 0.0, 0.0, 0.0]
    ]
    dt = delta / rates_by_label.first.length
    alphas = rates_by_label.map { |rates| rates.sum * dt }
    left = alphas.sum { |value| value**2 }
    b_discrete = rates_by_label.flatten.sum { |value| value**2 } * dt

    assert_operator left, :<=, delta * b_discrete + TOL
    assert_includes text, "\\int\\alpha_I(a)^2\\,da"
    assert_includes text, "mL^2\\leq\\Delta B_I"
    assert_includes text, "\\alpha_I(a)\\), not \\(L\\)"
    assert_includes text, "D_tN=-(\\nabla u)^TN"
    assert_includes text, "\\bar X_G"
    assert_includes text, "\\int_G|X(a,t)-X(a,s)|^2da"
  end

  def test_high_rate_concentration_dichotomy_constants
    rates = [0.5, 1.0, 2.0, 8.0, 16.0]
    q_values = rates.map { |c| c**3 / 8.0 }
    b_value = rates.sum { |c| c**2 }
    q_total = q_values.sum
    threshold = 4.0 * q_total / b_value
    low_q = rates.zip(q_values).sum { |c, q| c <= threshold ? q : 0.0 }
    high_q = q_total - low_q
    high_measure = rates.count { |c| c > threshold }.to_f
    measure_bound = b_value**3 / (16.0 * q_total**2)

    assert_operator low_q, :<=, q_total / 2.0 + TOL
    assert_operator high_q, :>=, q_total / 2.0 - TOL
    assert_operator high_measure, :<=, measure_bound + TOL
    assert_includes text, "L_I:=\\frac{4Q_I^+}{B_I}"
    assert_includes text, "\\frac{B_I^3}{16(Q_I^+)^2}"
    assert_includes text, "Q_I^+/B_I\\to\\infty"
  end

  def test_exact_abc_refund_keeps_zero_current
    q_plus = 19.0
    q_minus = 19.0
    coefficient = 0.7
    full_defect = 0.0
    corrected_positive_defect = full_defect - coefficient * q_minus

    assert_in_delta 0.0, coefficient * q_plus + corrected_positive_defect, TOL
    assert_includes text, "\\mathcal P_{1/2}=0"
    assert_includes text, "\\mathscr Q_+=\\mathscr Q_->0"
    assert_includes text, "complete current is identically zero"
  end

  def test_result_is_exact_boundary_not_closure
    assert_includes text, "No datum-finite upper bound"
    assert_includes text, "checked exact boundary"
    assert_includes text, "not (TIR.37a)"
    assert_includes text, "not MPP closure"
    assert_includes text, "not a\nreplacement for Thomas's pressure-explicit binomial/VPI method"
    refute_includes text, "Status: MPP is closed"
  end

  def test_note_has_no_control_byte_corruption
    bytes = File.binread(NOTE).bytes
    forbidden = [0x08, 0x09, 0x0b, 0x0c, 0x0d]

    forbidden.each { |byte| refute_includes bytes, byte }
    assert_includes text, "\\theta_\\varepsilon"
    assert_includes text, "\\chi_\\varepsilon"
    assert_includes text, "\\mathfrak q"
    assert_includes text, "\\rho"
    refute_includes text, "\\left(mathcal"
  end
end
