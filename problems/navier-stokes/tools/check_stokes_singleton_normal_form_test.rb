#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class StokesSingletonNormalFormTest < Minitest::Test
  I = Complex(0, 1)
  TOLERANCE = 1.0e-10
  CUBIC_COEFFICIENT = Math.sqrt(2.0) * (3.0 - Math.sqrt(5.0))
  PAIR_12 = -3.0 / 5.0 + 7.0 * Math.sqrt(5.0) / 25.0
  PAIR_13 = 3.0 / 25.0 + 16.0 * Math.sqrt(2.0) / 35.0 -
            73.0 * Math.sqrt(5.0) / 175.0 +
            4.0 * Math.sqrt(10.0) / 35.0
  PAIR_23 = -3603.0 / 11_050.0 - 92.0 * Math.sqrt(5.0) / 5525.0 +
            77.0 * Math.sqrt(17.0) / 2210.0 + Math.sqrt(85.0) / 65.0

  def test_comparison_data_are_real_divergence_free_and_heterochiral
    modes = heterochiral_datum(1.0, 0.7, Complex.polar(1.3, 0.41))
    signs = {
      [1, 0, 0] => 1,
      [0, 2, 0] => 1,
      [-1, -2, 0] => -1
    }

    signs.each do |wave, sign|
      amplitude = modes.fetch(wave)
      assert_operator dot(wave, amplitude).abs, :<, TOLERANCE
      helical_residual = subtract(
        scale(I, cross(wave, amplitude)),
        scale(sign * norm(wave), amplitude)
      )
      assert_operator vector_norm(helical_residual), :<, TOLERANCE
      assert_equal amplitude.map(&:conj), modes.fetch(negate_wave(wave))
    end
  end

  def test_stokes_potential_has_the_cubic_current_as_its_linear_derivative
    modes = heterochiral_datum(1.0, 0.7, Complex.polar(1.3, 0.41))
    linear = modes.to_h do |wave, amplitude|
      [wave, scale(-dot(wave, wave), amplitude)]
    end
    nonlinear = nonlinear_field(modes)
    production = critical_production(modes)
    linear_derivative = cubic_directional_derivative(modes, linear)
    quartic_remainder = cubic_directional_derivative(modes, nonlinear)
    full_derivative = cubic_directional_derivative(
      modes,
      add_fields(linear, nonlinear)
    )

    assert_in_delta(-production, linear_derivative, TOLERANCE)
    assert_in_delta(-production + quartic_remainder,
                    full_derivative,
                    TOLERANCE)
  end

  def test_full_network_quartic_remainder_has_both_signs
    negative_modes = heterochiral_datum(
      1.0, 1.8, Complex.polar(1.6, Math::PI / 12.0)
    )
    positive_modes = heterochiral_datum(
      1.0, 0.45, Complex.polar(1.6, 23.0 * Math::PI / 12.0)
    )
    negative_production = critical_production(negative_modes)
    positive_production = critical_production(positive_modes)
    negative_remainder = cubic_directional_derivative(
      negative_modes, nonlinear_field(negative_modes)
    )
    positive_remainder = cubic_directional_derivative(
      positive_modes, nonlinear_field(positive_modes)
    )

    assert_operator negative_production, :>, 0.0
    assert_operator positive_production, :>, 0.0
    assert_in_delta(-0.06120370944134024, negative_remainder, TOLERANCE)
    assert_in_delta 0.4645131796213645, positive_remainder, TOLERANCE
  end

  def test_each_normal_form_step_costs_one_critical_amplitude_factor
    modes = heterochiral_datum(
      1.0, 0.45, Complex.polar(1.6, 23.0 * Math::PI / 12.0)
    )
    dilation = 3.7
    scaled_modes = scale_field(dilation, modes)
    base_height = critical_height(modes)
    base_production = critical_production(modes)
    base_potential = stokes_potential(modes)
    base_remainder = cubic_directional_derivative(
      modes, nonlinear_field(modes)
    )
    scaled_height = critical_height(scaled_modes)
    scaled_production = critical_production(scaled_modes)
    scaled_potential = stokes_potential(scaled_modes)
    scaled_remainder = cubic_directional_derivative(
      scaled_modes, nonlinear_field(scaled_modes)
    )

    assert_in_delta dilation**2 * base_height, scaled_height, TOLERANCE
    assert_in_delta dilation**3 * base_production,
                    scaled_production,
                    TOLERANCE
    assert_in_delta dilation**3 * base_potential,
                    scaled_potential,
                    TOLERANCE
    assert_in_delta dilation**4 * base_remainder,
                    scaled_remainder,
                    TOLERANCE
    assert_in_delta dilation * base_remainder / base_production,
                    scaled_remainder / scaled_production,
                    TOLERANCE
  end

  def test_balanced_helical_channel_does_not_fix_the_quartic_sign
    negative_modes = heterochiral_datum(
      1.0,
      2.0,
      Complex.polar(3.0 / 5.0**0.25, Math::PI / 12.0)
    )
    positive_modes = heterochiral_datum(
      1.0,
      1.0,
      Complex.polar(Math.sqrt(3.0 / Math.sqrt(5.0)), 47.0 * Math::PI / 24.0)
    )

    [negative_modes, positive_modes].each do |modes|
      plus_height, minus_height = helical_heights(modes)
      assert_in_delta plus_height, minus_height, TOLERANCE
      assert_operator critical_production(modes), :>, 0.0
    end

    negative_remainder = cubic_directional_derivative(
      negative_modes, nonlinear_field(negative_modes)
    )
    positive_remainder = cubic_directional_derivative(
      positive_modes, nonlinear_field(positive_modes)
    )
    assert_in_delta(-0.3627735198519826, negative_remainder, TOLERANCE)
    assert_in_delta 0.18352507748976676, positive_remainder, TOLERANCE

    sqrt5 = Math.sqrt(5.0)
    quadratic = [
      2.0 * PAIR_23 / sqrt5,
      PAIR_12 + (2.0 * PAIR_13 + PAIR_23) / sqrt5,
      PAIR_13 / sqrt5
    ]
    discriminant = quadratic[1]**2 - 4.0 * quadratic[0] * quadratic[2]
    positive_root = (
      -quadratic[1] - Math.sqrt(discriminant)
    ) / (2.0 * quadratic[0])
    transition_size = Math.sqrt(positive_root)
    transition_singleton = Math.sqrt(
      (1.0 + 2.0 * transition_size**2) / sqrt5
    )
    transition_modes = heterochiral_datum(
      1.0, transition_size, transition_singleton
    )
    assert_in_delta 1.6813198977252757, transition_size, TOLERANCE
    assert_in_delta 0.0, stokes_remainder(transition_modes), TOLERANCE
  end

  def test_three_wave_quartic_is_phase_neutral_pair_polarization
    pair_12 = stokes_remainder(heterochiral_datum(1.0, 1.0, 0.0))
    pair_13 = stokes_remainder(heterochiral_datum(1.0, 0.0, 1.0))
    pair_23 = stokes_remainder(heterochiral_datum(0.0, 1.0, 1.0))
    assert_in_delta PAIR_12, pair_12, TOLERANCE
    assert_in_delta PAIR_13, pair_13, TOLERANCE
    assert_in_delta PAIR_23, pair_23, TOLERANCE

    amplitudes = [1.3, 0.8, 1.7]
    production_coefficient = critical_production(
      heterochiral_datum(1.0, 1.0, 1.0)
    )
    assert_in_delta CUBIC_COEFFICIENT,
                    production_coefficient,
                    TOLERANCE
    phases = [0.0, Math::PI / 7.0, Math::PI / 2.0, Math::PI]
    remainders = phases.map do |phase|
      modes = heterochiral_datum(
        amplitudes[0],
        amplitudes[1],
        Complex.polar(amplitudes[2], phase)
      )
      expected = pair_12 * amplitudes[0]**2 * amplitudes[1]**2 +
                 pair_13 * amplitudes[0]**2 * amplitudes[2]**2 +
                 pair_23 * amplitudes[1]**2 * amplitudes[2]**2
      actual = stokes_remainder(modes)
      assert_in_delta expected, actual, TOLERANCE
      assert_in_delta(
        production_coefficient * amplitudes.reduce(:*) * Math.cos(phase),
        critical_production(modes),
        TOLERANCE
      )
      actual
    end
    remainders.each do |remainder|
      assert_in_delta remainders.first, remainder, TOLERANCE
    end

    positive_phase = heterochiral_datum(1.0, 1.0, 1.0)
    zero_phase = heterochiral_datum(
      1.0, 1.0, Complex.polar(1.0, Math::PI / 2.0)
    )
    reversed_phase = heterochiral_datum(
      1.0, 1.0, Complex.polar(1.0, Math::PI)
    )
    assert_operator critical_production(positive_phase), :>, 0.0
    assert_in_delta 0.0, critical_production(zero_phase), TOLERANCE
    assert_operator critical_production(reversed_phase), :<, 0.0
  end

  def test_balanced_stocks_and_current_do_not_determine_quartic_sign
    production_coefficient = critical_production(
      heterochiral_datum(1.0, 1.0, 1.0)
    )
    singleton_size = Math.sqrt(1.0 / Math.sqrt(5.0))
    target_current = 0.1
    datum_at = lambda do |middle_square|
      first_size = Math.sqrt(1.0 - 2.0 * middle_square)
      middle_size = Math.sqrt(middle_square)
      phase = Math.acos(
        target_current /
        (production_coefficient * first_size * middle_size * singleton_size)
      )
      heterochiral_datum(
        first_size,
        middle_size,
        Complex.polar(singleton_size, phase)
      )
    end
    positive_modes = datum_at.call(0.4)
    negative_modes = datum_at.call(0.45)

    [positive_modes, negative_modes].each do |modes|
      plus_height, minus_height = helical_heights(modes)
      assert_in_delta 1.0, plus_height, TOLERANCE
      assert_in_delta 1.0, minus_height, TOLERANCE
      assert_in_delta target_current, critical_production(modes), TOLERANCE
    end
    assert_in_delta 0.005624119792937584,
                    stokes_remainder(positive_modes),
                    TOLERANCE
    assert_in_delta(-0.005756035546339052,
                    stokes_remainder(negative_modes),
                    TOLERANCE)
  end

  private

  def positive_helical_datum(wave_amplitudes)
    wave_amplitudes.each_with_object({}) do |(wave, coefficient), modes|
      amplitude = scale(coefficient, helical_vector(wave, 1))
      frozen_wave = wave.freeze
      modes[frozen_wave] = amplitude
      modes[negate_wave(frozen_wave)] = amplitude.map(&:conj)
    end
  end

  def helical_vector(wave, sign)
    wave_norm = norm(wave)
    unit_wave = wave.map { |entry| entry / wave_norm }
    reference = unit_wave[2].abs < 0.9 ? [0.0, 0.0, 1.0] : [0.0, 1.0, 0.0]
    first = cross(reference, unit_wave)
    first_norm = vector_norm(first)
    first = first.map { |entry| entry / first_norm }
    second = cross(unit_wave, first)
    add(first, scale(sign * I, second)).map { |entry| entry / Math.sqrt(2.0) }
  end

  def heterochiral_datum(first_size, middle_size, singleton_amplitude)
    sqrt2 = Math.sqrt(2.0)
    wave_vectors = [[1, 0, 0], [0, 2, 0], [-1, -2, 0]]
    positive_helical_vectors = [
      [0, -I / sqrt2, 1.0 / sqrt2],
      [I / sqrt2, 0, 1.0 / sqrt2],
      [-2.0 * I / Math.sqrt(10.0), I / Math.sqrt(10.0), 1.0 / sqrt2]
    ]
    amplitudes = [
      scale(first_size, positive_helical_vectors[0]),
      scale(middle_size, positive_helical_vectors[1]),
      scale(singleton_amplitude, positive_helical_vectors[2].map(&:conj))
    ]

    wave_vectors.zip(amplitudes).each_with_object({}) do |(wave, amplitude), modes|
      modes[wave.freeze] = amplitude
      modes[negate_wave(wave)] = amplitude.map(&:conj)
    end
  end

  def critical_production(modes)
    nonlinear = nonlinear_field(modes)
    modes.sum do |wave, amplitude|
      target = nonlinear.fetch(wave, [0i, 0i, 0i])
      norm(wave) * hermitian_dot(amplitude, target).real
    end
  end

  def critical_height(modes)
    modes.sum do |wave, amplitude|
      norm(wave) * hermitian_dot(amplitude, amplitude).real / 2.0
    end
  end

  def stokes_remainder(modes)
    cubic_directional_derivative(modes, nonlinear_field(modes))
  end

  def helical_heights(modes)
    plus_waves = [[1, 0, 0], [0, 2, 0]]
    minus_waves = [[-1, -2, 0]]
    [
      plus_waves.sum do |wave|
        norm(wave) * hermitian_dot(modes.fetch(wave), modes.fetch(wave)).real
      end,
      minus_waves.sum do |wave|
        norm(wave) * hermitian_dot(modes.fetch(wave), modes.fetch(wave)).real
      end
    ]
  end

  def stokes_potential(modes)
    modes.sum do |target_wave, target_mode|
      modes.sum do |left_wave, left_mode|
        right_wave = subtract_wave(target_wave, left_wave)
        next 0.0 unless modes.key?(right_wave)

        right_mode = modes.fetch(right_wave)
        contribution = scale(
          -I,
          leray_project(
            target_wave,
            scale(dot(left_mode, right_wave), right_mode)
          )
        )
        denominator = dot(target_wave, target_wave) +
                      dot(left_wave, left_wave) +
                      dot(right_wave, right_wave)
        norm(target_wave) *
          hermitian_dot(target_mode, contribution).real / denominator
      end
    end
  end

  def cubic_directional_derivative(modes, direction)
    plus = add_fields(modes, direction)
    minus = add_fields(modes, scale_field(-1.0, direction))
    (
      stokes_potential(plus) - stokes_potential(minus) -
      2.0 * stokes_potential(direction)
    ) / 2.0
  end

  def nonlinear_field(modes)
    raw = Hash.new { |hash, wave| hash[wave] = [0i, 0i, 0i] }
    modes.each do |left_wave, left_mode|
      modes.each do |right_wave, right_mode|
        target_wave = add_wave(left_wave, right_wave)
        next if target_wave.all?(&:zero?)

        contribution = scale(dot(left_mode, right_wave), right_mode)
        raw[target_wave] = add(raw[target_wave], contribution)
      end
    end
    raw.to_h do |wave, convolution|
      [wave, scale(-I, leray_project(wave, convolution))]
    end.reject { |_wave, amplitude| amplitude.all? { |entry| entry.abs < 1.0e-14 } }
  end

  def add_fields(left, right)
    (left.keys | right.keys).to_h do |wave|
      [wave, add(left.fetch(wave, [0i, 0i, 0i]),
                 right.fetch(wave, [0i, 0i, 0i]))]
    end.reject { |_wave, amplitude| amplitude.all? { |entry| entry.abs < 1.0e-14 } }
  end

  def scale_field(number, field)
    field.to_h { |wave, amplitude| [wave, scale(number, amplitude)] }
  end

  def add_wave(left, right)
    left.zip(right).map { |x, y| x + y }.freeze
  end

  def subtract_wave(left, right)
    left.zip(right).map { |x, y| x - y }.freeze
  end

  def negate_wave(wave)
    wave.map { |entry| -entry }.freeze
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

  def hermitian_dot(left, right)
    left.zip(right).sum { |x, y| x.conj * y }
  end

  def cross(left, right)
    [
      left[1] * right[2] - left[2] * right[1],
      left[2] * right[0] - left[0] * right[2],
      left[0] * right[1] - left[1] * right[0]
    ]
  end

  def vector_norm(vector)
    Math.sqrt(hermitian_dot(vector, vector).real)
  end

  def norm(vector)
    Math.sqrt(dot(vector, vector))
  end

  def leray_project(wave, vector)
    subtract(vector, scale(dot(wave, vector) / dot(wave, wave), wave))
  end
end
