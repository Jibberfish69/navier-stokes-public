#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasRecentSourceFirstBinomialCharacteristicTest < Minitest::Test
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-recent-source-first-binomial-characteristic-all-row-synchronization-boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def integrate(left, right, steps = 40_000)
    width = (right - left) / steps
    steps.times.sum do |index|
      point = left + (index + 0.5) * width
      yield(point) * width
    end
  end

  def test_keeps_pressure_complete_one_history_custody
    assert_includes text, "one fixed-viscosity Navier--Stokes history"
    assert_includes text, "Q_t+\\nu A Q=\\mathcal N_Q"
    assert_includes text, "\\mathcal N_Q=DQ(u)[Q]+2\\nu\\mathcal C(u)"
    assert_includes text, "both ordered velocity-parent insertions"
    assert_includes text, "No source sign or ordered-parent term has been separated"
    refute_includes text.downcase, "rectangle"
  end

  def test_first_characteristic_split_is_exact
    viscosity = 0.7
    eigenvalue = 1.3
    terminal = 1.1
    lag = 0.4
    left = terminal - lag
    rate = viscosity * eigenvalue

    q = ->(time) { 1.0 + time + time**2 }
    q_prime = ->(time) { 1.0 + 2.0 * time }
    n_q = ->(time) { q_prime.call(time) + rate * q.call(time) }

    original = integrate(left, terminal) do |time|
      Math.exp(-rate * (terminal - time)) * q.call(time)
    end
    endpoint = lag * Math.exp(-rate * lag) * q.call(left)
    response = integrate(left, terminal) do |time|
      (terminal - time) * Math.exp(-rate * (terminal - time)) * n_q.call(time)
    end

    assert_in_delta original, endpoint + response, 1.0e-9
  end

  def test_second_depth_characteristic_formula_is_exact
    viscosity = 0.4
    eigenvalue = 1.7
    terminal = 0.9
    lag = 0.35
    left = terminal - lag
    rate = viscosity * eigenvalue

    q0 = ->(time) { 1.0 + time + time**2 }
    q1 = ->(time) { 1.0 + 2.0 * time + rate * q0.call(time) }
    q1_prime = ->(time) { 2.0 + rate * (1.0 + 2.0 * time) }
    q2 = ->(time) { q1_prime.call(time) + rate * q1.call(time) }

    original = integrate(left, terminal) do |time|
      Math.exp(-rate * (terminal - time)) * q0.call(time)
    end
    endpoints =
      lag * Math.exp(-rate * lag) * q0.call(left) +
      lag**2 / 2.0 * Math.exp(-rate * lag) * q1.call(left)
    remainder = integrate(left, terminal) do |time|
      (terminal - time)**2 / 2.0 *
        Math.exp(-rate * (terminal - time)) * q2.call(time)
    end

    assert_in_delta original, endpoints + remainder, 1.0e-9
  end

  def test_m_plus_one_term_dichotomy_constant
    total_square = 81.0
    term_count = 4
    forced_single_square = total_square / term_count**2

    assert_in_delta 5.0625, forced_single_square, 1.0e-12
    assert_operator term_count * Math.sqrt(forced_single_square),
                    :>=, Math.sqrt(total_square)
  end

  def test_normalized_kernel_has_row_independent_lag_power
    (0..6).each do |row|
      spatial_power = 2.0 * row + 1.5
      lag_power = row - spatial_power / 2.0
      assert_in_delta(-0.75, lag_power, 1.0e-12)
    end
  end

  def test_kernel_covariance_preserves_critical_synchronization
    viscosity = 0.8
    row = 3
    radius = 2.2
    heat_age = 0.17
    dilation = 4.3

    gamma = lambda do |active_radius, active_age|
      frequency = [active_radius,
                   Math.sqrt((2.0 * row + 1.5) /
                             (2.0 * viscosity * active_age))].max
      active_age**row / Math.gamma(row + 1) *
        frequency**(2.0 * row + 1.5) *
        Math.exp(-viscosity * active_age * frequency**2)
    end

    original = gamma.call(radius, heat_age)
    scaled = gamma.call(dilation * radius, heat_age / dilation**2)

    assert_in_delta dilation**1.5 * original, scaled, 1.0e-10
  end

  def test_status_is_exact_localization_not_strict_reduction
    assert_includes text, "outcome (iii)"
    assert_includes text, "supported on the same shrinking heat"
    assert_includes text, "not a strict reduction"
    assert_includes text, "No new disjoint datum-paid charge"
    assert_includes text, "No forced even-shorter-lag"
    assert_includes text, "same critical all-row synchronization boundary"
    assert_includes text, "does not prove"
  end
end
