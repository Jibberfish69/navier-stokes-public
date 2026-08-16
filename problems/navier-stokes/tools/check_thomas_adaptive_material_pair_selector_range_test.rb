#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasAdaptiveMaterialPairSelectorRangeTest < Minitest::Test
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-adaptive-material-pair-selector-range-and-receiver-provenance-" \
    "boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def currents
    [3.to_r, -2.to_r, 5.to_r, -7.to_r]
  end

  def positive_mass
    currents.select(&:positive?).sum
  end

  def negative_mass
    -currents.select(&:negative?).sum
  end

  def selector_for(target)
    raise RangeError unless target.between?(-negative_mass, positive_mass)

    if target >= 0
      factor = positive_mass.zero? ? 0.to_r : target / positive_mass
      currents.map { |value| value.positive? ? factor : 0.to_r }
    else
      factor = -target / negative_mass
      currents.map { |value| value.negative? ? factor : 0.to_r }
    end
  end

  def selected_current(target)
    currents.zip(selector_for(target)).sum { |value, weight| value * weight }
  end

  def test_bounded_scalar_selector_range_is_exact
    assert_equal 8, positive_mass
    assert_equal 9, negative_mass
    assert_equal Rational(6), selected_current(6.to_r)
    assert_equal Rational(-9, 2), selected_current(Rational(-9, 2))
    assert_raises(RangeError) { selector_for(9.to_r) }
    assert_raises(RangeError) { selector_for(-10.to_r) }

    [-9, -4, 0, 3, 8].each do |target|
      selector_for(target.to_r).each do |weight|
        assert_operator weight, :>=, 0
        assert_operator weight, :<=, 1
      end
    end

    assert_includes text, "=[-N_t^{\\epsilon,R},P_t^{\\epsilon,R}]"
    assert_includes text, "No nonatomic hypothesis is needed"
    assert_includes text, "Set \\(\\Gamma_0=0\\)"
    assert_includes text, "necessarily \\(P_t^{\\epsilon,R}>0\\)"
    assert_includes text, "necessarily \\(N_t^{\\epsilon,R}>0\\)"
  end

  def test_total_variation_has_the_exact_fractional_order_and_scaling
    dimension = 3.to_r
    exponent = 3.to_r
    kernel_power = 5.to_r
    fractional_order = (kernel_power - dimension) / exponent

    assert_equal Rational(2, 3), fractional_order

    kappa = 5.to_r
    amplitude_scaling = kappa**3
    kernel_scaling = kappa**5
    two_volume_scaling = kappa**-6
    assert_equal kappa**2,
                 amplitude_scaling * kernel_scaling * two_volume_scaling

    assert_includes text, "**cube** of the homogeneous two-thirds-order"
    assert_includes text, "[u]_{\\dot W^{2/3,3}}^3"
    assert_includes text, "=\\kappa^2\\iint|j_{ab}[u]|"
    assert_includes text, "\\|u_\\kappa\\|_2^2=\\kappa^{-1}\\|u\\|_2^2"
    assert_match(/P_t&:=\\lim_\{\\epsilon\\downarrow0,\\ R\\uparrow\\infty\}\s+P_t\^/, text)
  end

  def test_positive_selector_is_built_from_the_target_itself
    target = 6.to_r
    selector = selector_for(target)

    assert_equal [Rational(3, 4), 0, Rational(3, 4), 0], selector
    assert_equal target, currents.zip(selector).sum { |value, weight| value * weight }
    assert_includes text, "receiver-circular"
    assert_includes text, "J_n^{\\rm rr}(t)\\over P_t"
  end

  def test_ratio_derivative_contains_target_and_positive_mass_derivatives
    target = Rational(7, 3)
    target_rate = Rational(-5, 4)
    positive = Rational(11, 2)
    positive_rate = Rational(9, 7)

    ratio_rate =
      (target_rate * positive - target * positive_rate) / positive**2
    quotient_rule = target_rate / positive -
                    target * positive_rate / positive**2

    assert_equal quotient_rule, ratio_rate
    assert_includes text, "(J_n^{\\rm rr})'P_t-J_n^{\\rm rr}P_t'"
    assert_includes text, "\\delta_{\\{j=0\\}}D_tj"
    assert_includes text, "D_t\\Gamma_{n,\\eta}^{\\rm alg}"
    assert_includes text, "\\Theta_\\eta'(j)D_tj"
    assert_includes text, "zero level of \\(j\\) is regular"
    assert_includes text, "composed delta term in `(APR.14)` is not asserted"
    assert_includes text, "pointwise range condition alone do not supply either property"
  end

  def test_selector_and_complement_cancel_the_moving_response
    selected_endpoint = Rational(4, 3)
    complement_endpoint = Rational(-2, 5)
    moving_response = Rational(7, 11)
    selected_acceleration = Rational(-3, 8)
    complement_acceleration = Rational(5, 9)

    selected = selected_endpoint - moving_response - selected_acceleration
    complement = complement_endpoint + moving_response - complement_acceleration
    unmasked = selected_endpoint + complement_endpoint -
               selected_acceleration - complement_acceleration

    assert_equal unmasked, selected + complement
    assert_includes text, "Adding the two lines cancels"
    assert_includes text, "aggregate** remainder"
    assert_includes text, "does not partition that"
  end

  def test_selected_pair_identity_has_the_exact_coefficients
    storage = Rational(5, 7)
    inverse_length_rate = Rational(-3, 4)
    relative_acceleration_rate = Rational(2, 5)
    selector = Rational(3, 8)
    selector_rate = Rational(-4, 9)

    current = -4 * storage * inverse_length_rate
    storage_rate =
      storage * (2 * relative_acceleration_rate - 4 * inverse_length_rate)
    selected_storage_rate = selector_rate * storage + selector * storage_rate

    selected_identity = selected_storage_rate - selector_rate * storage -
                        2 * selector * storage * relative_acceleration_rate

    complement_storage_rate =
      -selector_rate * storage + (1 - selector) * storage_rate
    complement_identity = complement_storage_rate + selector_rate * storage -
                          2 * (1 - selector) * storage * relative_acceleration_rate

    assert_equal selector * current, selected_identity
    assert_equal (1 - selector) * current, complement_identity
    assert_equal current, selected_identity + complement_identity

    assert_includes text, "-2\\iint\\Gamma_n^{\\rm alg}e_{ab}\\sigma_{ab}"
    assert_includes text, "+\\iint e_{ab}D_t\\Gamma_n^{\\rm alg}"
  end

  def test_pressure_completion_and_open_status_are_preserved
    assert_includes text, "**Status:** canonical exact signed-measure range theorem"
    assert_match(/pressure--viscous\s+relative acceleration/, text)
    assert_includes text, "one continuing fixed-viscosity fluid"
    assert_includes text, "six-assignment receiver provenance"
    assert_includes text, "**instantaneous first scalar equality**"
    assert_includes text, "It is not an\nequivalence with the full receiver-compatible premise"
    assert_includes text, "not already a term in\n\\(D_tj\\)"
    assert_includes text, "No estimate in this note proves the range condition"
    assert_includes text, "TIR.37a"
    assert_includes text, "no MPP closure"
    refute_includes text.downcase, "rectangle"
  end

  def test_note_has_no_control_byte_corruption
    bytes = File.binread(NOTE).bytes
    forbidden = [0x08, 0x09, 0x0b, 0x0c, 0x0d]

    forbidden.each { |byte| refute_includes bytes, byte }
  end
end
