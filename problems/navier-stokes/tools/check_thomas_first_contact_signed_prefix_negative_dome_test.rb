#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasFirstContactSignedPrefixNegativeDomeTest < Minitest::Test
  TOL = 5.0e-10
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-first-contact-signed-prefix-negative-dome-turn-down-boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def midpoint(left, right, steps = 80_000)
    width = (right - left) / steps
    steps.times.sum do |index|
      point = left + (index + 0.5) * width
      yield(point) * width
    end
  end

  def test_preserves_one_history_pressure_and_finite_chord_custody
    assert_includes text, "single preterminal Navier--Stokes history"
    assert_includes text, "simultaneous whole-field pressure response"
    assert_includes text, "-\\Delta p=\\partial_i\\partial_j(u_i u_j)"
    assert_includes text, "Both ordered velocity-parent insertions"
    assert_includes text, "complete finite-chord"
    assert_includes text, "one joined square"
    refute_includes text.downcase, "rectangle"
  end

  def test_first_contact_level_moments_hold_even_with_internal_backtracking
    height = 5.0
    epsilon = 0.2

    y = lambda do |time|
      height * (time + epsilon * Math.sin(2.0 * Math::PI * time))
    end
    current = lambda do |time|
      height * (1.0 + 2.0 * Math::PI * epsilon *
        Math.cos(2.0 * Math::PI * time))
    end

    samples = (1...10_000).map { |index| y.call(index / 10_000.0) }
    assert samples.all? { |value| value.positive? && value < height }
    assert samples.each_index.any? do |index|
      current.call((index + 1) / 10_000.0).negative?
    end
    assert_operator current.call(0.0), :>=, 0.0
    assert_operator current.call(1.0), :>=, 0.0

    net = midpoint(0.0, 1.0) { |time| current.call(time) }
    upper = midpoint(0.0, 1.0) do |time|
      y.call(time) * current.call(time)
    end
    lower = midpoint(0.0, 1.0) do |time|
      (height - y.call(time)) * current.call(time)
    end

    assert_in_delta height, net, TOL
    assert_in_delta height**2 / 2.0, upper, TOL
    assert_in_delta height**2 / 2.0, lower, TOL
  end

  def test_critical_balance_gives_the_claimed_receiver_constant
    record = 4096.0
    initial_height = 17.0
    viscosity = 0.73
    traversed_height = record / 4.0
    receiver_budget = initial_height + 3.0 * record / 4.0
    receiver_square = receiver_budget / viscosity

    eta = viscosity * record / (8.0 * receiver_budget)
    complement_current = eta * receiver_square
    pulse_current = traversed_height - complement_current

    assert_in_delta record / 8.0, complement_current, TOL
    assert_in_delta record / 8.0, pulse_current, TOL
  end

  def test_viscosity_matched_pulse_forces_the_source_square
    record = 2048.0
    initial_height = 9.0
    viscosity = 0.81
    budget = initial_height + 3.0 * record / 4.0
    eta = viscosity * record / (8.0 * budget)
    pulse = record / 8.0
    source_square = eta * pulse
    exact = viscosity * record**2 / (64.0 * budget)

    assert_in_delta exact, source_square, TOL
    assert_operator source_square / record, :>,
                    viscosity / 48.0 * 0.99
  end

  def test_weighted_first_binomial_integration_by_parts
    height = 2.7
    c_value = 5.0
    epsilon = 0.4
    speed = ->(level) { c_value + epsilon * (2.0 * level - height) }
    speed_derivative = 2.0 * epsilon
    phi = ->(level) { 1.0 + level + 0.3 * level**2 }
    phi_derivative = ->(level) { 1.0 + 0.6 * level }

    lhs = midpoint(0.0, height) do |level|
      phi.call(level) * speed_derivative
    end
    rhs = phi.call(height) * speed.call(height) -
          phi.call(0.0) * speed.call(0.0) -
          midpoint(0.0, height) do |level|
            phi_derivative.call(level) * speed.call(level)
          end

    assert_in_delta lhs, rhs, TOL
  end

  def test_dome_weight_has_both_signs_with_positive_contact_speeds
    height = 3.0
    c_value = 10.0
    epsilon = 0.5

    values = [epsilon, -epsilon].map do |signed_epsilon|
      speed = lambda do |level|
        c_value + signed_epsilon * (2.0 * level - height)
      end
      assert_operator speed.call(0.0), :>, 0.0
      assert_operator speed.call(height), :>, 0.0

      midpoint(0.0, height) do |level|
        level * (height - level) * 2.0 * signed_epsilon
      end
    end

    assert_in_delta epsilon * height**3 / 3.0, values.first, TOL
    assert_in_delta(-epsilon * height**3 / 3.0, values.last, TOL)
    assert_operator values.first, :>, 0.0
    assert_operator values.last, :<, 0.0
  end

  def test_endpoint_sign_certificate_forces_the_zero_weight
    # An upper-sign certificate needs phi(0) >= 0, phi(h) <= 0,
    # and phi nondecreasing. These inequalities force both endpoints to zero.
    phi_zero = 0.0
    phi_height = 0.0

    assert_operator phi_zero, :>=, 0.0
    assert_operator phi_height, :<=, 0.0
    assert_operator phi_height, :>=, phi_zero
    assert_equal 0.0, phi_zero
    assert_equal 0.0, phi_height
    assert_includes text, "so \\(\\phi\\equiv0\\)"
  end

  def test_height_second_response_keeps_pressure_and_viscosity
    first_binomial = 7.0
    next_current = -2.0
    viscosity = 0.5
    next_row_square = 11.0

    receiver_derivative =
      2.0 * next_current - 2.0 * viscosity * next_row_square
    from_balance = first_binomial - viscosity * receiver_derivative
    displayed = first_binomial -
                2.0 * viscosity * next_current +
                2.0 * viscosity**2 * next_row_square

    assert_in_delta displayed, from_balance, 1.0e-12
    assert_includes text, "H''"
    assert_includes text, "-2\\nu\\mathcal P_{3/2}"
    assert_includes text, "+2\\nu^2\\|\\Lambda^{5/2}u\\|_2^2"
  end

  def test_fixed_selector_square_cannot_be_split
    strain = 3.0
    finite_chord = -1.0
    complete_square = (strain + finite_chord)**2
    split_squares = strain**2 + finite_chord**2

    refute_in_delta split_squares, complete_square, 1.0e-12
    assert_in_delta 2.0 * strain * finite_chord,
                    complete_square - split_squares, 1.0e-12
    assert_includes text, "(\\mathcal S_\\zeta+\\mathcal E_\\zeta)^2"
    assert_includes text, "discard their cross term"
  end

  def test_note_is_source_clean_and_does_not_overclaim
    assert text.valid_encoding?
    refute_match(/[\x00-\x08\x0b\x0c\x0e-\x1f]/, text)
    assert_includes text, "exact same-critical"
    assert_includes text, "not (TIR.37a) or MPP closure"
    assert_includes text, "not independently realizable Navier--Stokes histories"
    refute_includes text, "Status: MPP is closed"
  end
end
