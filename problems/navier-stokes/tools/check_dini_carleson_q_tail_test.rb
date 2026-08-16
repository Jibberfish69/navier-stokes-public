#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class DiniCarlesonQTailTest < Minitest::Test
  TOLERANCE = 1.0e-12

  def test_finite_abel_identity_for_tail_masses
    q = 1.7
    first = 2
    last = 8
    shell_masses = (0..12).to_h do |index|
      [index, (index + 1.0) / (q**(1.3 * index))]
    end
    tails = (0..13).to_h do |index|
      [index, (index..12).sum { |shell| shell_masses.fetch(shell) }]
    end

    first_moment = (first..last).sum do |index|
      q**index * shell_masses.fetch(index)
    end
    abel = q**first * tails.fetch(first) +
           (1.0 - 1.0 / q) * (first + 1..last).sum do |index|
             q**index * tails.fetch(index)
           end - q**last * tails.fetch(last + 1)

    assert_in_delta first_moment, abel, TOLERANCE
  end

  def test_weak_carleson_bound_allows_one_unpaid_unit_per_scale
    q = 2.0
    shell_count = 60
    shell_masses = (0...shell_count).map do |index|
      (1.0 - 1.0 / q) / q**index
    end
    tails = Array.new(shell_count + 1, 0.0)
    (shell_count - 1).downto(0) do |index|
      tails[index] = shell_masses.fetch(index) + tails.fetch(index + 1)
    end
    weak_carleson = (0...shell_count).map do |index|
      q**index * tails.fetch(index)
    end
    first_moment = shell_masses.each_index.sum do |index|
      q**index * shell_masses.fetch(index)
    end

    assert_in_delta 1.0 - q**(-shell_count),
                    weak_carleson.max,
                    TOLERANCE
    assert_in_delta shell_count * (1.0 - 1.0 / q),
                    first_moment,
                    TOLERANCE
    assert_operator first_moment, :>, 20.0
    assert_in_delta 1.0 - q**(-shell_count),
                    shell_masses.sum,
                    TOLERANCE
  end

  def test_adjacent_contraction_pays_the_dini_sum
    epsilon = 0.23
    shell_count = 120
    b = [1.4]
    defects = shell_count.times.map { |index| 0.08 * 0.72**index }
    defects.each do |defect|
      b << (1.0 - epsilon) * b.last + defect
    end

    shell_count.times do |index|
      assert_operator b.fetch(index + 1),
                      :<=,
                      (1.0 - epsilon) * b.fetch(index) +
                        defects.fetch(index) + TOLERANCE
    end
    assert_operator epsilon * b.sum,
                    :<=,
                    b.first + defects.sum + TOLERANCE
  end

  def test_q_adic_heat_relay_has_finite_time_and_energy_but_constant_critical_cost
    q = 2.0
    viscosity = 0.7
    critical_height = 3.0
    shell_count = 50
    frequencies = shell_count.times.map { |index| q**index }
    lifetimes = frequencies.map do |frequency|
      Math.log(q) / (2.0 * viscosity * frequency**2)
    end
    kinetic_losses = frequencies.map do |frequency|
      critical_height * (1.0 - 1.0 / q) / frequency
    end
    critical_costs = frequencies.map do |_frequency|
      critical_height * (1.0 - 1.0 / q)
    end

    expected_time = Math.log(q) / (2.0 * viscosity * (1.0 - q**-2)) *
                    (1.0 - q**(-2 * shell_count))
    expected_kinetic_loss = critical_height * (1.0 - q**(-shell_count))

    assert_in_delta expected_time, lifetimes.sum, TOLERANCE
    assert_in_delta expected_kinetic_loss, kinetic_losses.sum, TOLERANCE
    assert_in_delta shell_count * critical_height * (1.0 - 1.0 / q),
                    critical_costs.sum,
                    TOLERANCE
    assert_operator critical_costs.sum, :>, 20.0 * critical_height
  end

  def test_minimal_adjacent_defect_is_the_receiver_incidence_positive_part
    q = 1.6
    epsilon = 0.18
    shell_masses = [0.7, 0.21, 0.32, 0.08, 0.04, 0.01]
    tails = Array.new(shell_masses.length + 1, 0.0)
    (shell_masses.length - 1).downto(0) do |index|
      tails[index] = shell_masses.fetch(index) + tails.fetch(index + 1)
    end
    b = shell_masses.each_index.map { |index| q**index * tails.fetch(index) }

    (0...shell_masses.length - 1).each do |index|
      recurrence_excess = b.fetch(index + 1) -
                          (1.0 - epsilon) * b.fetch(index)
      receiver_excess = q**index * (
        (q - 1.0 + epsilon) * tails.fetch(index + 1) -
        (1.0 - epsilon) * shell_masses.fetch(index)
      )
      minimal_defect = [receiver_excess, 0.0].max

      assert_in_delta recurrence_excess, receiver_excess, TOLERANCE
      assert_operator b.fetch(index + 1),
                      :<=,
                      (1.0 - epsilon) * b.fetch(index) +
                        minimal_defect + TOLERANCE
    end
  end

  def test_minimal_defect_summability_is_equivalent_to_the_dini_sum
    epsilon = 0.19
    b = [1.1, 0.83, 0.91, 0.42, 0.48, 0.17, 0.09]
    minimal_defects = (0...b.length - 1).map do |index|
      [b.fetch(index + 1) - (1.0 - epsilon) * b.fetch(index), 0.0].max
    end

    assert_operator minimal_defects.sum,
                    :<=,
                    b.drop(1).sum + TOLERANCE
    assert_operator epsilon * b[1...-1].sum + b.last,
                    :<=,
                    (1.0 - epsilon) * b.first + minimal_defects.sum +
                      TOLERANCE
  end

  def test_minimal_defect_is_exactly_dini_bulk_plus_discounted_variation
    epsilon = 0.19
    b = [1.1, 0.83, 0.91, 0.42, 0.48, 0.17, 0.09, 0.0]
    signed_defects = (0...b.length - 1).map do |index|
      b.fetch(index + 1) - (1.0 - epsilon) * b.fetch(index)
    end
    minimal_defects = signed_defects.map { |defect| [defect, 0.0].max }
    last_index = b.length - 2

    left = 2.0 * minimal_defects.sum
    right = signed_defects.sum(&:abs) +
            epsilon * b[1..last_index].sum + b.fetch(last_index + 1) -
            (1.0 - epsilon) * b.first
    decomposed = epsilon / 2.0 * b[1..last_index].sum +
                 signed_defects.sum(&:abs) / 2.0 +
                 b.fetch(last_index + 1) / 2.0

    assert_in_delta left, right, TOLERANCE
    assert_in_delta minimal_defects.sum +
                    (1.0 - epsilon) * b.first / 2.0,
                    decomposed,
                    TOLERANCE
  end

  def test_single_shell_heat_mass_does_not_pay_the_hazard_action
    q = 1.7
    epsilon = 0.21
    first = 2
    active = 14
    mass = 0.8
    shell_masses = Array.new(active + 2, 0.0)
    shell_masses[active] = mass
    tails = Array.new(shell_masses.length + 1, 0.0)
    (shell_masses.length - 1).downto(0) do |index|
      tails[index] = shell_masses.fetch(index) + tails.fetch(index + 1)
    end
    b = tails.each_index.map { |index| q**index * tails.fetch(index) }
    defects = (first...shell_masses.length).map do |index|
      [b.fetch(index + 1) - (1.0 - epsilon) * b.fetch(index), 0.0].max
    end
    expected = (q - 1.0 + epsilon) / (q - 1.0) *
               (q**active - q**first) * mass

    assert_in_delta mass, shell_masses.sum, TOLERANCE
    assert_in_delta expected, defects.sum, 1.0e-8
    assert_operator defects.sum, :>, 100.0 * mass
  end

  def test_terminal_prefix_shell_mass_has_both_derivative_signs
    viscosity = 0.7
    gamma = 2.3
    switch_time = 0.8
    response_at_switch = 1.0 - Math.exp(-gamma * switch_time)
    derivative_before = response_at_switch / viscosity
    derivative_after = -response_at_switch / viscosity

    assert_operator derivative_before, :>, 0.0
    assert_operator derivative_after, :<, 0.0
    assert_in_delta(-derivative_before, derivative_after, TOLERANCE)
  end

  def test_scale_neutral_tail_is_the_exact_hazard_boundary
    q = 1.4
    epsilon = 0.17
    shell_count = 20
    tails = (0..shell_count).map { |index| q**(-index) }

    (0...shell_count).each do |index|
      shell_mass = tails.fetch(index) - tails.fetch(index + 1)
      hazard = shell_mass / tails.fetch(index)
      b = q**index * tails.fetch(index)
      minimal_defect = b * [
        q - 1.0 + epsilon - q * hazard,
        0.0
      ].max

      assert_in_delta 1.0 - 1.0 / q, hazard, TOLERANCE
      assert_in_delta epsilon * b, minimal_defect, TOLERANCE
    end
  end

  def test_diffuse_neutral_profile_has_finite_mass_and_divergent_hazard
    q = 1.7
    epsilon = 0.2
    first = 10
    last = 20_000
    tail = lambda { |index| Math.exp(-index * Math.log(q)) / index }
    shell_masses = (first..last).map do |index|
      tail.call(index) - tail.call(index + 1)
    end
    first_moment = (first..last).sum do |index|
      1.0 / index - 1.0 / (q * (index + 1))
    end
    defects = (first...last).map do |index|
      current = 1.0 / index
      successor = 1.0 / (index + 1)
      [successor - (1.0 - epsilon) * current, 0.0].max
    end
    heat_times = (first..last).sum { |index| q**(-2 * index) }

    assert_in_delta tail.call(first) - tail.call(last + 1),
                    shell_masses.sum,
                    TOLERANCE
    assert_operator first_moment, :>, 3.0
    assert_operator defects.sum, :>, 1.0
    assert_operator defects.last * last / epsilon, :>, 0.9
    assert_operator heat_times, :<, q**(-2 * first) / (1.0 - q**-2) +
                                  TOLERANCE
  end

  def test_fixed_ray_response_has_positive_hazard_without_transverse_source
    q = 1.6
    epsilon = 0.15
    viscosity = 0.7
    terminal_time = 1.2
    amplitudes = [0.2, 1.0, 0.8]
    lambdas = amplitudes.each_index.map { |index| q**index }
    gammas = lambdas.map { |frequency| viscosity * frequency**2 }
    exponentials = gammas.map do |gamma|
      Math.exp(-gamma * terminal_time)
    end
    response = amplitudes.each_index.map do |index|
      amplitudes.fetch(index) * (1.0 - exponentials.fetch(index))
    end
    stock = response.map { |value| value**2 }
    stock_derivative = amplitudes.each_index.map do |index|
      2.0 * response.fetch(index) * gammas.fetch(index) *
        amplitudes.fetch(index) * exponentials.fetch(index)
    end
    work = amplitudes.each_index.map do |index|
      response.fetch(index) * amplitudes.fetch(index)
    end
    alpha = amplitudes.each_index.map do |index|
      gamma = gammas.fetch(index)
      amplitude = amplitudes.fetch(index)
      amplitude**2 / viscosity * (
        terminal_time - (1.0 - exponentials.fetch(index)) / gamma
      )
    end
    integrated_stock = amplitudes.each_index.map do |index|
      gamma = gammas.fetch(index)
      exponential = exponentials.fetch(index)
      amplitudes.fetch(index)**2 * (
        terminal_time - 2.0 * (1.0 - exponential) / gamma +
        (1.0 - exponential**2) / (2.0 * gamma)
      )
    end
    sigma = q - 1.0 + epsilon
    theta = 1.0 - epsilon
    hazard = sigma * work.drop(1).sum - theta * work.first
    loss = sigma * stock.drop(1).sum - theta * stock.first
    boundary = 0.5 * (
      sigma * stock.drop(1).each_index.sum do |offset|
        stock.fetch(offset + 1) / gammas.fetch(offset + 1)
      end - theta * stock.first / gammas.first
    )
    boundary_derivative = 0.5 * (
      sigma * stock_derivative.drop(1).each_index.sum do |offset|
        stock_derivative.fetch(offset + 1) / gammas.fetch(offset + 1)
      end - theta * stock_derivative.first / gammas.first
    )
    integrated_loss = sigma * integrated_stock.drop(1).sum -
                      theta * integrated_stock.first
    terminal_defect = lambdas.first * (
      sigma * alpha.drop(1).sum - theta * alpha.first
    )
    transverse = amplitudes.each_index.map do |index|
      radial_coefficient = amplitudes.fetch(index) / response.fetch(index)
      amplitudes.fetch(index) -
        radial_coefficient * response.fetch(index)
    end

    assert_in_delta hazard, loss + boundary_derivative, TOLERANCE
    assert_in_delta terminal_defect,
                    lambdas.first / viscosity *
                      (integrated_loss + boundary),
                    TOLERANCE
    assert_operator terminal_defect, :>, 0.0
    transverse.each { |value| assert_in_delta 0.0, value, TOLERANCE }
  end

  def test_narrow_q_faces_add_back_a_fixed_relative_radial_gap
    q = 1.01
    lower_radius = 1.0
    upper_radius = 4.0
    radius = lower_radius
    widths = []

    while radius < upper_radius
      next_radius = [q * radius, upper_radius].min
      widths << next_radius - radius
      radius = next_radius
    end

    assert_operator widths.length, :>, 100
    assert_operator widths.max, :<, (q - 1.0) * upper_radius + TOLERANCE
    assert_in_delta upper_radius - lower_radius, widths.sum, TOLERANCE
  end
end
