#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasFixedRadialSelectorStrainShapeTest < Minitest::Test
  NOTE = File.expand_path(
    "../theorem-construction/thomas-fixed-radial-selector-full-field-strain-shape-finite-chord-normal-form-20260804.md",
    __dir__
  )

  def test_global_betchov_recombination_gives_strain_shape_constant
    a = 5.to_r
    d = 2.to_r
    ell = Rational(7, 3)
    strain = diagonal(-a - d, -a + d, 2 * a)
    trace_s3 = trace(multiply(multiply(strain, strain), strain))
    globally_recombined_t0 = Rational(4, 3) * trace_s3

    assert_equal 6 * a * (a**2 - d**2), trace_s3
    assert_equal 8 * a * (a**2 - d**2), globally_recombined_t0

    first_jet_current = -Rational(8, 15) * ell * globally_recombined_t0
    strain_shape = Rational(64, 15) * ell * a * (d**2 - a**2)
    assert_equal strain_shape, first_jet_current
  end

  def test_explicit_divergence_free_seed_has_nonzero_global_shape
    samples = 64
    trace_cube = 0.0
    t0 = 0.0
    divergence = 0.0

    samples.times do |ix|
      samples.times do |iy|
        x = 2 * Math::PI * ix / samples
        y = 2 * Math::PI * iy / samples
        gradient = seed_gradient(x, y)
        strain = scale(add(gradient, transpose(gradient)), 0.5)

        divergence = [divergence, trace(gradient).abs].max
        trace_cube += trace(multiply(multiply(strain, strain), strain))
        t0 += trace(multiply(multiply(transpose(gradient), gradient), strain))
      end
    end

    normalization = samples**2
    assert_operator divergence, :<, 1.0e-14
    assert_in_delta(-3.0 / 8, trace_cube / normalization, 1.0e-12)
    assert_in_delta(-1.0 / 2, t0 / normalization, 1.0e-12)
    assert_in_delta(
      Rational(4, 3).to_f * trace_cube,
      t0,
      1.0e-9
    )
  end

  def test_heat_age_finite_chord_normal_form
    # Scalar cubic audit of the exact heat integration in (FRS.23)--(FRS.24).
    nu = Rational(3, 5)
    heat_rate = 7.to_r
    u = 4.to_r
    source = Rational(-5, 2)

    defect = u**3
    heat_storage = u**3 / (3 * nu * heat_rate)
    source_insertion = u**2 * source / (nu * heat_rate)
    physical_velocity = source - nu * heat_rate * u
    storage_derivative = u**2 * physical_velocity / (nu * heat_rate)

    assert_equal source_insertion - defect, storage_derivative
    assert_equal defect, -storage_derivative + source_insertion
    assert_equal u**3 / (3 * nu * heat_rate), heat_storage
  end

  def test_fixed_selector_scaling_forces_signed_cancellation
    lambda = 11.to_r
    current = Rational(5, 7)
    strain_shape = Rational(-3, 8)
    paid_mass = Rational(13, 17)

    scaled_current = lambda**2 * current
    scaled_shape = lambda**3 * strain_shape
    scaled_defect = scaled_current - scaled_shape

    assert_equal scaled_current, scaled_shape + scaled_defect

    current_prefix = scaled_current / lambda**2
    shape_prefix = scaled_shape / lambda**2
    defect_prefix = scaled_defect / lambda**2

    assert_equal current, current_prefix
    assert_equal lambda * strain_shape, shape_prefix
    assert_equal current - lambda * strain_shape, defect_prefix
    assert_equal paid_mass / lambda, paid_mass * lambda / lambda**2
  end

  def test_note_keeps_full_field_pressure_complete_residual_open
    note = File.read(NOTE)

    assert_includes note, "One smooth finite-energy datum"
    assert_includes note, %q{Q(u)=-(u\cdot\nabla)u-\nabla p}
    assert_includes note, %q{\mathcal E_\zeta(w)}
    assert_includes note, %q{{64\ell_0\over15\pi}\int a(d^2-a^2)}
    assert_includes note, "There is no cofactor collar"
    assert_includes note, %q{\mathcal B=\mathcal A_\zeta+\mathcal F_\zeta}
    assert_includes note, %q{\mathfrak R_\zeta^{\rm fc}(u)}
    assert_includes note, %q{\mathcal E_\zeta(u)
 =-\mathcal F_\zeta'+\mathfrak R_\zeta^{\rm fc}}
    assert_includes note, "smallest exact signed remainder"
    assert_includes note, "supercritical term"
    assert_includes note, "does not prove `(TIR.37a)`"
    assert_includes note, "remains open"
  end

  private

  def diagonal(a, b, c)
    [[a, 0, 0], [0, b, 0], [0, 0, c]]
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

  def add(left, right)
    3.times.map do |row|
      3.times.map { |column| left[row][column] + right[row][column] }
    end
  end

  def scale(matrix, factor)
    matrix.map { |row| row.map { |entry| factor * entry } }
  end

  def seed_gradient(x, y)
    cxy = Math.cos(x + y)
    [
      [cxy, -Math.sin(y) + cxy, 0.0],
      [-Math.sin(x) - cxy, -cxy, 0.0],
      [-Math.sin(x) + cxy, -Math.sin(y) + cxy, 0.0]
    ]
  end
end
