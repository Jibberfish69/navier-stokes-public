#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasHeterochiralChildFractionBoundaryTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  NOTE = File.join(
    ROOT,
    "theorem-construction",
    "thomas-heterochiral-child-fraction-local-nonlocal-boundary-20260803.md"
  )
  TOLERANCE = 1.0e-10

  def transfers(radii, signs, gamma)
    h = radii.zip(signs).map { |radius, sign| radius * sign }
    [
      gamma * (h[2] - h[1]),
      gamma * (h[0] - h[2]),
      gamma * (h[1] - h[0])
    ]
  end

  def positive_unique_configuration(a, b, c, singleton)
    signs = [1, 1, 1]
    signs[singleton] = -1
    trial = transfers([a, b, c], signs, 1.0)
    gamma = trial[singleton].positive? ? 1.0 : -1.0
    [transfers([a, b, c], signs, gamma), signs]
  end

  def unique_fraction(radii, singleton)
    values, = positive_unique_configuration(*radii, singleton)
    donor = values.each_index.find { |index| values[index].negative? }
    donor_loss = -values[donor]
    critical_ratio = radii[singleton] * values[singleton] /
                     (radii[donor] * donor_loss)
    [values[singleton] / donor_loss, critical_ratio, values, donor_loss]
  end

  def theta_bound(eta)
    if eta <= 0.5
      (1.0 - eta) / (2.0 - eta)
    else
      (1.0 - eta) / (1.0 + eta)
    end
  end

  def test_exact_three_fraction_formulas_and_energy_split
    a = 0.7
    b = 1.1
    c = 1.6
    expected = [
      (c - b) / (a + c),
      (c - a) / (b + c),
      (b - a) / (b + c)
    ]

    3.times do |singleton|
      fraction, critical_ratio, values, donor_loss =
        unique_fraction([a, b, c], singleton)
      gains = values.select(&:positive?).sum
      expected_critical = [
        a * (c - b) / (b * (a + c)),
        b * (c - a) / (a * (b + c)),
        c * (b - a) / (a * (b + c))
      ]

      assert_in_delta expected[singleton], fraction, TOLERANCE
      assert_in_delta expected_critical[singleton], critical_ratio, TOLERANCE
      assert_in_delta donor_loss, gains, TOLERANCE
      assert_operator fraction, :<, 0.5
      assert_equal 1, values.count(&:negative?)
      assert_equal 2, values.count(&:positive?)
    end
  end

  def test_sharp_local_bound_on_dense_triangle_grid
    [0.1, 0.25, 0.5, 0.7, 0.9].each do |eta|
      bound = theta_bound(eta)
      41.times do |ix|
        x = eta + (1.0 - eta) * ix / 40.0
        y_min = [x, 1.0 - x + 1.0e-6].max
        next if y_min > 1.0

        41.times do |iy|
          y = y_min + (1.0 - y_min) * iy / 40.0
          next unless x + y > 1.0

          3.times do |singleton|
            fraction, critical_ratio, = unique_fraction([x, y, 1.0], singleton)
            assert_operator fraction, :<=, bound + 1.0e-8
            assert_operator critical_ratio, :<=,
                            (1.0 - eta) / (2.0 * eta) + 1.0e-8
          end
        end
      end
    end
  end

  def test_high_high_low_high_singleton_fraction_tends_to_one_half
    [1.0e-1, 1.0e-2, 1.0e-3, 1.0e-4].each do |epsilon|
      radii = [epsilon, 1.0 - 0.5 * epsilon, 1.0]
      theta_b, critical_b, = unique_fraction(radii, 1)
      theta_c, critical_c, = unique_fraction(radii, 2)
      theta_a, = unique_fraction(radii, 0)

      assert_in_delta 0.5, theta_b, epsilon
      assert_in_delta 0.5, theta_c, epsilon
      assert_operator theta_a, :<, epsilon
      assert_in_delta 1.0 / (2.0 * epsilon), critical_b,
                      2.0
      assert_in_delta 1.0 / (2.0 * epsilon), critical_c,
                      2.0
    end
  end

  def test_dyadic_low_sums_have_eta_squared_and_cubed_gain
    rng = Random.new(20_260_803)
    high = 128.0
    eta = 0.125
    low_frequencies = 20.times.map { |index| eta * high * 2.0**(-index) }
    amplitudes = low_frequencies.map { rng.rand }
    critical_stock = low_frequencies.zip(amplitudes).sum do |frequency, amplitude|
      frequency * amplitude**2
    end

    first_sum = low_frequencies.zip(amplitudes).sum do |frequency, amplitude|
      frequency**2.5 * amplitude
    end
    second_sum = low_frequencies.zip(amplitudes).sum do |frequency, amplitude|
      frequency**3.5 * amplitude
    end

    first_constant = 1.0 / Math.sqrt(1.0 - 2.0**(-4))
    second_constant = 1.0 / Math.sqrt(1.0 - 2.0**(-6))

    assert_operator first_sum, :<=,
                    first_constant * eta**2 * high**2 * Math.sqrt(critical_stock)
    assert_operator second_sum, :<=,
                    second_constant * eta**3 * high**3 * Math.sqrt(critical_stock)
  end

  def test_absorption_forces_local_fraction_gap_to_zero
    viscosity = 0.7
    lp_constant = 3.0
    previous_gap = Float::INFINITY

    [1.0e2, 1.0e6, 1.0e10].each do |critical_stock|
      eta = Math.sqrt(viscosity / (2.0 * lp_constant * Math.sqrt(critical_stock)))
      gap = 0.5 - theta_bound(eta)

      assert_operator gap, :>, 0.0
      assert_operator gap, :<, previous_gap
      assert_in_delta eta / (2.0 * (2.0 - eta)), gap, TOLERANCE
      previous_gap = gap
    end
  end

  def test_viscosity_cannot_change_the_geometry_fraction_uniformly
    viscosity = 1.0
    frequency = 10.0
    geometry = 0.2
    ratios = [10.0, 100.0, 1_000.0].map do |amplitude|
      viscous_rate = viscosity * frequency**2 * amplitude**2
      nonlinear_rate = geometry * frequency * amplitude**3
      viscous_rate / nonlinear_rate
    end

    assert_operator ratios[1], :<, ratios[0]
    assert_operator ratios[2], :<, ratios[1]
    assert_in_delta ratios[0] / 100.0, ratios[2], TOLERANCE
  end

  def test_note_preserves_full_field_custody_and_open_status
    note = File.read(NOTE)

    assert_includes note, "strictly less than one half"
    assert_includes note, "critical half barrier"
    assert_includes note, "ratio diverge"
    assert_includes note, "high--high--low limit"
    assert_includes note, "full signed"
    assert_includes note, "No positive part is taken"
    assert_includes note, "same mode can be the donor in one incident triad"
    assert_includes note, "overcounts the one mode"
    assert_includes note, "No\nbound for `(TIR.37a)`"
  end
end
