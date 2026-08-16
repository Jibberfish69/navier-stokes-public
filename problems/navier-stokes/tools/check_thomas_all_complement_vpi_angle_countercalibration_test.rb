#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"
require "complex"

class ThomasAllComplementVpiAngleCountercalibrationTest < Minitest::Test
  TOL = 1.0e-10
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-all-complement-noncoercivity-and-physical-vpi-pair-angle-" \
    "boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_positive_record_sum_does_not_exclude_all_complement
    record = 9.to_r
    blocks = Array.new(8, 0.to_r)
    blocks[-1] = record

    assert_equal record, blocks.sum
    assert_equal record, blocks[-1]
    assert_equal 0, blocks[0...-1].sum
    assert_operator blocks.max, :>=, record / 8
    assert_includes text, "A_{ccc}=A>0"
    assert_includes text, "\\chi=0"
    assert_includes text, "J_{ccc}=J"
    assert_includes text, "must add an overlap statement"
    assert_includes text, "six-assignment sum is already retained inside every"
    assert_includes text, "D_tW_\\ell^s+D_tW_\\ell^c=0"
  end

  def test_pressure_complete_noncollinear_triad_is_all_complement_and_has_both_signs
    k = [1, 1, 1]
    p = [0, -1, 0]
    q = [-1, 0, -1]
    a = complex_vector([0, -1, 1])
    b = complex_vector([0, 0, -1])
    d = complex_vector([0, 1, 0])

    assert_equal [0, 0, 0], add(add(k, p), q)
    refute_equal [0, 0, 0], cross(k, p)
    assert_equal Complex(0, 0), dot(k, a)
    assert_equal Complex(0, 0), dot(p, b)
    assert_equal Complex(0, 0), dot(q, d)
    [a, b, d].each { |polarization| assert_equal Complex(0, 0), polarization[0] }

    positive_modes = {
      k => a,
      p => scalar_multiply(Complex(0, 1), b),
      q => d
    }
    negative_modes = {
      k => a,
      p => scalar_multiply(Complex(0, -1), b),
      q => d
    }

    pressure_complete = primitive_current(real_modes(positive_modes), leray: true)
    pressure_suppressed = primitive_current(real_modes(positive_modes), leray: false)
    reversed = primitive_current(real_modes(negative_modes), leray: true)
    expected = 2.0 * (Math.sqrt(2.0) - 1.0)

    assert_in_delta expected, pressure_complete, TOL
    assert_in_delta expected, pressure_suppressed, TOL
    assert_in_delta(-expected, reversed, TOL)
    assert_includes text, "2(\\sqrt2-1)>0"
    assert_includes text, "Replacing \\(iB\\) by \\(-iB\\) reverses the sign"
    assert_includes text, "the slaved\npressure completion"
    assert_includes text, "every component block\ncontaining an \\(s\\) factor vanishes"
  end

  def test_one_finite_fourier_datum_has_positive_primitive_current_and_positive_complement_pair
    n = 6
    delta = 1.0
    m = 20.0
    assert_operator m, :>, 2.0 * delta * n

    k = [1, 1, 1]
    p = [0, -1, 0]
    q = [-1, 0, -1]
    a = complex_vector([0, -1, 1])
    b = complex_vector([0, 0, -1])
    d = complex_vector([0, 1, 0])

    high_positive = {
      scale_wave(n, k) => scalar_multiply(delta, a),
      scale_wave(n, p) => scalar_multiply(Complex(0, delta), b),
      scale_wave(n, q) => scalar_multiply(delta, d)
    }

    low_one_wave = [1, 1, 0]
    low_two_wave = [1, 0, 1]
    low_one_amplitude = complex_vector([-1, 1, 0])
    low_two_amplitude = complex_vector([-1, 0, 1])
    low_positive = {
      low_one_wave => scalar_multiply(Complex(0, -m / 2.0), low_one_amplitude),
      low_two_wave => scalar_multiply(Complex(0, -m / 2.0), low_two_amplitude)
    }

    combined = real_modes(low_positive.merge(high_positive))
    current = primitive_current(combined, leray: true)
    expected = 2.0 * (Math.sqrt(2.0) - 1.0) * delta**3 * n**2
    assert_in_delta expected, current, TOL
    assert_operator current, :>, 0

    x = [0.0, -5.0 * Math::PI / 3.0, -Math::PI / 3.0]
    y = [0.0, 0.0, 0.0]
    high_at_x = high_field(x, n)
    high_at_y = high_field(y, n)
    assert_vector_in_delta high_at_y, high_at_x
    assert_vector_in_delta [0.0, 0.0, 2.0], high_at_x

    velocity_difference = subtract(
      add_vectors(scalar_multiply_real(m, low_field(x)),
                  scalar_multiply_real(delta, high_at_x)),
      add_vectors(scalar_multiply_real(m, low_field(y)),
                  scalar_multiply_real(delta, high_at_y))
    )
    expected_velocity = [0.0, m * Math.sqrt(3.0) / 2.0,
                          -m * Math.sqrt(3.0) / 2.0]
    assert_vector_in_delta expected_velocity, velocity_difference

    contracting_line = [1.0, 0.0, 0.0]
    assert_in_delta 0.0, real_dot(velocity_difference, contracting_line), TOL

    separation = subtract(x, y)
    expected_dot = -2.0 * Math::PI * Math.sqrt(3.0) * m / 3.0
    pair_dot = real_dot(velocity_difference, separation)
    assert_in_delta expected_dot, pair_dot, TOL
    assert_operator pair_dot, :<, 0

    r_squared = real_dot(separation, separation)
    v_squared = real_dot(velocity_difference, velocity_difference)
    pair_current = -(1.0 / Math::PI**2) * v_squared * pair_dot / r_squared**3
    assert_operator pair_current, :>, 0

    x_plane_eigenvalues = [m / 2.0 - delta * n, m / 2.0 + delta * n]
    y_plane_eigenvalues = [m - delta * n, m + delta * n]
    (x_plane_eigenvalues + y_plane_eigenvalues).each do |value|
      assert_operator value, :>, 0
    end

    assert_includes text, "M>2\\delta N>0"
    assert_includes text, "2(\\sqrt2-1)\\delta^3N^2>0"
    assert_includes text, "unique contracting line is exactly"
    assert_includes text, "P_-V=0"
    assert_includes text, "j_{xy}"
    assert_includes text, "one real, smooth, divergence-free\nfinite Fourier datum"
  end

  def test_required_whole_history_hypothesis_is_stated_without_claiming_it
    assert_includes text, "A_n^{\\not c}"
    assert_includes text, "\\sigma_n\\ne ccc"
    assert_includes text, "\\mathcal C_{n,\\sigma,\\ell}"
    assert_includes text, "\\mathring D_tP_{-,\\ell}"
    assert_includes text, "-n\\cdot\\mathcal R_-"
    assert_includes text, "\\sum_n\\varepsilon_n<\\infty"
    assert_includes text, "recent\nDuhamel parents"
    assert_includes text, "does not claim that the canonical\ndouble-recent gate"
    assert_includes text, "No datum endpoint, TIR.37a, or MPP closure"
  end

  def test_note_has_no_control_byte_corruption
    bytes = File.binread(NOTE).bytes
    [0x08, 0x09, 0x0b, 0x0c, 0x0d].each do |byte|
      refute_includes bytes, byte
    end
  end

  private

  def complex_vector(vector)
    vector.map { |entry| Complex(entry, 0) }
  end

  def add(left, right)
    left.zip(right).map { |a, b| a + b }
  end

  def subtract(left, right)
    left.zip(right).map { |a, b| a - b }
  end

  def add_vectors(left, right)
    add(left, right)
  end

  def cross(left, right)
    [
      left[1] * right[2] - left[2] * right[1],
      left[2] * right[0] - left[0] * right[2],
      left[0] * right[1] - left[1] * right[0]
    ]
  end

  def dot(left, right)
    left.zip(right).sum { |a, b| a * b }
  end

  def real_dot(left, right)
    left.zip(right).sum { |a, b| a * b }
  end

  def scalar_multiply(scalar, vector)
    vector.map { |entry| scalar * entry }
  end

  def scalar_multiply_real(scalar, vector)
    vector.map { |entry| scalar * entry }
  end

  def scale_wave(scale, wave)
    wave.map { |entry| scale * entry }
  end

  def real_modes(positive_modes)
    modes = positive_modes.dup
    positive_modes.each do |wave, amplitude|
      modes[wave.map(&:-@)] = amplitude.map(&:conj)
    end
    modes
  end

  def primitive_current(modes, leray:)
    modes.sum do |receiver_wave, receiver_amplitude|
      convective = [Complex(0, 0), Complex(0, 0), Complex(0, 0)]
      modes.each do |left_wave, left_amplitude|
        right_wave = subtract(receiver_wave, left_wave)
        right_amplitude = modes[right_wave]
        next unless right_amplitude

        coefficient = Complex(0, 1) * dot(left_amplitude, right_wave)
        convective = add(
          convective,
          scalar_multiply(coefficient, right_amplitude)
        )
      end

      nonlinear = scalar_multiply(-1, convective)
      nonlinear = leray_project(nonlinear, receiver_wave) if leray
      receiver = scalar_multiply(
        Math.sqrt(real_dot(receiver_wave, receiver_wave)),
        receiver_amplitude.map(&:conj)
      )
      dot(nonlinear, receiver).real
    end
  end

  def leray_project(vector, wave)
    norm_squared = real_dot(wave, wave)
    longitudinal = dot(wave, vector) / norm_squared
    subtract(vector, wave.map { |entry| longitudinal * entry })
  end

  def low_field(point)
    theta_one = point[0] + point[1]
    theta_two = point[0] + point[2]
    [
      -Math.sin(theta_one) - Math.sin(theta_two),
      Math.sin(theta_one),
      Math.sin(theta_two)
    ]
  end

  def high_field(point, scale)
    k = [1, 1, 1]
    p = [0, -1, 0]
    q = [-1, 0, -1]
    a = [0.0, -1.0, 1.0]
    b = [0.0, 0.0, -1.0]
    d = [0.0, 1.0, 0.0]
    phase_k = scale * real_dot(k, point)
    phase_p = scale * real_dot(p, point)
    phase_q = scale * real_dot(q, point)

    add_vectors(
      add_vectors(
        scalar_multiply_real(2.0 * Math.cos(phase_k), a),
        scalar_multiply_real(-2.0 * Math.sin(phase_p), b)
      ),
      scalar_multiply_real(2.0 * Math.cos(phase_q), d)
    )
  end

  def assert_vector_in_delta(expected, actual)
    expected.each_with_index do |component, index|
      assert_in_delta component, actual[index], TOL
    end
  end
end
