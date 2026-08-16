#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasFullLongitudinalResponseReceiverTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  NOTE = File.join(
    ROOT,
    "theorem-construction",
    "thomas-full-longitudinal-pressure-viscous-receiver-and-sign-countercalibration-20260804.md"
  )

  I = Complex(0.to_r, 1.to_r)

  def text
    @text ||= File.read(NOTE)
  end

  def zero_vector
    [Complex(0.to_r, 0.to_r)] * 3
  end

  def vector_add(left, right)
    3.times.map { |index| left[index] + right[index] }
  end

  def vector_scale(scalar, vector)
    vector.map { |entry| scalar * entry }
  end

  def key_add(left, right)
    3.times.map { |index| left[index] + right[index] }
  end

  def key_negate(key)
    key.map { |entry| -entry }
  end

  def key_square(key)
    key.sum { |entry| entry**2 }
  end

  def frequency_dot(key, vector)
    3.times.sum { |index| key[index] * vector[index] }
  end

  def field_add(left, right)
    (left.keys | right.keys).to_h do |key|
      [key, vector_add(left.fetch(key, zero_vector), right.fetch(key, zero_vector))]
    end
  end

  def bilinear(left, right)
    output = {}
    left.each do |left_key, left_value|
      right.each do |right_key, right_value|
        output_key = key_add(left_key, right_key)
        coefficient = I * frequency_dot(right_key, left_value)
        contribution = vector_scale(coefficient, right_value)
        output[output_key] = vector_add(
          output.fetch(output_key, zero_vector),
          contribution
        )
      end
    end
    output
  end

  # Returns the exact rational coefficient of each square root:
  # <left, Lambda right> = sum_n result[n] sqrt(n).
  def lambda_inner_roots(left, right)
    complex_roots = Hash.new { |hash, key| hash[key] = Complex(0.to_r, 0.to_r) }
    left.each do |key, left_value|
      right_value = right.fetch(key, zero_vector)
      coefficient = 3.times.sum do |index|
        left_value[index] * right_value[index].conjugate
      end
      complex_roots[key_square(key)] += coefficient unless key_square(key).zero?
    end

    complex_roots.to_h do |square, coefficient|
      assert_equal 0, coefficient.imag
      [square, coefficient.real]
    end.reject { |_square, coefficient| coefficient.zero? }
  end

  def root_linear_combination(*terms)
    output = Hash.new(0.to_r)
    terms.each do |scalar, roots|
      roots.each { |square, coefficient| output[square] += scalar * coefficient }
    end
    output.reject { |_square, coefficient| coefficient.zero? }
  end

  def current_roots(field)
    root_linear_combination(
      [-1.to_r, lambda_inner_roots(bilinear(field, field), field)]
    )
  end

  def current_derivative_roots(field, direction)
    first = field_add(bilinear(direction, field), bilinear(field, direction))
    root_linear_combination(
      [-1.to_r, lambda_inner_roots(first, field)],
      [-1.to_r, lambda_inner_roots(bilinear(field, field), direction)]
    )
  end

  def pressure_force(field)
    quadratic_source = Hash.new { |hash, key| hash[key] = Complex(0.to_r, 0.to_r) }
    field.each do |left_key, left_value|
      field.each do |right_key, right_value|
        output_key = key_add(left_key, right_key)
        quadratic_source[output_key] +=
          frequency_dot(output_key, left_value) *
          frequency_dot(output_key, right_value)
      end
    end

    quadratic_source.each_with_object({}) do |(key, source), output|
      square = key_square(key)
      next if square.zero?

      pressure = -source / square
      output[key] = key.map { |entry| -I * entry * pressure }
    end
  end

  def viscous_force(field, viscosity = 1.to_r)
    field.to_h do |key, value|
      [key, vector_scale(-viscosity * key_square(key), value)]
    end
  end

  def longitudinal_roots(field, direction)
    root_linear_combination(
      [Rational(-1, 4), current_derivative_roots(field, direction)]
    )
  end

  def roots_value(roots)
    roots.sum { |square, coefficient| coefficient.to_f * Math.sqrt(square) }
  end

  def reality_complete(positive_coefficients)
    positive_coefficients.each_with_object({}) do |(key, value), output|
      output[key] = value
      output[key_negate(key)] = value.map(&:conjugate)
    end
  end

  def positive_field
    reality_complete(
      [1, 0, 0] => [
        Complex(0, 0), Complex(-2, 0), Complex(-2, 1)
      ],
      [0, 1, 0] => [
        Complex(1, 1), Complex(0, 0), Complex(-2, 1)
      ],
      [-1, -1, 0] => [
        Complex(Rational(-3, 2), Rational(-1, 2)),
        Complex(Rational(3, 2), Rational(1, 2)),
        Complex(-2, 1)
      ]
    )
  end

  def negative_field
    reality_complete(
      [1, 0, 0] => [
        Complex(0, 0), Complex(2, -1), Complex(0, 2)
      ],
      [0, 1, 0] => [
        Complex(1, 2), Complex(0, 0), Complex(-2, 1)
      ],
      [-1, -1, 0] => [
        Complex(Rational(1, 2), Rational(3, 2)),
        Complex(Rational(-1, 2), Rational(-3, 2)),
        Complex(1, 2)
      ]
    )
  end

  def negate_field(field)
    field.to_h { |key, value| [key, vector_scale(-1.to_r, value)] }
  end

  def frequency_remap(field, factor)
    field.to_h do |key, value|
      [key.map { |entry| factor * entry }, value]
    end
  end

  def energy(field)
    field.values.sum do |vector|
      vector.sum { |entry| entry.real**2 + entry.imag**2 }
    end
  end

  def gradient_energy(field)
    field.sum { |key, vector| key_square(key) * energy(key => vector) }
  end

  def test_finite_chord_algebra_keeps_alpha_weight
    velocity = [2.to_r, -1.to_r, 3.to_r]
    chord = [-2.to_r, 4.to_r, 1.to_r]
    acceleration = [5.to_r, 2.to_r, -3.to_r]
    radius_squared = chord.sum { |entry| entry**2 }
    velocity_squared = velocity.sum { |entry| entry**2 }
    velocity_chord = 3.times.sum { |index| velocity[index] * chord[index] }
    velocity_acceleration = 3.times.sum do |index|
      velocity[index] * acceleration[index]
    end
    chord_acceleration = 3.times.sum do |index|
      chord[index] * acceleration[index]
    end

    direct = velocity_squared * chord_acceleration +
      2 * velocity_chord * velocity_acceleration
    expanded = 3.times.sum do |index|
      (velocity_squared * chord[index] +
       2 * velocity_chord * velocity[index]) * acceleration[index]
    end

    assert_equal direct, expanded
    assert_includes text, "|v|^2z+2(v\\cdot z)v"
    assert_includes text, "The second summand in the numerator is exactly the"
    assert_includes text, "removing \\(\\alpha\\)"
  end

  def test_symmetrized_receiver_is_variational_derivative
    assert_includes text, "\\Phi_u(y,x)=-\\Phi_u(x,y)"
    assert_includes text, "\\mathcal W[u](x)"
    assert_includes text, "\\mathcal L_{\\rm all}=\\int f(x)\\cdot\\mathcal W[u](x)"
    assert_includes text, "D\\mathcal P_{1/2}(u)[h]"
    assert_includes text, "=-4\\int h\\cdot\\mathcal W[u]"
    assert_includes text, "=-{1\\over4}D\\mathcal P_{1/2}(u)[D_tu]"
  end

  def test_pressure_poisson_split_is_not_a_square
    assert_includes text, "q:=-\\Delta p=\\partial_i u_j\\,\\partial_j u_i"
    assert_includes text, "q=|S|^2-{1\\over2}|\\omega|^2"
    assert_includes text, "\\operatorname{tr}\\mathsf S_u"
    assert_includes text, "{q(y+sz)\\over3}\\,\\Phi_u\\cdot z"
    assert_includes text, "-\\mathsf S_u^\\circ:(\\nabla^2p)^\\circ"
    assert_includes text, "\\left\\langle q,"
    assert_includes text, "different quadratic scalars"
  end

  def test_full_acceleration_row_bounds_have_exact_constants
    chord_row = 9.to_r
    response_row = 4.to_r
    radial_part = Math.sqrt((chord_row * response_row).to_f)
    weighted_power_part = 2 * radial_part

    assert_equal 6.0, radial_part
    assert_equal 18.0, radial_part + weighted_power_part
    assert_includes text, "\\le3\\mathcal K_{\\rm ch}^{1/2}\\mathcal R_g^{1/2}"
    assert_includes text, "\\mathcal R_p={1\\over2}\\|\\Lambda^{3/2}p\\|_2^2"
    assert_includes text, "\\mathcal R_\\nu={\\nu^2\\over2}\\|\\Lambda^{5/2}u\\|_2^2"
    assert_includes text, "\\mathcal R_{D_tu}=\\mathcal R_p+\\mathcal R_\\nu"
  end

  def test_explicit_fields_are_real_and_divergence_free
    [positive_field, negative_field].each do |field|
      field.each do |key, value|
        assert_equal 0, frequency_dot(key, value)
        assert_equal value.map(&:conjugate), field.fetch(key_negate(key))
      end
    end
  end

  def test_positive_calibration_has_exact_pressure_and_viscous_values
    field = positive_field
    pressure_roots = longitudinal_roots(field, pressure_force(field))
    viscous_roots = longitudinal_roots(field, viscous_force(field))

    assert_equal({ 1 => -14.to_r, 2 => 14.to_r }, current_roots(field))
    assert_equal(
      { 1 => 29.to_r, 5 => 6.to_r, 2 => 2.to_r },
      pressure_roots
    )
    assert_equal({ 1 => -14.to_r, 2 => 14.to_r }, viscous_roots)
    assert_operator roots_value(pressure_roots), :>, 0
    assert_operator roots_value(viscous_roots), :>, 0
  end

  def test_negative_calibration_has_exact_pressure_and_viscous_values
    field = negative_field
    pressure_roots = longitudinal_roots(field, pressure_force(field))
    viscous_roots = longitudinal_roots(field, viscous_force(field))

    assert_equal({ 1 => 16.to_r, 2 => -16.to_r }, current_roots(field))
    assert_equal(
      { 1 => Rational(-282, 5), 5 => 10.to_r, 2 => Rational(37, 5) },
      pressure_roots
    )
    assert_equal({ 1 => 16.to_r, 2 => -16.to_r }, viscous_roots)
    assert_operator roots_value(pressure_roots), :<, 0
    assert_operator roots_value(viscous_roots), :<, 0
  end

  def test_pressure_is_even_and_viscosity_is_odd_under_velocity_reversal
    field = positive_field
    reversed = negate_field(field)

    pressure = roots_value(longitudinal_roots(field, pressure_force(field)))
    reversed_pressure = roots_value(
      longitudinal_roots(reversed, pressure_force(reversed))
    )
    viscous = roots_value(longitudinal_roots(field, viscous_force(field)))
    reversed_viscous = roots_value(
      longitudinal_roots(reversed, viscous_force(reversed))
    )

    assert_in_delta pressure, reversed_pressure, 1e-12
    assert_in_delta viscous, -reversed_viscous, 1e-12
    assert_includes text, "\\mathcal W[-u]=\\mathcal W[u]"
    assert_includes text, "\\mathcal L_{\\rm all}^{\\nu}[-u]"
    assert_includes text, "=-\\mathcal L_{\\rm all}^{\\nu}[u]"
  end

  def test_fixed_energy_frequency_remap_has_higher_response_scaling
    factor = 3
    field = positive_field
    remapped = frequency_remap(field, factor)

    base_pressure = roots_value(longitudinal_roots(field, pressure_force(field)))
    scaled_pressure = roots_value(
      longitudinal_roots(remapped, pressure_force(remapped))
    )
    base_viscous = roots_value(longitudinal_roots(field, viscous_force(field)))
    scaled_viscous = roots_value(
      longitudinal_roots(remapped, viscous_force(remapped))
    )

    assert_equal energy(field), energy(remapped)
    assert_equal factor**2 * gradient_energy(field), gradient_energy(remapped)
    assert_in_delta factor**3 * base_pressure, scaled_pressure, 1e-9
    assert_in_delta factor**4 * base_viscous, scaled_viscous, 1e-9
    assert_includes text, "=N^3\\mathcal L_{\\rm all}^{p}[U^\\pm]"
    assert_includes text, "=N^4\\mathcal L_{\\rm all}^{\\nu}[U^\\pm]"
  end

  def test_variance_refund_does_not_change_longitudinal_receiver
    assert_includes text, "\\mathcal A_{\\rm all}-\\mathcal V_{\\rm rad}"
    assert_includes text, "+\\mathcal L_{\\rm all}^{p}"
    assert_includes text, "+\\mathcal L_{\\rm all}^{\\nu}"
    assert_includes text, "changes neither \\(\\mathcal W[u]\\)"
    assert_includes text, "\\mathfrak c+2\\alpha\\chi=3\\mathfrak c"
  end

  def test_scope_is_exact_and_honest
    assert_includes text, "proved noncanonical exact identity"
    assert_includes text, "No \\(\\alpha\\) factor is dropped"
    assert_includes text, "no regional pressure part is selected"
    assert_includes text, "does **not** prove (FSQ.37)"
    assert_includes text, "No such control, (TIR.37a), or MPP closure is"
    refute_includes text.downcase, "rectangle"
  end

  def test_note_has_no_control_byte_corruption
    bytes = File.binread(NOTE).bytes
    forbidden = [0x08, 0x09, 0x0b, 0x0c, 0x0d]

    forbidden.each { |byte| refute_includes bytes, byte }
  end
end
