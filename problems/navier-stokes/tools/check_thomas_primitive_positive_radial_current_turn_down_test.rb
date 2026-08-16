#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasPrimitivePositiveRadialCurrentTurnDownTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  NOTE = File.join(
    ROOT,
    "theorem-construction",
    "thomas-primitive-positive-radial-current-causal-turn-down-boundary-20260804.md"
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_primitive_current_derivative_keeps_all_response_terms
    alpha = -2.to_r
    beta_squared = 3.to_r
    radial_response = 5.to_r
    chi = Rational(-7, 4)
    storage = Rational(11, 3)

    storage_rate = storage * (2 * chi - 4 * alpha)
    alpha_rate = -alpha**2 + beta_squared + radial_response
    current_rate = -4 * (storage_rate * alpha + storage * alpha_rate)
    recombined = 4 * storage * (
      5 * alpha**2 - beta_squared - radial_response - 2 * alpha * chi
    )

    assert_equal recombined, current_rate
    assert_includes text, "5\\alpha^2-|\\beta|^2-\\mathfrak c-2\\alpha\\chi"
    assert_includes text, "One unit is the pairwise"
    assert_includes text, "four units are the critical"
  end

  def test_angular_response_preserves_transversality
    alpha = -2.to_r
    n = [1.to_r, 0.to_r, 0.to_r]
    beta = [0.to_r, 2.to_r, 3.to_r]
    gamma = [0.to_r, 5.to_r, 7.to_r]
    beta_squared = dot(beta, beta)

    beta_rate = subtract(
      subtract(gamma, scale(beta, 2 * alpha)),
      scale(n, beta_squared)
    )
    derivative_of_n_dot_beta = beta_squared + dot(n, beta_rate)

    assert_equal 0, derivative_of_n_dot_beta
    assert_includes text, "D_t\\beta=\\gamma-2\\alpha\\beta-|\\beta|^2n"
  end

  def test_next_response_derivatives_are_explicit_and_not_assumed
    alpha = -3.to_r
    beta = [0.to_r, 2.to_r, 3.to_r]
    gamma = [0.to_r, 7.to_r, 11.to_r]
    radial_response = 5.to_r
    next_radial_response = -4.to_r

    radial_response_rate =
      dot(beta, gamma) + next_radial_response - alpha * radial_response
    assert_equal 58, radial_response_rate

    velocity = [-6.to_r, 4.to_r, 6.to_r]
    acceleration = [10.to_r, 14.to_r, 22.to_r]
    next_acceleration = [-8.to_r, 26.to_r, -10.to_r]
    chi = dot(velocity, acceleration) / dot(velocity, velocity)
    chi_rate =
      (dot(acceleration, acceleration) + dot(velocity, next_acceleration)) /
      dot(velocity, velocity) - 2 * chi**2
    assert_equal Rational(687, 121), chi_rate

    assert_includes text,
                    "D_t\\mathfrak c=\\beta\\cdot\\gamma+\\mathfrak d-\\alpha\\mathfrak c"
    assert_includes text,
                    "D_t\\chi={|A|^2+V\\cdot B\\over|V|^2}-2\\chi^2"
    assert_includes text, "does not assume\nthat higher row"
  end

  def test_positive_current_crossing_has_no_interface_atom
    width = Rational(3, 7)
    left_value = 4 * width
    right_value = 0.to_r
    integrated_classical_derivative = -4 * width

    assert_equal right_value - left_value, integrated_classical_derivative
    assert_includes text, "D_tj_+=\\mathbf1_{\\{\\alpha<0\\}}D_tj"
    assert_includes text, "There is no delta contribution"
    assert_includes text, "the differentiated quantity \\(j_+\\) itself vanishes"
    assert_includes text, "multiplying the storage \\(e\\)"
    assert_includes text, "derivative vanishes almost everywhere\non its zero set"
    assert_includes text, "no omitted \\(\\alpha=0\\) contribution"
  end

  def test_aggregate_chain_rule_uses_direct_integrability_not_moving_cutoff
    assert_includes text, "|j|\\lesssim {|V|^3\\over r^5}"
    assert_includes text, "|D_tj|\\lesssim {|V|^4\\over r^6}"
    assert_includes text, "{|V|^2|A|\\over r^5}"
    assert_includes text, "V=\\int_0^1\\nabla u(X_b+sR)R\\,ds"
    assert_includes text, "\\|\\nabla u\\|_4^4"
    assert_includes text, "r^{-5}\\mathbf1_{\\{r\\ge1\\}}\\in L^2"
    assert_includes text, "j,D_tj\\in L^1_{\\rm loc}(dt\\,da\\,db)"
    assert_includes text, "no terminal\nintersection is used"
    assert_includes text, "does not\ndifferentiate the moving truncation"
  end

  def test_positive_pulse_identity_and_rice_lower_bound
    pairs = [
      {
        storage: Rational(3, 2),
        alpha: -2.to_r,
        beta_squared: Rational(1, 2),
        radial_response: Rational(4, 3),
        chi: Rational(-1, 5)
      },
      {
        storage: Rational(5, 4),
        alpha: Rational(-3, 2),
        beta_squared: Rational(7, 6),
        radial_response: Rational(-2, 7),
        chi: Rational(3, 8)
      },
      {
        storage: Rational(2, 3),
        alpha: Rational(4, 5),
        beta_squared: Rational(5, 9),
        radial_response: Rational(1, 6),
        chi: Rational(-2, 9)
      }
    ]

    contracting = pairs.select { |pair| pair[:alpha].negative? }
    positive_mass = contracting.sum do |pair|
      -4 * pair[:storage] * pair[:alpha]
    end
    growth = 5 * contracting.sum do |pair|
      pair[:storage] * pair[:alpha]**2
    end
    turn_down = contracting.sum do |pair|
      pair[:storage] * (
        pair[:beta_squared] +
        pair[:radial_response] +
        2 * pair[:alpha] * pair[:chi]
      )
    end
    direct_rate = contracting.sum do |pair|
      4 * pair[:storage] * (
        5 * pair[:alpha]**2 -
        pair[:beta_squared] -
        pair[:radial_response] -
        2 * pair[:alpha] * pair[:chi]
      )
    end

    assert_equal 4 * (growth - turn_down), direct_rate

    height = pairs.sum { |pair| pair[:storage] }
    assert_operator growth, :>=, 5 * positive_mass**2 / (16 * height)
    assert_includes text, "P_+'=4(\\mathcal G_+-\\mathcal T_+)"
    assert_includes text, "\\mathcal G_+"
    assert_includes text, "\\ge {5P_+^2\\over16H}"
  end

  def test_completed_pulse_has_exact_datum_paid_denominator
    positive_current = [2.to_r, 3.to_r]
    height = [1.to_r, 4.to_r]

    pulse_area = positive_current.sum
    weighted_square = positive_current.zip(height).sum do |current, mass|
      current**2 / mass
    end
    height_mass = height.sum

    assert_operator weighted_square, :>=, pulse_area**2 / height_mass
    assert_equal Rational(25, 16),
                 Rational(5, 16) * pulse_area**2 / height_mass

    kinetic_energy = 12.to_r
    viscosity = 3.to_r
    duration = 2.to_r
    denominator_bound_squared =
      kinetic_energy**2 * duration / (8 * viscosity)
    assert_equal 12, denominator_bound_squared

    assert_includes text, "A_I:=\\int_I P_+(t)\\,dt"
    assert_includes text, "{5\\over16}{A_I^2\\over"
    assert_includes text, "H(t)^2"
    assert_includes text, "\\int_0^{T_*}Z(t)\\,dt&\\le {E_{\\rm kin}\\over2\\nu}"
    assert_includes text, "{E_{\\rm kin}^2\\over8\\nu}"
    assert_includes text, "{E_{\\rm kin}\\over\\sqrt{8\\nu}}|I|^{1/2}"
    assert_includes text, "{5\\sqrt{8\\nu}\\over"
    assert_includes text, "This pays the denominator, not the response."
  end

  def test_radial_and_transverse_response_restore_complete_relative_power
    n = [1.to_r, 0.to_r, 0.to_r]
    velocity = [3.to_r, -4.to_r, 5.to_r]
    acceleration = [7.to_r, 11.to_r, -2.to_r]

    radial_velocity = scale(n, dot(n, velocity))
    transverse_velocity = subtract(velocity, radial_velocity)
    radial_response = 2 * dot(radial_velocity, acceleration)
    transverse_response = 2 * dot(transverse_velocity, acceleration)
    complete_response = 2 * dot(velocity, acceleration)

    assert_equal complete_response, radial_response + transverse_response
    assert_includes text, "2r^{-4}(P_nV)\\cdot A"
    assert_includes text, "2r^{-4}((I-P_n)V)\\cdot A"
    assert_includes text, "2r^{-4}V\\cdot A"
  end

  def test_termwise_response_completeness_forces_full_quadratic_storage
    velocity = [2.to_r, -3.to_r, 5.to_r]
    acceleration_tests = [
      [1.to_r, 0.to_r, 0.to_r],
      [0.to_r, 1.to_r, 0.to_r],
      [0.to_r, 0.to_r, 1.to_r],
      [4.to_r, -2.to_r, 7.to_r]
    ]
    coefficient = Rational(7, 5)
    gradient = scale(velocity, coefficient)

    acceleration_tests.each do |acceleration|
      assert_equal coefficient * dot(velocity, acceleration),
                   dot(gradient, acceleration)
    end

    phi = coefficient * dot(velocity, velocity) / 2
    assert_equal Rational(133, 5), phi
    assert_includes text, "\\Phi(n,\\lambda V)=\\lambda^2\\Phi(n,V)"
    assert_includes text, "\\nabla_V\\Phi(n,V)=c_*V"
    assert_includes text, "\\Phi(n,V)={c_*\\over2}|V|^2"
    assert_includes text, "for **every** \\(n,V,A\\)"
  end

  def test_triangular_whole_record_identity
    initial_current = Rational(5, 3)
    response = Rational(7, 4)
    duration = Rational(6, 5)

    direct_integral =
      initial_current * duration + 2 * response * duration**2
    triangular_integral =
      initial_current * duration +
      4 * response * duration**2 / 2

    assert_equal direct_integral, triangular_integral
    assert_includes text, "(T-t)\\mathcal R_{\\rm pair}(t)"
    assert_includes text, "(t-t_0)\\mathcal R_{\\rm pair}(t)"
    assert_includes text, "\\int_{t_0}^{T}\\mathcal P_{1/2}(t)\\,dt"
    assert_includes text, "(T-t_0)\\mathcal P_{1/2}(T)"
    assert_includes text, "No endpoint term has been dropped."
    assert_includes text, "No Fourier mask"
  end

  def test_fixed_viscosity_scaling_is_critical
    kappa = Rational(5, 2)
    pair_density_scaling = kappa**6
    pair_volume_scaling = kappa**-6
    rate_squared_scaling = kappa**4
    time_scaling = kappa**-2
    future_weight_scaling = kappa**-2

    assert_equal 1, pair_density_scaling * pair_volume_scaling
    assert_equal 1,
                 pair_density_scaling *
                 pair_volume_scaling *
                 rate_squared_scaling *
                 time_scaling *
                 future_weight_scaling
    assert_includes text, "\\mathcal R_{\\rm pair}\\) by \\(\\kappa^4\\)"
    assert_includes text, "are scale invariant"
    assert_includes text, "\\sum_j\\nu{m_j\\over r_j^3}<\\infty"
  end

  def test_scope_and_open_boundary_are_explicit
    assert_includes text, "**Status:** scoped exact primitive-pair advance"
    assert_includes text, "one fixed-viscosity velocity and"
    assert_includes text, "positive pair current already selects the actual radial contraction"
    assert_includes text, "response-completeness uniqueness"
    assert_includes text, "closure-equivalent to (TIR.37a)"
    assert_includes text, "not a smaller paid replacement"
    assert_includes text, "No MPP closure is"
    assert_includes text, "Neither the\nendpoint-spanning intersection nor (TIR.37a) is used"
    refute_includes text.downcase, "rectangle"
  end

  def test_note_has_no_control_byte_corruption
    bytes = File.binread(NOTE).bytes
    forbidden = [0x08, 0x09, 0x0b, 0x0c, 0x0d]

    forbidden.each { |byte| refute_includes bytes, byte }
  end

  private

  def dot(left, right)
    left.zip(right).sum { |x, y| x * y }
  end

  def scale(vector, scalar)
    vector.map { |entry| scalar * entry }
  end

  def subtract(left, right)
    left.zip(right).map { |x, y| x - y }
  end
end
