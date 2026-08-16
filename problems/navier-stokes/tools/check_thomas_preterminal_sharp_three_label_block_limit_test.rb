#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasPreterminalSharpThreeLabelBlockLimitTest < Minitest::Test
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-preterminal-compact-roof-sharp-three-label-block-limit-and-" \
    "diagonal-selection-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def l2(values)
    Math.sqrt(values.sum { |value| value.abs**2 })
  end

  def test_finite_frequency_trilinear_form_obeys_l2_counting_bound
    radius = 3
    frequencies = (-radius..radius).to_a
    f = frequencies.to_h { |k| [k, Complex(k + 2, 1 - k)] }
    g = frequencies.to_h { |k| [k, Complex(2 - k, k + 1)] }
    h = frequencies.to_h { |k| [k, Complex(1 + 2 * k, 3 - k)] }
    multiplier_bound = 5.0

    value = Complex(0.0, 0.0)
    frequencies.each do |p|
      frequencies.each do |q|
        k = -p - q
        next unless frequencies.include?(k)

        multiplier = multiplier_bound * Math.sin(0.3 * (k - p + 2 * q))
        value += multiplier * f.fetch(k) * g.fetch(p) * h.fetch(q)
      end
    end

    count = frequencies.length
    bound = multiplier_bound * Math.sqrt(count) *
            l2(f.values) * l2(g.values) * l2(h.values)

    assert_operator value.abs, :<=, bound + 1.0e-9
    assert_includes text, "finite frequency volume"
    assert_includes text, "N(H)^{1/2}"
    assert_includes text, "H^{3/2}"
    assert_includes text, "target multiplier projects them back"
  end

  def test_rough_multiplier_legs_are_controlled_only_after_target_projection
    projected_frequencies = (-4..4).to_a
    rough_tail = (-80..80).to_h do |k|
      [k, k.zero? ? 0.0 : ((-1.0)**k / k.abs)]
    end
    projected_mass = projected_frequencies.sum do |k|
      rough_tail.fetch(k, 0.0).abs**2
    end
    full_mass = rough_tail.values.sum { |value| value.abs**2 }

    assert_operator projected_mass, :<=, full_mass
    assert_operator rough_tail.keys.map(&:abs).max, :>,
                    projected_frequencies.map(&:abs).max
    assert_includes text, "rough pointwise multiplication does not\npreserve Fourier support"
    assert_includes text, "only the restrictions of the multiplied legs"
    assert_includes text, "No spatial derivative of \\(W\\)"
  end

  def test_sharp_block_constant_and_diagonal_fallback_constant
    record_height = 4096.to_r
    canonical_total = record_height / 16
    canonical_block = canonical_total / 8
    diagonal_error = record_height / 32
    diagonal_total = canonical_total - diagonal_error
    diagonal_block = diagonal_total / 8

    assert_equal record_height / 128, canonical_block
    assert_equal record_height / 256, diagonal_block
    assert_includes text, "{A_n\\over128}"
    assert_includes text, "{A_n\\over256}"
    assert_includes text, "one pattern \\(\\sigma_*\\) occurs on an\ninfinite record subsequence"
  end

  def test_value_limit_is_separated_from_bv_response_limit
    assert_includes text, "No BV hypothesis is needed for this undifferentiated"
    assert_includes text, "J_{n,\\sigma}^{(j)}\\to J_{n,\\sigma}^{\\rm rr}"
    assert_includes text, "in }L^1(I_n)"
    assert_includes text, "D_tW_j"
    assert_includes text, "enstrophy crossing row (DCT.23)"
    assert_includes text, "selected/complementary \\(D_tW_j\\) responses cancel only after all"
    assert_includes text, "not existence of the eight\nundifferentiated sharp record blocks"
  end

  def test_whole_space_torus_and_zero_floor_are_explicit
    assert_includes text, "On \\(\\mathbb R^3\\)"
    assert_includes text, "On \\(\\mathbb T^3\\)"
    assert_includes text, "minimum-leg and high-output floors exclude zero"
    assert_includes text, "Leray projection and the helical tensor factors\nare bounded away from zero frequency"
    assert_includes text, "H_n:=1+C_{\\rm col}"
  end

  def test_scope_keeps_response_and_closure_open
    assert_includes text, "not alter the direct theorem authority"
    assert_includes text, "does not select a positive physical subspace"
    assert_includes text, "No endpoint-spanning intersection membership"
    assert_includes text, "datum-uniform bound\nfor \\(H_n\\) or \\(V_n\\)"
    assert_includes text, "receiver-angle coercivity"
    assert_includes text, "TIR.37a"
    assert_includes text, "or closes the MPP"
  end

  def test_approximations_preserve_contractions_and_have_a_unique_limit
    assert_includes text, "same operator interval \\(0\\le W\\le I\\)"
    assert_includes text, "for example by zero"
    assert_includes text, "a.e. on }I_n\\times\\mathbb M^3"
    assert_includes text, "Dominated convergence and Fubini"
    assert_includes text, "mollify it in time and in the two independent frequency variables"
    assert_includes text, "finite assignment and reality symmetries"
    assert_includes text, "every approximating family with the stated common"
    assert_includes text, "has the same limit"
  end

  def test_note_has_no_control_byte_corruption
    bytes = File.binread(NOTE).bytes
    forbidden = [0x08, 0x09, 0x0b, 0x0c, 0x0d]

    forbidden.each { |byte| refute_includes bytes, byte }
    assert_includes text, "\\mathfrak M"
    assert_includes text, "\\Omega_n"
    assert_includes text, "\\sigma_*"
  end
end
