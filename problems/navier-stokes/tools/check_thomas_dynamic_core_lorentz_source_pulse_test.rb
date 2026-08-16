#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasDynamicCoreLorentzSourcePulseTest < Minitest::Test
  TOL = 1.0e-11
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-dynamic-core-double-recent-lorentz-source-pulse-boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def kernel(viscosity, radius, age)
    breakpoint = 3.0 / (4.0 * viscosity * radius**2)
    if age <= breakpoint
      (3.0 / (4.0 * Math::E * viscosity * age))**0.75
    else
      radius**1.5 * Math.exp(-viscosity * age * radius**2)
    end
  end

  def test_preserves_one_history_pressure_completion_and_both_parent_slots
    assert_includes text, "one smooth fixed-viscosity Navier--Stokes\nhistory"
    assert_includes text, "complete Leray/pressure source"
    assert_includes text, "all six output/input assignments remain joined"
    assert_includes text, "no selector\nis differentiated"
    assert_includes text, "same \\(V_n(t)\\)"
    assert_includes text, "not an invented scalar schedule"
    refute_includes text.downcase, "rectangle"
  end

  def test_note_has_no_corrupted_latex_or_control_bytes
    refute_match(/\t/, text)
    refute_match(/[[:cntrl:]&&[^\n]]/, text)
    refute_match(/(?<![A-Za-z\\])(?:lesssim|gtrsim|longrightarrow|quad)\b/, text)
    refute_includes text, ":=min"
    refute_includes text, "(mathcal"
    refute_includes text, "(Gamma"
    refute_includes text, "(ell_"
    assert_equal text.scan(/\\\(/).size, text.scan(/\\\)/).size
    assert_equal text.scan(/(?<!\\)\\\[/).size,
                 text.scan(/(?<!\\)\\\]/).size
    assert_includes text, '\(\tau_n\to0\)'
    assert_includes text, '\text{amplitude}\ \gtrsim'
    assert_includes text, '\text{width}\ \lesssim'
    assert_includes text, 'd_{n,t}:=\min\left\{'
    assert_includes text, 't\in\mathcal E_n,\quad'
  end

  def test_exact_kernel_breakpoint_and_piecewise_match
    viscosity = 0.73
    radius = 19.0
    breakpoint = 3.0 / (4.0 * viscosity * radius**2)
    stationary_value =
      (3.0 / (4.0 * Math::E * viscosity * breakpoint))**0.75
    boundary_value =
      radius**1.5 * Math.exp(-viscosity * breakpoint * radius**2)

    assert_in_delta boundary_value, stationary_value, TOL

    [breakpoint / 100.0, breakpoint, breakpoint * 100.0].each do |age|
      rho_star = Math.sqrt(3.0 / (4.0 * viscosity * age))
      rho = [radius, rho_star].max
      direct = rho**1.5 * Math.exp(-viscosity * age * rho**2)
      assert_in_delta direct, kernel(viscosity, radius, age), TOL
    end
  end

  def test_exact_weak_lorentz_norm_is_radius_independent
    viscosity = 0.61
    exact = (3.0 / (4.0 * Math::E))**0.75 * viscosity**(-0.75)

    [2.0, 13.0, 71.0].each do |radius|
      breakpoint = 3.0 / (4.0 * viscosity * radius**2)
      samples = 80.times.map do |index|
        age = breakpoint * 10.0**(-4.0 + 8.0 * index / 79.0)
        age**0.75 * kernel(viscosity, radius, age)
      end

      assert_in_delta exact, samples.max, exact * 1.0e-10
      assert_in_delta exact,
                      breakpoint**0.75 *
                      kernel(viscosity, radius, breakpoint),
                      TOL
    end
  end

  def test_exact_kernel_first_moment_has_three_plus_one_pieces
    viscosity = 0.82
    radius = 23.0
    breakpoint = 3.0 / (4.0 * viscosity * radius**2)
    c = (3.0 / (4.0 * Math::E))**0.75
    first_piece =
      4.0 * c * viscosity**(-0.75) * breakpoint**0.25
    second_piece =
      radius**1.5 * Math.exp(-viscosity * breakpoint * radius**2) /
      (viscosity * radius**2)
    unit = Math.exp(-0.75) / (viscosity * Math.sqrt(radius))

    assert_in_delta 3.0 * unit, first_piece, TOL
    assert_in_delta unit, second_piece, TOL
    assert_in_delta 4.0 * unit, first_piece + second_piece, TOL
  end

  def test_layer_cake_height_carries_half_and_has_sharp_width
    weak_size = 0.031
    fourth_moment = 73.0
    height =
      (fourth_moment / (3.0 * weak_size**(4.0 / 3.0)))**(3.0 / 8.0)
    low_part_upper =
      1.5 * weak_size**(4.0 / 3.0) * height**(8.0 / 3.0)
    width_upper = (weak_size / height)**(4.0 / 3.0)

    assert_in_delta fourth_moment / 2.0, low_part_upper, TOL
    assert_in_delta Math.sqrt(3.0) * weak_size**2 /
                    Math.sqrt(fourth_moment),
                    width_upper, TOL
  end

  def test_actual_double_parent_square_retains_one_quarter_record_fraction
    c_dr = 3.0 / 2048.0
    sector = 2.7
    viscosity = 0.74
    record = 4096.0
    branch_square = c_dr * viscosity * record / 2.0
    normalized_fourth = branch_square / sector**2
    retained_normalized = normalized_fourth / 2.0
    retained_actual = sector**2 * retained_normalized

    assert_in_delta c_dr * viscosity * record / 4.0,
                    retained_actual, TOL
    assert_includes text, '{c_{\rm dr}\over4}\nu A_n'
  end

  def test_lorentz_scaling_forces_height_up_and_width_down
    viscosity = 0.8
    masses = 7.times.map { |index| 0.2 * 4.0**(-index / 3.0) }
    records = 7.times.map { |index| 4.0**(index + 4) }
    heights = []
    widths = []

    records.zip(masses).each do |record, mass|
      heights << viscosity**0.75 * record**0.375 * mass**(-0.5)
      widths << mass**2 / (viscosity**2 * Math.sqrt(record))
    end

    heights.each_cons(2) { |left, right| assert_operator right, :>, left }
    widths.each_cons(2) { |left, right| assert_operator right, :<, left }
    assert_operator heights.last, :>, 20.0 * heights.first
    assert_operator widths.last, :<, widths.first / 100.0
  end

  def test_recent_prefix_cut_makes_the_older_recent_tail_at_most_half
    viscosity = 0.69
    mass = 0.017
    interaction_root = 31.0
    c_kappa = (3.0 / (4.0 * Math::E))**0.75
    age =
      (2.0 * c_kappa * viscosity**(-0.75) * mass /
       interaction_root)**(4.0 / 3.0)
    tail_upper =
      c_kappa * viscosity**(-0.75) * age**(-0.75) * mass

    assert_in_delta interaction_root / 2.0, tail_upper, TOL
    assert_includes text, '\|\Lambda V_n^{<d}(t)\|_2'
    assert_includes text, '\ge {X_n(t)\over2}>{\lambda_n\over2}'
  end

  def test_fractional_maximal_constant_is_exact
    p_value = 7.0
    mass = 0.4
    split = 3.0 * mass / (4.0 * p_value)
    raw_upper =
      4.0 * p_value * split**0.25 + mass * split**(-0.75)
    optimized =
      4.0 * (4.0 / 3.0)**0.75 * p_value**0.75 * mass**0.25
    c_kappa = (3.0 / (4.0 * Math::E))**0.75

    assert_in_delta optimized, raw_upper, TOL
    assert_in_delta 4.0 * Math.exp(-0.75),
                    c_kappa * optimized /
                    (p_value**0.75 * mass**0.25), TOL
    assert_includes text, '4e^{-3/4}\nu^{-3/4}P^{3/4}m^{1/4}'
  end

  def test_pressure_source_average_and_width_have_matching_critical_scale
    viscosity = 0.77
    record = 16_384.0
    mass = 0.009
    source_average = viscosity**2 * Math.sqrt(record) / mass
    source_width = mass**2 / (viscosity**2 * Math.sqrt(record))

    assert_in_delta mass, source_average * source_width, TOL
    assert_operator source_average, :>, 1000.0
    assert_operator source_width, :<, 1.0e-4
    assert_includes text, '{\nu^2A_n^{1/2}\over M_n}'
    assert_includes text, '{M_n^2\over\nu^2A_n^{1/2}}'
  end

  def test_only_interior_branch_puts_the_pullback_inside_same_record
    record_left = 10.0
    record_right = 10.8
    heat_lag = 0.2
    pulse_width = 0.07
    interior_receiver = record_left + heat_lag + 0.03
    edge_receiver = record_left + 0.04

    assert_operator interior_receiver - pulse_width, :>=, record_left
    assert_operator interior_receiver, :<, record_right
    assert_operator edge_receiver - pulse_width, :<, record_left
    assert_includes text, "nested inside the same canonical record"
    assert_includes text, "no same-record claim\nis available"
  end

  def test_two_slots_do_not_become_two_distinct_or_iterable_source_records
    assert_includes text, "same high recent prefix is present in both slots"
    assert_includes text, "does\nnot assert that the prefix-prefix bilinear term alone"
    assert_includes text, "nested canonical signed record"
    assert_includes text, "two disjoint earlier source intervals"
    assert_includes text, "no source-mass floor to sum"
    assert_includes text, "estimate-level verdict, not a construction"
    assert_includes text, "not a nested-record descent"
    assert_includes text, "not a strict reduction"
    assert_includes text, "or MPP closure"
    refute_includes text, "Status: MPP is closed"
  end
end
