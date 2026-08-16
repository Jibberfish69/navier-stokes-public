#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasPressureCompleteExclusionsTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  SPINE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-one-fluid-reversible-intersection-proof-spine-20260803.md"
  )
  SOURCE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-pressure-complete-recruitment-source-mass-and-quadratic-storage-obstruction-20260803.md"
  )
  ANCESTRY_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-pressure-explicit-unweighted-ancestry-first-moment-localization-obstruction-20260803.md"
  )
  CONTRACT_PATH = File.join(ROOT, "target-operating-contract.yaml")

  def test_forced_heat_history_is_explicitly_not_navier_stokes
    note = File.read(SOURCE_PATH)

    assert_includes note, "It is **not** a Navier--Stokes counterhistory"
    assert_includes note, %q{=-\mathbb P((u\cdot\nabla)u)}
    assert_includes note, %q{\mathbb P((u\cdot\nabla)u)=0}
    assert_includes note, "The missing information is the identity (PSQ.5)"
    assert_order note, %q{\tag{PSQ.36}}, %q{\tag{PSQ.39}}, %q{\tag{PSQ.44}}
  end

  def test_fixed_quadratic_storage_no_go_keeps_both_helicities
    note = File.read(SOURCE_PATH)

    assert_includes note, %q{w_\sigma(r)=A+B\sigma r}
    assert_includes note, %q{B-1\geq0}
    assert_includes note, %q{-B-1\geq0}
    assert_includes note, "no fixed bounded-below quadratic storage"
    assert_includes note, "history-dependent signed identity"
  end

  def test_unweighted_q_schedule_misses_exactly_one_inverse_length
    q = 2.0
    finite_mass = (1..80).sum { |j| q**(-j) }
    coincidence = (1..80).sum { 1.0 }

    assert_operator finite_mass, :>, 0.99
    assert_operator finite_mass, :<=, 1.0
    assert_equal 80.0, coincidence

    note = File.read(ANCESTRY_PATH)
    assert_includes note, "The missing factor is exactly one inverse length"
    assert_includes note, "multiplicity equal one"
    assert_includes note, "not asserted to\nsatisfy the Navier--Stokes time equation"
  end

  def test_matched_localization_has_no_scale_small_remainder
    note = File.read(ANCESTRY_PATH)

    assert_order note,
                 %q{\tag{UAL.61}},
                 %q{\tag{UAL.63}},
                 %q{\tag{UAL.70}},
                 %q{\tag{UAL.77}}
    assert_includes note, "the time-integrated commutator in (UAL.70) is\nscale invariant"
    assert_includes note, "For the terminal critical stock"
    assert_includes note, "the integrated viscous IMS defect\nis again order one"
  end

  def test_canonical_spine_and_contract_keep_only_in_method_survivors
    spine = File.read(SPINE_PATH)
    contract = File.read(CONTRACT_PATH)

    [File.basename(SOURCE_PATH), File.basename(ANCESTRY_PATH)].each do |name|
      assert_includes spine, name
      assert_includes contract, name
    end

    assert_includes spine, "These are quarantined exclusions and exact failure localizations"
    assert_includes contract, "checked_scalar_and_unweighted_ancestry_exclusions:"
    assert_includes contract, "scale-weighted parent charge"
    assert_includes contract, "signed adjacent-scale\n      cancellation"
    assert_includes contract, "stronger same-label\n      deformation moment"
  end

  private

  def assert_order(text, *needles)
    positions = needles.map do |needle|
      text.index(needle) || flunk("missing ordered text: #{needle}")
    end
    assert_equal positions.sort, positions
  end
end
