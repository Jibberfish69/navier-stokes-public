#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasBandEdgeFimRecombinationTest < Minitest::Test
  TOL = 1.0e-12
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-band-edge-fim-six-assignment-recombination-and-" \
    "propagated-ancestry-boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def norm(vector)
    Math.sqrt(vector.sum { |entry| entry.abs**2 })
  end

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

  def tuple(vector)
    vector.map(&:to_f).freeze
  end

  def leray_source(wave, field)
    raw = [Complex(0.0), Complex(0.0), Complex(0.0)]

    field.each do |parent_wave, parent|
      partner_wave = tuple(subtract(wave, parent_wave))
      next unless field.key?(partner_wave)

      factor = dot(parent, partner_wave)
      raw = add(
        raw,
        scale(-Complex::I * factor, field.fetch(partner_wave))
      )
    end

    projection = dot(wave, raw) / dot(wave, wave)
    subtract(raw, scale(projection, wave))
  end

  def modal_transfer(wave, field)
    hermitian_dot(
      field.fetch(tuple(wave)),
      leray_source(wave, field)
    ).real
  end

  def test_one_history_pressure_completion_and_exact_assignment_count
    assert_includes text, "same smooth Navier--Stokes velocity"
    assert_includes text, "simultaneous Fourier\nreadouts"
    assert_includes text, "pressure completion remains inside"
    assert_includes text, "These are two assignments, not all six"
    assert_includes text, "four complementary assignments"
    assert_includes text, "complete FIM incidence"
    refute_includes text.downcase, "rectangle"
  end

  def test_band_edge_support_is_inside_the_static_fim_exterior
    viscosity = 0.8
    datum_l2 = 2.5
    high_cut = 100.0
    static_constant = 0.04
    floor = static_constant *
            (viscosity / datum_l2)**0.4 * high_cut**0.8

    # Rescale a concrete crossing so its low leg lies below the exact floor.
    low = [0.6 * floor, 0.0, 0.0]
    band = [high_cut - 0.4 * floor, 0.0, 0.0]
    output = low.zip(band).map { |left, right| left + right }
    maximum = [norm(low), norm(band), norm(output)].max
    fim_cutoff = static_constant *
                 (viscosity / datum_l2)**0.4 * maximum**0.8

    assert_operator norm(low), :<, floor
    assert_operator norm(band), :<, high_cut
    assert_operator norm(output), :>=, high_cut
    assert_operator norm(band), :>, high_cut - floor
    assert_operator norm(output), :<, high_cut + floor
    assert_operator norm(low), :<, fim_cutoff
  end

  def test_two_plus_four_assignments_reconstruct_the_full_six_current
    band_edge = [3.2, -0.7].sum
    return_receivers = [1.1, -2.4, 0.6, 4.8].sum
    all_six = band_edge + return_receivers

    assert_in_delta 2.5, band_edge, TOL
    assert_in_delta 4.1, return_receivers, TOL
    assert_in_delta 6.6, all_six, TOL
    assert_in_delta all_six - return_receivers, band_edge, TOL
    assert_includes text,
                    "\\mathfrak J_{r,a}^{(6)}\n =\\mathfrak J_{r,a}^{\\rm be}"
    assert_includes text,
                    "\\mathfrak J_{r,a}^{\\rm be}\n =\\mathfrak J_{r,a}^{(6)}"
  end

  def test_true_leray_edge_triad_needs_the_complementary_receivers
    low_wave = [3.0, 0.0, 0.0]
    band_wave = [0.0, 100.0, 0.0]
    high_wave = [-3.0, -100.0, 0.0]
    representatives = [
      [low_wave, [0.0, 1.0, 0.0]],
      [band_wave, [0.0, 0.0, 1.0]],
      [high_wave, [0.0, 0.0, Complex::I]]
    ]
    field = {}

    representatives.each do |wave, value|
      field[tuple(wave)] = value
      field[tuple(scale(-1.0, wave))] = value.map(&:conj)
      assert_in_delta 0.0, dot(wave, value).abs, TOL
    end

    low_transfer = modal_transfer(low_wave, field)
    band_transfer = modal_transfer(band_wave, field)
    high_transfer = modal_transfer(high_wave, field)
    energy_transfer = low_transfer + band_transfer + high_transfer
    band_edge_current = norm(high_wave) * high_transfer
    return_current = norm(band_wave) * band_transfer +
                     norm(low_wave) * low_transfer
    all_six_current = band_edge_current + return_current

    assert_in_delta 0.0, low_transfer, TOL
    assert_in_delta(-100.0, band_transfer, TOL)
    assert_in_delta 100.0, high_transfer, TOL
    assert_in_delta 0.0, energy_transfer, TOL
    assert_operator band_edge_current, :>, 10_000.0
    assert_operator return_current, :<, -9_999.0
    assert_in_delta 100.0 * (norm(high_wave) - norm(band_wave)),
                    all_six_current, TOL
    assert_operator all_six_current.abs, :<,
                    band_edge_current.abs / 2_000.0
    assert_includes text, "finite true-Leray check"
    assert_includes text, "instantaneous exact-equation"
  end

  def test_transport_recombination_replaces_high_weight_by_radial_gap
    transfer = 2.7
    band_radius = 100.0
    output_radius = 103.0

    upward = -output_radius * transfer
    return_assignment = band_radius * transfer
    recombined = upward + return_assignment

    assert_in_delta(-(output_radius - band_radius) * transfer,
                    recombined, TOL)
    assert_operator recombined.abs, :<, upward.abs / 30.0
    assert_includes text, '[\Lambda,U\cdot\nabla]V'
    assert_includes text, "one\nderivative on the low coefficient"
  end

  def test_standalone_coefficient_grows_but_recombined_coefficient_is_fixed
    viscosity = 0.7
    datum_l2 = 3.1
    static_constant = 0.03
    frequencies = [1.0e5, 1.0e10, 1.0e15]

    standalone = frequencies.map do |high|
      low = static_constant *
            (viscosity / datum_l2)**0.4 * high**0.8
      datum_l2 * low**1.5 / (viscosity * high)
    end
    recombined = frequencies.map do |high|
      low = static_constant *
            (viscosity / datum_l2)**0.4 * high**0.8
      datum_l2 * low**2.5 / (viscosity * high**2)
    end

    standalone.each_cons(2) do |left, right|
      assert_operator right, :>, left
    end
    recombined.each do |coefficient|
      assert_in_delta static_constant**2.5, coefficient, TOL
    end
  end

  def test_exact_adjoint_pairing_leaves_the_receiver_defect
    viscosity = 0.4
    frequency = 3.0
    terminal_time = 0.2
    source_time = 0.08
    initial_receiver = 1.7
    commutator = -0.9

    receiver_at_terminal = Math.exp(
      -viscosity * frequency**2 * terminal_time
    ) * initial_receiver
    propagated_terminal_receiver = Math.exp(
      -viscosity * frequency**2 * (terminal_time - source_time)
    ) * receiver_at_terminal
    same_time_receiver = Math.exp(
      -viscosity * frequency**2 * source_time
    ) * initial_receiver
    defect = propagated_terminal_receiver - same_time_receiver

    refute_in_delta same_time_receiver,
                    propagated_terminal_receiver, 1.0e-8
    assert_in_delta commutator * propagated_terminal_receiver,
                    commutator * same_time_receiver + commutator * defect,
                    TOL
    assert_includes text, "propagated-receiver defect"
    assert_includes text, '\mathcal R_{t;r,a}'
  end

  def test_later_bilinear_source_has_five_exact_band_edge_ancestry_terms
    initial_left = 3.0
    initial_right = 4.0
    high_left = 5.0
    high_right = 7.0
    band_edge_left = 2.0
    band_edge_right = 2.0

    no_band_edge = (initial_left + high_left) *
                   (initial_right + high_right)
    initial_band_edge = initial_left * band_edge_right
    band_edge_initial = band_edge_left * initial_right
    high_band_edge = high_left * band_edge_right
    band_edge_high = band_edge_left * high_right
    band_edge_band_edge = 2.0 * 2.0
    expanded = no_band_edge + initial_band_edge + band_edge_initial +
               high_band_edge + band_edge_high + band_edge_band_edge

    assert_in_delta (initial_left + high_left + band_edge_left) *
                    (initial_right + high_right + band_edge_right),
                    expanded, TOL
    assert_includes text, '\mathfrak B_I^{\rm be}'
    assert_includes text, '\mathfrak J_I[F]'
    assert_includes text,
                    '\mathcal Q^{\rm ch}[V^0,V^{\rm be}]'
    assert_includes text,
                    '\mathcal Q^{\rm ch}[V^{\rm be},V^0]'
    assert_includes text,
                    '\mathcal Q^{\rm ch}[V^{\rm hh},V^{\rm be}]'
    assert_includes text,
                    '\mathcal Q^{\rm ch}[V^{\rm be},V^{\rm be}]'
    assert_includes text, "consists of five terms, not three"
  end

  def test_recent_heat_factor_has_no_uniform_contraction
    viscosity = 0.6
    frequency = 90.0
    epsilon = 0.1
    ages = [1.0e-3, 1.0e-6, 1.0e-10]
    factors = ages.map do |age|
      Math.exp(-(1.0 - epsilon) * viscosity * frequency**2 * age)
    end

    factors.each_cons(2) { |left, right| assert_operator right, :>, left }
    assert_operator factors.last, :>, 0.999999
    assert_includes text, 't-\tau\downarrow0'
    assert_includes text, "no decaying power"
  end

  def test_verdict_is_same_critical_boundary_not_closure
    assert_includes text, "not a strict reduction"
    assert_includes text, "remaining theorem is still `(TIR.37a)`"
    assert_includes text, "not MPP closure"
    refute_includes text, "Status: MPP is closed"
  end
end
