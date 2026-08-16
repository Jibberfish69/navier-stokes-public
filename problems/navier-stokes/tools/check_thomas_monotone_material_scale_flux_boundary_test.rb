#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasMonotoneMaterialScaleFluxBoundaryTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  NOTE = File.join(
    ROOT,
    "theorem-construction",
    "thomas-monotone-material-scale-flux-endpoint-and-wobble-boundary-20260804.md"
  )

  def test_natural_selector_crossing_term_is_positive_on_entry_and_exit
    psi_prime = Rational(7, 13)

    [-5.to_r, Rational(3, 2)].each do |alpha|
      theta_dot = -psi_prime * alpha
      signed_crossing = -theta_dot * alpha

      assert_equal psi_prime * alpha**2, signed_crossing
      assert_operator signed_crossing, :>, 0
    end
  end

  def test_moving_frame_recombines_to_contraction_minus_wobble
    m = [
      [Rational(-3, 2), Rational(2, 3), Rational(-4, 5)],
      [Rational(5, 7), Rational(1, 4), Rational(3, 8)],
      [Rational(-2, 9), Rational(7, 6), Rational(5, 4)]
    ]
    n = [1.to_r, 0.to_r, 0.to_r]
    mn = matrix_vector(m, n)
    alpha = dot(n, mn)
    beta = subtract_vectors(mn, scale_vector(n, alpha))
    p_dot = add_matrices(outer(beta, n), outer(n, beta))
    p = outer(n, n)

    left = frobenius(p, multiply(m, m)) - frobenius(p_dot, m)
    right = alpha**2 - dot(beta, beta)

    assert_equal right, left
  end

  def test_continuous_coasting_flux_is_exactly_the_endpoint_stock
    tau0 = 5.to_r
    tau = 2.to_r
    action = tau0 / 2 * (1 / tau**2 - 1 / tau0**2)
    endpoint = tau0 * (1 / tau**2 - 1 / tau0**2)

    assert_equal 2 * action, endpoint
    assert_operator endpoint, :>, 0
  end

  def test_incompressibility_does_not_cancel_scale_weighted_rates
    tau0 = 7.to_r
    tau = Rational(1, 5)
    k = [tau0 / tau, tau0 / tau, (tau / tau0)**2]
    alpha = [-1 / tau, -1 / tau, 2 / tau]

    assert_equal 1, k.reduce(:*)
    assert_equal 0, alpha.sum

    weighted = k.zip(alpha).sum { |ki, ai| ki * ai }
    expected = -2 * tau0 / tau**2 + 2 * tau / tau0**2

    assert_equal expected, weighted
    assert_operator weighted, :<, 0
    assert_operator weighted.abs, :>, 100
  end

  def test_affine_wobble_family_has_all_three_vpi_signs_during_contraction
    a = 3.to_r
    signs = [1.to_r, 0.to_r, -1.to_r]

    [1.to_r, 3.to_r, 5.to_r].zip(signs).each do |omega, expected_sign|
      m = [
        [-a, -omega, 0],
        [omega, a, 0],
        [0, 0, 0]
      ]
      m2 = multiply(m, m)
      expected_m2 = diagonal(a**2 - omega**2, a**2 - omega**2, 0)
      n = [1.to_r, 0.to_r, 0.to_r]
      mn = matrix_vector(m, n)
      alpha = dot(n, mn)
      beta = subtract_vectors(mn, scale_vector(n, alpha))
      c = dot(n, matrix_vector(m2, n))

      assert_equal 0, trace(m)
      assert_equal expected_m2, m2
      assert_equal(-a, alpha)
      assert_equal omega**2, dot(beta, beta)
      assert_equal a**2 - omega**2, c
      assert_equal 0, -alpha**2 + dot(beta, beta) + c
      assert_equal expected_sign, c <=> 0

      # The natural material inverse length is increasing at this instant.
      k = 11.to_r
      assert_operator(-alpha * k, :>, 0)
    end
  end

  def test_one_periodic_shear_history_has_both_vpi_signs_during_contraction
    nu = 7.to_r
    samples = [
      # y = 0: cos(y)=1, cos(2y)=1
      [1.to_r, 1.to_r, Rational(-1, 4), -nu / 2],
      # y = pi/3: cos(y)=1/2, cos(2y)=-1/2
      [Rational(1, 2), Rational(-1, 2), Rational(-3, 8), 3 * nu / 4]
    ]

    samples.each do |cos_y, cos_2y, expected_alpha, expected_c|
      f_prime = cos_y - cos_2y / 2
      f_triple_prime = -cos_y + 2 * cos_2y
      alpha = -f_prime / 2
      c = -nu * f_triple_prime / 2
      beta_square = alpha**2

      assert_equal expected_alpha, alpha
      assert_equal expected_c, c
      assert_operator alpha, :<, 0
      assert_operator(-alpha, :>, 0)
      assert_equal c, -alpha**2 + beta_square + c
    end

    assert_operator samples.first.last, :<, 0
    assert_operator samples.last.last, :>, 0
  end

  def test_matched_endpoint_and_heat_time_action_are_the_same_critical_moment
    q = 2.to_r
    nu = 5.to_r
    k = 16.to_r
    mass = Rational(3, k**3)
    alpha = -nu * k**2
    duration = 1 / (nu * k**2)
    delta_k = (1 - 1 / q) * k

    endpoint = mass * k * (-alpha)
    weighted_action = delta_k * mass * duration * alpha**2

    assert_equal nu * k**3 * mass, endpoint
    assert_equal (1 - 1 / q) * endpoint, weighted_action
  end

  def test_note_preserves_exact_scope_and_missing_bridge
    note = File.read(NOTE)

    assert_includes note, %q{D_t\log K=-\alpha}
    assert_includes note, %q{-(D_t\Theta_j)\alpha}
    assert_includes note, %q{\mathfrak J_{J,N}\ge0}
    assert_includes note, %q{\alpha^2-|\beta|^2}
    assert_includes note, %q{-[K\alpha]_0^T}
    assert_includes note, %q{\sum_{i=1}^3K_i\alpha_i}
    assert_includes note, %q{c=a^2-\omega^2}
    assert_includes note, %q{f(y):=\sin y-\frac14\sin(2y)}
    assert_includes note, "same admissible fluid at the same time"
    assert_includes note, "not an energy-level payment"
    assert_includes note, "does not prove (TIR.37a) and does not\nclose the MPP"
    assert_includes note,
                    "The record-to-material selector bridge and a datum-finite bound"
  end

  private

  def diagonal(a, b, c)
    [[a, 0, 0], [0, b, 0], [0, 0, c]]
  end

  def trace(matrix)
    3.times.sum { |i| matrix[i][i] }
  end

  def dot(left, right)
    left.zip(right).sum { |a, b| a * b }
  end

  def scale_vector(vector, scalar)
    vector.map { |entry| scalar * entry }
  end

  def subtract_vectors(left, right)
    left.zip(right).map { |a, b| a - b }
  end

  def outer(left, right)
    left.map { |a| right.map { |b| a * b } }
  end

  def add_matrices(left, right)
    3.times.map { |i| 3.times.map { |j| left[i][j] + right[i][j] } }
  end

  def frobenius(left, right)
    3.times.sum { |i| 3.times.sum { |j| left[i][j] * right[i][j] } }
  end

  def matrix_vector(matrix, vector)
    matrix.map { |row| dot(row, vector) }
  end

  def multiply(left, right)
    3.times.map do |i|
      3.times.map do |j|
        3.times.sum { |k| left[i][k] * right[k][j] }
      end
    end
  end
end
