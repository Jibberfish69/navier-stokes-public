#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasHelicalCommonModeStorageObstructionTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  NOTE = File.join(
    ROOT,
    "theorem-construction",
    "thomas-helical-common-mode-completed-action-storage-obstruction-20260803.md"
  )
  TOLERANCE = 1.0e-12

  def test_product_ratio_and_entropy_laws_preserve_every_sign
    viscosity = 0.7
    samples = [
      [2.3, 1.1, 0.9, 3.4, 0.8],
      [1.0, 1.0, -2.0, 0.7, 1.4],
      [0.4, 3.2, 4.1, 2.2, 0.5]
    ]

    samples.each do |r_plus, r_minus, current, d_plus, d_minus|
      plus_rate = current - 2.0 * viscosity * d_plus
      minus_rate = current - 2.0 * viscosity * d_minus
      sum = r_plus + r_minus
      difference = r_plus - r_minus
      product = r_plus * r_minus

      product_rate = plus_rate * r_minus + r_plus * minus_rate
      assert_in_delta(
        current * sum -
          2.0 * viscosity * (d_plus * r_minus + d_minus * r_plus),
        product_rate,
        TOLERANCE
      )

      log_ratio_rate = plus_rate / r_plus - minus_rate / r_minus
      assert_in_delta(
        current * (1.0 / r_plus - 1.0 / r_minus) -
          2.0 * viscosity * (d_plus / r_plus - d_minus / r_minus),
        log_ratio_rate,
        TOLERANCE
      )

      entropy_rate =
        2.0 * (plus_rate + minus_rate) / sum -
        plus_rate / r_plus - minus_rate / r_minus
      expected_entropy_rate =
        -current * difference**2 / (product * sum) +
        2.0 * viscosity * (r_minus - r_plus) / sum *
        (d_plus / r_plus - d_minus / r_minus)
      assert_in_delta expected_entropy_rate, entropy_rate, TOLERANCE
    end
  end

  def test_completed_actions_are_one_common_translation
    initial_plus = 2.4
    initial_minus = 0.9
    prefixes = [-0.4, 0.0, 1.3, 11.0]

    prefixes.each do |prefix|
      n_plus = initial_plus + prefix
      n_minus = initial_minus + prefix

      assert_in_delta initial_plus - initial_minus,
                      n_plus - n_minus,
                      TOLERANCE
      assert_in_delta [initial_plus, initial_minus].min + prefix,
                      [n_plus, n_minus].min,
                      TOLERANCE
      assert_in_delta(
        (initial_plus + prefix) * (initial_minus + prefix),
        n_plus * n_minus,
        TOLERANCE
      )
    end
  end

  def test_every_exact_current_cancelling_storage_falls_on_common_rays
    psi = ->(difference) { 0.3 * difference**2 - 2.0 * difference }
    psi_prime = ->(difference) { 0.6 * difference - 2.0 }
    difference = 1.7

    [1.0, 4.0, 20.0].each do |common|
      n_plus = common + difference / 2.0
      n_minus = common - difference / 2.0
      gradient_plus = -0.5 + psi_prime.call(difference)
      gradient_minus = -0.5 - psi_prime.call(difference)
      storage = -(n_plus + n_minus) / 2.0 + psi.call(difference)

      assert_in_delta(-1.0,
                      gradient_plus + gradient_minus,
                      TOLERANCE)
      assert_in_delta(-common + psi.call(difference), storage, TOLERANCE)
    end

    low = -1.0 + psi.call(difference)
    high = -20.0 + psi.call(difference)
    assert_operator high, :<, low
  end

  def test_note_keeps_the_unpaid_prefix_and_transverse_history_separate
    note = File.read(NOTE)

    assert_includes note, "R_+'+2\\nu D_+=J"
    assert_includes note, "N_+'=N_-'=J"
    assert_includes note, "F_{N_+}+F_{N_-}=-1"
    assert_includes note, "no bounded-below nonlinear storage"
    assert_includes note, "It does not bound that"
    assert_includes note, "remaining theorem must use the uncollapsed signed"
    refute_includes note, "global regularity is proved"
  end
end
