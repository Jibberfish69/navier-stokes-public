#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasRhlBinomialGeneratingRadiusTest < Minitest::Test
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-rhl-binomial-generating-radius-and-resummed-characteristic-no-gain-boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def integrate(left, right, steps = 80_000)
    width = (right - left) / steps
    steps.times.sum do |index|
      point = left + (index + 0.5) * width
      yield(point) * width
    end
  end

  def gamma_kernel(row, radius, age, viscosity)
    alpha = row + 0.75
    optimizer = Math.sqrt(alpha / (viscosity * age))
    frequency = [radius, optimizer].max
    age**row / Math.gamma(row + 1) *
      frequency**(2 * row + 1.5) *
      Math.exp(-viscosity * age * frequency**2)
  end

  def test_note_preserves_the_one_history_pressure_explicit_method
    assert_includes text, "one smooth fixed-viscosity Navier--Stokes"
    assert_includes text, "J_{N+1,\\alpha}"
    assert_includes text, "-\\Delta\\Pi_{N,\\alpha}"
    assert_includes text, "Q^{[j]}=D^jQ"
    assert_includes text, "=e^{\\nu zA}\\mathcal Q_a(z)"
    assert_includes text, "does not replace Thomas's coordinatewise intersection"
    assert_includes text, "temporal/insertion depth"
    refute_includes text.downcase, "rectangle"
  end

  def test_heat_characteristic_generating_identity_on_one_channel
    rate = 0.73
    # q(s)=1+2s-3s^2.  The coefficient of z^j in
    # exp(rate*z)q(z) equals D^j q(0)/j! for D=partial+rate.
    q_coefficients = [1.0, 2.0, -3.0]
    exponential = Array.new(9) { |j| rate**j / Math.gamma(j + 1) }
    product = Array.new(9, 0.0)
    q_coefficients.each_index do |left|
      exponential.each_index do |right|
        next if left + right >= product.length

        product[left + right] += q_coefficients[left] * exponential[right]
      end
    end

    rows = [
      1.0,
      2.0 + rate,
      -6.0 + 2.0 * rate * 2.0 + rate**2,
      3.0 * rate * (-6.0) + 3.0 * rate**2 * 2.0 + rate**3
    ]

    rows.each_index do |row|
      assert_in_delta rows[row] / Math.gamma(row + 1), product[row], 1.0e-12
    end
  end

  def test_common_radius_makes_the_finite_remainder_decay
    viscosity = 0.8
    eigenvalue = 1.7
    heat_rate = viscosity * eigenvalue
    growth = 0.6
    lag = 0.5
    radius = 1.0 / growth
    ratio = lag / radius
    amplitude = Math.exp([growth - heat_rate, 0.0].max * lag)
    constant = 2.0

    assert_operator ratio, :<, 1.0

    previous = Float::INFINITY
    [2, 4, 8, 16, 32].each do |depth|
      bound = constant * amplitude * lag**0.25 /
              viscosity**0.75 / (depth + 0.25) * ratio**depth
      assert_operator bound, :<, previous
      previous = bound
    end
    assert_operator previous, :<, 1.0e-12
  end

  def test_exact_kernel_formula_and_depth_bound
    viscosity = 0.61
    age = 0.043
    radius = 3.2

    (0..40).each do |row|
      alpha = row + 0.75
      y0 = viscosity * age * radius**2
      y = [y0, alpha].max
      exact = viscosity**(-row - 0.75) * age**(-0.75) /
              Math.gamma(row + 1) * y**alpha * Math.exp(-y)
      direct = gamma_kernel(row, radius, age, viscosity)
      assert_in_delta exact, direct, [1.0, exact.abs].max * 2.0e-12

      endpoint_factor = age / (row + 1) * direct
      bound = age**0.25 / viscosity**0.75 *
              viscosity**(-row) / (row + 1)**0.75
      assert_operator endpoint_factor, :<=, bound * (1.0 + 2.0e-12)
    end
  end

  def test_deep_rows_lose_the_high_pass_exponential_gain
    viscosity = 0.7
    age = 0.11
    radius = 4.0
    y0 = viscosity * age * radius**2

    ((y0 - 0.75).ceil..18).each do |row|
      alpha = row + 0.75
      expected = viscosity**(-row - 0.75) * age**(-0.75) /
                 Math.gamma(row + 1) * alpha**alpha * Math.exp(-alpha)
      assert_in_delta expected,
                      gamma_kernel(row, radius, age, viscosity),
                      [1.0, expected.abs].max * 2.0e-12
    end
  end

  def test_shallow_rows_retain_the_exact_high_pass_suppression
    viscosity = 0.9
    age = 0.2
    radius = 8.0
    y0 = viscosity * age * radius**2
    row = 2
    alpha = row + 0.75
    assert_operator y0, :>, alpha

    expected = viscosity**(-row - 0.75) * age**(-0.75) /
               Math.gamma(row + 1) * y0**alpha * Math.exp(-y0)
    assert_in_delta expected,
                    gamma_kernel(row, radius, age, viscosity),
                    [1.0, expected.abs].max * 2.0e-12
  end

  def test_rhl_heat_age_threshold_places_every_deeper_row_at_the_optimizer
    viscosity = 0.7
    radius = 9.0
    x_value = 13.0
    tau = (1.0 + Math.log(1.0 + x_value)) /
          (2.0 * viscosity * radius**2)
    y_n = viscosity * tau * radius**2
    threshold = (y_n - 0.75).ceil

    [0.25 * tau, 0.7 * tau, tau].each do |age|
      (threshold..(threshold + 8)).each do |row|
        alpha = row + 0.75
        assert_operator alpha + 1.0e-12, :>=,
                        viscosity * age * radius**2
      end
    end
  end

  def test_smooth_characteristic_can_miss_its_anchored_radius
    heat_rate = 0.9
    radius = 0.2
    lag = 0.55
    assert_operator radius, :<, lag

    actual = integrate(0.0, lag) do |time|
      Math.exp(-heat_rate * (lag - time)) *
        Math.exp(-heat_rate * time) /
        (1.0 + (time / radius)**2)
    end
    closed_form = Math.exp(-heat_rate * lag) *
                  radius * Math.atan(lag / radius)
    assert_in_delta closed_form, actual, 2.0e-11

    magnitudes = (0..8).map do |index|
      Math.exp(-heat_rate * lag) * lag / (2 * index + 1) *
        (lag / radius)**(2 * index)
    end
    magnitudes.each_cons(2) { |left, right| assert_operator right, :>, left }
    assert_operator magnitudes.last, :>, 1.0e5
  end

  def test_infinite_radius_has_no_amplitude_control
    heat_rate = 1.2
    lag = 0.3
    small = 2.0 * lag * Math.exp(-heat_rate * lag)
    large = 20_000.0 * lag * Math.exp(-heat_rate * lag)

    assert_operator large / small, :>, 9_999.0
  end

  def test_status_is_conditional_resummation_and_no_gain_not_closure
    assert_includes text, "proved exact conditional resummation"
    assert_includes text, "checked identity-level insufficiency"
    assert_includes text, "not a strict reduction"
    assert_match(/not a consequence of series\s+convergence/, text)
    assert_includes text, "not a strict reduction, `(TIR.37a)`, or MPP closure"
  end
end
