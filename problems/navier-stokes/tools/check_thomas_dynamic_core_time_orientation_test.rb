#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasDynamicCoreTimeOrientationTest < Minitest::Test
  I = Complex(0, 1)
  TOL = 1.0e-9
  NOTE = File.expand_path(
    "../theorem-construction/thomas-dynamic-core-time-oriented-three-leg-current-boundary-20260804.md",
    __dir__
  )

  def test_note_preserves_the_exact_first_row_and_moving_core_boundary
    text = File.read(NOTE)

    assert_includes text, "Q_t+\\nu A Q=DQ(u)[Q]+2\\nu\\mathcal C(u)"
    assert_includes text, "c_\\tau'+d_\\tau c_\\tau=a_\\tau"
    assert_includes text, "Z_\\tau^\\dagger"
    assert_includes text, "2(Q,Au)_2-2\\nu\\|Au\\|_2^2"
    assert_includes text, "\\mathfrak X_{\\rm core}"
    assert_includes text, "signed entry/exit telescope"
    assert_includes text, "m_{\\ell\\tau}:={\\omega_\\tau r_\\ell\\over\\nu S_\\tau}"
    assert_includes text, "It is `(PRM.44)`"
    assert_includes text, "does not prove `(TIR.37a)` or close"
  end

  def test_three_leg_viscosity_has_one_exact_sum_square_rate
    modes = heterochiral_datum(
      1.0,
      0.45,
      Complex.polar(1.6, 23.0 * Math::PI / 12.0)
    )
    heat = modes.to_h do |wave, amplitude|
      [wave, scale(-wave_square(wave), amplitude)]
    end

    current = critical_production(modes)
    heat_current_derivative = cubic_derivative(
      method(:critical_production), modes, heat
    )
    heat_potential_derivative = cubic_derivative(
      method(:stokes_potential), modes, heat
    )

    # The three radii are 1, 2, and sqrt(5), so S_tau=1+4+5=10.
    assert_in_delta(-10.0 * current, heat_current_derivative, TOL)
    assert_in_delta(-current, heat_potential_derivative, TOL)
  end

  def test_fim_dynamic_conditions_are_one_enstrophy_threshold
    nu = 0.73
    upper_constant = 1.9
    lower_constant = 0.61
    samples = [
      [2.0, 7.0],
      [11.0, 13.0],
      [19.0, 83.0]
    ]

    samples.each do |a, h|
      threshold = nu**2 * [
        h / upper_constant,
        lower_constant**3 * h**4 / a**3
      ].max
      [0.7 * threshold, threshold, 1.4 * threshold].each do |z|
        direct = h <= upper_constant * z / nu**2 + TOL &&
                 a + TOL >= lower_constant * nu**(2.0 / 3.0) *
                            z**(-1.0 / 3.0) * h**(4.0 / 3.0)
        threshold_reading = z + TOL >= threshold
        assert_equal threshold_reading, direct,
                     "dynamic-core threshold mismatch at a=#{a}, h=#{h}, Z=#{z}"
      end
    end
  end

  def test_sharp_core_occupation_has_the_claimed_endpoint_signs
    d = 5.0
    intervals = [[0.2, 0.7], [1.1, 1.8]]
    c = ->(t) { t**2 + 2.0 * t + 3.0 }
    c_primitive = ->(t) { t**3 / 3.0 + t**2 + 3.0 * t }
    # a=c'+dc, so r=a/d=c+c'/d.
    r_primitive = lambda do |t|
      c_primitive.call(t) + c.call(t) / d
    end

    lhs = intervals.sum do |alpha, beta|
      c_primitive.call(beta) - c_primitive.call(alpha)
    end
    rhs = intervals.sum do |alpha, beta|
      c.call(alpha) / d - c.call(beta) / d +
        r_primitive.call(beta) - r_primitive.call(alpha)
    end

    assert_in_delta lhs, rhs, TOL
  end

  def test_two_true_leray_parent_ports_remain_indefinite_inside_the_core
    n = 64
    nu = 1.0
    output = [n, n, 0].freeze
    p1 = [n, 0, 0].freeze
    q1 = [0, n, 0].freeze
    p2 = [2 * n, 0, 0].freeze
    q2 = [-n, n, 0].freeze
    up1 = [0.0, 0.0, 1.0]
    uq1 = [1.0, 0.0, 0.0]
    up2 = [0.0, 0.0, 1.0]
    uq2 = [-0.75, -0.75, 0.0]

    [[p1, up1], [q1, uq1], [p2, up2], [q2, uq2]].each do |wave, amplitude|
      assert_in_delta 0.0, dot(wave, amplitude).abs, TOL
    end

    source1 = symmetrized_parent_source(output, p1, up1, q1, uq1)
    source2 = symmetrized_parent_source(output, p2, up2, q2, uq2)
    expected1 = [0i, 0i, -I * n]
    expected2 = [0i, 0i, 1.5 * I * n]
    assert_operator vector_norm(subtract(source1, expected1)), :<, TOL
    assert_operator vector_norm(subtract(source2, expected2)), :<, TOL

    s1 = wave_square(output) + wave_square(p1) + wave_square(q1)
    s2 = wave_square(output) + wave_square(p2) + wave_square(q2)
    m1 = wave_norm(output) / (nu * s1)
    m2 = wave_norm(output) / (nu * s2)
    total_source = add(source1, source2)
    weighted_source = add(scale(m1, source1), scale(m2, source2))
    port = hermitian_dot(total_source, weighted_source).real

    assert_in_delta Math.sqrt(2.0) / (4.0 * n), m1, TOL
    assert_in_delta Math.sqrt(2.0) / (8.0 * n), m2, TOL
    assert_in_delta(-Math.sqrt(2.0) * n / 32.0, port, TOL)
    assert_operator port, :<, 0.0
    assert_operator hermitian_dot(total_source, total_source).real, :>, 0.0
    assert_in_delta(-((m1 - m2)**2) / 4.0,
                    m1 * m2 - ((m1 + m2) / 2.0)**2,
                    TOL)

    field = {
      p1 => up1,
      q1 => uq1,
      p2 => up2,
      q2 => uq2
    }
    impose_reality!(field)
    u0 = Math.sqrt(field_mass(field))
    z = enstrophy(field)
    assert_in_delta 33.0 / 4.0, u0**2, TOL
    assert_in_delta 33.0 * n**2 / 2.0, z, TOL
    assert core_admitted?([wave_norm(output), wave_norm(p1), wave_norm(q1)],
                          u0, z, nu)
    assert core_admitted?([wave_norm(output), wave_norm(p2), wave_norm(q2)],
                          u0, z, nu)
  end

  def test_complete_quartic_refill_keeps_both_signs_in_scale_local_core
    negative_base = heterochiral_datum(
      1.0, 1.8, Complex.polar(1.6, Math::PI / 12.0)
    )
    positive_base = heterochiral_datum(
      1.0, 0.45, Complex.polar(1.6, 23.0 * Math::PI / 12.0)
    )
    dilation = 64
    negative = dilate_waves(negative_base, dilation)
    positive = dilate_waves(positive_base, dilation)

    negative_remainder = stokes_remainder(negative)
    positive_remainder = stokes_remainder(positive)
    negative_current = critical_production(negative)
    positive_current = critical_production(positive)

    assert_in_delta(-0.06120370944134024 * dilation,
                    negative_remainder, 2.0e-8)
    assert_in_delta 0.4645131796213645 * dilation,
                    positive_remainder, 2.0e-8
    assert_in_delta 3.005425582559174 * dilation**2,
                    negative_current, 2.0e-7
    assert_in_delta 0.7513563956397926 * dilation**2,
                    positive_current, 2.0e-7
    assert_operator negative_current, :>, 0.0
    assert_operator positive_current, :>, 0.0
    assert_operator negative_remainder, :<, 0.0
    assert_operator positive_remainder, :>, 0.0

    [negative, positive].each do |modes|
      u0 = Math.sqrt(field_mass(modes))
      z = enstrophy(modes)
      direction = nonlinear_field(modes)
      derivative_frequency_triples(modes, direction).each do |radii|
        assert core_admitted?(radii, u0, z, 1.0),
               "quartic derivative triad escaped the dynamic core: #{radii.inspect}"
      end
    end
  end

  def test_amplitude_growth_does_not_create_a_normal_form_small_parameter
    modes = heterochiral_datum(
      1.0, 0.45, Complex.polar(1.6, 23.0 * Math::PI / 12.0)
    )
    factor = 3.25
    scaled = scale_field(factor, modes)

    assert_in_delta factor**3 * critical_production(modes),
                    critical_production(scaled), TOL
    assert_in_delta factor**4 * stokes_remainder(modes),
                    stokes_remainder(scaled), 2.0e-8
    assert_in_delta factor**2 * enstrophy(modes), enstrophy(scaled), TOL
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
    field = waves.zip(amplitudes).to_h { |wave, amplitude| [wave.freeze, amplitude] }
    impose_reality!(field)
    field
  end

  def impose_reality!(field)
    field.to_a.each do |wave, amplitude|
      field[negate_wave(wave)] = amplitude.map(&:conj)
    end
    field
  end

  def symmetrized_parent_source(output, p, up, q, uq)
    raw = add(scale(dot(up, q), uq), scale(dot(uq, p), up))
    scale(-I, leray_project(output, raw))
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
    end.reject { |_wave, amplitude| amplitude.all? { |entry| entry.abs < 1.0e-14 } }
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

  def radii(*waves)
    waves.map { |wave| wave_norm(wave) }
  end

  def core_admitted?(radii, u0, z, nu)
    a = radii.min
    h = radii.max
    kappa = (nu / u0)**2
    static_low = (nu / u0)**(2.0 / 5.0) * h**(4.0 / 5.0)
    dynamic_threshold = nu**2 * [h, h**4 / a**3].max
    h >= kappa && a >= static_low && z >= dynamic_threshold
  end

  def field_mass(field)
    field.sum { |_wave, amplitude| hermitian_dot(amplitude, amplitude).real }
  end

  def enstrophy(field)
    field.sum do |wave, amplitude|
      wave_square(wave) * hermitian_dot(amplitude, amplitude).real
    end
  end

  def dilate_waves(field, factor)
    field.to_h do |wave, amplitude|
      [wave.map { |entry| factor * entry }.freeze, amplitude]
    end
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

  def wave_square(wave)
    dot(wave, wave)
  end

  def wave_norm(wave)
    Math.sqrt(wave_square(wave))
  end

  def vector_norm(vector)
    Math.sqrt(hermitian_dot(vector, vector).real)
  end

  def leray_project(wave, vector)
    subtract(vector, scale(dot(wave, vector) / wave_square(wave), wave))
  end
end
