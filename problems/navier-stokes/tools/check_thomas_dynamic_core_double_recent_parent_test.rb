#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasDynamicCoreDoubleRecentParentTest < Minitest::Test
  TOL = 1.0e-12
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-dynamic-core-canonical-record-double-recent-parent-ancestry-boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_preserves_one_history_complete_incidence_and_pressure
    assert_includes text, "one smooth fixed-viscosity Navier--Stokes history"
    assert_includes text, "all six assignments"
    assert_includes text, "each of the three\nlegs is an output once"
    assert_includes text, "both orders of the other two physical input\nparents"
    assert_includes text, "simultaneous Leray/pressure completion"
    assert_includes text, "complete pressure source"
    assert_includes text, "No selector for"
    assert_includes text, "is recomputed"
    assert_includes text, "never differentiated"
    refute_includes text.downcase, "rectangle"
  end

  def test_exterior_absorption_leaves_a_fixed_core_current
    record = 4096.0
    initial_height = 17.0
    theta = 1.0 / 32.0
    bounded_part = record / 16.0
    receiver_action = record + initial_height

    core_current = record / 2.0 - theta * receiver_action - bounded_part

    assert_operator record, :>=, initial_height
    assert_operator core_current, :>=, 3.0 * record / 8.0
    assert_operator core_current, :>=, record / 4.0
  end

  def test_core_current_cauchy_forces_the_core_source_square
    viscosity = 0.73
    record = 1024.0
    initial_height = 11.0
    current = record / 4.0
    receiver_square = (record + initial_height) / viscosity
    source_square = current**2 / receiver_square

    exact = viscosity * record**2 /
            (16.0 * (record + initial_height))

    assert_in_delta exact, source_square, TOL
    assert_operator source_square, :>=, viscosity * record / 32.0
  end

  def test_low_output_cut_removes_exactly_one_quarter_of_core_lower_bound
    viscosity = 0.81
    record = 2048.0
    duration = 0.007
    datum_l2 = 2.3
    low_constant = 1.7
    core_constant = 1.0 / 32.0

    cutoff_fourth = core_constant * viscosity * record /
                    (4.0 * low_constant * datum_l2**4 * duration)
    cutoff = cutoff_fourth**0.25
    low_square = low_constant * datum_l2**4 * cutoff**4 * duration
    core_lower = core_constant * viscosity * record

    assert_in_delta core_lower / 4.0, low_square, 1.0e-10
    assert_in_delta 3.0 * viscosity * record / 128.0,
                    core_lower - low_square, 1.0e-10
  end

  def test_static_minimum_leg_floor_places_both_ordered_parents_above_r
    viscosity = 0.9
    datum_l2 = 2.4
    cutoff = 10_000.0
    static_constant = 0.03
    floor = static_constant * (viscosity / datum_l2)**0.4 * cutoff**0.8

    # Each row is one of the three possible output choices.  Both remaining
    # entries are the physical parents for that choice.
    legs = [cutoff, 1.4 * cutoff, 2.2 * cutoff]
    3.times do |output_index|
      high = legs.max
      admitted_floor = static_constant *
                       (viscosity / datum_l2)**0.4 * high**0.8
      parents = legs.each_with_index.map do |leg, index|
        leg unless index == output_index
      end.compact

      assert_operator high, :>=, cutoff
      parents.each { |parent| assert_operator parent, :>=, floor }
      assert_operator legs.min, :>=, admitted_floor
    end

    assert_includes text, "same symmetric mask is used for every output assignment"
  end

  def test_datum_heat_terms_are_paid_before_double_recruitment
    z0 = 3.0
    enstrophy_masses = [0.4, 0.08, 0.016, 0.0032]
    durations = [0.02, 0.004, 0.0008, 0.00016]
    datum_bounds = enstrophy_masses.zip(durations).map do |mass, duration|
      z0 * mass + z0**2 * duration
    end

    assert_operator datum_bounds.last, :<, datum_bounds.first
    assert_operator datum_bounds.last, :<, 0.02
    assert_includes text, "reverse triangle inequality in"
    assert_includes text, 'L^2(I_n;\dot H^{-1/2})'
    assert_includes text, 'c_{\rm rr}:={3\over512}'
  end

  def test_intrinsic_lag_makes_every_old_containing_source_small
    viscosity = 0.67
    record = 4096.0
    radius = 41.0
    datum_l2 = 2.2
    energy_mass = 0.13
    duration = 0.004
    sector_constant = 1.9
    recruited_constant = 3.0 / 512.0
    eta = recruited_constant / 16.0
    old_constant = 8.0 * sector_constant**2
    d = 4.0 * datum_l2**2 * radius**2
    f = old_constant * (d * energy_mass + d**2 * duration)
    y = f / (eta * viscosity * record)
    lag = (1.0 + Math.log(1.0 + y)) /
          (2.0 * viscosity * radius**2)
    old_square = d * Math.exp(-2.0 * viscosity * lag * radius**2)
    error = old_constant *
            (old_square * energy_mass + old_square**2 * duration)

    assert_operator 2.0 * viscosity * lag * radius**2, :>=, 1.0
    assert_in_delta Math.exp(-1.0) * d / (1.0 + y),
                    old_square, old_square * 1.0e-12
    assert_operator error, :<=,
                    Math.exp(-1.0) * eta * viscosity * record
  end

  def test_intrinsic_lag_tends_to_zero_under_the_exact_record_scaling
    viscosity = 0.8
    datum_l2 = 2.0
    energy_mass = 0.2
    duration_prefactor = 0.07
    static_prefactor = 0.11
    old_constant = 12.0
    eta = 0.002
    records = 6.times.map { |index| 4.0**(index + 5) }

    lags = records.map do |record|
      cutoff = record**0.5
      duration = duration_prefactor * record / cutoff**4
      radius = static_prefactor * cutoff**0.8
      d = 4.0 * datum_l2**2 * radius**2
      y = old_constant * (d * energy_mass + d**2 * duration) /
          (eta * viscosity * record)
      (1.0 + Math.log(1.0 + y)) /
        (2.0 * viscosity * radius**2)
    end

    lags.each_cons(2) { |left, right| assert_operator right, :<, left }
    assert_operator lags.last, :<, lags.first / 3.0
  end

  def test_reverse_triangle_leaves_a_conservative_double_recent_fraction
    recruited_constant = 3.0 / 512.0
    eta = recruited_constant / 16.0
    full_norm = Math.sqrt(recruited_constant)
    error_norm = Math.sqrt(Math.exp(-1.0) * eta)
    recent_square = (full_norm - error_norm)**2

    assert_operator recent_square, :>=, recruited_constant / 4.0
    assert_in_delta 3.0 / 2048.0,
                    recruited_constant / 4.0, TOL
  end

  def test_double_recent_source_ancestry_forces_the_fourth_moment
    double_recent_square = 37.0
    sector_constant = 2.5
    ancestry_fourth_moment = double_recent_square / sector_constant**2

    assert_in_delta double_recent_square,
                    sector_constant**2 * ancestry_fourth_moment, TOL
    assert_includes text, '\int_{I_n}\mathfrak A_n(t)^4dt'
    assert_includes text, '{c_{\rm dr}\over C_{\rm sec}^2}\nu A_n'
    assert_includes text, '\sum_n\int_0^{T_*}\mathfrak A_n(t)dt<\infty'
  end

  def test_only_the_interior_branch_has_both_source_times_in_the_record
    record_left = 10.0
    record_right = 10.8
    lag = 0.2
    interior_receiver = 10.35
    edge_receiver = 10.1
    source_ages = [0.03, 0.18]

    source_ages.each do |age|
      assert_operator interior_receiver - age, :>=, record_left
      assert_operator interior_receiver - age, :<, record_right
    end
    assert_operator edge_receiver - source_ages.max, :<, record_left

    assert_includes text, "No same-record source count is claimed there"
    assert_includes text, "with an empty interior branch simply unavailable"
  end

  def test_verdict_is_exact_same_critical_localization_not_closure
    assert_includes text, "stronger support and ancestry localization of the same critical"
    assert_includes text, "not a smaller payment"
    assert_includes text, "not a strict reduction"
    assert_includes text, "`(TIR.37a)`"
    assert_includes text, "or MPP closure"
    refute_includes text, "Status: MPP is closed"
  end
end
