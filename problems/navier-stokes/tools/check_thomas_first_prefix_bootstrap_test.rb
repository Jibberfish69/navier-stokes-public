#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasFirstPrefixBootstrapTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  NOTE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-first-signed-prefix-generates-complete-intersection-20260803.md"
  )
  SPINE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-one-fluid-reversible-intersection-proof-spine-20260803.md"
  )
  CONTRACT_PATH = File.join(ROOT, "target-operating-contract.yaml")
  DIRECT_AUTHORITY_PATHS = %w[
    live-theorem-edge.yaml
    source-frontier.yaml
    theorem-packet.yaml
    theorem-repair.yaml
    dependency-discharge.yaml
  ].map { |name| File.join(ROOT, name) }.freeze

  def test_first_prefix_pays_critical_stock_and_action_together
    note = File.read(NOTE_PATH)

    assert_order note,
                 "A_*(T)",
                 "\\tag{BPF.7}",
                 "\\tag{BPF.9}",
                 "## 3. Direct differentiated-row estimate"
    assert_includes note, "No absolute value is put around the current"
    assert_includes note, "\\sup_{t<T}\\|\\Lambda^{1/2}u(t)\\|_2^2"
    assert_includes note, "\\int_0^T\\|\\Lambda^{3/2}u(t)\\|_2^2"
  end

  def test_multinomial_weights_reconstruct_the_homogeneous_sobolev_row
    x = [0.7, -1.2, 2.1]

    (0..7).each do |m|
      lhs = multi_indices(m).sum do |alpha|
        coefficient = factorial(m).fdiv(alpha.map { |entry| factorial(entry) }.inject(:*))
        monomial = alpha.each_index.inject(1.0) do |product, index|
          product * x[index]**(2 * alpha[index])
        end
        coefficient * monomial
      end
      rhs = x.sum { |entry| entry**2 }**m

      assert_in_delta rhs, lhs, 1.0e-9
    end
  end

  def test_interpolation_exponents_close_each_binomial_product
    (2..10).each do |m|
      (1..m).each do |k|
        theta = (k - 1).fdiv(m - 1)
        theta_prime = (m - k).fdiv(m - 1)
        inverse_p = (1.0 - theta) / 3.0 + theta / 6.0
        inverse_q = (1.0 - theta_prime) / 3.0 + theta_prime / 6.0

        assert_in_delta 0.5, inverse_p + inverse_q, 1.0e-12
      end
    end
  end

  def test_complete_spatial_row_precedes_original_binomial_temporal_induction
    note = File.read(NOTE_PATH)

    assert_order note,
                 "\\tag{BPF.12}",
                 "\\tag{BPF.13}",
                 "\\tag{BPF.15}",
                 "## 5. The original binomial recurrence",
                 "\\tag{BPF.20}",
                 "## 6. Compatible endpoint and restart"
    assert_includes note, "Sum (BPF.10) over all"
    assert_includes note, "with weights \\(m!/\\alpha!\\)"
    assert_includes note, "original pressure-explicit binomial jet"
  end

  def test_prefix_and_complete_intersection_are_equivalent_interfaces_only_on_finite_horizons
    note = File.read(NOTE_PATH)
    spine = File.read(SPINE_PATH)

    assert_includes note, "where \\(0<T<\\infty\\)"
    assert_includes note, "equivalent construction interfaces"
    assert_includes spine, "\\tag{TIR.36e}"
    assert_includes spine, "first signed critical prefix already generates every coordinate"
    assert_includes spine, "thomas-first-signed-prefix-generates-complete-intersection-20260803.md"
  end

  def test_datum_to_prefix_note_is_quarantined_from_the_governing_task
    note = File.read(NOTE_PATH)
    contract = File.read(CONTRACT_PATH)

    assert_includes note, "The still-unproved datum theorem is"
    assert_includes note, "\\tag{BPF.24}"
    assert_includes note, "does not prove (BPF.24)"
    refute_includes note, "The MPP is closed"
    assert_includes contract, "quarantined_later_first_signed_prefix_bootstrap:"
    assert_includes contract, "proved-mathematical-support-only-not-closure-prerequisite"
    assert_includes contract,
                    "completed_task: mpp-closed-through-thomas-complete-one-fluid-reversible-intersection-method"
    assert_includes contract, "cannot reopen or\n      replace the proved datum-side theorem"
  end

  def test_direct_authority_surfaces_keep_the_bootstrap_as_later_support
    DIRECT_AUTHORITY_PATHS.each do |path|
      surface = File.read(path)

      assert_includes surface, "source_owner: Thomas Birnie"
      assert_includes surface, "later_support_first_prefix_bootstrap:"
      assert_includes surface,
                      "later_route_search_status: quarantined-support-only-not-live-closure-path"
      assert_includes surface,
                      "thomas-first-signed-prefix-generates-complete-intersection-20260803.md"
    end
  end

  private

  def multi_indices(total)
    (0..total).flat_map do |a|
      (0..(total - a)).map { |b| [a, b, total - a - b] }
    end
  end

  def factorial(value)
    (1..value).inject(1, :*)
  end

  def assert_order(text, *needles)
    positions = needles.map do |needle|
      text.index(needle) || flunk("missing ordered text: #{needle}")
    end
    assert_equal positions.sort, positions
  end
end
