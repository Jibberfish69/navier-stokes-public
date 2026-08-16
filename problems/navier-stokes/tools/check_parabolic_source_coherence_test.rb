#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ParabolicSourceCoherenceTest < Minitest::Test
  TOLERANCE = 1.0e-12

  def test_temporal_heat_kernel_has_the_positive_coherence_multiplier
    viscosity = 0.7
    [0.4, 1.0, 3.2].each do |frequency|
      [-8.0, -0.3, 0.0, 2.1].each do |temporal_frequency|
        decay = viscosity * frequency**2
        kernel_transform = 2.0 * frequency**2 * decay /
                           (decay**2 + temporal_frequency**2)
        expected = 2.0 * viscosity * frequency**4 /
                   (viscosity**2 * frequency**4 + temporal_frequency**2)
        multiplier = coherence_multiplier(frequency, temporal_frequency, viscosity)

        assert_in_delta expected, kernel_transform, TOLERANCE
        assert_operator multiplier, :>=, 0.0
        assert_operator multiplier, :<=, 1.0 / viscosity + TOLERANCE
      end
    end
  end

  def test_heat_coherence_kernel_is_positive_semidefinite
    viscosity = 0.6
    frequency = 2.3
    times = [0.0, 0.25, 0.9, 1.7]
    coefficients = [1.0, -0.8, 0.35, 0.2]
    quadratic_form = times.each_index.sum do |left|
      times.each_index.sum do |right|
        coefficients[left] * coefficients[right] * frequency**2 *
          Math.exp(-viscosity * frequency**2 * (times[left] - times[right]).abs)
      end
    end

    assert_operator quadratic_form, :>=, -TOLERANCE
  end

  def test_energy_controls_mass_and_the_low_first_moment_decomposition
    viscosity = 0.8
    cutoff = 2.0
    samples = [
      [0.5, 0.0, 1.3],
      [1.5, 0.7, 0.4],
      [3.0, 1.2, 2.1],
      [7.0, 18.0, 0.9]
    ]
    measure = samples.map do |frequency, temporal_frequency, source_power|
      [frequency,
       coherence_multiplier(frequency, temporal_frequency, viscosity) * source_power]
    end
    mass = measure.sum { |_frequency, weight| weight }
    first_moment = measure.sum { |frequency, weight| frequency * weight }
    capped_moment = measure.sum { |frequency, weight| [frequency, cutoff].min * weight }
    high_pass = measure.sum { |frequency, weight| [frequency - cutoff, 0.0].max * weight }
    low_moment = measure.sum do |frequency, weight|
      frequency <= cutoff ? frequency * weight : 0.0
    end

    assert_operator low_moment, :<=, cutoff * mass + TOLERANCE
    assert_in_delta first_moment, capped_moment + high_pass, TOLERANCE
    assert_operator high_pass, :>=, 0.0
  end

  def test_flux_tail_is_the_high_pass_spatial_multiplier
    cutoff = 2.0
    transfers = [[1.0, -2.0], [3.0, 0.5], [7.0, 1.5]]
    breakpoints = ([cutoff] + transfers.map(&:first).select { |frequency| frequency > cutoff }).sort
    flux_integral = breakpoints.each_cons(2).sum do |left, right|
      midpoint = (left + right) / 2.0
      flux = transfers.sum do |frequency, transfer|
        frequency >= midpoint ? transfer : 0.0
      end
      (right - left) * flux
    end
    high_pass_work = transfers.sum do |frequency, transfer|
      [frequency - cutoff, 0.0].max * transfer
    end

    assert_in_delta high_pass_work, flux_integral, TOLERANCE
  end

  def test_old_data_high_pass_symbol_is_uniform_in_the_cutoff
    viscosity = 0.55
    [0.1, 1.0, 8.0].each do |frequency|
      [0.0, 0.3, 2.0, 20.0].each do |cutoff|
        symbol = frequency * [frequency - cutoff, 0.0].max /
                 (viscosity * frequency**2)
        assert_operator symbol, :>=, 0.0
        assert_operator symbol, :<=, 1.0 / viscosity + TOLERANCE
      end
    end
  end

  def test_one_mode_duhamel_gram_equals_stock_plus_viscous_action
    viscosity = 0.7
    frequency = 2.4
    cutoff = 1.1
    forcing = 1.3
    terminal_time = 0.8
    decay = viscosity * frequency**2
    response = forcing * (1.0 - Math.exp(-decay * terminal_time)) / decay
    response_square_integral = forcing**2 / decay**2 * (
      terminal_time -
      2.0 * (1.0 - Math.exp(-decay * terminal_time)) / decay +
      (1.0 - Math.exp(-2.0 * decay * terminal_time)) / (2.0 * decay)
    )
    response_forcing_integral = forcing**2 * (
      terminal_time / decay -
      (1.0 - Math.exp(-decay * terminal_time)) / decay**2
    )

    critical_gram = frequency * response_forcing_integral
    critical_action = 0.5 * frequency * response**2 +
                      viscosity * frequency**3 * response_square_integral
    high_pass = [frequency - cutoff, 0.0].max
    high_pass_gram = high_pass * response_forcing_integral
    high_pass_action = 0.5 * high_pass * response**2 +
                       viscosity * high_pass * frequency**2 * response_square_integral

    assert_in_delta critical_gram, critical_action, TOLERANCE
    assert_in_delta high_pass_gram, high_pass_action, TOLERANCE
    assert_operator critical_gram, :>=, 0.0
    assert_operator high_pass_gram, :>=, 0.0
  end

  def test_normalizing_critical_gram_forces_vanishing_viscosity
    viscosity = 0.8
    mass = 3.7
    critical_moment = 25.0
    spatial_scale = 0.04

    fixed_viscosity_amplitude = spatial_scale
    fixed_viscosity_mass = fixed_viscosity_amplitude**2 *
                           spatial_scale**-3 * mass
    fixed_viscosity_critical = fixed_viscosity_amplitude**2 *
                               spatial_scale**-2 * critical_moment
    fixed_viscosity = fixed_viscosity_amplitude * viscosity / spatial_scale

    assert_in_delta mass / spatial_scale,
                    fixed_viscosity_mass,
                    TOLERANCE
    assert_in_delta critical_moment,
                    fixed_viscosity_critical,
                    TOLERANCE
    assert_in_delta viscosity, fixed_viscosity, TOLERANCE

    normalizing_ratio = 1.0 / Math.sqrt(critical_moment)
    normalized_amplitude = spatial_scale * normalizing_ratio
    normalized_critical = normalized_amplitude**2 *
                          spatial_scale**-2 * critical_moment
    normalized_viscosity = normalized_amplitude * viscosity / spatial_scale

    assert_in_delta 1.0, normalized_critical, TOLERANCE
    assert_in_delta viscosity / Math.sqrt(critical_moment),
                    normalized_viscosity,
                    TOLERANCE
    assert_operator normalized_viscosity, :<, viscosity
  end

  def test_constant_pulse_has_the_exact_temporal_improvement_ratio
    viscosity = 0.9
    frequency = 3.1
    decay = viscosity * frequency**2
    [0.002, 0.2, 4.0].each do |terminal_time|
      exact_ratio = 1.0 -
                    (1.0 - Math.exp(-decay * terminal_time)) /
                    (decay * terminal_time)
      response_forcing = terminal_time / decay -
                         (1.0 - Math.exp(-decay * terminal_time)) / decay**2
      gram = frequency**2 * response_forcing
      crude_source_square = terminal_time / viscosity

      assert_in_delta exact_ratio,
                      gram / crude_source_square,
                      TOLERANCE
      assert_operator exact_ratio, :>, 0.0
      assert_operator exact_ratio, :<, 1.0
    end
  end

  def test_terminal_stock_is_post_terminal_heat_dissipation
    viscosity = 0.65
    frequency = 2.7
    multiplier = 1.4
    terminal_response = 0.83
    decay = viscosity * frequency**2
    terminal_stock = 0.5 * multiplier * terminal_response**2
    post_terminal_action = viscosity * frequency**2 * multiplier *
                           terminal_response**2 / (2.0 * decay)

    assert_in_delta terminal_stock, post_terminal_action, TOLERANCE
  end

  def test_piecewise_pulse_has_exact_heat_layer_and_increment_subtractions
    viscosity = 0.8
    frequency = 1.9
    decay = viscosity * frequency**2
    terminal_time = 1.3
    split_time = 0.45
    first_source = 1.1
    second_source = -0.6
    second_length = terminal_time - split_time
    self_kernel = lambda do |length|
      2.0 * (
        length / decay -
        (1.0 - Math.exp(-decay * length)) / decay**2
      )
    end
    cross_kernel = (1.0 - Math.exp(-decay * split_time)) *
                   (1.0 - Math.exp(-decay * second_length)) / decay**2
    gram = 0.5 * frequency**2 * (
      first_source**2 * self_kernel.call(split_time) +
      second_source**2 * self_kernel.call(second_length) +
      2.0 * first_source * second_source * cross_kernel
    )
    crude_square = (
      first_source**2 * split_time +
      second_source**2 * second_length
    ) / viscosity
    endpoint_kernel = lambda do |left, right|
      (Math.exp(-decay * left) - Math.exp(-decay * right)) / decay +
        (Math.exp(-decay * (terminal_time - right)) -
         Math.exp(-decay * (terminal_time - left))) / decay
    end
    endpoint_layers = (
      first_source**2 * endpoint_kernel.call(0.0, split_time) +
      second_source**2 * endpoint_kernel.call(split_time, terminal_time)
    ) / (2.0 * viscosity)
    increment_action = 0.5 * frequency**2 * cross_kernel *
                       (first_source - second_source)**2

    assert_in_delta gram,
                    crude_square - endpoint_layers - increment_action,
                    TOLERANCE
    assert_operator endpoint_layers, :>, 0.0
    assert_operator increment_action, :>, 0.0
  end

  def test_global_parent_fiber_lift_is_bounded_by_energy_and_half_derivative
    modes = {
      [1, 0, 0] => 0.8,
      [0, 2, 0] => 0.6,
      [2, 1, 1] => 0.5,
      [-1, 1, 2] => 0.7
    }
    lifted = modes.sum do |left_wave, left_amplitude|
      modes.sum do |right_wave, right_amplitude|
        output = left_wave.zip(right_wave).map { |left, right| left + right }
        output_norm = vector_norm(output)
        next 0.0 if output_norm.zero?

        output_norm * left_amplitude**2 * right_amplitude**2
      end
    end
    energy = modes.values.sum { |amplitude| amplitude**2 }
    half_derivative = modes.sum do |wave, amplitude|
      vector_norm(wave) * amplitude**2
    end

    assert_operator lifted, :>, 0.0
    assert_operator lifted, :<=, 2.0 * energy * half_derivative + TOLERANCE
  end

  def test_parent_fiber_collapse_has_sharp_unbounded_volume_loss
    [1, 8, 64, 512].each do |multiplicity|
      contributions = Array.new(multiplicity, 1.0 / Math.sqrt(multiplicity))
      lifted_square = contributions.sum { |value| value**2 }
      collapsed_square = contributions.sum**2

      assert_in_delta 1.0, lifted_square, TOLERANCE
      assert_in_delta multiplicity, collapsed_square, TOLERANCE
      assert_in_delta multiplicity,
                      collapsed_square / lifted_square,
                      TOLERANCE
    end
  end

  def test_unrestricted_port_response_identity_returns_the_open_dini_bulk
    viscosity = 0.7
    frequency = 2.4
    shell_weight = 1.9
    response = 0.8
    source = -0.35
    decay = viscosity * frequency**2
    response_tangent = decay * (source - response)
    current = shell_weight * response * source / viscosity
    terminal_stock = shell_weight * response**2 /
                     (2.0 * viscosity * decay)
    terminal_stock_tangent = shell_weight * response * response_tangent /
                             (viscosity * decay)
    interior_dini_bulk = shell_weight * response**2 / viscosity

    assert_in_delta current,
                    terminal_stock_tangent + interior_dini_bulk,
                    TOLERANCE
    assert_in_delta current,
                    -(-terminal_stock_tangent) + interior_dini_bulk,
                    TOLERANCE

    reservoir_tangent = -0.27
    boundary_tangent = reservoir_tangent - terminal_stock_tangent
    remainder = interior_dini_bulk + reservoir_tangent
    assert_in_delta current,
                    -boundary_tangent + remainder,
                    TOLERANCE
  end

  def test_unique_parent_resolved_homological_multiplier_leaves_collapsed_gram
    output_decay = 1.3
    parent_decays = [0.8, 1.1, 1.7]
    response = -0.45
    parents = [0.7, -0.2, 0.9]
    nonlinear_parent_tangents = [0.03, -0.05, 0.02]
    source = parents.sum
    response_tangent = -output_decay * response + source
    parent_tangents = parents.each_index.map do |index|
      -parent_decays[index] * parents[index] +
        nonlinear_parent_tangents[index]
    end
    multipliers = parent_decays.map do |parent_decay|
      1.0 / (output_decay + parent_decay)
    end
    boundary = parents.each_index.sum do |index|
      multipliers[index] * response * parents[index]
    end
    boundary_tangent = parents.each_index.sum do |index|
      multipliers[index] * (
        response_tangent * parents[index] +
        response * parent_tangents[index]
      )
    end
    collapsed_gram = source * parents.each_index.sum do |index|
      multipliers[index] * parents[index]
    end
    nonlinear_insertion = response * parents.each_index.sum do |index|
      multipliers[index] * nonlinear_parent_tangents[index]
    end
    current = response * source

    refute_in_delta 0.0, boundary, TOLERANCE
    assert_in_delta current,
                    -boundary_tangent + collapsed_gram + nonlinear_insertion,
                    TOLERANCE
  end

  def test_coherent_parent_resolved_remainder_keeps_the_full_fiber_loss
    output_decay = 1.4
    parent_decay = 0.9
    [1, 8, 64, 512].each do |multiplicity|
      parents = Array.new(multiplicity, 1.0 / Math.sqrt(multiplicity))
      source = parents.sum
      multiplier = 1.0 / (output_decay + parent_decay)
      uncollapsed_lift = parents.sum { |parent| multiplier * parent**2 }
      collapsed_remainder = source * parents.sum do |parent|
        multiplier * parent
      end

      assert_in_delta multiplicity,
                      collapsed_remainder / uncollapsed_lift,
                      TOLERANCE
    end
  end

  def test_single_parent_auxiliary_stokes_value_is_unbounded_below_in_free_response
    input_decay = 0.7
    output_decay = 1.9
    input = 1.2
    denominator = output_decay + 2.0 * input_decay
    source_only_value = input**4 /
                        (4.0 * input_decay * denominator)
    value = lambda do |response|
      response * input**2 / denominator + source_only_value
    end

    assert_operator value.call(-100.0), :<, value.call(-1.0)
    assert_operator value.call(-1.0), :<, value.call(0.0)

    response = -0.4
    baseline_input_tangent = -input_decay * input
    baseline_response_tangent = -output_decay * response + input**2
    d_value_d_input = 2.0 * response * input / denominator +
                      input**3 / (input_decay * denominator)
    d_value_d_response = input**2 / denominator
    baseline_value_tangent = d_value_d_input * baseline_input_tangent +
                             d_value_d_response * baseline_response_tangent
    current = response * input**2

    assert_in_delta(-current, baseline_value_tangent, TOLERANCE)

    nonlinear_input_tangent = baseline_input_tangent + input**2
    actual_value_tangent = d_value_d_input * nonlinear_input_tangent +
                           d_value_d_response * baseline_response_tangent
    nonlinear_insertion = d_value_d_input * input**2
    assert_in_delta(-current + nonlinear_insertion,
                    actual_value_tangent,
                    TOLERANCE)
  end

  def test_second_parent_normal_form_removes_the_quartic_remainder
    output_decay = 1.3
    current_weight = 0.9
    parent_decays = [0.8, 1.1, 1.7]
    response = -0.45
    parents = [0.7, -0.2, 0.9]
    nonlinear_parent_tangents = [0.03, -0.05, 0.02]
    source = parents.sum
    response_tangent = output_decay * (source - response)
    parent_tangents = parents.each_index.map do |index|
      -parent_decays[index] * parents[index] +
        nonlinear_parent_tangents[index]
    end
    first_multipliers = parent_decays.map do |parent_decay|
      current_weight / (output_decay + parent_decay)
    end
    first_boundary = parents.each_index.sum do |index|
      first_multipliers[index] * response * parents[index]
    end
    first_boundary_tangent = parents.each_index.sum do |index|
      first_multipliers[index] * (
        response_tangent * parents[index] +
        response * parent_tangents[index]
      )
    end
    second_kernel = parent_decays.each_index.map do |left|
      parent_decays.each_index.map do |right|
        output_decay *
          (first_multipliers[left] + first_multipliers[right]) /
          (2.0 * (parent_decays[left] + parent_decays[right]))
      end
    end
    quartic_remainder = parents.each_index.sum do |left|
      parents.each_index.sum do |right|
        output_decay *
          (first_multipliers[left] + first_multipliers[right]) / 2.0 *
          parents[left] * parents[right]
      end
    end
    second_boundary = parents.each_index.sum do |left|
      parents.each_index.sum do |right|
        second_kernel[left][right] * parents[left] * parents[right]
      end
    end
    second_boundary_tangent = parents.each_index.sum do |left|
      parents.each_index.sum do |right|
        second_kernel[left][right] * (
          parent_tangents[left] * parents[right] +
          parents[left] * parent_tangents[right]
        )
      end
    end
    second_nonlinear_insertion = parents.each_index.sum do |left|
      parents.each_index.sum do |right|
        second_kernel[left][right] * (
          nonlinear_parent_tangents[left] * parents[right] +
          parents[left] * nonlinear_parent_tangents[right]
        )
      end
    end
    first_nonlinear_insertion = parents.each_index.sum do |index|
      first_multipliers[index] * response * nonlinear_parent_tangents[index]
    end
    current = current_weight * response * source
    nonlinear_remainder = first_nonlinear_insertion +
                          second_nonlinear_insertion

    assert_in_delta quartic_remainder,
                    -second_boundary_tangent +
                      second_nonlinear_insertion,
                    TOLERANCE
    assert_in_delta current,
                    -first_boundary_tangent - second_boundary_tangent +
                      nonlinear_remainder,
                    TOLERANCE

    energy = current_weight * response**2 / (2.0 * output_decay)
    direct_reservoir = energy + first_boundary + second_boundary
    parent_weights = parent_decays.map do |parent_decay|
      1.0 / (output_decay + parent_decay)
    end
    collapsed_parent = parents.each_index.sum do |index|
      parent_weights[index] * parents[index]
    end
    heat_gram = parents.each_index.sum do |left|
      parents.each_index.sum do |right|
        parent_weights[left] * parent_weights[right] *
          parents[left] * parents[right] /
          (parent_decays[left] + parent_decays[right])
      end
    end
    factored_reservoir = output_decay * current_weight / 2.0 *
                         (collapsed_parent + response / output_decay)**2 +
                         output_decay**2 * current_weight * heat_gram

    assert_operator second_boundary, :>=, -TOLERANCE
    assert_operator direct_reservoir, :>=, -TOLERANCE
    assert_in_delta direct_reservoir, factored_reservoir, TOLERANCE
  end

  def test_second_parent_reservoir_has_the_sharp_single_age_floor
    output_decay = 1.0
    current_weight = 1.0
    parent_decay = 1.0
    response = 2.0
    parent = -2.0
    first_multiplier = current_weight / (output_decay + parent_decay)
    second_kernel = output_decay * first_multiplier /
                    (2.0 * parent_decay)
    energy = current_weight * response**2 / (2.0 * output_decay)
    first_boundary = first_multiplier * response * parent
    second_boundary = second_kernel * parent**2
    reservoir = energy + first_boundary + second_boundary

    assert_in_delta 2.0, energy, TOLERANCE
    assert_in_delta(-2.0, first_boundary, TOLERANCE)
    assert_in_delta 1.0, second_boundary, TOLERANCE
    assert_in_delta energy / 2.0, reservoir, TOLERANCE

    [1, 8, 64, 512].each do |multiplicity|
      parents = Array.new(multiplicity, 1.0 / Math.sqrt(multiplicity))
      source = parents.sum
      quartic_remainder = output_decay * first_multiplier * source**2
      coherent_second_boundary = second_kernel * source**2
      lifted_diagonal = parents.sum do |value|
        first_multiplier * value**2
      end

      assert_in_delta multiplicity / 2.0,
                      quartic_remainder,
                      TOLERANCE
      assert_in_delta multiplicity / 4.0,
                      coherent_second_boundary,
                      TOLERANCE
      assert_in_delta multiplicity,
                      quartic_remainder / lifted_diagonal,
                      TOLERANCE
    end
  end

  def test_fourier_second_parent_kernel_has_the_positive_heat_gram_factorization
    viscosity = 0.7
    output_frequency = 2.3
    parent_heat_rates = [3.2, 5.7, 8.4]
    parents = [0.9, -1.4, 0.65]
    denominators = parent_heat_rates.map do |parent_heat_rate|
      output_frequency**2 + parent_heat_rate
    end
    direct = parents.each_index.sum do |left|
      parents.each_index.sum do |right|
        kernel = output_frequency /
                 (2.0 * viscosity**2 *
                  (parent_heat_rates[left] + parent_heat_rates[right])) *
                 (1.0 / denominators[left] +
                  1.0 / denominators[right])
        kernel * parents[left] * parents[right]
      end
    end
    collapsed = parents.each_index.sum do |index|
      parents[index] / denominators[index]
    end
    heat_gram = parents.each_index.sum do |left|
      parents.each_index.sum do |right|
        parents[left] * parents[right] /
          (denominators[left] * denominators[right] *
           (parent_heat_rates[left] + parent_heat_rates[right]))
      end
    end
    factored = output_frequency * collapsed**2 /
               (2.0 * viscosity**2) +
               output_frequency**3 * heat_gram / viscosity**2

    assert_operator direct, :>=, -TOLERANCE
    assert_operator heat_gram, :>=, -TOLERANCE
    assert_in_delta direct, factored, TOLERANCE
  end

  def test_third_ancestor_storage_is_the_positive_triangular_observability_gram
    current_weight = 1.0
    output_decay = 1.0
    parent_decay = 1.0
    ancestor_decay = 1.0
    coupling = 1.0
    response = 0.7
    parent = -0.4
    ancestor = 1.2
    ancestor_remainder = -0.3

    first = current_weight / (output_decay + parent_decay)
    second = output_decay * first / (2.0 * parent_decay)
    response_ancestor = first / (output_decay + ancestor_decay)
    parent_ancestor = (2.0 * second +
                       output_decay * response_ancestor) /
                      (parent_decay + ancestor_decay)
    ancestor_square = parent_ancestor * coupling**2 /
                      (2.0 * ancestor_decay)

    energy = current_weight * response**2 / (2.0 * output_decay)
    storage = energy +
              first * response * parent +
              second * parent**2 +
              response_ancestor * coupling * response * ancestor +
              parent_ancestor * coupling * parent * ancestor +
              ancestor_square * ancestor**2

    response_tangent = output_decay * (parent - response)
    parent_tangent = -parent_decay * parent + coupling * ancestor
    ancestor_tangent = -ancestor_decay * ancestor + ancestor_remainder
    storage_tangent = current_weight * response * response_tangent /
                      output_decay +
                      first * (
                        response_tangent * parent +
                        response * parent_tangent
                      ) +
                      2.0 * second * parent * parent_tangent +
                      response_ancestor * coupling * (
                        response_tangent * ancestor +
                        response * ancestor_tangent
                      ) +
                      parent_ancestor * coupling * (
                        parent_tangent * ancestor +
                        parent * ancestor_tangent
                      ) +
                      2.0 * ancestor_square * ancestor * ancestor_tangent
    expected_tangent = -current_weight * response**2 +
                       (
                         response_ancestor * coupling * response +
                         parent_ancestor * coupling * parent +
                         2.0 * ancestor_square * ancestor
                       ) * ancestor_remainder

    assert_in_delta expected_tangent, storage_tangent, TOLERANCE

    polynomial = [response, parent, ancestor / 2.0]
    future_observation = polynomial.each_index.sum do |left|
      polynomial.each_index.sum do |right|
        degree = left + right
        polynomial[left] * polynomial[right] *
          (1..degree).reduce(1.0, :*) / 2.0**(degree + 1)
      end
    end

    assert_operator storage, :>=, -TOLERANCE
    assert_in_delta future_observation, storage, TOLERANCE

    nonmonotone_response = 1.0
    nonmonotone_parent = 0.0
    nonmonotone_ancestor = -2.0 / 3.0
    second_storage = 0.5 * nonmonotone_response**2 +
                     first * nonmonotone_response * nonmonotone_parent +
                     second * nonmonotone_parent**2
    third_increment = response_ancestor * coupling *
                      nonmonotone_response * nonmonotone_ancestor +
                      parent_ancestor * coupling *
                      nonmonotone_parent * nonmonotone_ancestor +
                      ancestor_square * nonmonotone_ancestor**2

    assert_in_delta(-1.0 / 12.0, third_increment, TOLERANCE)
    assert_operator second_storage + third_increment, :>, 0.0
  end

  def test_scalar_heat_age_iteration_has_an_active_orthogonal_resonance
    left_wave = [1.0, 0.0, 0.0]
    right_wave = [0.0, 1.0, 0.0]
    outer_wave = [0.0, 0.0, 1.0]
    parent_wave = add_vectors(left_wave, right_wave)
    output_wave = add_vectors(parent_wave, outer_wave)
    left_polarization = [0.0, 1.0, 0.0]
    right_polarization = [0.0, 0.0, 1.0]
    outer_polarization = [1.0, -1.0, 0.0]

    inner_raw = add_vectors(
      scale_vector(right_polarization,
                   dot_product(left_polarization, right_wave)),
      scale_vector(left_polarization,
                   dot_product(right_polarization, left_wave))
    )
    inner = leray_project(parent_wave, inner_raw)
    outer_raw = add_vectors(
      scale_vector(outer_polarization,
                   dot_product(inner, outer_wave)),
      scale_vector(inner,
                   dot_product(outer_polarization, parent_wave))
    )
    outer = leray_project(output_wave, outer_raw)
    quadratic_parent_age = dot_product(parent_wave, parent_wave) +
                           dot_product(outer_wave, outer_wave)
    cubic_ancestor_age = dot_product(left_wave, left_wave) +
                         dot_product(right_wave, right_wave) +
                         dot_product(outer_wave, outer_wave)

    assert_in_delta 3.0, quadratic_parent_age, TOLERANCE
    assert_in_delta quadratic_parent_age, cubic_ancestor_age, TOLERANCE
    assert_operator vector_norm(inner), :>, TOLERANCE
    assert_operator vector_norm(outer), :>, TOLERANCE
    assert_in_delta 0.0,
                    cubic_ancestor_age - quadratic_parent_age,
                    TOLERANCE
  end

  private

  def add_vectors(left, right)
    left.zip(right).map { |left_entry, right_entry| left_entry + right_entry }
  end

  def dot_product(left, right)
    left.zip(right).sum { |left_entry, right_entry| left_entry * right_entry }
  end

  def leray_project(wave, vector)
    wave_square = dot_product(wave, wave)
    return vector if wave_square.zero?

    coefficient = dot_product(wave, vector) / wave_square
    vector.zip(wave).map do |vector_entry, wave_entry|
      vector_entry - coefficient * wave_entry
    end
  end

  def scale_vector(vector, scalar)
    vector.map { |entry| scalar * entry }
  end

  def vector_norm(wave)
    Math.sqrt(wave.sum { |entry| entry**2 })
  end

  def coherence_multiplier(frequency, temporal_frequency, viscosity)
    viscosity * frequency**4 /
      (viscosity**2 * frequency**4 + temporal_frequency**2)
  end
end
