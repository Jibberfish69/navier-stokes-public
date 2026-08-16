#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasMinimalSignedPrefixRecordNormalizationTest < Minitest::Test
  TOL = 1.0e-10
  NOTE = File.expand_path(
    "../theorem-construction/thomas-minimal-signed-prefix-record-normalization-compactness-rigidity-boundary-20260804.md",
    __dir__
  )

  def test_note_preserves_exact_failure_tower_and_honest_boundary
    text = File.read(NOTE)

    assert_includes text, "\\sup_{t<T_*}\\mathscr W(t)=\\infty"
    assert_includes text, "actual last-half-record windows"
    assert_includes text, "pressure remains fixed"
    assert_includes text, "J^{(n)}_{N+1,\\alpha}"
    assert_includes text, "Every nonlinear parent"
    assert_includes text, "MinimalRecordCurrentAncestryCompactness.A"
    assert_includes text, "MinimalRecordSameHistoryRigidity.A"
    assert_includes text, "LastRecordSignedCoincidenceDecay.A"
    assert_includes text, "does not prove `(TIR.37a)` or close"
    refute_includes text, "endpoint-spanning intersection supplies the compactness"
  end

  def test_geometric_last_half_record_windows_are_disjoint
    # W(t)=t is only an algebra check of the canonical level construction.
    base = 0.7
    records = (0..7).map do |n|
      level = 4.0**n * base
      { level: level, start: level / 2.0, finish: level }
    end

    records.each_cons(2) do |previous, current|
      assert_operator previous[:finish], :<, current[:start]
      assert_in_delta current[:level] / 2.0,
                      current[:finish] - current[:start], TOL
    end
  end

  def test_unit_window_scaling_preserves_transport_and_viscosity_coefficients
    viscosity = 0.37
    record = 91.0
    duration = 0.013
    length = Math.sqrt(duration * Math.sqrt(record))
    amplitude = length / Math.sqrt(record)
    scaled_viscosity = viscosity / Math.sqrt(record)

    time_factor = amplitude * duration
    nonlinear_factor = amplitude**2 * length
    viscous_factor = scaled_viscosity * amplitude * length**2
    original_viscous_factor = viscosity * amplitude * duration

    assert_in_delta time_factor, nonlinear_factor, TOL
    assert_in_delta original_viscous_factor, viscous_factor, TOL
    assert_in_delta duration, amplitude * length, TOL
  end

  def test_critical_height_receiver_current_and_action_scalings
    record = 43.0
    duration = 0.027
    length = Math.sqrt(duration * Math.sqrt(record))
    amplitude = length / Math.sqrt(record)
    viscosity = 0.81
    original_height = 17.0
    original_receiver = 29.0
    original_current = -7.0

    height = amplitude**2 * length**(-2) * original_height
    receiver = amplitude**2 * original_receiver
    current = duration / record * original_current
    epsilon = viscosity / Math.sqrt(record)

    assert_in_delta original_height / record, height, TOL
    assert_in_delta duration / Math.sqrt(record) * original_receiver,
                    receiver, TOL
    assert_in_delta duration / record * original_current, current, TOL
    assert_in_delta viscosity * duration / record * original_receiver,
                    epsilon * receiver, TOL
  end

  def test_every_mixed_jet_term_has_one_common_scale_factor
    record = 37.0
    duration = 0.019
    length = Math.sqrt(duration * Math.sqrt(record))
    amplitude = length / Math.sqrt(record)
    epsilon = 1.0 / Math.sqrt(record)

    (0..5).each do |time_order|
      (0..5).each do |space_order|
        time_term = amplitude * duration**(time_order + 1) *
                    length**space_order
        nonlinear_term = amplitude**2 * duration**time_order *
                         length**(space_order + 1)
        pressure_term = amplitude**2 * duration**time_order *
                        length**(space_order + 1)
        viscous_term = epsilon * amplitude * duration**time_order *
                       length**(space_order + 2)

        assert_in_delta time_term, nonlinear_term, TOL
        assert_in_delta time_term, pressure_term, TOL
        assert_in_delta time_term, viscous_term, TOL
      end
    end
  end

  def test_normalized_record_balance_and_viscous_defect_bound
    record = 100.0
    initial_height = 3.0
    start_height = 62.0
    finish_height = 37.0
    # Exact balance fixes the normalized viscous action.
    normalized_viscous_action = 0.5 -
                                (finish_height - start_height) / record

    assert_in_delta 0.75, normalized_viscous_action, TOL
    assert_operator normalized_viscous_action, :>=, 0.0
    assert_operator normalized_viscous_action, :<=,
                    1.5 + initial_height / record
    assert_operator [start_height, finish_height].max / record, :<=,
                    1.0 + initial_height / record
  end

  def test_disjoint_source_mass_forces_intrinsic_high_receiver_signed_tail
    records = [64.0, 256.0, 1024.0]
    source_masses = [0.8, 0.2, 0.03]

    records.zip(source_masses).each do |record, source_mass|
      threshold = record / (4.0 * source_mass)
      # Build a signed current whose low part saturates its allowed bound and
      # whose high part carries the rest of the exact half-record.
      low_signed = threshold * source_mass
      high_signed = record / 2.0 - low_signed

      assert_in_delta record / 4.0, low_signed, TOL
      assert_in_delta record / 4.0, high_signed, TOL
      assert_operator high_signed / record, :>=, 0.25 - TOL
    end

    thresholds = records.zip(source_masses).map do |record, source_mass|
      record / (4.0 * source_mass)
    end
    assert thresholds.each_cons(2).all? { |left, right| right > left }
  end

  def test_source_receiver_product_is_exactly_record_normalized
    record = 71.0
    duration = 0.016
    length = Math.sqrt(duration * Math.sqrt(record))
    source = 13.0
    receiver = 19.0

    normalized_source = length / record * source
    normalized_receiver = length / Math.sqrt(record) * receiver
    normalized_time_element = 1.0 / duration

    assert_in_delta source * receiver / record,
                    normalized_source * normalized_receiver *
                    normalized_time_element,
                    TOL
  end

  def test_pressure_scaling_matches_critical_l3_pairing
    record = 113.0
    duration = 0.021
    length = Math.sqrt(duration * Math.sqrt(record))
    amplitude = length / Math.sqrt(record)
    pressure_amplitude = length**2 / record

    # L^(3/2) scaling of p(a x) is a^{-2}; it matches the square of L^3 velocity.
    scaled_pressure_factor = pressure_amplitude * length**(-2)
    scaled_velocity_l3_squared = (amplitude * length**(-1))**2

    assert_in_delta 1.0 / record, scaled_pressure_factor, TOL
    assert_in_delta scaled_pressure_factor, scaled_velocity_l3_squared, TOL
  end
end
