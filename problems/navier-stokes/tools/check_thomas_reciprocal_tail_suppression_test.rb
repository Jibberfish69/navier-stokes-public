#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasReciprocalTailSuppressionTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  NOTE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-incompressible-reciprocal-tail-suppression-and-time-square-boundary-20260803.md"
  )
  TOLERANCE = 1.0e-12

  def test_note_keeps_the_normalized_pressure_complete_parent_and_signed_tail
    note = File.read(NOTE_PATH)

    assert_order note,
                 "\\tag{RPT.3}",
                 "\\tag{RPT.4}",
                 "\\tag{RPT.6}",
                 "\\tag{RPT.8}"
    assert_includes note, "\\vartheta(k,p):=K^{-1}\\Theta_Q(k,p)"
    assert_includes note, "g(k):=\\int\\vartheta(k,p)\\,dp=K^{-1}\\widehat Q(k)"
    assert_includes note, "The multiplier \\(r_{k,p}^N\\) is real and positive"
    assert_includes note, "retains the two pressure-complete"
    assert_includes note, "binomial insertions of the original velocity parents"
  end

  def test_incompressibility_moves_the_derivative_to_the_output
    parent = [2.0, -1.0, 3.0]
    velocity = [1.0, 2.0, 0.0]
    partner = [4.0, 5.0, -2.0]
    output = parent.zip(partner).map { |left, right| left + right }

    assert_in_delta 0.0, dot(velocity, parent), TOLERANCE
    assert_in_delta dot(velocity, partner), dot(velocity, output), TOLERANCE
  end

  def test_bernoulli_reciprocal_suppression_for_all_energy_row_exponents
    depths = [1, 2, 5, 17, 100]
    ratios = [1.0e-6, 0.03, 0.5, 1.0, 9.0, 1.0e4]
    exponents = [0.0, 0.1, 0.5, 0.9, 1.0]

    depths.product(ratios, exponents).each do |depth, ratio, exponent|
      reciprocal = (ratio / (1.0 + ratio))**depth
      bernoulli = ratio / (depth + ratio)
      power = (ratio / depth)**exponent

      assert_operator reciprocal, :<=, bernoulli + TOLERANCE
      assert_operator bernoulli, :<=, power + TOLERANCE
    end
  end

  def test_critical_current_is_the_half_derivative_pairing
    viscosity = 0.7
    frequencies = [0.4, 1.5, 8.0]
    response = [1.2, -0.7, 0.3]
    tail = [-0.2, 2.0, 1.1]

    direct = frequencies.each_index.sum do |index|
      frequencies[index] * response[index] * tail[index] / viscosity
    end
    paired = frequencies.each_index.sum do |index|
      Math.sqrt(frequencies[index]) * response[index] *
        Math.sqrt(frequencies[index]) * tail[index] / viscosity
    end

    assert_in_delta direct, paired, TOLERANCE
  end

  def test_interpolation_turns_the_time_square_into_stock_times_action
    frequencies = [0.2, 0.9, 3.0, 11.0]
    amplitudes = [1.3, 0.4, 0.8, 0.2]
    half_row = frequencies.each_index.sum do |index|
      frequencies[index] * amplitudes[index]**2
    end
    first_row = frequencies.each_index.sum do |index|
      frequencies[index]**2 * amplitudes[index]**2
    end
    three_half_row = frequencies.each_index.sum do |index|
      frequencies[index]**3 * amplitudes[index]**2
    end

    assert_operator first_row**2, :<=,
                    half_row * three_half_row + TOLERANCE
  end

  def test_parent_ratio_and_enstrophy_time_square_are_scale_critical
    output = 3.0
    parent = 8.0
    partner = 7.0
    dilation = 13.0
    ratio = (parent**2 + partner**2) / output**2
    dilated_ratio = ((dilation * parent)**2 + (dilation * partner)**2) /
                     (dilation * output)**2
    base_time_square = 4.7
    dilated_time_square = dilation**2 * base_time_square / dilation**2

    assert_in_delta ratio, dilated_ratio, TOLERANCE
    assert_in_delta base_time_square, dilated_time_square, TOLERANCE
  end

  def test_uniform_tail_decay_precedes_the_time_square_boundary
    note = File.read(NOTE_PATH)

    assert_order note,
                 "\\tag{RPT.13}",
                 "\\tag{RPT.15}",
                 "## 4. The critical current requires the time square",
                 "\\tag{RPT.18}",
                 "\\tag{RPT.25}",
                 "\\tag{RPT.29}"
    assert_includes note, "L_t^1\\dot H_x^{1/2}"
    assert_includes note, "\\frac{C E_0(0)}{\\nu\\sqrt N}"
    assert_includes note, "\\int_0^T\\|\\Lambda u(t)\\|_2^4\\,dt"
    assert_includes note, "the fixed-prefix limit and the terminal supremum cannot be exchanged"
  end

  def test_note_preserves_the_exact_open_boundary
    note = File.read(NOTE_PATH)

    assert_includes note, "is another critical coordinate of the same closure interface"
    assert_includes note, "does not by itself close the first prefix"
    assert_includes note, "signed telescope"
    assert_includes note, "before applying time Cauchy--Schwarz"
    refute_includes note, "This proves global regularity"
    refute_includes note, "The MPP is closed"
  end

  private

  def dot(left, right)
    left.zip(right).sum { |a, b| a * b }
  end

  def assert_order(text, *needles)
    positions = needles.map do |needle|
      text.index(needle) || flunk("missing ordered text: #{needle}")
    end
    assert_equal positions.sort, positions
  end
end
