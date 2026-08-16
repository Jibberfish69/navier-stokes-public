#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasBptDct47CovarianceTangentBridgeTest < Minitest::Test
  NOTE = File.expand_path(
    "../theorem-construction/thomas-bpt-dct47-heat-age-covariance-tangent-bridge-20260804.md",
    __dir__
  )

  def test_three_leg_heat_age_is_the_dct_denominator
    nu = 2.0
    currents = [3.0, -7.0, 5.0]
    three_leg_rates = [5.0, 11.0, 17.0]
    expected = currents.zip(three_leg_rates).sum do |current, rate|
      current / (nu * rate)
    end

    steps = 8_000
    terminal_age = 4.0
    width = terminal_age / steps
    readings = (0..steps).map do |index|
      age = index * width
      currents.zip(three_leg_rates).sum do |current, rate|
        current * Math.exp(-nu * rate * age)
      end
    end
    numerical = width / 3.0 * (
      readings.first + readings.last +
      4.0 * (1...steps).step(2).sum { |index| readings[index] } +
      2.0 * (2...steps).step(2).sum { |index| readings[index] }
    )

    assert_in_delta expected, numerical, 1.0e-10
  end

  def test_finite_chord_covariance_variation_keeps_all_three_insertions
    d_w = [1.3, -0.7, 2.1]
    d_h = [-0.4, 1.7, 0.2]
    n = normalize([2.0, -1.0, 3.0])
    epsilon = 1.0e-6

    functional = lambda do |increment|
      dot(increment, increment) * dot(increment, n)
    end
    finite_difference = (
      functional.call(add_vectors(d_w, scale_vector(d_h, epsilon))) -
      functional.call(add_vectors(d_w, scale_vector(d_h, -epsilon)))
    ) / (2.0 * epsilon)
    exact = 2.0 * dot(d_w, d_h) * dot(d_w, n) +
            dot(d_w, d_w) * dot(d_h, n)

    assert_in_delta exact, finite_difference, 1.0e-8
  end

  def test_infinitesimal_pair_variation_is_the_matrix_derivative
    m = [
      [2.0, -1.0, 3.0],
      [4.0, -5.0, 2.0],
      [-2.0, 1.0, 3.0]
    ]
    n = [
      [1.0, 2.0, -1.0],
      [-3.0, 0.5, 4.0],
      [2.0, -2.0, -1.5]
    ]
    epsilon = 1.0e-6

    finite_difference = (
      first_jet_covariance(add_matrices(m, scale_matrix(n, epsilon))) -
      first_jet_covariance(add_matrices(m, scale_matrix(n, -epsilon)))
    ) / (2.0 * epsilon)
    s = symmetric_part(m)
    n_s = symmetric_part(n)
    derivative = trace(add_matrices(
      multiply(add_matrices(multiply(transpose(n), m),
                            multiply(transpose(m), n)), s),
      multiply(multiply(transpose(m), m), n_s)
    ))

    assert_in_delta derivative, finite_difference, 2.0e-7
  end

  def test_tangent_plus_moving_gate_is_exact_normalized_storage_derivative
    z = 25.to_r
    z_prime = -6.to_r
    storage = Rational(11, 7)
    tangent = Rational(-5, 9)
    crossing = Rational(13, 17)
    delta = z_prime / (2 * z)
    storage_prime = 3 * delta * storage + tangent + crossing

    normalized_derivative = storage_prime / z.to_f**1.5 -
                            1.5 * storage.to_f * z_prime.to_f / z.to_f**2.5
    expected = (tangent + crossing).to_f / z.to_f**1.5

    assert_in_delta expected, normalized_derivative, 1.0e-14
  end

  def test_heat_eigenfield_has_zero_enstrophy_tangent_response
    nu = Rational(3, 5)
    eigenvalue = 7.to_r
    u = [2.to_r, -1.to_r, 4.to_r]
    au = scale_vector(u, eigenvalue)
    u_t = scale_vector(au, -nu)
    z = dot(u, au)
    z_prime = 2 * dot(u_t, au)
    delta = z_prime / (2 * z)
    tangent = add_vectors(u_t, scale_vector(u, -delta))

    tangent.each { |entry| assert_equal 0, entry }
    assert_equal(-nu * eigenvalue, delta)
  end

  def test_note_keeps_the_exact_cross_bridge_and_unpaid_term
    note = File.read(NOTE)

    assert_includes note, %q{\mathcal B(u):=\int_0^\infty\mathcal P(w_s)\,ds}
    assert_includes note, %q{\sum_\tau{c_\tau(u)\over\nu S_\tau}}
    assert_includes note, %q{\mathscr T(w,h)(x,r)}
    assert_includes note, %q{D\mathcal T_0(M)[N]}
    assert_includes note, %q{D_u\mathcal B_Z^{\rm out}(u)[v]}
    assert_includes note, %q{G_{\rm core}'
 ={t_{\rm core}+X_{\rm core}\over Z^{3/2}}}
    assert_includes note, "The telescope is an endpoint alias"
    assert_includes note, "does not become datum-finite"
    assert_includes note, "`(TIR.37a)` is not proved"
    assert_includes note, "the MPP is not closed"
  end

  private

  def first_jet_covariance(matrix)
    s = symmetric_part(matrix)
    trace(multiply(multiply(transpose(matrix), matrix), s))
  end

  def symmetric_part(matrix)
    scale_matrix(add_matrices(matrix, transpose(matrix)), 0.5)
  end

  def trace(matrix)
    3.times.sum { |index| matrix[index][index] }
  end

  def transpose(matrix)
    3.times.map { |row| 3.times.map { |column| matrix[column][row] } }
  end

  def multiply(left, right)
    3.times.map do |row|
      3.times.map do |column|
        3.times.sum { |index| left[row][index] * right[index][column] }
      end
    end
  end

  def add_matrices(left, right)
    3.times.map do |row|
      3.times.map { |column| left[row][column] + right[row][column] }
    end
  end

  def scale_matrix(matrix, factor)
    matrix.map { |row| row.map { |entry| factor * entry } }
  end

  def add_vectors(left, right)
    left.zip(right).map { |a, b| a + b }
  end

  def scale_vector(vector, factor)
    vector.map { |entry| factor * entry }
  end

  def dot(left, right)
    left.zip(right).sum { |a, b| a * b }
  end

  def normalize(vector)
    norm = Math.sqrt(dot(vector, vector))
    vector.map { |entry| entry / norm }
  end
end
