#!/usr/bin/env ruby
# frozen_string_literal: true

require "matrix"
require "minitest/autorun"

class ThomasCompleteBinomialCoreResponseResummationTest < Minitest::Test
  TOL = 1.0e-9
  NOTE = File.expand_path(
    "../theorem-construction/thomas-complete-binomial-core-response-resummation-and-uniform-radius-boundary-20260804.md",
    __dir__
  )

  def test_note_keeps_the_original_pressure_core_and_no_gain_boundary
    text = File.read(NOTE)

    assert_includes text, "J_{N+1,\\alpha}"
    assert_includes text, "-\\Delta\\mathcal \\Pi"
    assert_includes text, "continuous actual-minus-heat defect"
    assert_includes text, "Q_\\ell=\\sum_{\\sigma\\ni\\ell}Q_{\\sigma,\\ell}"
    assert_includes text, "c_\\tau'+d_\\tau c_\\tau=a_\\tau"
    assert_includes text, "2(Q(\\mathcal U),A\\mathcal U)_2"
    assert_includes text, "complete Carleman insertion tree"
    assert_includes text, "{1\\over\\nu|k|}"
    assert_includes text, "exactly `(DCT.47)`"
    assert_includes text, "does not prove `(TIR.37a)` and does not close"
  end

  def test_exponential_generating_product_is_the_binomial_parent_sum
    values = Array.new(7) do |n|
      [Rational(n + 1, n + 2), Rational((n + 2)**2, n + 3)]
    end

    (0..6).each do |n|
      direct = [Rational(0), Rational(0)]
      coefficient = [Rational(0), Rational(0)]

      (0..n).each do |a|
        term = bilinear(values[a], values[n - a])
        direct = add(direct, scale(binomial(n, a), term))
        coefficient = add(
          coefficient,
          scale(Rational(1, factorial(a) * factorial(n - a)), term)
        )
      end

      assert_equal direct, scale(factorial(n), coefficient)
    end
  end

  def test_height_response_generating_identity_holds_coefficientwise
    # One spatial frequency: the heat-only energy coefficient is (-d)^n E(0).
    # The actual energy is a polynomial, so all Taylor coefficients are exact.
    energy = [Rational(3, 2), Rational(2), Rational(-1, 3), Rational(5, 7)]
    d = Rational(4, 5)

    (1..7).each do |n|
      actual_derivative = derivative_at_zero(energy, n)
      response = actual_derivative - (-d)**n * energy[0]
      actual_coefficient = actual_derivative / factorial(n)
      heat_coefficient = (-d)**n * energy[0] / factorial(n)

      assert_equal response / factorial(n),
                   actual_coefficient - heat_coefficient
    end
  end

  def test_backward_core_defect_keeps_selector_derivative_with_right_sign
    d = 1.7
    terminal = 1.4
    delta = 0.9
    current = ->(t) { 1.0 + 0.4 * t - 0.2 * t**2 + 0.05 * t**3 }
    current_prime = ->(t) { 0.4 - 0.4 * t + 0.15 * t**2 }
    selector = ->(t) { 0.7 + 0.1 * t + 0.03 * t**2 }
    selector_prime = ->(t) { 0.1 + 0.06 * t }
    acceleration = ->(t) { current_prime.call(t) + d * current.call(t) }
    observed = ->(t) { selector.call(t) * current.call(t) }
    joined = lambda do |t|
      selector.call(t) * acceleration.call(t) +
        selector_prime.call(t) * current.call(t)
    end

    lhs = observed.call(terminal) -
          Math.exp(-d * delta) * observed.call(terminal - delta)
    rhs = integrate(terminal - delta, terminal) do |time|
      Math.exp(-d * (terminal - time)) * joined.call(time)
    end

    assert_in_delta lhs, rhs, 2.0e-11
  end

  def test_all_selector_coefficients_are_the_two_binomial_products
    d = Rational(7, 5)
    current = [Rational(2), Rational(-1, 2), Rational(3, 4), Rational(1, 5)]
    selector = [Rational(3, 5), Rational(2, 3), Rational(-1, 7), Rational(1, 11)]
    current_prime = polynomial_derivative(current)
    acceleration = polynomial_add(current_prime, polynomial_scale(d, current))
    selector_prime = polynomial_derivative(selector)
    joined = polynomial_add(
      polynomial_multiply(selector, acceleration),
      polynomial_multiply(selector_prime, current)
    )

    (0..5).each do |n|
      binomial_reading = (0..n).sum(Rational(0)) do |j|
        binomial(n, j) *
          (derivative_at_zero(selector, j) *
             derivative_at_zero(acceleration, n - j) +
           derivative_at_zero(selector, j + 1) *
             derivative_at_zero(current, n - j))
      end
      assert_equal derivative_at_zero(joined, n), binomial_reading
    end
  end

  def test_ordered_word_expansion_keeps_noncommuting_heat_rates
    insertion = Matrix[[0r, 2r, 0r], [0r, 0r, 3r], [0r, 0r, 0r]]
    heat = Matrix.diagonal(1r, 5r, 11r)
    operator = insertion - heat

    (0..6).each do |depth|
      assert_equal operator**depth,
                   ordered_word_sum(insertion, heat, depth)
    end

    refute_equal insertion * heat, heat * insertion
  end

  def test_distinct_heat_rates_are_retained_in_causal_insertion_chain
    d0 = 1.3
    d1 = 2.7
    coupling = -0.8
    m0 = 0.4
    m1 = -1.2
    time = 0.73

    direct = Math.exp(-d0 * time) * m0 +
             coupling * m1 *
               (Math.exp(-d1 * time) - Math.exp(-d0 * time)) / (d0 - d1)
    duhamel = Math.exp(-d0 * time) * m0 +
              integrate(0.0, time) do |s|
                Math.exp(-d0 * (time - s)) * coupling *
                  Math.exp(-d1 * s) * m1
              end

    assert_in_delta direct, duhamel, 2.0e-11
  end

  def test_finite_reciprocal_sum_tail_and_critical_limit_are_exact
    nu = 0.61
    wave = 7.0
    gamma = nu * wave**2

    [0.03, 0.7, 4.0, 91.0].each do |ratio|
      delta = ratio * gamma
      r = delta / (gamma + delta)
      [1, 2, 7, 31].each do |depth|
        weights = (0...depth).sum do |m|
          delta**m / (gamma + delta)**(m + 1)
        end
        assert_in_delta((1.0 - r**depth) / gamma, weights, TOL)
        assert_in_delta r**depth / gamma, 1.0 / gamma - weights, TOL
      end
      assert_in_delta 1.0 / (nu * wave), wave / gamma, TOL
    end

    (1..80).each do |depth|
      delta = depth * gamma
      r = delta / (gamma + delta)
      assert_operator r**depth + TOL, :>=, Math.exp(-1.0)
    end
  end

  def test_joined_parent_kernel_is_positive_and_resums_to_cauchy_kernel
    gamma = 1.4
    c = 0.8
    points = [0.12, 0.41, 1.7, 8.3]

    [1, 2, 5, 19].each do |depth|
      matrix = Matrix.build(points.length) do |i, j|
        x = points[i]
        y = points[j]
        (0...depth).sum { |m| parent_kernel(gamma, c, m, x, y) }
      end
      matrix.eigensystem.eigenvalues.each do |value|
        assert_operator value.real, :>, -2.0e-10
      end
    end

    x = 0.23
    y = 3.1
    # Two hundred terms are already far below the requested tolerance here;
    # taking thousands as raw powers needlessly creates 0/0 floating underflow.
    partial = (0...200).sum { |m| parent_kernel(gamma, c, m, x, y) }
    assert_in_delta c / (x + y), partial, 2.0e-10

    # A later individual kernel is genuinely indefinite.
    x1 = 0.4
    x2 = 0.1
    m = 2
    determinant = parent_kernel(gamma, c, m, x1, x1) *
                  parent_kernel(gamma, c, m, x2, x2) -
                  parent_kernel(gamma, c, m, x1, x2)**2
    assert_operator determinant, :<, 0.0
  end

  def test_resummed_storage_derivative_returns_source_square_and_insertion
    c = 0.73
    rates = [0.4, 1.3, 5.2]
    parents = [1.1, -0.7, 0.35]
    insertions = [-0.2, 0.9, -0.4]
    derivatives = parents.zip(rates, insertions).map do |theta, rate, insertion|
      -rate * theta + insertion
    end

    direct = 0.0
    rates.each_index do |i|
      rates.each_index do |j|
        direct += c *
                  (derivatives[i] * parents[j] + parents[i] * derivatives[j]) /
                  (rates[i] + rates[j])
      end
    end

    source_square = -c * parents.sum**2
    insertion_port = 0.0
    rates.each_index do |i|
      rates.each_index do |j|
        insertion_port += 2.0 * c * insertions[i] * parents[j] /
                          (rates[i] + rates[j])
      end
    end

    assert_in_delta direct, source_square + insertion_port, TOL
  end

  def test_finite_alternating_normal_form_and_analytic_radius_obstruction
    d = Rational(9, 4)
    g = [Rational(2), Rational(-3, 5), Rational(7, 11), Rational(1, 9), Rational(-2, 13)]
    f = polynomial_add(polynomial_derivative(g), polynomial_scale(d, g))
    time = Rational(2, 7)

    (1..8).each do |depth|
      sum = (0...depth).sum(Rational(0)) do |j|
        (-1)**j * polynomial_derivative_value(f, j, time) / d**(j + 1)
      end
      remainder = (-1)**depth *
                  polynomial_derivative_value(g, depth, time) / d**depth
      assert_equal polynomial_value(g, time), sum + remainder
    end

    radius = 1.7
    heat_rate = 12.0
    terms = (0..80).map do |n|
      factorial(n).to_f / (heat_rate**(n + 1) * radius**n)
    end
    assert_operator terms.last, :>, terms[-2]
    assert_operator terms.last, :>, 1.0

    t = 0.37
    homogeneous = Math.exp(-heat_rate * t)
    (1..12).each do |depth|
      derivative = (-heat_rate)**depth * homogeneous
      remainder = (-1)**depth * derivative / heat_rate**depth
      assert_in_delta homogeneous, remainder, TOL
    end
  end

  private

  def factorial(n)
    (1..n).reduce(1, :*)
  end

  def binomial(n, k)
    factorial(n) / (factorial(k) * factorial(n - k))
  end

  def bilinear(left, right)
    [left[0] * right[0] + 2 * left[1] * right[1],
     left[0] * right[1] - left[1] * right[0]]
  end

  def add(left, right)
    left.zip(right).map { |x, y| x + y }
  end

  def scale(number, vector)
    vector.map { |entry| number * entry }
  end

  def derivative_at_zero(coefficients, order)
    return 0 if order >= coefficients.length

    factorial(order) * coefficients[order]
  end

  def polynomial_derivative(coefficients)
    return [0] if coefficients.length <= 1

    coefficients.each_with_index.drop(1).map { |coefficient, power| coefficient * power }
  end

  def polynomial_add(left, right)
    length = [left.length, right.length].max
    Array.new(length) do |index|
      left.fetch(index, 0) + right.fetch(index, 0)
    end
  end

  def polynomial_scale(number, polynomial)
    polynomial.map { |coefficient| number * coefficient }
  end

  def polynomial_multiply(left, right)
    output = Array.new(left.length + right.length - 1, 0)
    left.each_with_index do |x, i|
      right.each_with_index do |y, j|
        output[i + j] += x * y
      end
    end
    output
  end

  def polynomial_derivative_value(polynomial, order, time)
    derivative = polynomial
    order.times { derivative = polynomial_derivative(derivative) }
    polynomial_value(derivative, time)
  end

  def polynomial_value(polynomial, time)
    polynomial.reverse.reduce(0) { |value, coefficient| value * time + coefficient }
  end

  def ordered_word_sum(insertion, heat, depth)
    return Matrix.identity(insertion.row_count) if depth.zero?

    words = [[Matrix.identity(insertion.row_count), 1]]
    depth.times do
      words = words.flat_map do |operator, sign|
        [[insertion * operator, sign], [heat * operator, -sign]]
      end
    end
    words.reduce(Matrix.zero(insertion.row_count)) do |sum, (operator, sign)|
      sum + sign * operator
    end
  end

  def parent_weight(gamma, order, x)
    x**order / (gamma + x)**(order + 1)
  end

  def parent_kernel(gamma, c, order, x, y)
    gamma * c / 2.0 *
      (parent_weight(gamma, order, x) + parent_weight(gamma, order, y)) /
      (x + y)
  end

  def integrate(left, right, subdivisions = 200_000)
    subdivisions += 1 if subdivisions.odd?
    width = (right - left) / subdivisions
    total = yield(left) + yield(right)
    (1...subdivisions).each do |index|
      coefficient = index.odd? ? 4.0 : 2.0
      total += coefficient * yield(left + index * width)
    end
    total * width / 3.0
  end
end
