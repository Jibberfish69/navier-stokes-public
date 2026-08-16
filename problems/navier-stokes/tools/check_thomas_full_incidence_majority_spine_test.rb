#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"
require "set"

class ThomasFullIncidenceMajoritySpineTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  NOTE = File.join(
    ROOT,
    "theorem-construction",
    "thomas-full-incidence-majority-spine-and-ultra-nonlocal-wedge-20260803.md"
  )
  TOLERANCE = 1.0e-10

  D0 = [1.0, 0.0, 0.0].freeze
  D1 = [0.0, 10.0, 1.0].freeze
  O0 = [-1.0, -10.0, -1.0].freeze
  D2 = [20.0, 0.0, 100.0].freeze
  O1 = [-20.0, -10.0, -101.0].freeze

  def dot(left, right)
    left.zip(right).sum { |x, y| x * y }
  end

  def hermitian_dot(left, right)
    left.zip(right).sum { |x, y| x.conj * y }
  end

  def add(left, right)
    left.zip(right).map { |x, y| x + y }
  end

  def subtract(left, right)
    left.zip(right).map { |x, y| x - y }
  end

  def scale(scalar, vector)
    vector.map { |entry| scalar * entry }
  end

  def negate(vector)
    scale(-1.0, vector)
  end

  def cross(left, right)
    [
      left[1] * right[2] - left[2] * right[1],
      left[2] * right[0] - left[0] * right[2],
      left[0] * right[1] - left[1] * right[0]
    ]
  end

  def norm(vector)
    Math.sqrt(dot(vector, vector).real)
  end

  def tuple(vector)
    vector.map { |entry| entry.round(12) }.freeze
  end

  def helical_basis(wave, sign)
    radius = norm(wave)
    direction = scale(1.0 / radius, wave)
    reference = direction[2].abs < 0.9 ? [0.0, 0.0, 1.0] : [0.0, 1.0, 0.0]
    projected = subtract(reference, scale(dot(reference, direction), direction))
    first = scale(1.0 / norm(projected), projected)
    second = cross(direction, first)
    first.zip(second).map do |real, imaginary|
      (real + Complex(0.0, sign * imaginary)) / Math.sqrt(2.0)
    end
  end

  def coefficient(wave, sign, amplitude, phase = 0.0)
    scalar = amplitude * Complex.polar(1.0, phase)
    scale(scalar, helical_basis(wave, sign))
  end

  def build_field(entries)
    field = {}
    entries.each do |wave, sign, amplitude, phase|
      value = coefficient(wave, sign, amplitude, phase)
      field[tuple(wave)] = value
      field[tuple(negate(wave))] = value.map(&:conj)
    end
    field
  end

  def leray_source(wave, field)
    key = tuple(wave)
    raw = [Complex(0.0), Complex(0.0), Complex(0.0)]

    field.each do |parent_key, parent|
      partner_key = tuple(subtract(key, parent_key))
      next unless field.key?(partner_key)

      partner = field.fetch(partner_key)
      factor = dot(parent, partner_key)
      raw = add(raw, scale(-Complex::I * factor, partner))
    end

    projection = dot(key, raw) / dot(key, key)
    subtract(raw, scale(projection, key))
  end

  def modal_transfer(wave, field)
    hermitian_dot(field.fetch(tuple(wave)), leray_source(wave, field)).real
  end

  def entries(amplitude_o1)
    [
      [D0, 1, 1.0, 0.0],
      [D1, 1, 1.0, 0.0],
      [O0, -1, 1.0, 0.0],
      [D2, 1, 1.0, 0.0],
      [O1, -1, amplitude_o1, 0.0]
    ]
  end

  def isolated_entries(first:)
    if first
      [[D0, 1, 1.0, 0.0], [D1, 1, 1.0, 0.0], [O0, -1, 1.0, 0.0]]
    else
      [[D1, 1, 1.0, 0.0], [D2, 1, 1.0, 0.0], [O1, -1, 1.0, 0.0]]
    end
  end

  def relay_amplitude
    first = build_field(isolated_entries(first: true))
    second = build_field(isolated_entries(first: false))
    incoming = modal_transfer(D1, first)
    outgoing = -modal_transfer(D1, second)
    incoming / outgoing
  end

  def test_serial_helicity_law_adds_unique_deposit_to_continuing_carrier
    stages = [
      [1.0, 10.0, 10.05],
      [10.0, 100.0, 100.7],
      [100.0, 900.0, 905.0]
    ]
    loss = 1.0
    x = stages.first[0] * loss
    deposits = []

    stages.each do |donor, same_receiver, unique_receiver|
      theta = (same_receiver - donor) / (same_receiver + unique_receiver)
      y = unique_receiver * theta * loss
      next_loss = (1.0 - theta) * loss
      next_x = same_receiver * next_loss

      assert_operator theta, :<, 0.5
      assert_in_delta x + y, next_x, TOLERANCE

      deposits << y
      loss = next_loss
      x = next_x
    end

    initial_x = stages.first[0]
    assert_in_delta deposits.sum, x - initial_x, TOLERANCE
    assert_in_delta 2.0 * deposits.sum,
                    -initial_x + x + deposits.sum,
                    TOLERANCE
  end

  def test_only_two_active_true_leray_triads_and_their_conjugates_exist
    representatives = [D0, D1, O0, D2, O1].map { |wave| tuple(wave) }
    support = (representatives + representatives.map { |wave| tuple(negate(wave)) }).to_set
    triples = Set.new

    support.to_a.repeated_combination(2) do |first, second|
      third = tuple(negate(add(first, second)))
      next unless support.include?(third)

      triples << [first, second, third].sort
    end

    assert_equal 4, triples.length
    assert triples.include?([tuple(D0), tuple(D1), tuple(O0)].sort)
    assert triples.include?([tuple(D1), tuple(D2), tuple(O1)].sort)
  end

  def test_true_leray_field_is_divergence_free_reality_compatible_and_helical
    amplitude = relay_amplitude
    field = build_field(entries(amplitude))

    entries(amplitude).each do |wave, sign, _size, _phase|
      value = field.fetch(tuple(wave))
      conjugate = field.fetch(tuple(negate(wave)))

      assert_in_delta 0.0, dot(wave, value).abs, TOLERANCE
      value.zip(conjugate).each do |entry, reflected|
        assert_in_delta entry.conj.real, reflected.real, TOLERANCE
        assert_in_delta entry.conj.imag, reflected.imag, TOLERANCE
      end

      curl_value = scale(Complex::I, cross(wave, value))
      expected = scale(sign * norm(wave), value)
      curl_value.zip(expected).each do |actual, target|
        assert_in_delta target.real, actual.real, TOLERANCE
        assert_in_delta target.imag, actual.imag, TOLERANCE
      end
    end
  end

  def test_true_leray_recombination_cancels_shared_mode_and_reinforces_critical_current
    amplitude = relay_amplitude
    assert_in_delta 0.2599128505838744, amplitude, 1.0e-12

    field = build_field(entries(amplitude))
    signs = { tuple(D0) => 1, tuple(D1) => 1, tuple(O0) => -1,
              tuple(D2) => 1, tuple(O1) => -1 }
    transfers = signs.to_h do |wave, sign|
      [wave, [modal_transfer(wave, field), sign]]
    end

    assert_in_delta(-0.6663423977361838, transfers.fetch(tuple(D0))[0], 1.0e-12)
    assert_in_delta 0.0, transfers.fetch(tuple(D1))[0], 1.0e-12
    assert_in_delta 0.2992804569247101, transfers.fetch(tuple(O0))[0], 1.0e-12
    assert_in_delta 0.2027974927849868, transfers.fetch(tuple(D2))[0], 1.0e-12
    assert_in_delta 0.1642644480264863, transfers.fetch(tuple(O1))[0], 1.0e-12

    energy_source = transfers.sum { |_wave, (transfer, _sign)| transfer }
    helicity_source = transfers.sum do |wave, (transfer, sign)|
      sign * norm(wave) * transfer
    end
    critical_source = transfers.sum do |wave, (transfer, _sign)|
      norm(wave) * transfer
    end
    unique_source = 2.0 * (
      norm(O0) * transfers.fetch(tuple(O0))[0] +
      norm(O1) * transfers.fetch(tuple(O1))[0]
    )

    assert_in_delta 0.0, energy_source, 1.0e-12
    assert_in_delta 0.0, helicity_source, 1.0e-10
    assert_in_delta 40.03005012526115, critical_source, 1.0e-10
    assert_in_delta unique_source, critical_source, 1.0e-10
  end

  def test_ultra_nonlocal_cutoff_has_the_datum_energy_absorption_exponents
    viscosity = 0.7
    datum_l2 = 3.2
    cutoff_constant = 0.04
    datum_frequency = (viscosity / datum_l2)**2

    [datum_frequency, 10.0 * datum_frequency, 1.0e6 * datum_frequency].each do |high|
      low = cutoff_constant *
            (viscosity / datum_l2)**0.4 * high**0.8

      low_high_ratio = datum_l2 * low**2.5 / high**2
      high_high_low_ratio = datum_l2 * low**3.5 /
                            (viscosity * high**3)

      assert_in_delta cutoff_constant**2.5 * viscosity,
                      low_high_ratio,
                      1.0e-10
      assert_operator high_high_low_ratio, :<=,
                      cutoff_constant**3.5 + TOLERANCE
      assert_operator low / high, :<=, cutoff_constant + TOLERANCE
    end
  end

  def test_wedge_removes_extreme_hhl_but_not_the_critical_growth
    viscosity = 1.1
    datum_l2 = 2.4
    cutoff_constant = 0.03
    previous_ratio = 0.0

    [1.0e5, 1.0e10, 1.0e15].each do |high|
      minimum_low = cutoff_constant *
                    (viscosity / datum_l2)**0.4 * high**0.8
      maximal_critical_ratio = high / (2.0 * minimum_low)

      assert_in_delta(
        0.5 / cutoff_constant * (datum_l2 / viscosity)**0.4 * high**0.2,
        maximal_critical_ratio,
        maximal_critical_ratio * 1.0e-12
      )
      assert_operator maximal_critical_ratio, :>, previous_ratio
      previous_ratio = maximal_critical_ratio
    end
  end

  def test_dynamic_enstrophy_cutoff_has_both_absorption_balances
    viscosity = 0.9
    enstrophy = 7.3
    cutoff_constant = 0.025
    high_roof = 100.0 * enstrophy / viscosity**2

    [high_roof * 1.0e-6, high_roof * 1.0e-3, high_roof * 0.5].each do |high|
      low = cutoff_constant * viscosity**(2.0 / 3.0) *
            enstrophy**(-1.0 / 3.0) * high**(4.0 / 3.0)

      low_high = Math.sqrt(enstrophy) * low**1.5
      high_high_low = Math.sqrt(enstrophy) * low**2.5 /
                      (viscosity * high**3)

      assert_in_delta cutoff_constant**1.5 * viscosity * high**2,
                      low_high,
                      low_high * 1.0e-12
      assert_in_delta cutoff_constant**1.5 * low / high,
                      high_high_low,
                      high_high_low * 1.0e-12
    end
  end

  def test_static_dynamic_intersection_has_paid_l8_geometric_ratio
    viscosity = 0.8
    datum_l2 = 2.7
    enstrophy = 11.0
    static_prefactor = (datum_l2 / viscosity)**0.4
    dynamic_prefactor = enstrophy**(1.0 / 3.0) * viscosity**(-2.0 / 3.0)
    xi = datum_l2**0.25 * enstrophy**0.125 / Math.sqrt(viscosity)

    [1.0e-4, 1.0, 1.0e4, 1.0e8].each do |high|
      ratio = [
        static_prefactor * high**0.2,
        dynamic_prefactor * high**(-1.0 / 3.0)
      ].min

      assert_operator ratio, :<=, xi + TOLERANCE
    end

    time_integrated_enstrophy = datum_l2**2 / (2.0 * viscosity)
    xi_eighth_integral = datum_l2**2 / viscosity**4 *
                         time_integrated_enstrophy
    assert_in_delta datum_l2**4 / (2.0 * viscosity**5),
                    xi_eighth_integral,
                    TOLERANCE
  end

  def test_note_records_strict_reduction_without_claiming_closure
    note = File.read(NOTE)

    assert_includes note, "X_{n+1}=X_n+Y_n"
    assert_includes note, "full modewise recombination"
    assert_includes note, "low--high transport"
    assert_includes note, "high--high-to-low"
    assert_includes note, "contains no critical-height coefficient"
    assert_includes note, "strict reduction in interaction support"
    assert_includes note, "dynamic core"
    assert_includes note, "paid geometric ratio"
    assert_includes note, "No datum-finite prefix for that core"
    assert_includes note, "not an invariant five-mode model"
    assert_includes note, "counterexample to `(TIR.37a)`"
  end
end
