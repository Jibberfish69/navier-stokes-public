#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class PoissonKelvinHalfStepTest < Minitest::Test
  TOLERANCE = 1.0e-12
  NOTE_PATH = File.expand_path(
    "../theorem-construction/" \
    "mpp-poisson-kelvin-half-step-extension-route-audit-20260723.md",
    __dir__
  )

  def test_poisson_moments_reconstruct_every_half_step
    atoms = [
      [0.7, 1.3],
      [2.0, 0.4],
      [5.5, 2.1]
    ]

    (0..5).each do |moment_order|
      moment = atoms.sum do |frequency, mass|
        mass * frequency**2 * factorial(moment_order) /
          (2.0 * frequency)**(moment_order + 1)
      end
      sobolev_order = (1.0 - moment_order) / 2.0
      energy = 0.5 * atoms.sum do |frequency, mass|
        mass * frequency**(2.0 * sobolev_order)
      end
      expected = factorial(moment_order) * energy / 2.0**moment_order

      assert_in_delta expected, moment, TOLERANCE
    end
  end

  def test_boundary_jets_reconstruct_upper_tower
    atoms = [
      [0.8, 0.9],
      [1.7, 2.4],
      [4.2, 0.3]
    ]

    (0..6).each do |derivative_order|
      boundary_jet = atoms.sum do |frequency, mass|
        mass * frequency**2 * (2.0 * frequency)**derivative_order
      end
      energy_order = 1.0 + derivative_order / 2.0
      energy = 0.5 * atoms.sum do |frequency, mass|
        mass * frequency**(2.0 * energy_order)
      end

      assert_in_delta 2.0**(derivative_order + 1) * energy,
                      boundary_jet,
                      1.0e-9
    end
  end

  def test_half_step_triangle_is_log_convex_not_a_free_bound
    atoms = [
      [0.4, 3.0],
      [3.0, 0.7],
      [9.0, 0.2]
    ]
    s = 0.35

    lower = energy(atoms, s)
    middle = energy(atoms, s + 0.5)
    upper = energy(atoms, s + 1.0)

    assert_operator middle**2, :<=, lower * upper + TOLERANCE
    assert_operator upper, :>, middle
  end

  def test_triangular_time_derivative_coefficients
    viscosity = 0.37
    order = 5
    expected_e_coefficient = (-2.0 * viscosity)**order
    expected_p_coefficients = (0...order).map do |spatial_advance|
      (-2.0 * viscosity)**spatial_advance
    end

    recurrence_e_coefficient = 1.0
    order.times { recurrence_e_coefficient *= -2.0 * viscosity }

    assert_in_delta expected_e_coefficient,
                    recurrence_e_coefficient,
                    TOLERANCE
    assert_equal order, expected_p_coefficients.length
    assert_in_delta 1.0, expected_p_coefficients.first, TOLERANCE
    assert_in_delta (-2.0 * viscosity)**(order - 1),
                    expected_p_coefficients.last,
                    TOLERANCE
  end

  def test_velocity_reversal_preserves_quadratic_stock_and_flips_current
    amplitude = 2.3
    quadratic_stock = amplitude**2
    reversed_stock = (-amplitude)**2
    cubic_current = amplitude**3
    reversed_current = (-amplitude)**3

    assert_in_delta quadratic_stock, reversed_stock, TOLERANCE
    assert_in_delta(-cubic_current, reversed_current, TOLERANCE)
  end

  def test_volume_preservation_does_not_control_critical_pullback
    lambda = 11.0
    determinant = lambda * (1.0 / lambda) * 1.0

    # A=diag(lambda,lambda^-1,1), frequency eta=e3, polarization w=e1.
    frequency_factor = 1.0
    polarization_square_factor = lambda**2
    critical_pullback_factor = frequency_factor * polarization_square_factor

    assert_in_delta 1.0, determinant, TOLERANCE
    assert_in_delta lambda**2, critical_pullback_factor, TOLERANCE
    assert_operator critical_pullback_factor, :>, 100.0
  end

  def test_note_preserves_exact_result_and_nonclosure
    text = File.read(NOTE_PATH)

    assert_includes text, "proved-exact-half-step-covariance-strain-bridge"
    assert_includes text, "\\mathcal K_\\Lambda(u):S(u)"
    assert_includes text, "The two Brownian constructions are not one free estimate"
    assert_includes text, "It is a moment/mass/boundary triangle"
    assert_includes text, "Equation (PK.56) is an exact tensor realization of (FT.23)"
    assert_includes text, "The Millennium Prize Problem is"
    assert_includes text, "not closed."
    refute_includes text, "Gold is closed"
  end

  private

  def factorial(value)
    (1..value).reduce(1, :*)
  end

  def energy(atoms, order)
    0.5 * atoms.sum do |frequency, mass|
      mass * frequency**(2.0 * order)
    end
  end
end
