#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasCanonicalPositiveRadialPulseCompletionTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  NOTE = File.join(
    ROOT,
    "theorem-construction",
    "thomas-canonical-record-positive-radial-pulse-completion-and-turn-down-action-boundary-20260804.md"
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_record_positive_mass_and_threshold_constants
    record = 8.to_r
    duration = 4.to_r
    signed_mass = record / 2
    positive_mass = Rational(17, 4)
    endpoint_height = Rational(3, 8)
    endpoint_mass = endpoint_height * duration

    assert_operator positive_mass, :>=, signed_mass
    assert_operator endpoint_mass, :<, record / 4
    assert_operator positive_mass - endpoint_mass, :>=, record / 4
    assert_includes text, "M_n^+:=\\int_{I_n}P_+(t)\\,dt\\ge {A_n\\over2}"
    assert_includes text, "m_n:=\\max\\{P_+(s_n),P_+(t_n)\\}"
  end

  def test_endpoint_branch_has_diverging_canonical_level
    record = 64.to_r
    duration = Rational(3, 2)
    terminal_horizon = 5.to_r
    threshold = record / (4 * duration)

    assert_operator threshold, :>=, record / (4 * terminal_horizon)
    assert_includes text, "=m_n\\ge {A_n\\over4\\Delta_n}"
    assert_includes text, "literal endpoint growth"
  end

  def test_completed_aggregate_pulse_can_contain_multiple_excursions
    # The endpoint height is 1/2. Two excursions above it are enclosed by
    # the first and last crossings, forming one aggregate completed pulse.
    times = (0..6).map(&:to_r)
    values = [Rational(1, 2), Rational(1, 4), 4.to_r,
              Rational(1, 4), 4.to_r, Rational(1, 4), 0.to_r]
    record = 16.to_r
    duration = 6.to_r
    endpoint_height = [values.first, values.last].max
    total_mass = trapezoid_integral(times, values)

    first_crossing = Rational(16, 15)
    last_crossing = Rational(74, 15)
    omitted_left = Rational(2, 5)
    omitted_right = Rational(3, 20)
    completed_mass = total_mass - omitted_left - omitted_right

    assert_equal 9.to_r, total_mass
    assert_operator total_mass, :>=, record / 2
    assert_operator endpoint_height * duration, :<, record / 4
    assert_operator completed_mass, :>=, record / 4
    assert_equal endpoint_height, linear_value(times, values, first_crossing)
    assert_equal endpoint_height, linear_value(times, values, last_crossing)
    assert_includes text, "E_n:=\\{t\\in I_n:P_+(t)>m_n\\}"
    assert_includes text, "P_+(a_n)=P_+(b_n)=m_n"
    assert_includes text, "one completed **aggregate** positive-current pulse"
    assert_includes text, "no monotonicity"
  end

  def test_weighted_cauchy_gives_quadratic_turn_down_constant
    record = 12.to_r
    height_mass = 7.to_r
    pulse_mass = record / 4
    lower_bound = 5 * pulse_mass**2 / (16 * height_mass)

    assert_equal 5 * record**2 / (256 * height_mass), lower_bound
    assert_includes text, "{5A_n^2\\over256B_n}"
    assert_includes text, "{5\\sqrt{8\\nu}\\,A_n^2"
    assert_includes text, "Every canonical record has \\(B_n>0\\)"
    assert_includes text, "\\int_{K_n}\\mathcal T_+(t)\\,dt"
    assert_includes text, "=\\int_{K_n}\\mathcal G_+(t)\\,dt"
  end

  def test_normalized_alternative_and_sufficient_limit_have_exact_constant
    endpoint_ratio = Rational(1, 5)
    response_ratio = Rational(5, 256)

    assert_operator endpoint_ratio, :<, Rational(1, 4)
    assert_equal Rational(5, 256), response_ratio
    assert_includes text, "\\int_{I_n}[\\mathcal T_+]_+\\,dt"
    assert_includes text, "\\ge \\int_{K_n}[\\mathcal T_+]_+\\,dt"
    assert_includes text, "\\ge {5\\over256}."
    assert_includes text, "exact normalized alternative"
    assert_includes text, "\\longrightarrow0"
  end

  def test_direct_record_identity_keeps_endpoint_with_exact_sign
    record = 20.to_r
    height_mass = 8.to_r
    endpoint_change = 3.to_r
    growth_floor = 5 * record**2 / (64 * height_mass)
    turn_down_floor = growth_floor - endpoint_change / 4

    assert_equal Rational(101, 32), turn_down_floor
    assert_includes text, "-{P_+(t_n)-P_+(s_n)\\over4}"
  end

  def test_exact_angular_and_longitudinal_sign_split
    angular = Rational(7, 3)
    longitudinal_values = [Rational(5, 4), Rational(-11, 6)]
    positive = longitudinal_values.select(&:positive?).sum
    negative = longitudinal_values.select(&:negative?).sum { |value| -value }
    joined = angular + positive - negative

    assert_equal Rational(7, 4), joined
    assert_includes text, "\\mathcal T_+=\\mathcal A_++\\mathcal L_+^+-\\mathcal L_+^-"
    assert_includes text, "[\\mathfrak c+2\\alpha\\chi]_+"
    assert_includes text, "[\\mathfrak c+2\\alpha\\chi]_-"
  end

  def test_no_wobble_response_is_three_times_longitudinal_response
    alpha = -2.to_r
    radial_response = 3.to_r
    chi = radial_response / alpha
    joined_response = radial_response + 2 * alpha * chi

    assert_equal 3 * radial_response, joined_response
    assert_includes text, "\\mathfrak c+2\\alpha\\chi=3\\mathfrak c"
    assert_includes text, "perfectly balanced no-wobble"
  end

  def test_datum_paid_height_mass_constant
    datum_l2 = 6.0
    horizon = 2.5
    viscosity = 0.75
    bound = datum_l2**2 / 2 * Math.sqrt(horizon / (2 * viscosity))

    assert_operator bound, :>, 0
    assert_includes text, "B(J):=\\int_JH(t)\\,dt"
    assert_includes text, "B_*:=\\int_0^{T_*}H(t)\\,dt"
    assert_includes text, "{\\|u_0\\|_2^2\\over2}"
    assert_includes text, "\\sqrt{{T_*\\over2\\nu}}"
  end

  def test_sharp_positive_current_has_preterminal_continuity_bound
    assert_includes text, "\\int_{\\mathbb R^3}{\\|\\delta_z u(t)\\|_3^3\\over|z|^5}\\,dz"
    assert_includes text, "\\|\\nabla u(t)\\|_3^3+\\|u(t)\\|_3^3"
    assert_includes text, "continuity in \\(W^{1,3}\\)"
    assert_includes text, "sharp all-pair crossings"
  end

  def test_complements_precede_global_pressure_cancellation
    selected = text.index("Neither \\(\\mathcal L_+^+\\)")
    restore = text.index("Restore the expanding sector")
    cancellation = text.index("complete global\npressure cancellation")

    refute_nil selected
    refute_nil restore
    refute_nil cancellation
    assert_operator selected, :<, restore
    assert_operator restore, :<, cancellation
    assert_includes text, "2\\iint e\\chi\\,da\\,db"
    assert_includes text, "=-\\nu\\|\\Lambda^{3/2}u\\|_2^2"
  end

  def test_periodic_calibrations_are_not_promoted_to_r3_counterexamples
    assert_includes text, "lawful periodic whole-history calibrations"
    assert_includes text, "domain-independent algebraic"
    assert_includes text, "they are not \\(\\mathbb R^3\\) counterexamples"
    assert_includes text, "specifically \\(\\mathbb R^3\\), nonlocal datum theorem"
  end

  def test_scope_and_boundary_are_honest
    assert_includes text, "proved noncanonical canonical-record consequence"
    assert_includes text, "one completed aggregate positive-current pulse"
    assert_includes text, "does not prove"
    assert_includes text, "No currently proved datum row gives (CPR.34)"
    assert_includes text, "The MPP remains open"
    refute_includes text.downcase, "rectangle"
  end

  def test_note_has_no_control_byte_corruption
    bytes = File.binread(NOTE).bytes
    forbidden = [0x08, 0x09, 0x0b, 0x0c, 0x0d]

    forbidden.each { |byte| refute_includes bytes, byte }
  end

  private

  def trapezoid_integral(times, values)
    times.each_cons(2).with_index.sum do |(left, right), index|
      (right - left) * (values[index] + values[index + 1]) / 2
    end
  end

  def linear_value(times, values, point)
    index = times.each_cons(2).find_index do |left, right|
      left <= point && point <= right
    end
    left = times[index]
    right = times[index + 1]
    weight = (point - left) / (right - left)
    (1 - weight) * values[index] + weight * values[index + 1]
  end
end
