#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class FullNetworkThreeArmTaylorTest < Minitest::Test
  I = Complex(0, 1)
  ZERO_WAVE = [0, 0, 0].freeze

  P_MODE = [1, 0, 0].freeze
  Q_MODE = [0, -1, 0].freeze
  R_MODE = [0, 0, -1].freeze
  K_MODE = [0, -1, -1].freeze
  J_MODE = [1, 0, 1].freeze
  H_MODE = [1, 1, 0].freeze
  L_MODE = [1, -1, -1].freeze
  L2_MODE = [1, -1, 1].freeze
  L3_MODE = [1, 1, -1].freeze
  OUTER_MODES = [
    [0, 1, 2], [0, 2, 1], [1, 0, 2],
    [1, 2, 0], [2, 0, 1], [2, 1, 0]
  ].map(&:freeze).freeze

  def test_full_first_jet_has_three_equal_daughters
    coefficients = taylor_coefficients(2)

    assert_vector_equal [-2 * I, 0, 0], coefficients[1].fetch(K_MODE)
    assert_vector_equal [0, -2 * I, 0], coefficients[1].fetch(J_MODE)
    assert_vector_equal [0, 0, 2 * I], coefficients[1].fetch(H_MODE)
    assert_equal 6, coefficients[1].length

    assert_nil coefficients[1][[1, -1, 0]]
    assert_nil coefficients[1][[1, 0, -1]]
    assert_nil coefficients[1][[0, -1, 1]]
  end

  def test_full_second_and_fourth_jets_expose_branching_and_selected_relay_tax
    coefficients = taylor_coefficients(4)

    assert_vector_equal [0, 1, -1], coefficients[2].fetch(P_MODE)
    assert_vector_equal [1, 0, -1], coefficients[2].fetch(Q_MODE)
    assert_vector_equal [1, -1, 0], coefficients[2].fetch(R_MODE)

    assert_vector_equal [0, 1, -1], coefficients[2].fetch(L_MODE)
    assert_vector_equal [-1, 0, 1], coefficients[2].fetch(L2_MODE)
    assert_vector_equal [1, -1, 0], coefficients[2].fetch(L3_MODE)
    OUTER_MODES.each do |wave_vector|
      coefficient = coefficients[2].fetch(wave_vector)
      assert_equal 1, dot(coefficient.map(&:conj), coefficient)
    end
    assert_equal 24, coefficients[2].length

    assert_vector_equal [0, Rational(-9, 4), Rational(9, 4)],
                        coefficients[4].fetch(L_MODE)
    assert_vector_equal [0, Rational(-1, 2), Rational(1, 2)],
                        coefficients[4].fetch(P_MODE)

    isolated_successor_fourth_order = Rational(-1, 6)
    full_successor_fourth_order = coefficients[4].fetch(L_MODE)[1].real
    assert_equal Rational(-25, 12),
                 full_successor_fourth_order - isolated_successor_fourth_order
  end

  def test_exact_modal_energy_series_and_total_energy_cancellation
    coefficients = taylor_coefficients(6)

    assert_equal [2, 0, -4, 0, 4, 0, Rational(1, 75)],
                 pair_energy_series(coefficients, P_MODE, 6).map(&:real)
    assert_equal [0, 0, 4, 0, -8, 0, Rational(824, 75)],
                 pair_energy_series(coefficients, K_MODE, 6).map(&:real)
    assert_equal [0, 0, 0, 0, 2, 0, -9],
                 pair_energy_series(coefficients, L_MODE, 6).map(&:real)
    [L2_MODE, L3_MODE].each do |corner_mode|
      assert_equal [0, 0, 0, 0, 2, 0, -9],
                   pair_energy_series(coefficients, corner_mode, 6).map(&:real)
    end

    isolated_successor_sixth_order = Rational(-2, 3)
    full_successor_sixth_order = pair_energy_series(coefficients, L_MODE, 6)[6].real
    assert_equal Rational(-25, 3),
                 full_successor_sixth_order - isolated_successor_sixth_order
    aggregate_corner_tax = 3 *
                           (isolated_successor_sixth_order - full_successor_sixth_order)
    assert_equal 25, aggregate_corner_tax

    assert_equal [6, 0, 0, 0, 0, 0, 0],
                 total_energy_series(coefficients, 6).map(&:real)

    critical_second_order = 12.0 * (Math.sqrt(2.0) - 1.0)
    critical_fourth_order = 12.0 - 24.0 * Math.sqrt(2.0) +
                            6.0 * Math.sqrt(3.0) + 6.0 * Math.sqrt(5.0)
    assert_operator critical_second_order, :>, 0.0
    assert_operator critical_fourth_order, :>, 0.0
  end

  def test_side_daughters_reconverge_into_the_original_parent_at_first_feedback
    coefficients = taylor_coefficients(4)
    terms = source_terms(coefficients, P_MODE, 1)

    assert_equal 2, terms.length
    by_path = terms.each_with_object({}) do |term, index|
      index[[term[:left_degree], term[:left_wave], term[:right_wave]]] = term[:coefficient]
    end
    assert_vector_equal [0, 0, -1], by_path.fetch([0, Q_MODE, H_MODE])
    assert_vector_equal [0, 1, 0], by_path.fetch([0, R_MODE, J_MODE])

    reconverged = terms.reduce([0, 0, 0]) do |sum, term|
      add(sum, term[:coefficient])
    end
    assert_vector_equal coefficients[2].fetch(P_MODE), reconverged
    assert_vector_equal scale(-1, coefficients[0].fetch(P_MODE)), reconverged

    assert_vector_equal [2 * I, 0, 0], coefficients[3].fetch(K_MODE)
    isolated_third_order = [Rational(2, 3) * I, 0, 0]
    assert_vector_equal [Rational(4, 3) * I, 0, 0],
                        subtract(coefficients[3].fetch(K_MODE), isolated_third_order)

    corner_terms = source_terms(coefficients, L_MODE, 3)
    expected_paths = [
      [0, [0, 1, 0], [1, -2, -1]],
      [0, [0, 0, 1], [1, -1, -2]],
      [1, H_MODE, [0, -2, -1]],
      [1, J_MODE, [0, -1, -2]],
      [1, K_MODE, P_MODE],
      [2, [0, -2, -1], H_MODE],
      [2, [0, -1, -2], J_MODE],
      [3, [1, -2, -1], [0, 1, 0]],
      [3, [1, -1, -2], [0, 0, 1]],
      [3, K_MODE, P_MODE]
    ]
    actual_paths = corner_terms.map do |term|
      [term[:left_degree], term[:left_wave], term[:right_wave]]
    end
    assert_equal expected_paths.sort, actual_paths.sort
    corner_reconverged = corner_terms.reduce([0, 0, 0]) do |sum, term|
      add(sum, term[:coefficient])
    end
    assert_vector_equal coefficients[4].fetch(L_MODE), corner_reconverged
  end

  def test_positive_ancestry_count_is_not_invariant_under_zero_sum_refinement
    total = -1
    unsplit = [total]

    [10, 100, 1_000].each do |refinement_size|
      refined = [total + refinement_size, -refinement_size]
      assert_equal total, refined.sum
      assert_operator refined.sum { |entry| [entry, 0].max }, :>,
                      unsplit.sum { |entry| [entry, 0].max }
    end
  end

  private

  def taylor_coefficients(order)
    coefficients = Array.new(order + 1) { {} }
    coefficients[0] = {
      P_MODE => [0, -1, 1],
      Q_MODE => [-1, 0, 1],
      R_MODE => [-1, 1, 0]
    }
    coefficients[0].to_a.each do |wave_vector, amplitude|
      coefficients[0][negate_wave(wave_vector)] = amplitude.map(&:conj)
    end

    (0...order).each do |degree|
      raw = Hash.new { |hash, wave_vector| hash[wave_vector] = [0, 0, 0] }
      (0..degree).each do |left_degree|
        coefficients[left_degree].each do |left_wave, left_mode|
          coefficients[degree - left_degree].each do |right_wave, right_mode|
            target_wave = add_wave(left_wave, right_wave)
            next if target_wave == ZERO_WAVE

            contribution = scale(dot(left_mode, right_wave), right_mode)
            raw[target_wave] = add(raw[target_wave], contribution)
          end
        end
      end

      raw.each do |wave_vector, convolution|
        coefficient = scale(
          -I / Rational(degree + 1),
          leray_project(wave_vector, convolution)
        )
        coefficients[degree + 1][wave_vector] = coefficient unless coefficient.all?(&:zero?)
      end
    end
    coefficients
  end

  def pair_energy_series(coefficients, wave_vector, order)
    opposite = negate_wave(wave_vector)
    (0..order).map do |degree|
      (0..degree).sum do |left_degree|
        left = coefficients[left_degree][wave_vector]
        right = coefficients[degree - left_degree][opposite]
        left && right ? dot(left, right) : 0
      end
    end
  end

  def source_terms(coefficients, target_wave, degree)
    terms = []
    (0..degree).each do |left_degree|
      coefficients[left_degree].each do |left_wave, left_mode|
        coefficients[degree - left_degree].each do |right_wave, right_mode|
          next unless add_wave(left_wave, right_wave) == target_wave

          coefficient = scale(
            -I / Rational(degree + 1),
            leray_project(
              target_wave,
              scale(dot(left_mode, right_wave), right_mode)
            )
          )
          next if coefficient.all?(&:zero?)

          terms << {
            left_degree: left_degree,
            left_wave: left_wave,
            right_wave: right_wave,
            coefficient: coefficient
          }
        end
      end
    end
    terms
  end

  def total_energy_series(coefficients, order)
    (0..order).map do |degree|
      total = 0
      (0..degree).each do |left_degree|
        coefficients[left_degree].each do |wave_vector, left|
          right = coefficients[degree - left_degree][negate_wave(wave_vector)]
          total += dot(left, right) / Rational(2) if right
        end
      end
      total
    end
  end

  def assert_vector_equal(expected, actual)
    expected.zip(actual).each { |target, value| assert_equal target, value }
  end

  def add_wave(left, right)
    left.zip(right).map { |x, y| x + y }.freeze
  end

  def negate_wave(wave_vector)
    wave_vector.map { |entry| -entry }.freeze
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

  def leray_project(wave_vector, vector)
    denominator = Rational(dot(wave_vector, wave_vector), 1)
    add(vector, scale(-dot(wave_vector, vector) / denominator, wave_vector))
  end
end
