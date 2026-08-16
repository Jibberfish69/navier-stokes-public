#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class FiveModeTriangularRelayTest < Minitest::Test
  I = Complex(0, 1)
  TOLERANCE = 1.0e-12

  P_MODE = [1, 0, 0].freeze
  Q_MODE = [0, -1, 0].freeze
  R_MODE = [0, 0, -1].freeze
  K_MODE = [0, -1, -1].freeze
  L_MODE = [1, -1, -1].freeze
  POSITIVE_MODES = [P_MODE, Q_MODE, R_MODE, K_MODE, L_MODE].freeze

  def test_true_leray_galerkin_vector_field_closes_on_the_triangular_ansatz
    samples = [
      [1.0, 0.0, -1.0, 0.0],
      [0.7, -0.4, 0.2, 0.9],
      [-0.3, 1.1, -0.8, -0.5]
    ]

    samples.each do |a, b, c, d|
      modes = ansatz_modes(a, b, c, d)
      expected = {
        P_MODE => [0, -b * d, b * d],
        L_MODE => [0, -a * d, a * d],
        Q_MODE => [-d, 0, 0],
        R_MODE => [-d, 0, 0],
        K_MODE => [2.0 * I * c, 0, 0]
      }

      expected.each do |wave_vector, target|
        assert_vector_close target, galerkin_rhs(wave_vector, modes)
      end

      POSITIVE_MODES.each do |wave_vector|
        amplitude = modes.fetch(wave_vector)
        assert_operator dot(wave_vector, amplitude).abs, :<, TOLERANCE
      end
    end

    initial_rhs = galerkin_rhs(K_MODE, ansatz_modes(1.0, 0.0, -1.0, 0.0))
    assert_vector_close [-2.0 * I, 0, 0], initial_rhs
  end

  def test_exact_solution_completely_serves_the_successor_before_catalyst_return
    sqrt2 = Math.sqrt(2.0)
    transfer_time = Math.acos(1.0 - Math::PI / 2.0) / sqrt2
    return_time = Math::PI / sqrt2
    phase = 1.0 - Math.cos(sqrt2 * transfer_time)
    a = Math.cos(phase)
    b = Math.sin(phase)
    c = -Math.cos(sqrt2 * transfer_time)
    d = -sqrt2 * Math.sin(sqrt2 * transfer_time)

    assert_operator transfer_time, :<, return_time
    assert_in_delta 0.0, a, TOLERANCE
    assert_in_delta 1.0, b, TOLERANCE
    assert_in_delta Math::PI / 2.0 - 1.0, c, TOLERANCE
    assert_in_delta 2.0 * Math::PI - Math::PI**2 / 2.0, d**2, TOLERANCE
    assert_operator d.abs, :>, TOLERANCE

    assert_in_delta 1.0, a**2 + b**2, TOLERANCE
    assert_in_delta 4.0, 2.0 * (c**2 + 1.0) + d**2, TOLERANCE
    assert_in_delta 6.0, total_kinetic_energy(a, b, c, d), TOLERANCE

    initial_critical_height = total_critical_height(1.0, 0.0, -1.0, 0.0)
    transfer_critical_height = total_critical_height(a, b, c, d)
    assert_in_delta 6.0, initial_critical_height, TOLERANCE
    assert_operator transfer_critical_height, :>, initial_critical_height
  end

  private

  def ansatz_modes(a, b, c, d)
    positive = {
      P_MODE => [0, -a, a],
      L_MODE => [0, b, -b],
      Q_MODE => [c, 0, 1],
      R_MODE => [c, 1, 0],
      K_MODE => [I * d, 0, 0]
    }
    positive.each_with_object({}) do |(wave_vector, amplitude), modes|
      modes[wave_vector] = amplitude
      modes[wave_vector.map { |entry| -entry }] = amplitude.map(&:conj)
    end
  end

  def total_kinetic_energy(a, b, c, d)
    2.0 * (a**2 + b**2) + 2.0 * (c**2 + 1.0) + d**2
  end

  def total_critical_height(a, b, c, d)
    2.0 * a**2 +
      2.0 * Math.sqrt(3.0) * b**2 +
      2.0 * (c**2 + 1.0) +
      Math.sqrt(2.0) * d**2
  end

  def galerkin_rhs(wave_vector, modes)
    convolution = modes.each_with_object([0i, 0i, 0i]) do |(left_wave, left_mode), sum|
      right_wave = wave_vector.zip(left_wave).map { |target, left| target - left }
      next unless modes.key?(right_wave)

      contribution = scale(dot(left_mode, right_wave), modes.fetch(right_wave))
      sum.replace(add(sum, contribution))
    end
    scale(-I, leray_project(wave_vector, convolution))
  end

  def assert_vector_close(expected, actual)
    expected.zip(actual).each do |target, value|
      assert_operator (value - target).abs, :<, TOLERANCE
    end
  end

  def add(left, right)
    left.zip(right).map { |x, y| x + y }
  end

  def subtract(left, right)
    left.zip(right).map { |x, y| x - y }
  end

  def scale(number, vector)
    vector.map { |entry| number * entry }
  end

  def dot(left, right)
    left.zip(right).sum { |x, y| x * y }
  end

  def leray_project(wave_vector, vector)
    subtract(
      vector,
      scale(dot(wave_vector, vector) / dot(wave_vector, wave_vector), wave_vector)
    )
  end
end
