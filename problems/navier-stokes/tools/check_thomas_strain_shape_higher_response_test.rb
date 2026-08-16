#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasStrainShapeHigherResponseTest < Minitest::Test
  NOTE = File.expand_path(
    "../theorem-construction/thomas-strain-shape-pressure-explicit-higher-response-and-finite-chord-obstruction-20260804.md",
    __dir__
  )

  def test_local_pressure_explicit_shape_and_frame_response
    a = 3.to_r
    d = 2.to_r
    nu = Rational(7, 5)
    omega = [4.to_r, 5.to_r, 6.to_r]
    strain = diagonal(-a - d, -a + d, 2 * a)
    rotation = antisymmetric_from_vorticity(omega)
    pressure_circ = [
      [2.to_r, 1.to_r, 3.to_r],
      [1.to_r, -3.to_r, 4.to_r],
      [3.to_r, 4.to_r, 1.to_r]
    ]
    lap_strain = [
      [-1.to_r, 2.to_r, -2.to_r],
      [2.to_r, 4.to_r, 5.to_r],
      [-2.to_r, 5.to_r, -3.to_r]
    ]

    strain_square = multiply(strain, strain)
    i2 = trace(strain_square)
    omega_square = dot(omega, omega)
    pressure_source = i2 - omega_square / 2
    pressure_hessian = add(
      scale(identity, -pressure_source / 3),
      pressure_circ
    )
    strain_dot = add(
      add(scale(strain_square, -1), scale(multiply(rotation, rotation), -1)),
      add(scale(pressure_hessian, -1), scale(lap_strain, nu))
    )

    assert_equal 0, trace(strain)
    assert_equal 0, trace(pressure_circ)
    assert_equal 0, trace(lap_strain)
    assert_equal 0, trace(strain_dot)

    a_dot = strain_dot[2][2] / 2
    a_formula = -a**2 + d**2 / 3 +
                (omega[0]**2 + omega[1]**2) / 24 - omega[2]**2 / 12 -
                pressure_circ[2][2] / 2 + nu * lap_strain[2][2] / 2
    assert_equal a_formula, a_dot

    d_dot = (strain_dot[1][1] - strain_dot[0][0]) / 2
    d_formula = 2 * a * d + (omega[0]**2 - omega[1]**2) / 8 +
                (pressure_circ[0][0] - pressure_circ[1][1]) / 2 +
                nu * (lap_strain[1][1] - lap_strain[0][0]) / 2
    assert_equal d_formula, d_dot

    eigenvalues = [-a - d, -a + d, 2 * a]
    frame_direct = strain_dot[1][0] / (eigenvalues[0] - eigenvalues[1])
    frame_formula = (
      nu * lap_strain[1][0] - omega[0] * omega[1] / 4 -
      pressure_circ[1][0]
    ) / (eigenvalues[0] - eigenvalues[1])
    assert_equal frame_formula, frame_direct

    q_dot_direct = -frobenius(cofactor(strain), strain_dot) / 2
    q_dot_invariant = i2**2 / 12 - omega_square * i2 / 24 +
                      dot(omega, matrix_vector(strain_square, omega)) / 8 +
                      frobenius(strain_square, pressure_circ) / 2 -
                      nu * frobenius(strain_square, lap_strain) / 2
    assert_equal q_dot_invariant, q_dot_direct

    q_dot_shape = 3 * a**4 + 2 * a**2 * d**2 + d**4 / 3 +
                  (d**2 - 3 * a**2) * (
                    (omega[0]**2 + omega[1]**2) / 24 - omega[2]**2 / 12
                  ) +
                  a * d * (omega[0]**2 - omega[1]**2) / 4 -
                  (d**2 - 3 * a**2) * pressure_circ[2][2] / 2 +
                  a * d * (pressure_circ[0][0] - pressure_circ[1][1]) +
                  nu * (
                    (d**2 - 3 * a**2) * lap_strain[2][2] / 2 +
                    a * d * (lap_strain[1][1] - lap_strain[0][0])
                  )
    assert_equal q_dot_invariant, q_dot_shape
  end

  def test_pressure_complete_periodic_seed_has_both_response_signs
    base = periodic_seed_modes

    assert_equal Rational(1, 16), strain_shape_mass(base)
    assert_equal Rational(1, 4),
                 strain_shape_derivative(base, nonlinear_field(base))
    assert_equal Rational(-1, 4),
                 strain_shape_derivative(base, laplacian_field(base))

    nonlinear_field(base).each do |wave, amplitude|
      assert_equal 0, dot(wave, amplitude), "non-Leray output at #{wave.inspect}"
    end

    nu = 2.to_r
    n = 3
    low = dilate_field(base, amplitude: 3, frequency: n)
    high = dilate_field(base, amplitude: 9, frequency: n)

    low_response = strain_shape_derivative(
      low,
      add_fields(nonlinear_field(low), scale_field(nu, laplacian_field(low)))
    )
    high_response = strain_shape_derivative(
      high,
      add_fields(nonlinear_field(high), scale_field(nu, laplacian_field(high)))
    )

    assert_operator strain_shape_mass(low), :>, 0
    assert_operator strain_shape_mass(high), :>, 0
    assert_operator low_response, :<, 0
    assert_operator high_response, :>, 0

    assert_equal Rational(3**3 * n**3, 16), strain_shape_mass(low)
    assert_equal Rational(3**3 * n**4 * (3 - nu * n), 4), low_response
    assert_equal Rational(9**3 * n**4 * (9 - nu * n), 4), high_response
  end

  def test_one_contraction_abc_region_has_no_energy_clock_charge
    one_contraction = [
      [0.to_r, Rational(-1, 2), Rational(-1, 2)],
      [Rational(-1, 2), 0.to_r, Rational(-1, 2)],
      [Rational(-1, 2), Rational(-1, 2), 0.to_r]
    ]
    two_contractions = scale(one_contraction, -1)

    assert_equal Rational(1, 8), -determinant(one_contraction) / 2
    assert_equal Rational(-1, 8), -determinant(two_contractions) / 2

    samples = 18
    signed_shape = 0.0
    positive_shape = 0.0
    energy = 0.0
    samples.times do |ix|
      samples.times do |iy|
        samples.times do |iz|
          x = 2 * Math::PI * ix / samples
          y = 2 * Math::PI * iy / samples
          z = 2 * Math::PI * iz / samples
          gradient = abc_gradient(x, y, z)
          strain = scale(add(gradient, transpose(gradient)), 0.5)
          q = -determinant(strain) / 2
          velocity = abc_velocity(x, y, z)

          signed_shape += q
          positive_shape += [q, 0.0].max
          energy += dot(velocity, velocity)
        end
      end
    end

    normalization = samples**3
    signed_shape /= normalization
    positive_shape /= normalization
    energy /= normalization

    assert_in_delta 0.0, signed_shape, 1.0e-12
    assert_operator positive_shape, :>, 0
    assert_in_delta 3.0, energy, 1.0e-12

    amplitude = 2.0
    nu = 0.7
    action_n1 = positive_shape * amplitude**3 / (3 * nu)
    action_n9 = 9 * positive_shape * amplitude**3 / (3 * nu)
    enstrophy_clock_n1 = amplitude**2 * energy / (2 * nu)
    enstrophy_clock_n9 = amplitude**2 * energy / (2 * nu)

    assert_in_delta 9 * action_n1, action_n9, 1.0e-12
    assert_in_delta enstrophy_clock_n1, enstrophy_clock_n9, 1.0e-12
  end

  def test_signed_telescope_constants_and_fixed_selector_joining
    z_initial = 5.to_r
    z_terminal = 17.to_r
    nu = Rational(3, 2)
    palinstrophy_action = 11.to_r
    shape_prefix = (z_terminal - z_initial) / 16 +
                   nu * palinstrophy_action / 8

    current_prefix = Rational(7, 3)
    coefficient = Rational(64, 15)
    finite_chord_prefix = current_prefix - coefficient * shape_prefix

    assert_equal current_prefix,
                 coefficient * shape_prefix + finite_chord_prefix
    assert_operator shape_prefix, :>, 0
  end

  def test_note_preserves_pressure_frame_finite_chord_and_open_boundary
    note = File.read(NOTE)

    assert_includes note, "one velocity-pressure history"
    assert_includes note, %q{D_tS=-S^2-\Omega^2-H+\nu\Delta S}
    assert_includes note, %q{\langle D_te_i,e_j\rangle}
    assert_includes note, %q{D_t\mathfrak q}
    assert_includes note, %q{{1\over2}S^2:H^\circ}
    assert_includes note, %q{\mathscr Q(t)={1\over16}Z'(t)}
    assert_includes note, "terminal\nenstrophy and positive palinstrophy"
    assert_includes note, %q{(\lambda_1,\lambda_2,\lambda_3)=(-c,b,e)}
    assert_includes note, "one contracting direction and\ntwo expanding directions"
    assert_includes note, %q{{C_+A^3N\over3\nu}}
    assert_includes note, %q{\nabla\theta_\varepsilon(\mathfrak q)}
    assert_includes note, %q{D\mathcal E_\zeta(u)[h]}
    assert_includes note, %q{\nabla p(x)-\nabla p(x-rn)}
    assert_includes note, %q{{A^3N^4\over4}(A-\nu N)}
    assert_includes note, "a universal higher-response\nturn-down"
    assert_includes note, "not a\nproof of (TIR.37a)"
    assert_includes note, "MPP remain open"
  end

  private

  def periodic_seed_modes
    modes = {}
    add_real_mode(modes, [0, 1, 0], [Rational(1, 2), 0, Rational(1, 2)])
    add_real_mode(modes, [1, 0, 0], [0, Rational(1, 2), Rational(1, 2)])
    add_real_mode(
      modes,
      [1, 1, 0],
      [Complex(0, -Rational(1, 2)),
       Complex(0, Rational(1, 2)),
       Complex(0, -Rational(1, 2))]
    )
    modes
  end

  def add_real_mode(modes, wave, amplitude)
    modes[wave] = amplitude
    modes[negate_wave(wave)] = amplitude.map(&:conj)
  end

  def dilate_field(field, amplitude:, frequency:)
    field.to_h do |wave, mode|
      [wave.map { |entry| frequency * entry },
       mode.map { |entry| amplitude * entry }]
    end
  end

  def nonlinear_field(field)
    raw = {}
    field.each do |left_wave, left_mode|
      field.each do |right_wave, right_mode|
        output = add_vectors(left_wave, right_wave)
        next if output.all?(&:zero?)

        contribution = scale_vector(
          right_mode,
          Complex(0, 1) * dot(left_mode, right_wave)
        )
        raw[output] = raw.key?(output) ?
          add_vectors(raw[output], contribution) : contribution
      end
    end

    raw.to_h do |wave, amplitude|
      [wave, scale_vector(project_leray(wave, amplitude), -1)]
    end
  end

  def laplacian_field(field)
    field.to_h do |wave, amplitude|
      [wave, scale_vector(amplitude, -dot(wave, wave))]
    end
  end

  def strain_shape_mass(field)
    strains = field.to_h { |wave, mode| [wave, strain_mode(wave, mode)] }
    cube = 0.to_c
    strains.each do |left_wave, left|
      strains.each do |middle_wave, middle|
        right_wave = negate_wave(add_vectors(left_wave, middle_wave))
        next unless strains.key?(right_wave)

        cube += trace(multiply(multiply(left, middle), strains.fetch(right_wave)))
      end
    end
    (-cube / 6).real
  end

  def strain_shape_derivative(field, direction)
    strains = field.to_h { |wave, mode| [wave, strain_mode(wave, mode)] }
    tangent = direction.to_h { |wave, mode| [wave, strain_mode(wave, mode)] }
    derivative = 0.to_c
    strains.each do |left_wave, left|
      strains.each do |middle_wave, middle|
        right_wave = negate_wave(add_vectors(left_wave, middle_wave))
        next unless tangent.key?(right_wave)

        derivative += 3 * trace(
          multiply(multiply(left, middle), tangent.fetch(right_wave))
        )
      end
    end
    (-derivative / 6).real
  end

  def strain_mode(wave, amplitude)
    gradient = scale(outer(amplitude, wave), Complex(0, 1))
    scale(add(gradient, transpose(gradient)), Rational(1, 2))
  end

  def project_leray(wave, vector)
    scale_vector(
      add_vectors(
        vector,
        scale_vector(wave, -dot(wave, vector) / dot(wave, wave))
      ),
      1
    )
  end

  def add_fields(left, right)
    keys = left.keys | right.keys
    keys.to_h do |wave|
      [wave, add_vectors(
        left.fetch(wave, [0, 0, 0]),
        right.fetch(wave, [0, 0, 0])
      )]
    end
  end

  def scale_field(factor, field)
    field.to_h { |wave, mode| [wave, scale_vector(mode, factor)] }
  end

  def diagonal(a, b, c)
    [[a, 0, 0], [0, b, 0], [0, 0, c]]
  end

  def identity
    diagonal(1.to_r, 1.to_r, 1.to_r)
  end

  def antisymmetric_from_vorticity(omega)
    wx, wy, wz = omega
    [
      [0.to_r, -wz / 2, wy / 2],
      [wz / 2, 0.to_r, -wx / 2],
      [-wy / 2, wx / 2, 0.to_r]
    ]
  end

  def abc_velocity(x, y, z)
    [
      Math.sin(z) + Math.cos(y),
      Math.sin(x) + Math.cos(z),
      Math.sin(y) + Math.cos(x)
    ]
  end

  def abc_gradient(x, y, z)
    [
      [0.0, -Math.sin(y), Math.cos(z)],
      [Math.cos(x), 0.0, -Math.sin(z)],
      [-Math.sin(x), Math.cos(y), 0.0]
    ]
  end

  def cofactor(matrix)
    a, b, c = matrix[0]
    d, e, f = matrix[1]
    g, h, i = matrix[2]
    [
      [e * i - f * h, -(d * i - f * g), d * h - e * g],
      [-(b * i - c * h), a * i - c * g, -(a * h - b * g)],
      [b * f - c * e, -(a * f - c * d), a * e - b * d]
    ]
  end

  def determinant(matrix)
    matrix[0][0] * (matrix[1][1] * matrix[2][2] - matrix[1][2] * matrix[2][1]) -
      matrix[0][1] * (matrix[1][0] * matrix[2][2] - matrix[1][2] * matrix[2][0]) +
      matrix[0][2] * (matrix[1][0] * matrix[2][1] - matrix[1][1] * matrix[2][0])
  end

  def outer(left, right)
    left.map { |entry| right.map { |other| entry * other } }
  end

  def transpose(matrix)
    matrix.transpose
  end

  def multiply(left, right)
    3.times.map do |row|
      3.times.map do |column|
        3.times.sum { |index| left[row][index] * right[index][column] }
      end
    end
  end

  def matrix_vector(matrix, vector)
    matrix.map { |row| dot(row, vector) }
  end

  def trace(matrix)
    3.times.sum { |index| matrix[index][index] }
  end

  def frobenius(left, right)
    3.times.sum do |row|
      3.times.sum { |column| left[row][column] * right[row][column] }
    end
  end

  def add(left, right)
    left.zip(right).map do |left_row, right_row|
      left_row.zip(right_row).map { |a, b| a + b }
    end
  end

  def scale(matrix, factor)
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

  def negate_wave(wave)
    wave.map(&:-@)
  end
end
