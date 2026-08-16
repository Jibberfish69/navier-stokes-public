#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"
require "matrix"

class HelicalSingletonCurrentTest < Minitest::Test
  I = Complex(0, 1)
  TOLERANCE = 1.0e-12

  def test_unique_helicity_leg_carries_half_the_critical_current
    kappas = [1.0, 2.0, Math.sqrt(5.0)]

    [-1, 1].repeated_permutation(3) do |signs|
      signed = signs.zip(kappas).map { |sign, kappa| sign * kappa }
      rates = [
        signed[2] - signed[1],
        signed[0] - signed[2],
        signed[1] - signed[0]
      ]

      assert_in_delta 0.0, rates.sum, TOLERANCE
      assert_in_delta 0.0, signed.zip(rates).sum { |eta, rate| eta * rate }, TOLERANCE

      critical = kappas.zip(rates).sum { |kappa, rate| kappa * rate }
      plus_indices = signs.each_index.select { |index| signs[index] == 1 }
      minus_indices = signs.each_index.select { |index| signs[index] == -1 }
      plus_transfer = plus_indices.sum { |index| rates[index] }
      minus_transfer = minus_indices.sum { |index| rates[index] }
      center = 1.7
      centered_plus = plus_indices.sum do |index|
        (kappas[index] - center) * rates[index]
      end

      assert_in_delta 0.0, plus_transfer + minus_transfer, TOLERANCE
      assert_in_delta critical / 2.0,
                      center * plus_transfer + centered_plus,
                      TOLERANCE

      if signs.uniq.one?
        assert_in_delta 0.0, critical, TOLERANCE
      else
        singleton = signs.each_index.find do |index|
          signs.count(signs[index]) == 1
        end
        assert_in_delta 2.0 * kappas[singleton] * rates[singleton],
                        critical,
                        TOLERANCE
        signed_singleton_frequency = signs[singleton] * kappas[singleton]
        assert_in_delta critical / 2.0,
                        signed_singleton_frequency * plus_transfer,
                        TOLERANCE
      end
    end
  end

  def test_true_leray_homochiral_triad_grows_the_active_high_cell
    sqrt2 = Math.sqrt(2.0)
    sqrt5 = Math.sqrt(5.0)
    wave_vectors = [[1, 0, 0], [0, 2, 0], [-1, -2, 0]]
    helical_vectors = [
      [0, -I / sqrt2, 1.0 / sqrt2],
      [I / sqrt2, 0, 1.0 / sqrt2],
      [-2.0 * I / Math.sqrt(10.0), I / Math.sqrt(10.0), 1.0 / sqrt2]
    ]
    amplitudes = [
      helical_vectors[0],
      helical_vectors[1],
      scale(-4.0, helical_vectors[2])
    ]

    wave_vectors.zip(helical_vectors).each do |wave_vector, helical_vector|
      helicity_residual = subtract(
        scale(I, cross(wave_vector, helical_vector)),
        scale(norm(wave_vector), helical_vector)
      )
      assert_operator norm(helicity_residual), :<, TOLERANCE
      assert_operator dot(wave_vector, helical_vector).abs, :<, TOLERANCE
    end

    modes = {}
    wave_vectors.zip(amplitudes).each do |wave_vector, amplitude|
      modes[wave_vector] = amplitude
      modes[wave_vector.map { |entry| -entry }] = amplitude.map(&:conj)
    end

    rates = wave_vectors.zip(amplitudes).map do |wave_vector, amplitude|
      -2.0 * hermitian_dot(amplitude, nonlinear_mode(wave_vector, modes)).real
    end

    c0 = (3.0 + sqrt5) / Math.sqrt(10.0)
    expected = [
      4.0 * c0 * (sqrt5 - 2.0),
      4.0 * c0 * (1.0 - sqrt5),
      4.0 * c0
    ]
    rates.zip(expected).each do |actual, target|
      assert_in_delta target, actual, TOLERANCE
    end

    assert_in_delta 0.0, rates.sum, TOLERANCE
    assert_in_delta 0.0,
                    wave_vectors.zip(rates).sum { |wave_vector, rate| norm(wave_vector) * rate },
                    TOLERANCE
    assert_operator rates[2], :>, 0.0

    high_critical_stock = 16.0 * sqrt5
    middle_and_high_upper_bound = 2.0 * (1.0 + 16.0)
    assert_operator high_critical_stock, :>, middle_and_high_upper_bound

    high_relative_source = rates[2] / 16.0
    expected_relative_source = c0 / 4.0
    assert_in_delta expected_relative_source, high_relative_source, TOLERANCE
  end

  def test_harmonic_overlap_pays_weighted_current_and_positive_excess
    viscosity = 0.7
    current_constant = 1.9
    samples = [
      [0.4, 2.5, 1.2, -0.8],
      [1.1, 0.7, 3.4, 0.3],
      [4.0, 4.0, 0.9, 1.0]
    ]

    samples.each do |a_plus, a_minus, critical_loss, orientation|
      sum = a_plus + a_minus
      overlap = a_plus * a_minus
      harmonic_overlap = overlap / sum
      minority = [a_plus, a_minus].min
      current = orientation * current_constant * Math.sqrt(overlap * critical_loss)

      assert_operator harmonic_overlap, :>=, 0.5 * minority
      assert_operator harmonic_overlap, :<=, minority
      assert_operator current**2 / (critical_loss * harmonic_overlap),
                      :<=,
                      current_constant**2 * sum + TOLERANCE

      positive_excess = [current - viscosity * critical_loss, 0.0].max
      assert_operator positive_excess / harmonic_overlap,
                      :<=,
                      current_constant**2 * sum / (4.0 * viscosity) + TOLERANCE
    end
  end

  def test_square_root_actions_allow_a_saturating_terminal_scalar_profile
    viscosity = 0.7
    current_constant = 1.9
    height_scale = 1.3
    beta = Math.sqrt(
      16.0 * viscosity / (3.0 * current_constant**2 * height_scale**3)
    )

    [0.0, 0.4, 0.9].each do |time|
      remaining = 1.0 - time
      height = height_scale * remaining**(-1.0 / 3.0)
      height_rate = height_scale * remaining**(-4.0 / 3.0) / 3.0
      sum = beta * height**2
      overlap = sum**2 / 4.0
      harmonic_overlap = sum / 4.0
      critical_loss = height_rate / viscosity
      current = 2.0 * height_rate

      assert_in_delta current,
                      current_constant * Math.sqrt(overlap * critical_loss),
                      TOLERANCE
      assert_in_delta height_rate + viscosity * critical_loss,
                      current,
                      TOLERANCE
      assert_in_delta current_constant**2 * sum,
                      current**2 / (critical_loss * harmonic_overlap),
                      TOLERANCE
      assert_in_delta current_constant**2 * sum / (4.0 * viscosity),
                      height_rate / harmonic_overlap,
                      TOLERANCE
    end

    integrated_sum = 3.0 * beta * height_scale**2
    datum_energy = 2.0 * viscosity * integrated_sum
    integrated_sqrt_height_rate = 3.0 * Math.sqrt(height_scale / 3.0)
    assert_in_delta current_constant * datum_energy /
                    (8.0 * viscosity**1.5),
                    integrated_sqrt_height_rate,
                    TOLERANCE
    assert integrated_sum.finite?
    assert integrated_sqrt_height_rate.finite?
  end

  def test_cross_helicity_source_cancels_only_to_helicity_imbalance
    viscosity = 0.6
    samples = [
      [1.2, 0.8, 2.3, 1.1, 0.7],
      [2.0, 2.0, -1.4, 0.9, 1.5],
      [0.3, 3.1, 0.5, 2.2, 0.4]
    ]

    samples.each do |h_plus, h_minus, current, d_plus, d_minus|
      height = h_plus + h_minus
      imbalance = h_plus - h_minus
      cross_stock = h_plus * h_minus
      h_plus_rate = current / 2.0 - 2.0 * viscosity * d_plus
      h_minus_rate = current / 2.0 - 2.0 * viscosity * d_minus
      cross_rate = h_plus_rate * h_minus + h_plus * h_minus_rate
      cross_loss = d_plus * h_minus + h_plus * d_minus
      critical_loss = 2.0 * (d_plus + d_minus)
      imbalance_rate = h_plus_rate - h_minus_rate
      paid_spin_plus_rate = 2.0 * h_plus_rate + 4.0 * viscosity * d_plus
      paid_spin_minus_rate = 2.0 * h_minus_rate + 4.0 * viscosity * d_minus
      source_free_gradient_plus = 3.0 * imbalance**2
      source_free_gradient_minus = -3.0 * imbalance**2

      assert_in_delta (height**2 - imbalance**2) / 4.0,
                      cross_stock,
                      TOLERANCE
      assert_in_delta current / 2.0,
                      h_plus_rate + 2.0 * viscosity * d_plus,
                      TOLERANCE
      assert_in_delta current / 2.0,
                      h_minus_rate + 2.0 * viscosity * d_minus,
                      TOLERANCE
      assert_in_delta height * current / 2.0 - 2.0 * viscosity * cross_loss,
                      cross_rate,
                      TOLERANCE
      assert_in_delta 0.0,
                      height * current / 2.0 - height * current / 2.0,
                      TOLERANCE
      assert_in_delta -2.0 * viscosity * (d_plus - d_minus),
                      imbalance_rate,
                      TOLERANCE
      assert_in_delta current, paid_spin_plus_rate, TOLERANCE
      assert_in_delta current, paid_spin_minus_rate, TOLERANCE
      assert_in_delta 0.0,
                      paid_spin_plus_rate - paid_spin_minus_rate,
                      TOLERANCE
      assert_in_delta -imbalance**2 / 4.0,
                      cross_stock - height**2 / 4.0,
                      TOLERANCE
      assert_in_delta 2.0 * viscosity * cross_loss,
                      imbalance * imbalance_rate / 2.0 +
                      viscosity * height * critical_loss / 2.0,
                      TOLERANCE
      assert_in_delta 0.0,
                      (source_free_gradient_plus +
                       source_free_gradient_minus) * current / 2.0,
                      TOLERANCE
    end
  end

  def test_sector_centroid_bridge_is_the_centered_singleton_moment
    viscosity = 0.7
    plus_k = [1.0, 3.0]
    minus_k = [2.0, 4.0]
    plus_energy = [2.0, 1.0]
    minus_energy = [1.5, 0.8]
    plus_transfer = [0.1, 0.3]
    minus_transfer = [-1.3, 0.9]

    plus = centroid_row(plus_k, plus_energy, plus_transfer, viscosity)
    minus = centroid_row(minus_k, minus_energy, minus_transfer, viscosity)
    sector_exchange = plus.fetch(:transfer_zeroth)
    singleton = plus.fetch(:transfer_first)

    assert_in_delta(-sector_exchange,
                    minus.fetch(:transfer_zeroth),
                    TOLERANCE)
    assert_in_delta singleton, minus.fetch(:transfer_first), TOLERANCE

    [plus, minus].each do |row|
      assert_operator row.fetch(:covariance), :>=, 0.0
      assert_in_delta row.fetch(:centered_transfer),
                      row.fetch(:energy) * row.fetch(:centroid_rate) +
                      2.0 * viscosity * row.fetch(:covariance),
                      TOLERANCE
    end

    reconstructed = (
      minus.fetch(:centroid) * plus.fetch(:centered_transfer) +
      plus.fetch(:centroid) * minus.fetch(:centered_transfer)
    ) / (plus.fetch(:centroid) + minus.fetch(:centroid))
    assert_in_delta singleton, reconstructed, TOLERANCE
  end

  def test_rising_current_pays_inverse_overlap_while_dual_scales_supercritically
    viscosity = 0.7
    current_constant = 1.9
    samples = [
      [0.4, 2.5, 1.2],
      [1.1, 0.7, 3.4],
      [4.0, 4.0, 0.9]
    ]

    samples.each do |a_plus, a_minus, critical_loss|
      sum = a_plus + a_minus
      overlap = a_plus * a_minus
      harmonic_overlap = overlap / sum
      current = current_constant * Math.sqrt(overlap * critical_loss)

      assert_operator current, :>, viscosity * critical_loss
      assert_operator critical_loss / harmonic_overlap,
                      :<=,
                      current_constant**2 * sum / viscosity**2 + TOLERANCE
    end

    a_plus = 1.3
    a_minus = 0.8
    critical_loss = 2.4
    harmonic_overlap = a_plus * a_minus / (a_plus + a_minus)
    time_step = 0.03
    dilation = 11.0
    scaled_a_plus = dilation * a_plus
    scaled_a_minus = dilation * a_minus
    scaled_critical_loss = dilation**2 * critical_loss
    scaled_harmonic_overlap = dilation * harmonic_overlap
    scaled_time_step = time_step / dilation**2

    assert_in_delta a_plus * a_minus * time_step,
                    scaled_a_plus * scaled_a_minus * scaled_time_step,
                    TOLERANCE
    assert_in_delta dilation * critical_loss * harmonic_overlap * time_step,
                    scaled_critical_loss * scaled_harmonic_overlap * scaled_time_step,
                    TOLERANCE
  end

  def test_cross_harmonic_carrier_and_fixed_kernel_dichotomy
    viscosity = 0.6
    plus_k = [1.0, 3.0]
    minus_k = [2.0, 4.0]
    plus_energy = [2.0, 1.0]
    minus_energy = [1.5, 0.8]
    plus_transfer = [0.1, 0.3]
    minus_transfer = [-1.3, 0.9]

    plus_rate = plus_k.zip(plus_energy, plus_transfer).map do |k, energy, transfer|
      transfer - 2.0 * viscosity * k**2 * energy
    end
    minus_rate = minus_k.zip(minus_energy, minus_transfer).map do |k, energy, transfer|
      transfer - 2.0 * viscosity * k**2 * energy
    end

    stock = 0.0
    direct_stock_rate = 0.0
    harmonic_source = 0.0
    plus_k.each_index do |i|
      minus_k.each_index do |j|
        weight = harmonic_kernel(plus_k[i], minus_k[j])
        stock += weight * plus_energy[i] * minus_energy[j]
        direct_stock_rate += weight * (
          plus_rate[i] * minus_energy[j] + plus_energy[i] * minus_rate[j]
        )
        harmonic_source += weight * (
          plus_transfer[i] * minus_energy[j] +
          plus_energy[i] * minus_transfer[j]
        )
      end
    end

    a_plus = plus_k.zip(plus_energy).sum { |k, energy| k**2 * energy }
    a_minus = minus_k.zip(minus_energy).sum { |k, energy| k**2 * energy }
    h_plus = plus_k.zip(plus_energy).sum { |k, energy| k * energy }
    h_minus = minus_k.zip(minus_energy).sum { |k, energy| k * energy }
    overlap = (2.0 * a_plus) * (2.0 * a_minus)

    assert_in_delta harmonic_source - 2.0 * viscosity * a_plus * a_minus,
                    direct_stock_rate,
                    TOLERANCE
    assert_in_delta harmonic_source,
                    direct_stock_rate + viscosity * overlap / 2.0,
                    TOLERANCE
    assert_operator stock, :>=, 0.0
    assert_operator stock, :<=, h_plus * h_minus / 2.0 + TOLERANCE

    alpha = 0.4
    beta = 0.3
    gamma = -0.2
    delta = 0.7
    affine_source = 0.0
    plus_k.each_index do |i|
      minus_k.each_index do |j|
        weight = affine_kernel(
          plus_k[i], minus_k[j], alpha, beta, gamma, delta
        )
        affine_source += weight * (
          plus_transfer[i] * minus_energy[j] +
          plus_energy[i] * minus_transfer[j]
        )
      end
    end

    sector_exchange = plus_transfer.sum
    singleton = plus_k.zip(plus_transfer).sum { |k, transfer| k * transfer }
    assert_in_delta(-sector_exchange, minus_transfer.sum, TOLERANCE)
    assert_in_delta singleton,
                    minus_k.zip(minus_transfer).sum { |k, transfer| k * transfer },
                    TOLERANCE
    expected_affine_source = sector_exchange * (
      alpha * (minus_energy.sum - plus_energy.sum) +
      gamma * h_minus - beta * h_plus
    ) + singleton * (
      beta * minus_energy.sum + gamma * plus_energy.sum +
      delta * (h_plus + h_minus)
    )
    assert_in_delta expected_affine_source, affine_source, TOLERANCE

    sqrt5 = Math.sqrt(5.0)
    homochiral_k = [1.0, 2.0, sqrt5]
    homochiral_rate = [sqrt5 - 2.0, 1.0 - sqrt5, 1.0]
    fixed_minus_frequency = 1.7
    affine_homochiral_source = homochiral_k.zip(homochiral_rate).sum do |k, rate|
      affine_kernel(k, fixed_minus_frequency, alpha, beta, gamma, delta) * rate
    end
    harmonic_homochiral_source = homochiral_k.zip(homochiral_rate).sum do |k, rate|
      harmonic_kernel(k, fixed_minus_frequency) * rate
    end
    assert_in_delta 0.0, affine_homochiral_source, TOLERANCE
    assert_operator harmonic_homochiral_source.abs, :>, 1.0e-6

    high_frequency = 1.0e6
    affine_loss_ratio = 2.0 * high_frequency**2 * affine_kernel(
      high_frequency, high_frequency, alpha, beta, gamma, delta
    ) / high_frequency**4
    no_mixed_term_ratio = 2.0 * high_frequency**2 * affine_kernel(
      high_frequency, high_frequency, alpha, beta, gamma, 0.0
    ) / high_frequency**4
    assert_in_delta 2.0 * delta, affine_loss_ratio, 1.0e-6
    assert_operator no_mixed_term_ratio.abs, :<, 1.0e-6
  end

  def test_moving_center_and_invariant_multipliers_return_the_same_primitive
    viscosity = 0.6
    energy = 1.7
    enstrophy = 2.4
    critical_loss = 3.1
    sector_exchange = -0.8
    singleton = 1.3
    center = 2.2
    center_rate = -0.4
    energy_rate = sector_exchange - viscosity * enstrophy
    critical_rate = singleton - 2.0 * viscosity * critical_loss
    centered_stock_rate = critical_rate - center_rate * energy -
                          center * energy_rate
    centered_current = singleton - center * sector_exchange

    assert_in_delta centered_current,
                    centered_stock_rate + 2.0 * viscosity * critical_loss -
                    viscosity * center * enstrophy + center_rate * energy,
                    TOLERANCE
    center_piece_rate = center_rate * energy + center * energy_rate
    assert_in_delta center * sector_exchange,
                    center_piece_rate + viscosity * center * enstrophy -
                    center_rate * energy,
                    TOLERANCE
    assert_in_delta singleton,
                    centered_current + center * sector_exchange,
                    TOLERANCE
    assert_in_delta critical_rate + 2.0 * viscosity * critical_loss,
                    singleton,
                    TOLERANCE

    [-3.0, -0.2, 0.0, 0.4, 5.0].each do |invariant_slope|
      plus_slope = 0.5 + invariant_slope
      minus_slope = 0.5 - invariant_slope
      assert_operator [plus_slope.abs, minus_slope.abs].max, :>=, 0.5

      balanced_spin = 7.0
      energy_constant = -1.1
      total_energy = 0.9
      represented_stock = plus_slope * balanced_spin +
                          minus_slope * balanced_spin +
                          energy_constant * total_energy
      assert_in_delta balanced_spin + energy_constant * total_energy,
                      represented_stock,
                      TOLERANCE
    end
  end

  def test_isotropic_diagonal_quadratic_invariants_are_energy_and_helicity
    constraints = Matrix.rows([
      [1.0, -2.0, 1.0, 0.0, 0.0, 0.0],
      [0.0, 0.0, 0.0, -1.0, 2.0, -1.0],
      [-7.0, 6.0, 0.0, 0.0, 0.0, 1.0],
      [-1.0, 0.0, 0.0, 0.0, 6.0, -5.0]
    ])
    energy_weight = Vector[1.0, 1.0, 1.0, 1.0, 1.0, 1.0]
    helicity_weight = Vector[2.0, 3.0, 4.0, -2.0, -3.0, -4.0]
    unsigned_critical_weight = Vector[2.0, 3.0, 4.0, 2.0, 3.0, 4.0]

    assert_equal 4, constraints.rank
    assert_equal Vector[0.0, 0.0, 0.0, 0.0],
                 constraints * energy_weight
    assert_equal Vector[0.0, 0.0, 0.0, 0.0],
                 constraints * helicity_weight
    refute_equal Vector[0.0, 0.0, 0.0, 0.0],
                 constraints * unsigned_critical_weight

    [0.2, -0.7, 3.0].each do |helicity_slope|
      large_frequency = 10.0 / helicity_slope.abs
      plus_weight = 1.0 + helicity_slope * large_frequency
      minus_weight = 1.0 - helicity_slope * large_frequency
      assert_operator [plus_weight, minus_weight].min, :<, 0.0
    end
  end

  def test_translated_q_faces_reconstruct_the_paid_spin_primitive
    q = 2.0
    log_q = Math.log(q)
    frequencies = [0.7, 1.3, 2.6, 5.1, 9.7]
    initial_energy = [0.8, 0.5, 0.3, 0.2, 0.1]
    final_energy = [0.7, 0.65, 0.2, 0.24, 0.09]
    integrated_heat_loss = [0.06, 0.08, 0.04, 0.03, 0.02]
    integrated_transfer = initial_energy.each_index.map do |index|
      final_energy[index] - initial_energy[index] +
        integrated_heat_loss[index]
    end

    singleton_prefix = frequencies.zip(integrated_transfer).sum do |k, transfer|
      k * transfer
    end
    endpoint_change = frequencies.each_index.sum do |index|
      frequencies[index] * (final_energy[index] - initial_energy[index])
    end
    weighted_heat_loss = frequencies.zip(integrated_heat_loss).sum do |k, loss|
      k * loss
    end
    assert_in_delta endpoint_change + weighted_heat_loss,
                    singleton_prefix,
                    TOLERANCE

    [0.11, 0.37, 0.61].each do |translation|
      cell_indices = frequencies.map do |k|
        ((Math.log(k) - translation) / log_q).floor
      end
      step_values = cell_indices.map { |index| Math.exp(translation) * q**index }
      step_current = step_values.zip(integrated_transfer).sum do |step, transfer|
        step * transfer
      end

      first_index = cell_indices.min
      last_index = cell_indices.max
      total_transfer = integrated_transfer.sum
      first_face = Math.exp(translation) * q**first_index
      tail_face_sum = total_transfer * first_face * q / (q - 1.0)
      ((first_index + 1)..last_index).each do |index|
        face = Math.exp(translation) * q**index
        tail_transfer = frequencies.each_index.sum do |mode|
          frequencies[mode] >= face ? integrated_transfer[mode] : 0.0
        end
        tail_face_sum += face * tail_transfer
      end

      assert_in_delta step_current,
                      (1.0 - 1.0 / q) * tail_face_sum,
                      TOLERANCE
    end

    sample_count = 50_000
    translated_step_integral = sample_count.times.sum do |sample|
      translation = log_q * (sample + 0.5) / sample_count
      frequencies.zip(integrated_transfer).sum do |k, transfer|
        index = ((Math.log(k) - translation) / log_q).floor
        Math.exp(translation) * q**index * transfer
      end
    end * log_q / sample_count

    reconstructed = translated_step_integral / (1.0 - 1.0 / q)
    assert_in_delta singleton_prefix, reconstructed, 2.0e-5
  end

  private

  def harmonic_kernel(left_frequency, right_frequency)
    left_frequency**2 * right_frequency**2 /
      (left_frequency**2 + right_frequency**2)
  end

  def affine_kernel(left_frequency, right_frequency, alpha, beta, gamma, delta)
    alpha + beta * left_frequency + gamma * right_frequency +
      delta * left_frequency * right_frequency
  end

  def centroid_row(frequencies, energies, transfers, viscosity)
    energy = energies.sum
    critical = frequencies.zip(energies).sum { |k, amount| k * amount }
    enstrophy = frequencies.zip(energies).sum { |k, amount| k**2 * amount }
    critical_loss = frequencies.zip(energies).sum { |k, amount| k**3 * amount }
    transfer_zeroth = transfers.sum
    transfer_first = frequencies.zip(transfers).sum { |k, rate| k * rate }
    centroid = critical / energy
    covariance = critical_loss - centroid * enstrophy
    energy_rate = transfer_zeroth - 2.0 * viscosity * enstrophy
    critical_rate = transfer_first - 2.0 * viscosity * critical_loss
    centroid_rate = (critical_rate * energy - critical * energy_rate) / energy**2

    {
      energy: energy,
      centroid: centroid,
      covariance: covariance,
      centroid_rate: centroid_rate,
      transfer_zeroth: transfer_zeroth,
      transfer_first: transfer_first,
      centered_transfer: transfer_first - centroid * transfer_zeroth
    }
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

  def norm(vector)
    Math.sqrt(hermitian_dot(vector, vector).real)
  end

  def leray_project(wave_vector, vector)
    subtract(
      vector,
      scale(dot(wave_vector, vector) / dot(wave_vector, wave_vector), wave_vector)
    )
  end

  def nonlinear_mode(wave_vector, modes)
    convolution = modes.each_with_object([0i, 0i, 0i]) do |(left_wave, left_mode), sum|
      right_wave = wave_vector.zip(left_wave).map { |target, left| target - left }
      next unless modes.key?(right_wave)

      contribution = scale(dot(left_mode, right_wave), modes.fetch(right_wave))
      sum.replace(add(sum, contribution))
    end
    scale(I, leray_project(wave_vector, convolution))
  end
end
