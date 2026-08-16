#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"
require "matrix"

class ThomasSixAssignmentScalarPairThreeLabelKernelTest < Minitest::Test
  TOL = 1.0e-9
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-six-assignment-scalar-pair-image-and-material-three-label-" \
    "kernel-boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_three_increment_factor_is_an_additive_one_leg_symbol
    k = 0.71
    p = -1.13
    q = -k - p
    radius = 0.83
    z_k = Complex.polar(1.0, k * radius)
    z_p = Complex.polar(1.0, p * radius)
    z_q = Complex.polar(1.0, q * radius)

    direct = (1.0 - 1.0 / z_k) *
             (1.0 - 1.0 / z_p) *
             (1.0 - 1.0 / z_q)
    additive = (z_k - 1.0 / z_k) +
               (z_p - 1.0 / z_p) +
               (z_q - 1.0 / z_q)

    assert_in_delta direct.real, additive.real, TOL
    assert_in_delta direct.imag, additive.imag, TOL
    assert_includes text, "additive one-leg"
    assert_includes text, "\\ell_L(k)+\\ell_L(p)+\\ell_L(q)"
  end

  def test_low_leg_exclusion_forces_zero_in_scalar_functional_equation
    unit = Rational(7, 5)
    ell = { 0 => 0, 1 => unit }

    # Excluded triples (m,1,-m-1) force the local Cauchy recursion.
    (1..3).each { |m| ell[m + 1] = ell.fetch(m) + ell.fetch(1) }

    collinear_sum = ell.fetch(2) + ell.fetch(2) - ell.fetch(4)

    assert_equal 0, collinear_sum
    assert_equal 4 * unit, ell.fetch(4)
    assert_includes text, "(2,2,-4)"
    assert_includes text, "collinear triad has zero incompressible"
    assert_includes text, "not\nused as a physical-current witness"
    assert_includes text, "no translation-invariant trilinear scalar"
    assert_includes text, "minimum-leg"
  end

  def test_noncollinear_divergence_free_polarization_is_injective_in_symbol
    # For k=(2,0,0), p=(0,2,0), q=(-2,-2,0), these are three
    # coefficient rows of S_m(A,B,C) from divergence-free polarizations,
    # with the common polarization factor 1/3 omitted.
    coefficient_rows = Matrix[
      [8, -8, 0],
      [0, 0, -16],
      [0, 64, 0]
    ]

    assert_equal 3, coefficient_rows.rank
    assert_includes text, "polarization is injective"
    assert_includes text, "{1\\over3}\\bigl["
    assert_includes text, "\\mathscr S_m(A,B,C)"
    assert_includes text, "noncollinear triad"
  end

  def test_noncollinear_critical_kernel_has_lawful_nonzero_polarization
    lambda_scale = 1.7
    k = [2.0 * lambda_scale, 0.0, 0.0]
    p = [0.0, 2.0 * lambda_scale, 0.0]
    q = [-2.0 * lambda_scale, -2.0 * lambda_scale, 0.0]
    d = 4.0 * lambda_scale**2 * (1.0 - Math.sqrt(2.0))
    m = [Complex(0.0, d), Complex(0.0, d), Complex(0.0, 0.0)]
    a = [Complex(0.0, 0.0), Complex(0.0, 0.0), Complex(1.0, 0.0)]
    b = [Complex(1.0, 0.0), Complex(0.0, 0.0), Complex(0.0, 0.0)]
    c = [Complex(0.0, 0.0), Complex(0.0, 0.0), Complex(0.0, 1.0)]
    dot = ->(x, y) { x.zip(y).sum { |left, right| left * right } }

    assert_in_delta 0.0, dot.call(k, a).abs, TOL
    assert_in_delta 0.0, dot.call(p, b).abs, TOL
    assert_in_delta 0.0, dot.call(q, c).abs, TOL
    assert_equal [0.0, 0.0, 0.0], k.zip(p, q).map { |x, y, z| x + y + z }

    polarized = dot.call(m, a) * dot.call(b, c) +
                dot.call(m, b) * dot.call(a, c) +
                dot.call(m, c) * dot.call(a, b)

    assert_operator polarized.abs, :>, TOL
    assert_includes text, "q=(-2\\lambda,-2\\lambda,0)"
    assert_includes text, "completed by their reality partners"
    assert_includes text, "\\mathscr S_{m_0}(A,B,C)\\ne0"
  end

  def test_two_separation_discrete_fourier_kernel_reconstructs_joint_symbol
    size = 7
    multiplier = lambda do |p, q|
      angle_p = 2.0 * Math::PI * p / size
      angle_q = 2.0 * Math::PI * q / size
      Math.cos(angle_p) + 0.4 * Math.sin(angle_q) +
        0.3 * Math.cos(angle_p - 2.0 * angle_q)
    end

    kernel = Array.new(size) { Array.new(size, Complex(0.0, 0.0)) }
    size.times do |r|
      size.times do |s|
        value = Complex(0.0, 0.0)
        size.times do |p|
          size.times do |q|
            phase = 2.0 * Math::PI * (p * r + q * s) / size
            value += multiplier.call(p, q) * Complex.polar(1.0, phase)
          end
        end
        kernel[r][s] = value / (size * size)
      end
    end

    size.times do |p|
      size.times do |q|
        recovered = Complex(0.0, 0.0)
        size.times do |r|
          size.times do |s|
            phase = -2.0 * Math::PI * (p * r + q * s) / size
            recovered += kernel[r][s] * Complex.polar(1.0, phase)
          end
        end
        assert_in_delta multiplier.call(p, q), recovered.real, TOL
        assert_in_delta 0.0, recovered.imag, TOL
      end
    end

    assert_includes text, "two independent separations"
    assert_includes text, "\\mathbb K_{n,\\alpha\\beta\\gamma}^{\\rm rr}(R,S;t)"
    assert_includes text, "{1\\over(2\\pi)^6}\\sum_{\\alpha,\\beta,\\gamma}\\iint"
    assert_includes text, "e^{i(p\\cdot R+q\\cdot S)}"
    assert_includes text, "e^{-i(p\\cdot R+q\\cdot S)}"
    assert_includes text, "\\mathfrak M_n^{\\rm rr}(-p-q,p,q;t)"
  end

  def test_material_pullback_retains_one_flow_and_three_labels
    assert_includes text, "volume-preserving material flow"
    assert_includes text, "R_{ab}=X(a,t)-X(b,t)"
    assert_includes text, "R_{ac}=X(a,t)-X(c,t)"
    assert_includes text, "three-label readout of one fluid"
    assert_includes text, "same material flow"
    assert_includes text, "absolute\nJacobian is one"
  end

  def test_time_derivative_keeps_both_separations_and_all_three_legs
    assert_includes text, "\\nabla_R\\mathbb K_{\\alpha\\beta\\gamma}^{\\rm rr}\\cdot V_{ab}"
    assert_includes text, "\\nabla_S\\mathbb K_{\\alpha\\beta\\gamma}^{\\rm rr}\\cdot V_{ac}"
    assert_includes text, "(\\mathcal D_tF_\\alpha)_aF_{\\beta,b}F_{\\gamma,c}"
    assert_includes text, "+F_{\\alpha,a}(\\mathcal D_tF_\\beta)_bF_{\\gamma,c}"
    assert_includes text, "+F_{\\alpha,a}F_{\\beta,b}(\\mathcal D_tF_\\gamma)_c"
    assert_includes text, "\\partial_tF_n^{\\rm rec}"
    assert_includes text, "counted once"
    assert_includes text, "does not\nidentify a recent-leg derivative with that next row"
  end

  def test_scope_preserves_unmasked_pair_identity_and_open_closure
    assert_includes text, "**Status:** canonical exact representation theorem"
    assert_includes text, "unmasked critical current remains exactly"
    assert_includes text, "all-pair inverse-length flux"
    assert_includes text, "actual receiver"
    assert_includes text, "all six assignments"
    assert_includes text, "adaptive scalar branch remains\nopen"
    assert_includes text, "does **not** prove"
    assert_includes text, "TIR.37a"
    assert_includes text, "no MPP closure is claimed"
  end

  def test_translation_invariance_claim_is_only_about_induced_operator
    assert_includes text, "nonzero centre-frequency of the **induced"
    assert_includes text, "operator modulo its\nnull kernel"
    assert_includes text, "does not claim pointwise"
  end

  def test_note_has_no_control_byte_corruption
    bytes = File.binread(NOTE).bytes
    forbidden = [0x08, 0x09, 0x0b, 0x0c, 0x0d]

    forbidden.each { |byte| refute_includes bytes, byte }
    assert_includes text, "\\mathfrak M"
    assert_includes text, "\\Gamma"
    assert_includes text, "\\ell"
  end
end
