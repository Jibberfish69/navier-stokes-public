#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"
require "matrix"

class ThomasExpandingPlaneCofactorResponseTest < Minitest::Test
  TOL = 1.0e-11
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-expanding-plane-cofactor-response-and-relative-frame-" \
    "block-separation-boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_component_identity_is_exact
    b = 2.to_r
    e = 5.to_r
    c = b + e
    b_rate = Rational(-3, 4)
    e_rate = Rational(7, 6)
    r22 = b_rate + b**2
    r33 = e_rate + e**2
    q = Rational(1, 2) * c * b * e
    h_rate = Rational(1, 2) * (e * b_rate + b * e_rate)
    cofactor_response = Rational(1, 2) * (e * r22 + b * r33)

    assert_equal q + h_rate, cofactor_response
    assert_includes text, "\mathfrak q+D_t\\!\\left({\\mathfrak q\\over c}\\right)"
    assert_includes text, "{1\\over2}\\bigl(eR_{22}+bR_{33}\\bigr)"
    assert_includes text, "C:B^2=e b^2+b e^2"
  end

  def test_two_dimensional_cofactor_is_intrinsic_and_collision_safe
    c = 6.to_r
    b = c / 2
    e = c / 2
    plane_response = Matrix[[4.to_r, 7.to_r], [7.to_r, -2.to_r]]
    cofactor = Matrix.diagonal(e, b)
    expected = c * trace(plane_response) / 4
    intrinsic = frobenius(cofactor, plane_response) / 2

    assert_equal expected, intrinsic

    angle = 0.731
    rotation = Matrix[
      [Math.cos(angle), -Math.sin(angle)],
      [Math.sin(angle), Math.cos(angle)]
    ]
    rotated_response = rotation.transpose * plane_response * rotation
    rotated_cofactor = rotation.transpose * cofactor * rotation

    assert_in_delta intrinsic.to_f,
                    (frobenius(rotated_cofactor, rotated_response) / 2).to_f,
                    TOL
    assert_includes text, "\\operatorname{cof}_{e_-^\\perp}B"
    assert_includes text, "{c\\over4}\\operatorname{tr}_{e_-^\\perp}(PRP)"
    assert_includes text, "does not split the expanding-eigenvalue collision"
  end

  def test_vorticity_piece_is_positive_but_pressure_and_viscosity_flip_the_sum
    c = 7.to_r
    b = 3.to_r
    e = 4.to_r
    w_minus = 2.to_r
    w_two = -5.to_r
    w_three = 1.to_r
    vorticity_piece = Rational(1, 8) *
                      (c * w_minus**2 + b * w_two**2 + e * w_three**2)

    assert_operator vorticity_piece, :>, 0

    pressure_piece = -20.to_r
    viscous_piece = 3.to_r
    assert_operator vorticity_piece + pressure_piece + viscous_piece, :<, 0

    pressure_piece = 4.to_r
    viscous_piece = -1.to_r
    assert_operator vorticity_piece + pressure_piece + viscous_piece, :>, 0

    assert_includes text, "c w_-^2+bw_2^2+ew_3^2"
    assert_includes text, "\\mathcal E_p=-{1\\over2}(eH_{22}+bH_{33})"
    assert_includes text, "recombined sum"
  end

  def test_balanced_decaying_abc_response_has_both_signs_at_fixed_viscosity
    nu = 0.7
    k = 3.0
    x_star = 3.0 * Math::PI / (4.0 * k)
    phase = k * x_star
    u_at_star = Vector.elements(3.times.map { Math.sin(phase) + Math.cos(phase) })
    gradient = Matrix[
      [0.0, -k * Math.sin(phase), k * Math.cos(phase)],
      [k * Math.cos(phase), 0.0, -k * Math.sin(phase)],
      [-k * Math.sin(phase), k * Math.cos(phase), 0.0]
    ]
    contracting = Vector[1.0, 1.0, 1.0] / Math.sqrt(3.0)
    expanding_one = Vector[1.0, -1.0, 0.0] / Math.sqrt(2.0)
    expanding_two = Vector[1.0, 1.0, -2.0] / Math.sqrt(6.0)

    u_at_star.each { |component| assert_in_delta 0.0, component, TOL }
    assert_vector_in_delta(-Math.sqrt(2.0) * k * contracting,
                           gradient * contracting)
    assert_vector_in_delta(k / Math.sqrt(2.0) * expanding_one,
                           gradient * expanding_one)
    assert_vector_in_delta(k / Math.sqrt(2.0) * expanding_two,
                           gradient * expanding_two)

    threshold = Math.sqrt(2.0) * nu * k
    low_amplitude = threshold / 2.0
    high_amplitude = threshold * 2.0

    low_response = balanced_abc_response(low_amplitude, k, nu)
    high_response = balanced_abc_response(high_amplitude, k, nu)
    zero_response = balanced_abc_response(threshold, k, nu)

    assert_operator low_response, :<, 0
    assert_operator high_response, :>, 0
    assert_in_delta 0.0, zero_response, TOL
    assert_includes text, "\\nabla\\times U_k=kU_k"
    assert_includes text, "{A^2k^3\\over4}(\\sqrt2A-2\\nu k)"
    assert_includes text, "amplitude \\(A>0\\)"
    assert_includes text, "every\noff-diagonal entry equal to \\(-k/\\sqrt2\\)"
    assert_includes text, "perfectly balanced"
  end

  def test_common_objective_tensor_has_independent_diagonal_and_off_diagonal_blocks
    c = 4.to_r
    b = 1.to_r
    e = 3.to_r

    plane_only = Matrix[
      [0.to_r, 0.to_r, 0.to_r],
      [0.to_r, 6.to_r, 5.to_r],
      [0.to_r, 5.to_r, -2.to_r]
    ]
    diagonal_response = Rational(1, 2) *
                        (e * plane_only[1, 1] + b * plane_only[2, 2])
    line_plane_square =
      plane_only[1, 0]**2 / (c * (c + b)**2) +
      plane_only[2, 0]**2 / (c * (c + e)**2)

    assert_equal 8, diagonal_response
    assert_equal 0, line_plane_square

    line_only = Matrix[
      [0.to_r, 2.to_r, -7.to_r],
      [2.to_r, 0.to_r, 0.to_r],
      [-7.to_r, 0.to_r, 0.to_r]
    ]
    diagonal_response = Rational(1, 2) *
                        (e * line_only[1, 1] + b * line_only[2, 2])
    line_plane_square =
      line_only[1, 0]**2 / (c * (c + b)**2) +
      line_only[2, 0]**2 / (c * (c + e)**2)

    assert_equal 0, diagonal_response
    assert_operator line_plane_square, :>, 0
    assert_includes text, "\\mathcal A\n :=R-[\\Omega,S]"
    assert_includes text, "\\mathcal E={1\\over2}(ea_{22}+ba_{33})"
    assert_includes text, "\\gamma_j:=\\langle\\mathcal A e_-,e_j\\rangle"
    assert_includes text, "\\Theta_-={\\gamma_2^2\\over c(c+b)^2}"
    assert_includes text, "distinct blocks of the same objective response"
  end

  def test_objective_commutator_does_not_change_the_cofactor_pairing
    c = 7.to_r
    b = 2.to_r
    e = 5.to_r
    strain = Matrix.diagonal(-c, b, e)
    rotation = Matrix[
      [0.to_r, -3.to_r, 4.to_r],
      [3.to_r, 0.to_r, -6.to_r],
      [-4.to_r, 6.to_r, 0.to_r]
    ]
    plane_cofactor = Matrix.diagonal(0.to_r, e, b)
    commutator = rotation * strain - strain * rotation

    assert_equal 0, frobenius(plane_cofactor, commutator)
    assert_includes text, "C:P[\\Omega,S]P=0"
    assert_includes text, "\\mathcal A\n :=R-[\\Omega,S]"
  end

  def test_exact_affine_calibration_separates_zero_response_from_positive_crs_square
    a = 3.to_r
    a_rate = -(a**2)
    xi_two = Rational(4, 5)
    xi_three = Rational(-7, 6)

    expanding_response = a**3 + a * a_rate
    crs_square = (xi_two**2 + xi_three**2) / (2 * a)

    assert_equal 0, expanding_response
    assert_operator crs_square, :>, 0

    fixed_frame_response = a**3
    fixed_frame_square = 0.to_r
    assert_operator fixed_frame_response, :>, 0
    assert_equal 0, fixed_frame_square

    assert_includes text, "\\mathcal E=a^3+aa'"
    assert_includes text, "\\Theta_-={\\xi_2^2+\\xi_3^2\\over2a}"
    assert_includes text, "the contracting line genuinely\nmoves"
    assert_includes text, "Rotation only inside the degenerate expanding plane"
    assert_includes text, "infinite whole-space kinetic energy"
    assert_includes text, "not a global\nfinite-energy theorem"
  end

  def test_spacetime_response_is_the_existing_slc_remainder
    adverse_action = Rational(17, 5)
    h_left = Rational(9, 7)
    h_right = Rational(2, 7)
    response_action = adverse_action + h_right - h_left

    assert_equal Rational(12, 5), response_action
    assert_equal adverse_action, h_left - h_right + response_action
    assert_includes text, "=\\mathfrak N_I"
    assert_includes text, "\\mathsf H(s)-\\mathsf H(t)+\\int_I\\!\\int\\mathcal E"
    assert_includes text, "has not supplied a new datum-finite estimate"
  end

  def test_scaling_and_open_boundary_are_stated_exactly
    assert_includes text, "**Status:** canonical exact identity"
    kappa = 11.to_r
    cofactor_scale = kappa**2
    response_tensor_scale = kappa**4
    density_scale = cofactor_scale * response_tensor_scale
    spacetime_jacobian = kappa**-5

    assert_equal kappa**6, density_scale
    assert_equal kappa, density_scale * spacetime_jacobian
    assert_includes text, "\\mathcal E_\\kappa=\\kappa^6\\mathcal E"
    assert_includes text, "`(TIR.37a)` remains the\nunpaid theorem"
    assert_includes text, "new whole-history PDE inequality"
    assert_includes text, "neither equals nor pointwise controls"
    assert_includes text, "no MPP closure is claimed"
    refute_includes text.downcase, "rectangle"
  end

  def test_note_has_no_control_byte_corruption
    bytes = File.binread(NOTE).bytes
    forbidden = [0x08, 0x09, 0x0b, 0x0c, 0x0d]

    forbidden.each { |byte| refute_includes bytes, byte }
  end

  private

  def balanced_abc_response(amplitude, wavenumber, viscosity)
    amplitude**2 * wavenumber**3 / 4.0 *
      (Math.sqrt(2.0) * amplitude - 2.0 * viscosity * wavenumber)
  end

  def trace(matrix)
    matrix.row_count.times.sum { |index| matrix[index, index] }
  end

  def assert_vector_in_delta(expected, actual)
    expected.each_with_index do |component, index|
      assert_in_delta component, actual[index], TOL
    end
  end

  def frobenius(left, right)
    left.to_a.flatten.zip(right.to_a.flatten).sum { |a, b| a * b }
  end
end
