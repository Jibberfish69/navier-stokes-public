#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasFullSignedCurrentPositivePulseTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  NOTE = File.join(
    ROOT,
    "theorem-construction",
    "thomas-full-signed-current-positive-pulse-recombination-and-turn-down-action-boundary-20260804.md"
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_full_current_is_recombined_before_positive_part
    positive_pair_current = 9.to_r
    negative_pair_current = 9.to_r
    signed_current = positive_pair_current - negative_pair_current
    full_positive_part = [signed_current, 0].max

    assert_equal 0, full_positive_part
    assert_operator full_positive_part, :<=, positive_pair_current
    recombination = text.index("\\mathcal P_{1/2}(t)=P_+(t)-P_-(t)")
    positive_part = text.index("Q(t):=[\\mathcal P_{1/2}(t)]_+")

    refute_nil recombination
    refute_nil positive_part
    assert_operator recombination, :<, positive_part
    assert_includes text, "Q=[P_+-P_-]_+\\le P_+"
    assert_includes text, "large common mode"
  end

  def test_positive_part_chain_rule_has_no_interface_charge
    assert_includes text, "Q'=\\mathbf1_{\\{\\mathcal P_{1/2}>0\\}}\\mathcal P_{1/2}'"
    assert_includes text, "There is no sign-interface charge"
    assert_includes text, "Q'=4(\\widehat{\\mathcal G}-\\widehat{\\mathcal T})"
  end

  def test_full_riccati_constant_follows_from_weighted_cauchy
    height = 7.to_r
    signed_current = 12.to_r
    radial_square_floor = signed_current**2 / (16 * height)
    growth_floor = 5 * radial_square_floor

    assert_equal 5 * signed_current**2 / (16 * height), growth_floor
    assert_includes text, "|\\mathcal P_{1/2}|^2"
    assert_includes text, "\\le16H\\iint e\\alpha^2"
    assert_includes text, "\\widehat{\\mathcal G}"
    assert_includes text, "\\ge {5Q^2\\over16H}"
  end

  def test_weighted_radial_variance_refund_is_exact_and_narrower
    weights = [1.to_r, 3.to_r]
    radial_rates = [2.to_r, -2.to_r]
    height = weights.sum
    weighted_sum = weights.zip(radial_rates).sum { |weight, rate| weight * rate }
    mean = weighted_sum / height
    signed_current = -4 * weighted_sum
    full_growth = 5 * weights.zip(radial_rates).sum do |weight, rate|
      weight * rate**2
    end
    coherent_growth = 5 * signed_current**2 / (16 * height)
    radial_variance = 5 * weights.zip(radial_rates).sum do |weight, rate|
      weight * (rate - mean)**2
    end

    assert_equal full_growth, coherent_growth + radial_variance
    assert_equal 80.to_r, full_growth
    assert_equal 20.to_r, coherent_growth
    assert_equal 60.to_r, radial_variance
    assert_includes text, "\\mathcal V_{\\rm rad}(t)"
    assert_includes text, "\\mathcal G_{\\rm all}"
    assert_includes text, "{5|\\mathcal P_{1/2}|^2\\over16H}"
    assert_includes text, "+\\mathcal V_{\\rm rad}"
    assert_includes text, "\\mathcal C_{\\rm all}"
    assert_includes text, ":=\\mathcal T_{\\rm all}-\\mathcal V_{\\rm rad}"
    assert_includes text, "[\\widehat{\\mathcal C}]_+"
    assert_includes text, "\\le[\\widehat{\\mathcal T}]_+"
    assert_includes text, "does the regrouping identify"
    assert_includes text, "exact internal radial"
  end

  def test_canonical_record_endpoint_or_completed_pulse_constants
    record = 16.to_r
    duration = 6.to_r
    endpoint_height = Rational(1, 2)
    full_positive_mass = 9.to_r

    assert_operator full_positive_mass, :>=, record / 2
    assert_operator endpoint_height * duration, :<, record / 4
    assert_operator full_positive_mass - endpoint_height * duration, :>, record / 4
    assert_includes text, "M_n:=\\int_{I_n}Q(t)\\,dt"
    assert_includes text, "m_n:=\\max\\{Q(s_n),Q(t_n)\\}"
    assert_includes text, "\\ge {A_n\\over4\\Delta_n}"
    assert_includes text, "\\int_{K_n}Q(t)\\,dt"
    assert_includes text, ">{A_n\\over4}"
  end

  def test_completed_pulse_action_has_exact_quadratic_constant
    record = 12.to_r
    height_mass = 7.to_r
    pulse_mass = record / 4
    lower_bound = 5 * pulse_mass**2 / (16 * height_mass)

    assert_equal 5 * record**2 / (256 * height_mass), lower_bound
    assert_includes text, "\\int_{K_n}\\widehat{\\mathcal C}(t)\\,dt"
    assert_includes text, "={5\\over16}\\int_{K_n}{Q(t)^2\\over H(t)}\\,dt"
    assert_includes text, "{5A_n^2\\over256B_n}"
    assert_includes text, "{5\\sqrt{8\\nu}\\,A_n^2"
  end

  def test_datum_paid_height_mass_has_correct_constant
    datum_l2_squared = 36.0
    duration = 2.5
    viscosity = 0.75
    bound = datum_l2_squared / Math.sqrt(8 * viscosity) * Math.sqrt(duration)

    assert_operator bound, :>, 0
    assert_includes text, "B(J):=\\int_JH(t)\\,dt"
    assert_includes text, "{\\|u_0\\|_2^2\\over\\sqrt{8\\nu}}\\sqrt{|J|}"
    assert_includes text, "before any terminal intersection"
  end

  def test_refunded_imbalance_and_longitudinal_sign_are_taken_after_full_integration
    angular = Rational(7, 3)
    longitudinal = Rational(-11, 6)
    positive_longitudinal = [longitudinal, 0].max
    negative_longitudinal = [-longitudinal, 0].max

    assert_equal Rational(1, 2), angular + positive_longitudinal - negative_longitudinal
    all_integral = text.index("\\mathcal L_{\\rm all}(t)")
    scalar_sign = text.index("[\\mathcal L_{\\rm all}]_+")

    refute_nil all_integral
    refute_nil scalar_sign
    assert_operator all_integral, :<, scalar_sign
    assert_includes text, "\\mathcal I_{\\rm all}"
    assert_includes text, ":=\\mathcal A_{\\rm all}-\\mathcal V_{\\rm rad}"
    assert_includes text, "\\widehat{\\mathcal C}"
    assert_includes text, "=\\widehat{\\mathcal I}^{+}"
    assert_includes text, "-\\widehat{\\mathcal I}^{-}"
    assert_includes text, "+\\widehat{\\mathcal L}^{+}"
    assert_includes text, "-\\widehat{\\mathcal L}^{-}"
  end

  def test_full_action_forces_angular_or_positive_aggregate_longitudinal_half
    lower_bound = Rational(5, 256)
    half = lower_bound / 2

    assert_equal Rational(5, 512), half
    assert_includes text, "{5A_n^2\\over512B_n}"
    assert_includes text, "\\widehat{\\mathcal I}^{+}"
    assert_includes text, "\\widehat{\\mathcal L}^{+}"
    assert_includes text, "positive aggregate angular excess"
    assert_includes text, "internal radial variance has been paid"
  end

  def test_balanced_no_wobble_pair_keeps_factor_three
    alpha = -2.to_r
    radial_response = 3.to_r
    chi = radial_response / alpha
    joined_response = radial_response + 2 * alpha * chi

    assert_equal 3 * radial_response, joined_response
    assert_includes text, "\\mathfrak c+2\\alpha\\chi=3\\mathfrak c"
    assert_includes text, "perfectly balanced no-wobble contracting chord"
    assert_includes text, "already recombined population"
  end

  def test_pressure_cancellation_cannot_remove_alpha_weight
    full_recombination = text.index("All pair orientations and both radial-current signs were restored")
    cancellation = text.index("2\\iint e\\chi\\,da\\,db")
    weighted_obstruction = text.index("+2\\iint e\\alpha\\chi\\,da\\,db")

    refute_nil full_recombination
    refute_nil cancellation
    refute_nil weighted_obstruction
    assert_operator full_recombination, :<, cancellation
    assert_operator cancellation, :<, weighted_obstruction
    assert_includes text, "The factor \\(\\alpha\\)"
    assert_includes text, "cannot be removed"
    assert_includes text, "would replace the current response"
  end

  def test_normalized_alternative_and_remaining_bound_have_exact_constants
    assert_includes text, "{\\Delta_n\\over A_n}"
    assert_includes text, "\\max\\{Q(s_n),Q(t_n)\\}\\ge {1\\over4}"
    assert_includes text, "\\int_{I_n}[\\widehat{\\mathcal C}(t)]_+\\,dt"
    assert_includes text, "\\ge {5\\over256}"
    assert_includes text, "\\longrightarrow0"
    assert_includes text, "pointwise no"
    assert_includes text, "nonnegative radial variance has been refunded"
  end

  def test_fsq37_is_same_critical_and_not_a_strict_reduction
    endpoint_floor = Rational(1, 4)
    response_floor = Rational(5, 256)

    assert_equal response_floor, [endpoint_floor, response_floor].min
    assert_includes text, "not make (FSQ.37) a strict theorem reduction"
    assert_includes text, "same-critical exclusion of the original failed prefix"
    assert_includes text, "\\min\\{1/4,5/256\\}=5/256"
    assert_match(/not an\s+independently paid lower-order lemma/, text)
  end

  def test_scope_and_boundary_are_honest
    assert_includes text, "proved noncanonical all-complement consequence"
    assert_includes text, "**not** produce a datum-finite upper bound"
    assert_includes text, "does not close the MPP"
    assert_includes text, "remains unproved"
    assert_includes text, "endpoint-spanning intersection"
    refute_includes text.downcase, "rectangle"
  end

  def test_note_has_no_control_byte_corruption
    bytes = File.binread(NOTE).bytes
    forbidden = [0x08, 0x09, 0x0b, 0x0c, 0x0d]

    forbidden.each { |byte| refute_includes bytes, byte }
  end
end
