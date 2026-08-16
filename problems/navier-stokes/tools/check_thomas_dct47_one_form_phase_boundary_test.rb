#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasDct47OneFormPhaseBoundaryTest < Minitest::Test
  I = Complex(0, 1)
  TOL = 1.0e-8
  NOTE = File.expand_path(
    "../theorem-construction/thomas-dct47-exact-one-form-and-enstrophy-sphere-phase-boundary-20260804.md",
    __dir__
  )

  def test_joined_refill_and_crossing_are_one_exact_differential
    z = 7.to_r
    z_prime = Rational(-5, 3)
    b = [Rational(2, 5), Rational(-7, 11)]
    c = [Rational(13, 17), Rational(-3, 8)]
    r = [Rational(19, 23), Rational(5, 6)]
    weights = [z / 9, z**2 / 81]
    weight_derivatives = [1.to_r / 9, 2 * z / 81]
    b_prime = r.zip(c).map { |refill, current| refill - current }

    refill = dot(weights, r)
    crossing = dot(weight_derivatives, b) * z_prime
    storage_derivative = dot(weights, b_prime) +
                         dot(weight_derivatives, b) * z_prime
    current = dot(weights, c)

    assert_equal refill + crossing, storage_derivative + current
  end

  def test_enstrophy_radius_cancels_from_the_normalized_cubic_current
    u = [2.to_r, -1.to_r, 3.to_r]
    u_dot = [Rational(5, 3), Rational(-7, 4), Rational(11, 5)]
    au = [u[0], 4 * u[1], 9 * u[2]]
    z = dot(u, au)
    z_prime = 2 * dot(u_dot, au)
    delta = z_prime / (2 * z)
    tangent = u_dot.zip(u).map { |response, value| response - delta * value }

    # b(x,y,z)=x^2*y+y*z^2 is homogeneous of degree three.
    x, y, zz = u
    gradient = [2 * x * y, x**2 + zz**2, 2 * y * zz]
    b = x**2 * y + y * zz**2
    b_prime = dot(gradient, u_dot)
    tangent_insertion = dot(gradient, tangent)

    assert_equal 0, dot(tangent, au)
    assert_equal 3 * b, dot(gradient, u)
    assert_equal b_prime, 3 * delta * b + tangent_insertion

    direct_normalized_derivative =
      b_prime / z.to_f**1.5 - 1.5 * b.to_f * z_prime.to_f / z.to_f**2.5
    expected_normalized_derivative = tangent_insertion.to_f / z.to_f**1.5
    assert_in_delta expected_normalized_derivative,
                    direct_normalized_derivative,
                    1.0e-12
  end

  def test_sharp_crossing_formula_keeps_both_clipped_endpoint_corrections
    z_threshold = 1.0
    z = ->(t) { 1.0 + t * (1.0 - t) }
    g = ->(t) { t**2 + 2.0 * t + 3.0 }
    b = ->(t) { z.call(t)**1.5 * g.call(t) }

    left = 0.2
    right = 0.8
    tangent_integral = g.call(right) - g.call(left)
    interior = -tangent_integral
    initial_clip = (1.0 - (z_threshold / z.call(left))**1.5) * b.call(left)
    terminal_clip = -(1.0 - (z_threshold / z.call(right))**1.5) * b.call(right)

    assert_in_delta b.call(left) - b.call(right),
                    interior + initial_clip + terminal_clip,
                    1.0e-12
  end

  def test_true_leray_constant_enstrophy_tangent_has_both_signs
    rows = [
      [1.8, Math::PI / 12.0, -74_390.2357346],
      [0.45, 23.0 * Math::PI / 12.0, 5_571_971.05561]
    ]

    tangents = rows.map do |middle_size, phase, expected_tangent|
      base = heterochiral_datum(
        1.0,
        middle_size,
        Complex.polar(1.6, phase)
      )
      base_source = nonlinear_field(base)
      base_p1 = enstrophy_production(base, base_source)
      base_w = second_spatial_action(base)
      amplitude = base_w / base_p1
      tuned = scale_field(amplitude, base)
      tuned_source = nonlinear_field(tuned)

      p1 = enstrophy_production(tuned, tuned_source)
      w = second_spatial_action(tuned)
      current = critical_production(tuned)
      refill = stokes_remainder(tuned)
      tangent = refill - current

      assert_operator base_p1, :>, 0.0
      assert_in_delta 0.0, 2.0 * (p1 - w), 1.0e-6
      assert_in_delta expected_tangent, tangent, 5.0e-5

      u0 = Math.sqrt(field_mass(tuned))
      z = enstrophy(tuned)
      derivative_frequency_triples(tuned, tuned_source).each do |radii|
        assert core_admitted?(radii, u0, z, 1.0),
               "tangent derivative triad escaped the dynamic core: #{radii.inspect}"
      end

      tangent
    end

    assert_operator tangents.first, :<, 0.0
    assert_operator tangents.last, :>, 0.0
  end

  def test_note_states_the_classification_and_honest_boundary
    note = File.read(NOTE)

    assert_includes note, "R+X=B'+C"
    assert_includes note, "F_{b_\\tau}=\\omega_\\tau(Z)"
    assert_includes note, "F=\\sum_\\tau\\omega_\\tau(Z)b_\\tau+\\text{constant}"
    assert_includes note, "g_\\tau'={t_\\tau\\over Z^{3/2}}"
    assert_includes note, "both signs in the strict core"
    assert_includes note, "smallest still-unpaid quantity at this level"
    assert_includes note, "does not prove `(TIR.37a)` or close the MPP"
    assert_includes note, "No such bound is proved here"
  end

  private

  def positive_helical_vectors
    sqrt2 = Math.sqrt(2.0)
    [
      [0, -I / sqrt2, 1.0 / sqrt2],
      [I / sqrt2, 0, 1.0 / sqrt2],
      [-2.0 * I / Math.sqrt(10.0), I / Math.sqrt(10.0), 1.0 / sqrt2]
    ]
  end

  def heterochiral_datum(first_size, middle_size, singleton_amplitude)
    waves = [[1, 0, 0], [0, 2, 0], [-1, -2, 0]]
    helices = positive_helical_vectors
    amplitudes = [
      scale(first_size, helices[0]),
      scale(middle_size, helices[1]),
      scale(singleton_amplitude, helices[2].map(&:conj))
    ]
    field = waves.zip(amplitudes).to_h do |wave, amplitude|
      [wave.freeze, amplitude]
    end
    impose_reality!(field)
    field
  end

  def impose_reality!(field)
    field.to_a.each do |wave, amplitude|
      field[negate_wave(wave)] = amplitude.map(&:conj)
    end
  end

  def critical_production(modes)
    nonlinear = nonlinear_field(modes)
    modes.sum do |wave, amplitude|
      target = nonlinear.fetch(wave, [0i, 0i, 0i])
      wave_norm(wave) * hermitian_dot(amplitude, target).real
    end
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
        denominator = wave_square(target_wave) +
                      wave_square(left_wave) +
                      wave_square(right_wave)
        wave_norm(target_wave) *
          hermitian_dot(target_mode, contribution).real / denominator
      end
    end
  end

  def stokes_remainder(modes)
    cubic_derivative(method(:stokes_potential), modes, nonlinear_field(modes))
  end

  def cubic_derivative(function, modes, direction)
    plus = add_fields(modes, direction)
    minus = add_fields(modes, scale_field(-1.0, direction))
    (function.call(plus) - function.call(minus) -
      2.0 * function.call(direction)) / 2.0
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
    end.reject do |_wave, amplitude|
      amplitude.all? { |entry| entry.abs < 1.0e-14 }
    end
  end

  def enstrophy_production(field, source)
    field.sum do |wave, amplitude|
      wave_square(wave) *
        hermitian_dot(amplitude, source.fetch(wave, [0i, 0i, 0i])).real
    end
  end

  def second_spatial_action(field)
    field.sum do |wave, amplitude|
      wave_square(wave)**2 * hermitian_dot(amplitude, amplitude).real
    end
  end

  def derivative_frequency_triples(base, direction)
    triples = []

    direction.each_key do |target|
      base.each_key do |left|
        right = subtract_wave(target, left)
        triples << radii(target, left, right) if base.key?(right)
      end
    end
    base.each_key do |target|
      direction.each_key do |left|
        right = subtract_wave(target, left)
        triples << radii(target, left, right) if base.key?(right)
      end
      base.each_key do |left|
        right = subtract_wave(target, left)
        triples << radii(target, left, right) if direction.key?(right)
      end
    end

    triples.uniq
  end

  def core_admitted?(radii, u0, z, nu)
    a = radii.min
    h = radii.max
    kappa = (nu / u0)**2
    static_low = (nu / u0)**(2.0 / 5.0) * h**(4.0 / 5.0)
    dynamic_threshold = nu**2 * [h, h**4 / a**3].max
    h >= kappa && a >= static_low && z >= dynamic_threshold
  end

  def radii(*waves)
    waves.map { |wave| wave_norm(wave) }
  end

  def field_mass(field)
    field.sum { |_wave, amplitude| hermitian_dot(amplitude, amplitude).real }
  end

  def enstrophy(field)
    field.sum do |wave, amplitude|
      wave_square(wave) * hermitian_dot(amplitude, amplitude).real
    end
  end

  def add_fields(left, right)
    (left.keys | right.keys).to_h do |wave|
      [wave, add(left.fetch(wave, [0i, 0i, 0i]),
                 right.fetch(wave, [0i, 0i, 0i]))]
    end.reject do |_wave, amplitude|
      amplitude.all? { |entry| entry.abs < 1.0e-14 }
    end
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

  def wave_square(wave)
    dot(wave, wave)
  end

  def wave_norm(wave)
    Math.sqrt(wave_square(wave))
  end

  def leray_project(wave, vector)
    subtract(vector, scale(dot(wave, vector) / wave_square(wave), wave))
  end
end
