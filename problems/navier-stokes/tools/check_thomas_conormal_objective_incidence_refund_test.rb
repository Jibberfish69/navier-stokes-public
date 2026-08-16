#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"
require "matrix"

class ThomasConormalObjectiveIncidenceRefundTest < Minitest::Test
  TOL = 1.0e-10
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-conormal-objective-incidence-moving-weight-finite-chord-" \
    "refund-boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_objective_projector_derivative_recombines_frame_and_membership
    e = Vector[1.0, 0.0, 0.0]
    omega = Matrix[
      [0.0, -0.7, 0.2],
      [0.7, 0.0, -0.4],
      [-0.2, 0.4, 0.0]
    ]
    frame_rate = Vector[0.0, 1.3, -0.6]
    response = frame_rate - omega * e
    e_column = Matrix.column_vector(e.to_a)
    e_row = Matrix.row_vector(e.to_a)
    rate_column = Matrix.column_vector(frame_rate.to_a)
    rate_row = Matrix.row_vector(frame_rate.to_a)
    response_column = Matrix.column_vector(response.to_a)
    response_row = Matrix.row_vector(response.to_a)
    projector = e_column * e_row
    projector_rate = rate_column * e_row + e_column * rate_row
    commutator = omega * projector - projector * omega
    objective_rate = projector_rate - commutator
    response_rate = response_column * e_row + e_column * response_row
    membership_rate = -0.37
    chi = 0.61
    combined_rate = projector * membership_rate + response_rate * chi
    expected_norm_squared =
      membership_rate**2 + 2.0 * chi**2 * response.norm**2

    assert_matrix_close response_rate, objective_rate
    assert_in_delta expected_norm_squared,
                    combined_rate.to_a.flatten.sum { |entry| entry**2 }, TOL
    assert_includes text, "\\mathring D_t(\\chi P_-)"
    assert_includes text, "(D_t\\chi)P_-"
    assert_includes text, "\\mathcal R_-\\otimes e_-"
    assert_includes text, "co-rotating material frame"
    assert_includes text, "|D_t\\chi|^2+2\\chi^2|\\mathcal R_-|^2"
    assert_includes text, "is not asserted to equal the variation"
  end

  def test_loss_of_alignment_has_the_signed_response_quantum
    threshold = Math.sqrt(3.0) / 2.0
    nonnegative_drift = Rational(7, 20)
    signed_response = 1.0 - threshold + nonnegative_drift

    assert_operator signed_response, :>=, 1.0 - threshold
    assert_includes text, "1-\\frac{\\sqrt3}{2}"
    assert_includes text, "-\\int_{\\tau_0}^{\\tau_*}n\\cdot\\mathcal R_-"
    assert_includes text, "fixed **signed** response quantum"
  end

  def test_incidence_alignment_chain_rule
    chi = 0.7
    chi_rate = -0.3
    mu = 0.9
    mu_rate = -0.4
    phi = 1.0 - mu
    phi_prime = -1.0

    direct = chi_rate * (1.0 - mu) - chi * mu_rate
    chain_rule = phi * chi_rate + chi * phi_prime * mu_rate

    assert_in_delta direct, chain_rule, TOL
    assert_includes text, "D_t\\bigl(\\chi(1-\\mu)\\bigr)"
    assert_includes text, "(1-\\mu)D_t\\chi"
    assert_includes text, "-\\chi n\\cdot\\mathcal R_-"
    assert_includes text, "entry-reset qualification"
    assert_includes text, "removes the **entry** atom"
    assert_includes text, "exit and\nrecord-end reset atoms remain"
    assert_includes text, "uniformly locally bounded"
    assert_includes text, "only a distributional derivative"
    assert_includes text, "-(1-\\mu_e)\\delta_{\\tau_1}"

    mu_exit = Rational(9, 10)
    nonnegative_drift = Rational(2, 15)
    integrated_response = -(1 - mu_exit + nonnegative_drift)
    assert_equal 1 - mu_exit + nonnegative_drift, -integrated_response
    assert_operator(-integrated_response, :>=, 0)
  end

  def test_weighted_radius_refund_is_exact_for_every_coordinate
    current = Rational(31, 7)
    c_one = Rational(13, 9)
    rho = Rational(5, 4)
    full_shape = Rational(-8, 11)
    weighted_shape = Rational(17, 12)

    raw_defect = current - rho * c_one * full_shape
    weighted_defect = raw_defect + rho * c_one * (full_shape - weighted_shape)

    assert_equal current - rho * c_one * weighted_shape, weighted_defect
    assert_equal current, rho * c_one * weighted_shape + weighted_defect
    assert_equal(-c_one * weighted_shape,
                 weighted_defect_radius_derivative(weighted_shape, c_one))

    assert_includes text, "\\mathcal D_{\\rho,n}^{W,\\rm rr}"
    assert_includes text, "\\partial_\\rho\\mathcal D_{\\rho,n}^{W,\\rm rr}"
    assert_includes text, "=-c_1\\mathscr Q_W"
  end

  def test_weighted_physical_time_and_radius_derivatives_commute
    c_one = Rational(17, 13)
    weighted_shape_rate = Rational(-11, 7)

    time_then_radius = -c_one * weighted_shape_rate
    radius_then_time = -c_one * weighted_shape_rate

    assert_equal time_then_radius, radius_then_time
    assert_includes text, "\\partial_t\\partial_\\rho"
    assert_includes text, "=-c_1\\frac d{dt}\\mathscr Q_W"
    assert_includes text, "Radon-measure identity only"
    assert_includes text, "finite-BV and trace hypotheses"
  end

  def test_moving_weight_collar_cancels_in_first_binomial
    c_rho = Rational(11, 6)
    weighted_shape = Rational(7, 5)
    weighted_storage_rate = Rational(-4, 9)
    weighted_source = Rational(13, 8)
    moving_collar = weighted_shape + weighted_storage_rate - weighted_source

    # Q_W = -A_W' + R_W + C_W.
    assert_equal weighted_shape,
                 -weighted_storage_rate + weighted_source + moving_collar

    defect_storage_rate = Rational(5, 7)
    defect_source = Rational(-3, 10)
    defect = -defect_storage_rate + defect_source - c_rho * moving_collar
    full_current = c_rho * weighted_shape + defect
    recombined =
      -(c_rho * weighted_storage_rate + defect_storage_rate) +
      c_rho * weighted_source + defect_source

    assert_equal full_current, recombined
    assert_includes text, "+\\mathfrak C_W(t)"
    assert_includes text, "-c_\\rho\\mathfrak C_W(t)"
    assert_includes text, "material/heat commutator"
    assert_includes text, "The final advection term cannot be deleted"
    assert_includes text, "distributionally under the sharp hypotheses above"
    assert_includes text, "locally finite spacetime BV"
    assert_includes text, "uniform integrability"
    assert_includes text, "heat smoothing alone does not supply variation control"
    assert_includes text, "d\\mathfrak C_W(t)"
    assert_includes text, "\\lim_{s\\to\\infty}\\mathscr Q_W(w_s;t)=0"
    assert_includes text, "\\lim_{s\\to\\infty}\\mathcal E_{\\rho,W}(w_s;t)=0"
  end

  def test_eulerian_weight_derivative_keeps_the_advection_sign
    material_rate = Rational(5, 7)
    velocity = [Rational(3, 4), Rational(-2, 5), Rational(7, 9)]
    gradient = [Rational(-1, 6), Rational(4, 11), Rational(5, 8)]
    advection = velocity.zip(gradient).sum { |u, derivative| u * derivative }
    eulerian_rate = material_rate - advection

    assert_equal material_rate, eulerian_rate + advection
    assert_includes text, "-u\\cdot\\nabla W"
    assert_includes text, "heat smoothing and material\npullback do not commute"
  end

  def test_radius_derivative_of_moving_binomial_normal_form
    c_one = Rational(19, 10)
    weighted_shape = Rational(23, 14)
    storage = Rational(-2, 3)
    source = Rational(5, 12)
    collar = weighted_shape + storage - source

    storage_radius_derivative = -c_one * storage
    source_radius_derivative = -c_one * source
    collar_radius_derivative = -c_one * collar
    normal_form_radius_derivative =
      -storage_radius_derivative + source_radius_derivative + collar_radius_derivative

    assert_equal(-c_one * weighted_shape, normal_form_radius_derivative)
    assert_includes text, "=-c_1\\mathscr Q_W(u;t)"
  end

  def test_rotating_adverse_affine_calibration_is_exact
    angle = 0.37
    rate = 9.0
    cosine = Math.cos(angle)
    sine = Math.sin(angle)
    rotation = Matrix[
      [cosine, -sine, 0.0],
      [sine, cosine, 0.0],
      [0.0, 0.0, 1.0]
    ]
    generator = Matrix[
      [0.0, -1.0, 0.0],
      [1.0, 0.0, 0.0],
      [0.0, 0.0, 0.0]
    ]
    diagonal = Matrix.diagonal(-2.0, 0.5, 1.5)
    strain = rotation * diagonal * rotation.transpose
    strain_rate = rate * (generator * strain - strain * generator)
    pressure_hessian = -1.0 * (strain_rate + strain * strain)
    equation_residual = strain_rate + strain * strain + pressure_hessian
    contracting_line = rotation * Vector[1.0, 0.0, 0.0]
    contracting_line_rate = rate * generator * contracting_line

    assert_matrix_close Matrix.zero(3), equation_residual
    assert_in_delta 0.0, strain.trace, TOL
    assert_in_delta 13.0 / 2.0,
                    strain.to_a.flatten.sum { |entry| entry**2 }, TOL
    assert_in_delta rate, contracting_line_rate.norm, TOL
    assert_in_delta 3.0 / 4.0, 0.5 * 2.0 * 0.5 * 1.5, TOL

    assert_includes text, "exact affine Navier--Stokes calibration"
    assert_includes text, "|\\mathcal R_-|=k"
    assert_includes text, "infinite global kinetic energy"
    assert_includes text, "not MPP counterhistories"
  end

  def test_changing_label_affine_calibration_is_exact_and_frequency_neutral
    epsilon = 0.3
    frequency = 17.0
    phase = 0.41
    alpha = 1.0 + epsilon * Math.sin(phase)
    alpha_rate = epsilon * frequency * Math.cos(phase)
    diagonal = Matrix.diagonal(-2.0, 0.5, 1.5)
    strain = diagonal * alpha
    strain_rate = diagonal * alpha_rate
    pressure_hessian = -1.0 * (strain_rate + strain * strain)
    equation_residual = strain_rate + strain * strain + pressure_hessian
    average_alpha_square = 1.0 + epsilon**2 / 2.0
    mean_strain_square = (13.0 / 2.0) * average_alpha_square
    normalized_selector_variation_per_period =
      (frequency / 2.0) * (4.0 / frequency)

    assert_matrix_close Matrix.zero(3), equation_residual
    assert_in_delta mean_strain_square,
                    (13.0 / 2.0) * (1.0 + epsilon**2 / 2.0), TOL
    assert_in_delta 2.0, normalized_selector_variation_per_period, TOL
    assert_includes text, "integer number of periods"
    assert_includes text, "two full variations per period"
    assert_includes text, "fixed **time-integrated** enstrophy clock"
    assert_includes text, "periodic-cell\naudit, not an \\(\\mathbb R^3\\)"
  end

  def test_actual_pair_selection_and_complement_restore_the_full_current
    endpoint_selected = Rational(4, 3)
    endpoint_complement = Rational(-1, 5)
    selection_flux = Rational(7, 11)
    selected_e_sigma = Rational(-3, 16)
    complement_e_sigma = Rational(5, 18)

    selected = endpoint_selected - selection_flux - 2 * selected_e_sigma
    complement = endpoint_complement + selection_flux - 2 * complement_e_sigma
    full =
      endpoint_selected + endpoint_complement -
      2 * selected_e_sigma - 2 * complement_e_sigma

    assert_equal full, selected + complement
    assert_includes text, "\\Gamma_{ab}"
    assert_includes text, "-2\\int_I\\!\\iint\\Gamma_{ab}e_{ab}\\sigma_{ab}"
    assert_includes text, "The complementary selector"
    assert_includes text, "cancels membership and relative-frame incidence"
    assert_includes text, "parallel cancellation"
    assert_includes text, "does not yet represent \\(J_n^{\\rm rr}\\)"
    assert_includes text, "entry-atom-free CNR choice"
    assert_includes text, "A rescaling does not erase those terms"
    assert_includes text, "H(t):=\\iint e_{ab}(t)"
    assert_includes text, "diagonal\ntruncation/pass-to-the-limit"
  end

  def test_next_identity_is_receiver_compatible_and_closure_remains_open
    assert_includes text, "actual canonical receiver"
    assert_includes text, "complete six-assignment double-recent mask"
    assert_includes text, "\\Gamma_n^{\\rm rr}"
    assert_includes text, "0\\leq\\Gamma_n^{\\rm rr}\\leq1"
    assert_includes text, "={}&\\iint\\Gamma_n^{\\rm rr}j_{ab}"
    assert_includes text, "**aggregate** pressure-complete"
    assert_includes text, "Term-for-term ownership would require"
    assert_includes text, "does not follow from one scalar\nselector"
    assert_includes text, "No \\(\\Gamma_n^{\\rm rr}\\) satisfying"
    assert_includes text, "Neither its arity nor such a kernel is\nproved here"
    assert_includes text, "explicit representation target, not an established"
    refute_includes text, "smallest exact target"
    assert_includes text, "No datum-finite bound"
    assert_includes text, "no MPP closure is claimed"
  end

  def test_note_has_no_control_byte_corruption
    bytes = File.binread(NOTE).bytes
    forbidden = [0x08, 0x09, 0x0b, 0x0c, 0x0d]

    forbidden.each { |byte| refute_includes bytes, byte }
    assert_includes text, "\\mathfrak q"
    assert_includes text, "\\Phi"
    assert_includes text, "\\mu"
  end

  private

  def weighted_defect_radius_derivative(weighted_shape, c_one)
    -c_one * weighted_shape
  end

  def assert_matrix_close(expected, actual)
    expected.row_count.times do |row|
      expected.column_count.times do |column|
        assert_in_delta expected[row, column], actual[row, column], TOL
      end
    end
  end
end
