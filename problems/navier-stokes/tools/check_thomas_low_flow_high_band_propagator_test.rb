#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasLowFlowHighBandPropagatorTest < Minitest::Test
  TOL = 1.0e-11
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-paradifferential-low-flow-high-band-propagator-and-" \
    "ancestry-reconvergence-boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def norm(vector)
    Math.sqrt(vector.sum { |entry| entry**2 })
  end

  def test_preserves_one_history_pressure_and_every_assignment
    assert_includes text, "one-fluid, fixed-viscosity"
    assert_includes text, "same Navier--Stokes velocity"
    assert_includes text, "There is no independent low solution"
    assert_includes text, "slaved\npressure"
    assert_includes text, "simultaneous output pressure"
    assert_includes text, "all six\noutput/input assignments"
    assert_includes text, "both orders remain present"
    assert_includes text, '[Q_r,\\mathbb P]=0'
    refute_includes text.downcase, "rectangle"
  end

  def test_fim_floor_turns_the_low_gradient_into_a_small_viscous_fraction
    viscosity = 0.73
    datum_l2 = 2.9
    high_frequency = 18_000.0
    static_constant = 0.031
    floor = static_constant *
            (viscosity / datum_l2)**(2.0 / 5.0) *
            high_frequency**(4.0 / 5.0)

    low_gradient_scale = datum_l2 * floor**(5.0 / 2.0)
    viscous_scale = static_constant**(5.0 / 2.0) *
                    viscosity * high_frequency**2

    assert_in_delta viscous_scale, low_gradient_scale,
                    viscous_scale * TOL
    assert_operator 2.0 * floor, :<, high_frequency
    assert_includes text, 'U_0a^{5/2}'
    assert_includes text, 'c_{\\rm st}^{5/2}\\nu r^2'
  end

  def test_projected_propagator_has_the_exact_norm_decay_exponent
    viscosity = 0.8
    high_frequency = 140.0
    epsilon = 0.17
    age = 0.006
    initial_norm = 3.7
    norm_factor = Math.exp(
      -(1.0 - epsilon) * viscosity * high_frequency**2 * age
    )
    square_factor = Math.exp(
      -2.0 * (1.0 - epsilon) * viscosity * high_frequency**2 * age
    )

    assert_in_delta (initial_norm * norm_factor)**2,
                    initial_norm**2 * square_factor, TOL
    assert_operator norm_factor, :<, 1.0
    assert_includes text, '\\|\\mathscr U_{r,a}(t,s)\\|_{L^2\\to L^2}'
    assert_includes text, 'e^{-(1-\\varepsilon)\\nu r^2(t-s)}'
  end

  def test_incompressibility_cancels_transport_but_not_stretching
    assert_includes text,
                    '-\\langle z,(U_a\\cdot\\nabla)z\\rangle'
    assert_includes text,
                    '-\\langle z,(z\\cdot\\nabla)U_a\\rangle'
    assert_includes text, "transport term vanishes"
    assert_includes text, "Pressure contributes\nzero"
    assert_includes text, 'projected generator'
  end

  def test_actual_high_band_has_the_exact_commutator_sign
    assert_includes text, '\\mathcal C_{r,a}'
    assert_includes text, '&:=Q_r[\\mathcal L_a,Q_r]H_a'
    assert_includes text,
                    '=-Q_r\\mathcal L_a(I-Q_r)H_a'
    assert_includes text,
                    '-Q_r\\mathcal N(H_a,H_a)+\\mathcal C_{r,a}'
    assert_includes text, "full remaining forcing does **not** have that property"
  end

  def test_band_edge_support_exhibits_the_low_parent_that_cannot_be_erased
    r = 100.0
    a = 12.0
    p = [8.0, 8.0, 0.0]
    q = [94.0, 0.0, 0.0]
    k = p.zip(q).map { |left, right| left + right }

    assert_operator norm(p), :<, a
    assert_operator norm(q), :>=, a
    assert_operator norm(q), :<, r
    assert_operator norm(k), :>=, r
    assert_operator norm(q), :>, r - a
    assert_operator norm(k), :<, r + a
    assert_includes text, "leave/re-enter band-edge transfer"
    assert_includes text, "one of its\nphysical parents is below"
  end

  def test_two_high_nonlinear_source_retains_both_parents_for_every_output
    viscosity = 0.9
    datum_l2 = 2.4
    static_constant = 0.02
    legs = [900.0, 1_100.0, 1_700.0]
    maximum = legs.max
    common_floor = static_constant *
                   (viscosity / datum_l2)**0.4 * maximum**0.8

    legs.each_index do |output_index|
      output = legs.fetch(output_index)
      output_floor = static_constant *
                     (viscosity / datum_l2)**0.4 * output**0.8
      parents = legs.each_with_index.map do |leg, index|
        leg unless index == output_index
      end.compact

      assert_operator common_floor, :>=, output_floor
      parents.each { |parent| assert_operator parent, :>=, common_floor }
    end

    assert_includes text, "both physical inputs are in"
    assert_includes text, "both are at frequency at least"
  end

  def test_triangle_identity_keeps_one_high_spine
    output = [120.0, 15.0, 0.0]
    parent_one = [75.0, -20.0, 0.0]
    parent_two = output.zip(parent_one).map { |k, p| k - p }
    output_size = norm(output)

    assert_operator [norm(parent_one), norm(parent_two)].max,
                    :>=, output_size / 2.0
    assert_includes text,
                    '\\max(|p|,|q|)\\ge {|k|\\over2}\\ge {r\\over2}'
    assert_includes text, "not an upper replacement scale"
  end

  def test_formal_four_fifths_minimal_supplier_recursion
    c_star = 1.4
    initial = 10.0**20
    iterates = [initial]
    12.times { iterates << c_star * iterates.last**0.8 }

    iterates.each_with_index do |value, index|
      closed_form = c_star**(5.0 * (1.0 - 0.8**index)) *
                    initial**(0.8**index)
      assert_in_delta closed_form, value, closed_form * 2.0e-12
    end

    fixed_point = c_star**5
    assert_operator (iterates.last - fixed_point).abs,
                    :<, initial - fixed_point
    assert_includes text,
                    'r_j=c_*^{\\,5(1-(4/5)^j)}r_0^{(4/5)^j}'
    assert_includes text, "formal minimal\nsteps"
  end

  def test_arbitrarily_recent_sources_destroy_a_uniform_heat_factor
    viscosity = 0.7
    high_frequency = 80.0
    epsilon = 0.12
    ages = [1.0e-4, 1.0e-6, 1.0e-9]
    factors = ages.map do |age|
      Math.exp(-(1.0 - epsilon) * viscosity * high_frequency**2 * age)
    end

    factors.each_cons(2) { |older, newer| assert_operator newer, :>, older }
    assert_operator factors.last, :>, 0.99999
    assert_includes text, 't-\\tau\\downarrow0'
    assert_includes text, "no uniform factor"
  end

  def test_fixed_viscosity_scaling_preserves_floor_critical_amplitude_and_age
    viscosity = 0.61
    datum_l2 = 3.2
    r = 250.0
    band_l2 = 0.14
    age = 0.003
    static_constant = 0.04
    scale = 7.0
    floor = static_constant * (viscosity / datum_l2)**0.4 * r**0.8

    scaled_datum_l2 = scale**(-0.5) * datum_l2
    scaled_r = scale * r
    scaled_band_l2 = scale**(-0.5) * band_l2
    scaled_age = age / scale**2
    scaled_floor = static_constant *
                   (viscosity / scaled_datum_l2)**0.4 * scaled_r**0.8

    assert_in_delta scale * floor, scaled_floor, TOL
    assert_in_delta r**0.5 * band_l2,
                    scaled_r**0.5 * scaled_band_l2, TOL
    assert_in_delta viscosity * r**2 * age,
                    viscosity * scaled_r**2 * scaled_age, TOL
  end

  def test_local_bilinear_heat_scaling_has_no_frequency_smallness
    viscosity = 0.75
    critical_amplitude = 2.3
    frequencies = [32.0, 512.0, 8192.0]

    outputs = frequencies.map do |frequency|
      band_l2 = critical_amplitude / Math.sqrt(frequency)
      source_l2 = frequency**2.5 * band_l2**2
      integrated_l2 = source_l2 / (viscosity * frequency**2)
      Math.sqrt(frequency) * integrated_l2
    end

    outputs.each do |output|
      assert_in_delta critical_amplitude**2 / viscosity, output, TOL
    end
    assert_includes text, "There is no decaying power"
  end

  def test_exact_verdict_is_boundary_not_mpp_closure
    assert_includes text, "exact propagator identity and a checked\nobstruction"
    assert_includes text, "not a strict\nreduction"
    assert_includes text, "not `(TIR.37a)`"
    assert_includes text, "not\nMPP closure"
    assert_includes text, "`(TIR.37a)` signed-current prefix"
    assert_includes text,
                    "first-prefix-to-complete-intersection implication"
    assert_includes text, "has not closed the MPP"
    refute_includes text, "separate energy-row payment"
    refute_includes text, "Status: MPP is closed"
  end
end
