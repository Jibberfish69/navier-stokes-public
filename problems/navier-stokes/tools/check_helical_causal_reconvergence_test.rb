#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class HelicalCausalReconvergenceTest < Minitest::Test
  I = Complex(0, 1)
  TOLERANCE = 1.0e-10

  def test_unique_helicity_source_carries_half_the_critical_work
    modes = heterochiral_three_wave_datum
    split = source_split(modes)
    source = split.fetch(:source)
    homochiral = split.fetch(:homochiral)
    unique = split.fetch(:unique)
    mixed = split.fetch(:mixed)
    production = critical_pair(modes, source)

    assert_operator production.abs, :>, 1.0e-3
    assert_field_close source, add_fields(homochiral, unique, mixed)
    assert_in_delta 0.0,
                    critical_pair(modes, homochiral),
                    TOLERANCE
    assert_in_delta production / 2.0,
                    critical_pair(modes, unique),
                    TOLERANCE
    assert_in_delta production / 2.0,
                    critical_pair(modes, mixed),
                    TOLERANCE
  end

  def test_shared_output_phase_reverses_the_reconvergence_sign
    phase_zero = source_split(shared_output_datum(0.0))
    phase_pi = source_split(shared_output_datum(Math::PI))

    negative = reconvergence_pair(phase_zero)
    positive = reconvergence_pair(phase_pi)
    unique_self_zero = critical_pair(phase_zero.fetch(:unique),
                                     phase_zero.fetch(:unique))
    unique_self_pi = critical_pair(phase_pi.fetch(:unique),
                                   phase_pi.fetch(:unique))

    assert_in_delta(-0.0700443330123376, negative, TOLERANCE)
    assert_in_delta 0.07004433301233742, positive, TOLERANCE
    assert_in_delta 0.046096081583711354,
                    unique_self_zero,
                    TOLERANCE
    assert_in_delta unique_self_zero, unique_self_pi, TOLERANCE
    assert_operator negative, :<, 0.0
    assert_operator positive, :>, 0.0
  end

  def test_shared_output_split_obeys_the_exact_work_identities
    [0.0, Math::PI].each do |phase|
      modes = shared_output_datum(phase)
      split = source_split(modes)
      production = critical_pair(modes, split.fetch(:source))

      assert_field_close split.fetch(:source),
                         add_fields(split.fetch(:homochiral),
                                    split.fetch(:unique),
                                    split.fetch(:mixed))
      assert_in_delta 0.0,
                      critical_pair(modes, split.fetch(:homochiral)),
                      TOLERANCE
      assert_in_delta production / 2.0,
                      critical_pair(modes, split.fetch(:unique)),
                      TOLERANCE
      assert_in_delta production / 2.0,
                      critical_pair(modes, split.fetch(:mixed)),
                      TOLERANCE
    end
  end

  def test_unique_output_is_the_radial_face_commutator
    sign = 1
    entries = [
      [[1, 0, 0], helical_vector([1, 0, 0], sign)],
      [[0, 2, 0], scale(0.8, helical_vector([0, 2, 0], sign))],
      [[1, 1, 2], scale(Complex.polar(0.6, 0.37),
                        helical_vector([1, 1, 2], sign))]
    ]
    modes = real_modes(entries)
    unique = project_field(nonlinear_field(modes), -sign)
    face_commutator = project_field(
      scale_field(sign, radial_face_cross_field(modes)),
      -sign
    )

    assert_operator unique.values.sum { |value| vector_norm(value) },
                    :>,
                    1.0e-3
    assert_field_close unique, face_commutator
  end

  def test_equal_radius_same_helicity_field_has_no_unique_output
    sign = -1
    modes = real_modes([
      [[1, 0, 0], helical_vector([1, 0, 0], sign)],
      [[0, 1, 0], scale(Complex.polar(0.9, 0.23),
                        helical_vector([0, 1, 0], sign))]
    ])
    unique = project_field(nonlinear_field(modes), -sign)

    assert_empty unique
    assert_empty radial_face_cross_field(modes)
  end

  def test_narrow_face_diagonals_lose_the_fixed_gap_but_cross_terms_restore_it
    sign = 1
    modes = real_modes([
      [[1, 0, 0], helical_vector([1, 0, 0], sign)],
      [[0, 4, 0], scale(0.7, helical_vector([0, 4, 0], sign))]
    ])
    lower = modes.select { |wave, _amplitude| norm(wave) < 2.0 }
    upper = modes.select { |wave, _amplitude| norm(wave) > 2.0 }
    face_density = project_field(
      scale_field(sign, cross_product_field(lower, upper)),
      -sign
    )
    density_norm = critical_pair(face_density, face_density)
    q = 1.01
    radius = 1.0
    widths = []
    while radius < 4.0
      next_radius = [q * radius, 4.0].min
      widths << next_radius - radius
      radius = next_radius
    end

    full_source = scale_field(widths.sum, face_density)
    full_norm = critical_pair(full_source, full_source)
    diagonal_norm = widths.sum { |width| width**2 * density_norm }

    assert_operator density_norm, :>, 1.0e-4
    assert_in_delta 9.0 * density_norm, full_norm, TOLERANCE
    assert_operator full_norm / diagonal_norm, :>, 50.0
    assert_operator diagonal_norm / full_norm, :<, 0.02
  end

  def test_distinct_unique_output_parent_pairs_can_reinforce_or_cancel
    output = [1, 1, 1]
    negative_output = negate_wave(output)
    pair_output = lambda do |waves, phase|
      entries = waves.each_with_index.map do |wave, index|
        coefficient = index.zero? ? Complex.polar(1.0, phase) : 1.0
        [wave, scale(coefficient, helical_vector(wave, -1))]
      end
      modes = real_modes(entries)
      project_field(nonlinear_field(modes), 1).select do |wave, _amplitude|
        wave == output || wave == negative_output
      end
    end

    first = pair_output.call([[1, 0, 0], [0, 1, 1]], 0.0)
    aligned = pair_output.call([[0, 1, 0], [1, 0, 1]], 0.0)
    reversed = pair_output.call([[0, 1, 0], [1, 0, 1]], Math::PI)
    aligned_cross = critical_pair(first, aligned)
    reversed_cross = critical_pair(first, reversed)
    first_self = critical_pair(first, first)
    aligned_self = critical_pair(aligned, aligned)
    reinforced = add_fields(first, aligned)
    cancelled = add_fields(first, reversed)

    assert_in_delta 0.009980094416603512, aligned_cross, TOLERANCE
    assert_in_delta(-aligned_cross, reversed_cross, TOLERANCE)
    assert_in_delta 0.011524020395927839, first_self, TOLERANCE
    assert_in_delta first_self, aligned_self, TOLERANCE
    assert_operator aligned_cross, :>, 0.0
    assert_operator reversed_cross, :<, 0.0
    assert_in_delta first_self + aligned_self + 2.0 * aligned_cross,
                    critical_pair(reinforced, reinforced),
                    TOLERANCE
    assert_operator critical_pair(reinforced, reinforced),
                    :>,
                    critical_pair(cancelled, cancelled)
  end

  def test_reinforcing_parent_pairs_are_stokes_resonant_without_parent_tangent
    first_pair = [[1, 0, 0], [0, 1, 1]]
    second_pair = [[0, 1, 0], [1, 0, 1]]
    output = [1, 1, 1]
    parents = first_pair + second_pair
    modes = real_modes(parents.map do |wave|
      [wave, helical_vector(wave, -1)]
    end)
    nonlinear = nonlinear_field(modes)

    parents.each do |wave|
      refute nonlinear.key?(wave)
      refute nonlinear.key?(negate_wave(wave))
    end
    assert_in_delta norm(output)**2,
                    first_pair.sum { |wave| norm(wave)**2 },
                    TOLERANCE
    assert_in_delta norm(output)**2,
                    second_pair.sum { |wave| norm(wave)**2 },
                    TOLERANCE

    pair_output = lambda do |waves, phase|
      entries = waves.each_with_index.map do |wave, index|
        coefficient = index.zero? ? Complex.polar(1.0, phase) : 1.0
        [wave, scale(coefficient, helical_vector(wave, -1))]
      end
      target = [output, negate_wave(output)]
      project_field(nonlinear_field(real_modes(entries)), 1).select do |wave, _|
        target.include?(wave)
      end
    end
    first = pair_output.call(first_pair, 0.0)
    aligned = pair_output.call(second_pair, 0.0)
    reversed = pair_output.call(second_pair, Math::PI)
    viscosity = 0.7
    terminal_time = 1.3
    stokes_factor = (
      1.0 - (1.0 + 6.0 * viscosity * terminal_time) *
        Math.exp(-6.0 * viscosity * terminal_time)
    ) / (36.0 * viscosity**2)
    aligned_response = critical_pair(first, aligned) * stokes_factor
    reversed_response = critical_pair(first, reversed) * stokes_factor

    assert_operator aligned_response, :>, 0.0
    assert_operator reversed_response, :<, 0.0
    assert_in_delta(-aligned_response, reversed_response, TOLERANCE)
    assert_operator aligned_response,
                    :<,
                    critical_pair(first, aligned) / (36.0 * viscosity**2)
  end

  def test_aligned_resonant_pair_curvature_is_amplitude_shape_indefinite
    first_pair = [[1, 0, 0], [0, 1, 1]]
    second_pair = [[0, 1, 0], [1, 0, 1]]
    waves = first_pair + second_pair
    coefficients = [
      0.00083458071773623538,
      0.00090771830002254518,
      0.00023632834472733254,
      0.004895851766009489
    ]
    profiles = [
      [1.0, 1.0, 1.0, 1.0],
      [1.0, 100.0, 1.0, 0.01]
    ]
    curvatures = []
    crosses = []

    profiles.each do |amplitudes|
      entries = waves.each_with_index.map do |wave, index|
        phase = index == 2 ? Complex.polar(1.0, Math::PI / 6.0) : 1.0
        [wave, scale(amplitudes.fetch(index) * phase,
                     helical_vector(wave, -1))]
      end
      modes = real_modes(entries)
      first_source = pair_output(modes, first_pair, 1)
      second_source = pair_output(modes, second_pair, 1)
      nonlinear = nonlinear_field(modes)

      waves.each do |wave|
        refute nonlinear.key?(wave)
        refute nonlinear.key?(negate_wave(wave))
      end
      nonlinear_acceleration = add_fields(
        bilinear_field(nonlinear, modes),
        bilinear_field(modes, nonlinear)
      )
      first_curvature = pair_output_tangent(
        modes,
        nonlinear_acceleration,
        first_pair,
        1
      )
      second_curvature = pair_output_tangent(
        modes,
        nonlinear_acceleration,
        second_pair,
        1
      )
      curvature = critical_pair(first_curvature, second_source) +
                  critical_pair(first_source, second_curvature)
      a, b, c, d = amplitudes
      expected =
        -coefficients.fetch(0) * (b**2 * c**2 * d**2 +
                                  a**2 * b**2 * d**2) +
        coefficients.fetch(1) * (a**2 * c**2 * d**2 +
                                 a**2 * b**2 * c**2) -
        coefficients.fetch(2) * a * b * c * d * (b**2 + d**2) -
        coefficients.fetch(3) * a * b * c * d * (a**2 + c**2)

      cross = critical_pair(first_source, second_source)
      assert_operator cross, :>, 0.0
      assert_in_delta expected, curvature, 5.0e-10
      curvatures << curvature
      crosses << cross
    end

    assert_in_delta crosses.fetch(0), crosses.fetch(1), TOLERANCE
    assert_operator curvatures.fetch(0), :<, 0.0
    assert_operator curvatures.fetch(1), :>, 0.0
  end

  def test_opposite_curvature_survives_matching_every_radial_quadratic_row
    large = (Math.sqrt(7.0) + Math.sqrt(3.0)) / 2.0
    small = (Math.sqrt(7.0) - Math.sqrt(3.0)) / 2.0
    balanced_radius_one = Math.sqrt(5.0 / 2.0)
    large_radius_two = (Math.sqrt(29.0 / 5.0) +
                        Math.sqrt(21.0 / 5.0)) / 2.0
    small_radius_two = (Math.sqrt(29.0 / 5.0) -
                        Math.sqrt(21.0 / 5.0)) / 2.0
    profiles = [
      [large, large, small, small],
      [balanced_radius_one, large_radius_two,
       balanced_radius_one, small_radius_two]
    ]
    observations = profiles.map do |amplitudes|
      aligned_resonant_observables(amplitudes)
    end

    assert_in_delta 5.0,
                    observations.fetch(0).fetch(:radius_one_mass),
                    TOLERANCE
    assert_in_delta 5.0,
                    observations.fetch(0).fetch(:radius_two_mass),
                    TOLERANCE
    [:radius_one_mass, :radius_two_mass, :energy, :helicity,
     :enstrophy, :product, :cross].each do |key|
      assert_in_delta observations.fetch(0).fetch(key),
                      observations.fetch(1).fetch(key),
                      TOLERANCE
    end
    assert_in_delta(-0.02529521264225259,
                    observations.fetch(0).fetch(:curvature),
                    5.0e-10)
    assert_in_delta 0.0020376317478314372,
                    observations.fetch(1).fetch(:curvature),
                    5.0e-10
    assert_operator observations.fetch(0).fetch(:curvature), :<, 0.0
    assert_operator observations.fetch(1).fetch(:curvature), :>, 0.0
  end

  def test_external_parent_refill_is_another_positive_coherence_tangent
    first_pair = [[1, 0, 0], [0, 1, 1]]
    second_pair = [[0, 1, 0], [1, 0, 1]]
    waves = first_pair + second_pair
    entries = waves.each_with_index.map do |wave, index|
      phase = index == 2 ? Complex.polar(1.0, Math::PI / 6.0) : 1.0
      [wave, scale(phase, helical_vector(wave, -1))]
    end
    refill_wave = [1, -1, -1]
    entries << [
      refill_wave,
      scale(Complex.polar(1.0, Math::PI / 12.0),
            helical_vector(refill_wave, 1))
    ]
    modes = real_modes(entries)
    nonlinear = nonlinear_field(modes)
    first_source = pair_output(modes, first_pair, 1)
    second_source = pair_output(modes, second_pair, 1)
    first_tangent = pair_output_tangent(modes, nonlinear, first_pair, 1)
    second_tangent = pair_output_tangent(modes, nonlinear, second_pair, 1)
    relative_tangent = critical_pair(first_tangent, second_source) +
                       critical_pair(first_source, second_tangent)

    assert nonlinear.key?([1, 0, 0])
    assert_operator critical_pair(first_source, second_source), :>, 0.0
    assert_in_delta 0.0006646770992365388, relative_tangent, TOLERANCE
    assert_operator relative_tangent, :>, 0.0
  end

  def test_lawful_helical_output_block_realizes_three_dimensional_collapse_loss
    [8, 16].each do |frequency|
      output = [frequency, frequency, frequency]
      half_width = frequency / 8
      parent_pairs = (-half_width..half_width).to_a.repeated_permutation(3)
      pair_data = parent_pairs.map do |first_offset, second_offset, third_offset|
        first = [frequency + first_offset, second_offset, third_offset]
        second = output.zip(first).map { |target, entry| target - entry }
        first_mode = helical_vector(first, -1)
        second_mode = helical_vector(second, -1)
        first_order = ordered_helical_output(
          output,
          first,
          first_mode,
          second,
          second_mode,
          1
        )
        second_order = ordered_helical_output(
          output,
          second,
          second_mode,
          first,
          first_mode,
          1
        )
        pair_output = add(first_order, second_order)
        scalar = hermitian_dot(helical_vector(output, 1), pair_output)
        [first, second, first_mode, second_mode,
         first_order, second_order, scalar]
      end
      multiplicity = pair_data.length
      amplitude = 1.0 / Math.sqrt(2.0 * multiplicity)
      entries = []
      lifted_power = 0.0
      expected_scalar = 0.0
      phased_pairs = []

      pair_data.each do |first, second, first_mode, second_mode,
                         first_order, second_order, scalar|
        phase = Complex.polar(1.0, -scalar.arg)
        entries << [first, scale(amplitude * phase, first_mode)]
        entries << [second, scale(amplitude, second_mode)]
        phased_pairs << [first, second, first_mode, second_mode, phase]
        lifted_power += amplitude**4 * (
          vector_norm(first_order)**2 + vector_norm(second_order)**2
        ) / norm(output)
        expected_scalar += amplitude**2 * scalar.abs
      end

      assert_equal entries.length, entries.map(&:first).uniq.length
      assert_in_delta 1.0,
                      entries.sum { |_wave, mode| vector_norm(mode)**2 },
                      TOLERANCE
      modes = real_modes(entries)
      full_output = project_field(nonlinear_field(modes), 1)
                    .fetch(output, zero_vector)
      expected_output = scale(expected_scalar, helical_vector(output, 1))
      collapsed_power = vector_norm(full_output)**2 / norm(output)
      ratio = collapsed_power / lifted_power

      assert_operator expected_scalar, :>, 0.0
      assert_operator vector_norm(subtract(full_output, expected_output)),
                      :<,
                      2.0e-10
      assert_operator ratio, :>, 0.08 * multiplicity
      assert_operator ratio, :<, 0.13 * multiplicity

      block_source = Hash.new { |hash, wave| hash[wave] = zero_vector }
      parent_product_rates = []
      phased_pairs.each do |first, _second, first_mode, _second_mode, phase|
        phased_pairs.each do |_other_first, second, _other_first_mode,
                              second_mode, _other_phase|
          block_output = add_wave(first, second)
          phased_first = scale(amplitude * phase, first_mode)
          scaled_second = scale(amplitude, second_mode)
          contribution = add(
            ordered_helical_output(
              block_output,
              first,
              phased_first,
              second,
              scaled_second,
              1
            ),
            ordered_helical_output(
              block_output,
              second,
              scaled_second,
              first,
              phased_first,
              1
            )
          )
          block_source[block_output] = add(
            block_source[block_output],
            contribution
          )
          parent_product_rates << norm(first)**2 + norm(second)**2
        end
      end

      block_power = block_source.sum do |wave, value|
        vector_norm(value)**2 / norm(wave)
      end
      energy = 2.0 * multiplicity * amplitude**2
      half_derivative = phased_pairs.sum do |first, second, *_rest|
        amplitude**2 * (norm(first) + norm(second))
      end
      global_lift_ceiling = 2.0 * energy * half_derivative
      global_ratio_lower = block_power / global_lift_ceiling
      output_heat_rates = block_source.keys.map { |wave| norm(wave)**2 }

      assert_operator global_ratio_lower, :>, 5.0e-5 * multiplicity
      assert_operator global_ratio_lower, :<, 8.0e-5 * multiplicity
      assert_operator output_heat_rates.max / output_heat_rates.min, :<, 3.0
      assert_operator parent_product_rates.max / parent_product_rates.min,
                      :<,
                      3.0
    end
  end

  private

  def ordered_helical_output(output, left_wave, left_mode,
                             right_wave, right_mode, output_sign)
    raw = scale(-I * dot(left_mode, right_wave), right_mode)
    project_field({ output => raw }, output_sign).fetch(output, zero_vector)
  end

  def aligned_resonant_observables(amplitudes)
    first_pair = [[1, 0, 0], [0, 1, 1]]
    second_pair = [[0, 1, 0], [1, 0, 1]]
    waves = first_pair + second_pair
    entries = waves.each_with_index.map do |wave, index|
      phase = index == 2 ? Complex.polar(1.0, Math::PI / 6.0) : 1.0
      [wave, scale(amplitudes.fetch(index) * phase,
                   helical_vector(wave, -1))]
    end
    modes = real_modes(entries)
    first_source = pair_output(modes, first_pair, 1)
    second_source = pair_output(modes, second_pair, 1)
    nonlinear = nonlinear_field(modes)
    nonlinear_acceleration = add_fields(
      bilinear_field(nonlinear, modes),
      bilinear_field(modes, nonlinear)
    )
    first_curvature = pair_output_tangent(
      modes,
      nonlinear_acceleration,
      first_pair,
      1
    )
    second_curvature = pair_output_tangent(
      modes,
      nonlinear_acceleration,
      second_pair,
      1
    )
    curvature = critical_pair(first_curvature, second_source) +
                critical_pair(first_source, second_curvature)
    radius_one_mass = amplitudes.fetch(0)**2 + amplitudes.fetch(2)**2
    radius_two_mass = amplitudes.fetch(1)**2 + amplitudes.fetch(3)**2

    {
      radius_one_mass: radius_one_mass,
      radius_two_mass: radius_two_mass,
      energy: radius_one_mass + radius_two_mass,
      helicity: radius_one_mass + Math.sqrt(2.0) * radius_two_mass,
      enstrophy: radius_one_mass + 2.0 * radius_two_mass,
      product: amplitudes.inject(1.0, :*),
      cross: critical_pair(first_source, second_source),
      curvature: curvature
    }
  end

  def source_split(modes)
    plus = project_field(modes, 1)
    minus = project_field(modes, -1)
    source = nonlinear_field(modes)
    plus_plus = nonlinear_field(plus)
    minus_minus = nonlinear_field(minus)
    homochiral = add_fields(
      project_field(plus_plus, 1),
      project_field(minus_minus, -1)
    )
    unique = add_fields(
      project_field(minus_minus, 1),
      project_field(plus_plus, -1)
    )
    mixed = subtract_fields(source, homochiral, unique)

    {
      source: source,
      homochiral: homochiral,
      unique: unique,
      mixed: mixed
    }
  end

  def reconvergence_pair(split)
    non_unique = add_fields(split.fetch(:homochiral), split.fetch(:mixed))
    critical_pair(non_unique, split.fetch(:unique))
  end

  def heterochiral_three_wave_datum
    sqrt2 = Math.sqrt(2.0)
    waves = [[1, 0, 0], [0, 2, 0], [-1, -2, 0]]
    positive_vectors = [
      [0, -I / sqrt2, 1.0 / sqrt2],
      [I / sqrt2, 0, 1.0 / sqrt2],
      [-2.0 * I / Math.sqrt(10.0), I / Math.sqrt(10.0), 1.0 / sqrt2]
    ]
    amplitudes = [
      positive_vectors[0],
      scale(0.7, positive_vectors[1]),
      scale(Complex.polar(1.3, 0.41), positive_vectors[2].map(&:conj))
    ]

    real_modes(waves.zip(amplitudes))
  end

  def shared_output_datum(phase)
    signed_waves = [
      [[1, 0, 0], -1, 1.0],
      [[0, 1, 1], -1, 1.0],
      [[0, 1, 0], 1, Complex.polar(1.0, phase)],
      [[1, 0, 1], 1, 1.0]
    ]
    entries = signed_waves.map do |wave, sign, coefficient|
      [wave, scale(coefficient, helical_vector(wave, sign))]
    end
    real_modes(entries)
  end

  def real_modes(entries)
    entries.each_with_object({}) do |(wave, amplitude), modes|
      frozen_wave = wave.freeze
      modes[frozen_wave] = amplitude
      modes[negate_wave(frozen_wave)] = amplitude.map(&:conj)
    end
  end

  def helical_vector(wave, sign)
    wave_norm = norm(wave)
    unit_wave = wave.map { |entry| entry / wave_norm }
    reference = unit_wave[2].abs < 0.9 ? [0.0, 0.0, 1.0] : [0.0, 1.0, 0.0]
    first = cross(reference, unit_wave)
    first_norm = vector_norm(first)
    first = first.map { |entry| entry / first_norm }
    second = cross(unit_wave, first)
    add(first, scale(sign * I, second)).map do |entry|
      entry / Math.sqrt(2.0)
    end
  end

  def project_field(field, sign)
    field.to_h do |wave, amplitude|
      transverse = leray_project(wave, amplitude)
      curl_eigenvector = scale(I / norm(wave), cross(wave, transverse))
      [wave, scale(0.5, add(transverse, scale(sign, curl_eigenvector)))]
    end.reject { |_wave, amplitude| negligible?(amplitude) }
  end

  def nonlinear_field(modes)
    bilinear_field(modes, modes)
  end

  def bilinear_field(left_modes, right_modes)
    raw = Hash.new { |hash, wave| hash[wave] = zero_vector }
    left_modes.each do |left_wave, left_mode|
      right_modes.each do |right_wave, right_mode|
        target_wave = add_wave(left_wave, right_wave)
        next if target_wave.all?(&:zero?)

        contribution = scale(dot(left_mode, right_wave), right_mode)
        raw[target_wave] = add(raw[target_wave], contribution)
      end
    end
    raw.to_h do |wave, convolution|
      [wave, scale(-I, leray_project(wave, convolution))]
    end.reject { |_wave, amplitude| negligible?(amplitude) }
  end

  def pair_output(field, pair, output_sign)
    pair_waves = pair.flat_map { |wave| [wave, negate_wave(wave)] }
    pair_field = project_field(field, -output_sign).select do |wave, _amplitude|
      pair_waves.include?(wave)
    end
    output = add_wave(pair.fetch(0), pair.fetch(1))
    outputs = [output, negate_wave(output)]

    project_field(nonlinear_field(pair_field), output_sign).select do |wave, _|
      outputs.include?(wave)
    end
  end

  def pair_output_tangent(field, tangent, pair, output_sign)
    pair_waves = pair.flat_map { |wave| [wave, negate_wave(wave)] }
    pair_field = project_field(field, -output_sign).select do |wave, _amplitude|
      pair_waves.include?(wave)
    end
    pair_tangent = project_field(tangent, -output_sign).select do |wave, _amplitude|
      pair_waves.include?(wave)
    end
    output = add_wave(pair.fetch(0), pair.fetch(1))
    outputs = [output, negate_wave(output)]
    derivative = add_fields(
      bilinear_field(pair_tangent, pair_field),
      bilinear_field(pair_field, pair_tangent)
    )

    project_field(derivative, output_sign).select do |wave, _amplitude|
      outputs.include?(wave)
    end
  end

  def radial_face_cross_field(modes)
    radii = modes.keys.map { |wave| norm(wave) }.uniq.sort
    radii.each_cons(2).each_with_object({}) do |(lower_radius, upper_radius), sum|
      lower = modes.select do |wave, _amplitude|
        norm(wave) <= lower_radius + 1.0e-12
      end
      upper = modes.select do |wave, _amplitude|
        norm(wave) > lower_radius + 1.0e-12
      end
      contribution = scale_field(
        upper_radius - lower_radius,
        cross_product_field(lower, upper)
      )
      (sum.keys | contribution.keys).each do |wave|
        amplitude = add(sum.fetch(wave, zero_vector),
                        contribution.fetch(wave, zero_vector))
        if negligible?(amplitude)
          sum.delete(wave)
        else
          sum[wave] = amplitude
        end
      end
    end
  end

  def cross_product_field(left, right)
    raw = Hash.new { |hash, wave| hash[wave] = zero_vector }
    left.each do |left_wave, left_mode|
      right.each do |right_wave, right_mode|
        target_wave = add_wave(left_wave, right_wave)
        next if target_wave.all?(&:zero?)

        raw[target_wave] = add(raw[target_wave], cross(left_mode, right_mode))
      end
    end
    raw.reject { |_wave, amplitude| negligible?(amplitude) }
  end

  def critical_pair(left, right)
    (left.keys | right.keys).sum do |wave|
      left_mode = left.fetch(wave, zero_vector)
      right_mode = right.fetch(wave, zero_vector)
      norm(wave) * hermitian_dot(left_mode, right_mode).real
    end
  end

  def add_fields(*fields)
    fields.flat_map(&:keys).uniq.to_h do |wave|
      amplitude = fields.map { |field| field.fetch(wave, zero_vector) }
                        .reduce { |left, right| add(left, right) }
      [wave, amplitude]
    end.reject { |_wave, amplitude| negligible?(amplitude) }
  end

  def subtract_fields(field, *subtrahends)
    add_fields(field, *subtrahends.map { |entry| scale_field(-1.0, entry) })
  end

  def scale_field(number, field)
    field.to_h { |wave, amplitude| [wave, scale(number, amplitude)] }
  end

  def assert_field_close(expected, actual)
    (expected.keys | actual.keys).each do |wave|
      difference = subtract(expected.fetch(wave, zero_vector),
                            actual.fetch(wave, zero_vector))
      assert_operator vector_norm(difference),
                      :<,
                      TOLERANCE,
                      "wave=#{wave.inspect} expected=#{expected[wave].inspect} " \
                      "actual=#{actual[wave].inspect}"
    end
  end

  def negligible?(vector)
    vector.all? { |entry| entry.abs < 1.0e-14 }
  end

  def zero_vector
    [0i, 0i, 0i]
  end

  def add_wave(left, right)
    left.zip(right).map { |x, y| x + y }.freeze
  end

  def negate_wave(wave)
    wave.map { |entry| -entry }.freeze
  end

  def add(left, right)
    left.zip(right).map { |x, y| x + y }
  end

  def subtract(left, right)
    left.zip(right).map { |x, y| x - y }
  end

  def scale(number, vector)
    vector.map { |entry| number * entry }
  end

  def dot(left, right)
    left.zip(right).sum { |x, y| x * y }
  end

  def hermitian_dot(left, right)
    left.zip(right).sum { |x, y| x.conj * y }
  end

  def cross(left, right)
    [
      left[1] * right[2] - left[2] * right[1],
      left[2] * right[0] - left[0] * right[2],
      left[0] * right[1] - left[1] * right[0]
    ]
  end

  def vector_norm(vector)
    Math.sqrt(hermitian_dot(vector, vector).real)
  end

  def norm(vector)
    Math.sqrt(dot(vector, vector))
  end

  def leray_project(wave, vector)
    subtract(vector, scale(dot(wave, vector) / dot(wave, wave), wave))
  end
end
