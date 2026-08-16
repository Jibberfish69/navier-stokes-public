#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasLastRecordSourceSquareSupplierDescentTest < Minitest::Test
  TOL = 1.0e-10
  NOTE = File.expand_path(
    "../theorem-construction/thomas-last-record-source-square-and-first-binomial-supplier-descent-20260804.md",
    __dir__
  )

  def test_note_preserves_thomas_custody_and_honest_boundary
    text = File.read(NOTE)

    assert_includes text, "Thomas Birnie's one-fluid"
    assert_includes text, "pressure-explicit binomial/VPI"
    assert_includes text, "actual last-half-prefix windows"
    assert_includes text, "every \\(Q\\) in"
    assert_includes text, "LastRecordSignedCoincidenceDecay.A"
    assert_includes text, "(TIR.37a)"
    assert_includes text, "does not prove"
    assert_includes text, "not a Navier--Stokes counterexample"
    assert_includes text, "This note does not claim"
    assert_includes text, "an endpoint alias"
    assert_includes text, "not a strict reduction"
    refute_includes text, "endpoint-spanning intersection supplies"
  end

  def test_sharp_last_record_receiver_action_bound
    viscosity = 0.7
    record = 256.0
    initial_height = 3.0
    start_height = initial_height + record / 2.0
    finish_height = 11.0

    receiver_action =
      (record / 2.0 - finish_height + start_height) / viscosity
    asserted_bound = (record + initial_height) / viscosity

    assert_operator start_height, :<=, initial_height + record / 2.0
    assert_operator finish_height, :>=, 0.0
    assert_operator receiver_action, :<=, asserted_bound
  end

  def test_signed_high_receiver_forces_source_square
    viscosity = 0.7
    record = 256.0
    initial_height = 3.0
    receiver_action_bound = (record + initial_height) / viscosity

    source_square_lower =
      (record / 4.0)**2 / receiver_action_bound
    exact_formula =
      viscosity * record**2 / (16.0 * (record + initial_height))

    assert_in_delta exact_formula, source_square_lower, TOL
    assert_operator source_square_lower / record, :<, viscosity / 16.0

    large_record = 1.0e9
    asymptotic_ratio =
      viscosity * large_record / (16.0 * (large_record + initial_height))
    assert_in_delta viscosity / 16.0, asymptotic_ratio, 1.0e-9
  end

  def test_sublinear_source_square_forces_signed_tail_decay
    viscosity = 0.7
    initial_height = 3.0

    [64.0, 256.0, 1024.0, 4096.0].each do |record|
      source_square = Math.sqrt(record)
      normalized_bound =
        Math.sqrt(source_square / record) *
        Math.sqrt((record + initial_height) / (viscosity * record))

      assert_operator normalized_bound, :>, 0.0
      assert_operator normalized_bound, :<, 1.0
    end

    first =
      Math.sqrt(Math.sqrt(64.0) / 64.0) *
      Math.sqrt((64.0 + initial_height) / (viscosity * 64.0))
    last =
      Math.sqrt(Math.sqrt(4096.0) / 4096.0) *
      Math.sqrt((4096.0 + initial_height) / (viscosity * 4096.0))
    assert_operator last, :<, first
  end

  def test_viscosity_matched_pulse_carries_one_eighth_record
    viscosity = 0.7
    record = 256.0
    initial_height = 3.0
    source_mass = 0.2
    receiver_action_bound = (record + initial_height) / viscosity
    eta = viscosity * record / (8.0 * (record + initial_height))
    threshold = record / (4.0 * source_mass)
    source_floor = eta * threshold
    pulse_measure_bound = source_mass / source_floor

    complement_current_bound = eta * receiver_action_bound
    pulse_signed_current =
      record / 4.0 - complement_current_bound
    exact_measure_formula =
      32.0 * (record + initial_height) * source_mass**2 /
      (viscosity * record**2)

    assert_in_delta record / 8.0, complement_current_bound, TOL
    assert_in_delta record / 8.0, pulse_signed_current, TOL
    assert_in_delta(
      viscosity * record**2 /
      (32.0 * (record + initial_height) * source_mass),
      source_floor,
      TOL
    )
    assert_in_delta exact_measure_formula, pulse_measure_bound, TOL
    assert_operator pulse_measure_bound, :<=,
                    64.0 * source_mass**2 / (viscosity * record)
  end

  def test_vector_variation_controls_source_square
    # Exact integrals for a nonnegative piecewise-linear scalar source norm.
    values = [1.0, 4.0, 2.0]
    lengths = [0.4, 0.6]
    duration = lengths.sum

    mass = lengths.each_with_index.sum do |length, index|
      length * (values[index] + values[index + 1]) / 2.0
    end
    source_square = lengths.each_with_index.sum do |length, index|
      left = values[index]
      right = values[index + 1]
      length * (left**2 + left * right + right**2) / 3.0
    end
    variation = values.each_cons(2).sum { |left, right| (right - left).abs }
    upper = mass**2 / duration + mass * variation

    assert_operator source_square, :<=, upper
    assert_operator mass, :>, 0.0
    assert_in_delta 5.0, variation, TOL
  end

  def test_temporal_concentration_or_variation_constants
    viscosity = 0.7
    record = 256.0
    initial_height = 3.0
    source_mass = 0.2
    lower =
      viscosity * record**2 / (16.0 * (record + initial_height))

    assert_operator lower, :>=, viscosity * record / 32.0

    short_duration = 64.0 * source_mass**2 / (viscosity * record)
    large_variation = viscosity * record / (64.0 * source_mass)

    assert_in_delta(
      viscosity * record / 64.0,
      source_mass**2 / short_duration,
      TOL
    )
    assert_in_delta(
      viscosity * record / 64.0,
      source_mass * large_variation,
      TOL
    )
  end

  def test_first_binomial_source_energy_and_global_supplier_descent
    viscosity = 0.7
    record = 256.0
    initial_height = 3.0
    initial_storage = 2.0
    terminal_storage = 5.0
    source_square =
      viscosity * record**2 / (16.0 * (record + initial_height))
    supplier_work =
      terminal_storage - initial_storage + viscosity * source_square

    recovered_source_square =
      (initial_storage - terminal_storage + supplier_work) / viscosity
    descent_lower =
      viscosity**2 * record**2 /
      (16.0 * (record + initial_height)) - initial_storage

    assert_in_delta source_square, recovered_source_square, TOL
    assert_operator supplier_work, :>=, descent_lower
    assert_operator supplier_work, :>, 0.0
  end

  def test_first_binomial_prefix_is_source_action_plus_endpoint
    viscosity = 0.7
    initial_storage = 2.0
    terminal_storage = 5.0
    source_square_action = 2.3

    bcr58_action = source_square_action / viscosity
    supplier_prefix =
      terminal_storage - initial_storage +
      viscosity**2 * bcr58_action
    source_row_value =
      terminal_storage - initial_storage +
      viscosity * source_square_action

    assert_in_delta source_row_value, supplier_prefix, TOL
    assert_operator supplier_prefix, :>, viscosity**2 * bcr58_action
  end

  def test_bounded_supplier_prefix_pays_critical_stock_and_action
    viscosity = 0.7
    initial_height = 3.0
    initial_source_storage = 2.0
    supplier_prefix_bound = 5.0
    source_square_action_bound =
      (initial_source_storage + supplier_prefix_bound) / viscosity
    critical_half_action_bound =
      initial_height +
      (initial_source_storage + supplier_prefix_bound) /
      (2.0 * viscosity**2)
    signed_prefix_bound =
      2.0 * critical_half_action_bound - initial_height

    assert_in_delta(
      initial_source_storage + supplier_prefix_bound,
      viscosity * source_square_action_bound,
      TOL
    )
    assert_operator critical_half_action_bound, :>, initial_height
    assert_operator signed_prefix_bound, :>, 0.0
  end

  def test_navier_stokes_scaling_is_critical_at_the_missing_norm
    dilation = 11.0
    record = 7.0
    duration = 0.13
    source_mass = 0.4
    receiver_threshold = record / (4.0 * source_mass)
    source_square_action = 2.3
    supplier_work = -0.7

    scaled_duration = duration / dilation**2
    scaled_mass = source_mass / dilation
    scaled_threshold = dilation * receiver_threshold
    scaled_source_square_action =
      dilation**2 * source_square_action * scaled_duration / duration
    scaled_supplier_work =
      dilation**2 * supplier_work * scaled_duration / duration

    assert_in_delta duration / dilation**2, scaled_duration, TOL
    assert_in_delta source_mass / dilation, scaled_mass, TOL
    assert_in_delta dilation * receiver_threshold, scaled_threshold, TOL
    assert_in_delta source_square_action, scaled_source_square_action, TOL
    assert_in_delta supplier_work, scaled_supplier_work, TOL
    assert_operator scaled_mass, :<, source_mass
  end
end
