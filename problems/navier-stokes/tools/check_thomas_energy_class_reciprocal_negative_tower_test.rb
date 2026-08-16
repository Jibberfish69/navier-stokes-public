#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasEnergyClassReciprocalNegativeTowerTest < Minitest::Test
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-energy-class-reciprocal-negative-space-binomial-tower-and-" \
    "first-parent-boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def spatial_order(p)
    p <= (4.0 / 3.0) ? -1.0 : -2.5 + (2.0 / p)
  end

  def max_time_integrable_theta(p)
    [1.0, 2.0 - (2.0 / p)].min
  end

  def first_row_orders(theta)
    time_exponent = 1.0 / theta
    product_lebesgue_exponent = 3.0 / (3.0 - (2.0 * theta))
    pressure_sobolev_order = -1.5 + (2.0 * theta)
    source_sobolev_order = pressure_sobolev_order - 1.0

    [time_exponent, product_lebesgue_exponent,
     pressure_sobolev_order, source_sobolev_order]
  end

  def test_first_temporal_row_energy_envelope
    assert_in_delta 4.0 / 3.0, first_row_orders(0.75)[0], 1.0e-12
    assert_in_delta 2.0, first_row_orders(0.75)[1], 1.0e-12
    assert_in_delta 0.0, first_row_orders(0.75)[2], 1.0e-12
    assert_in_delta(-1.0, first_row_orders(0.75)[3], 1.0e-12)

    assert_in_delta 2.0, first_row_orders(0.5)[0], 1.0e-12
    assert_in_delta 1.5, first_row_orders(0.5)[1], 1.0e-12
    assert_in_delta(-0.5, first_row_orders(0.5)[2], 1.0e-12)
    assert_in_delta(-1.5, first_row_orders(0.5)[3], 1.0e-12)

    assert_in_delta(-1.0, spatial_order(4.0 / 3.0), 1.0e-12)
    assert_in_delta(-1.5, spatial_order(2.0), 1.0e-12)
    assert_in_delta(-2.0, spatial_order(4.0), 1.0e-12)

    assert_includes text, "u_t\\in L_t^{4/3}H_x^{-1}"
    assert_includes text, "\\cap L_t^2H_x^{-3/2}"
    assert_includes text, "r(p):="
    assert_includes text, "-5/2+2/p"
    assert_includes text, "L_t^\\infty H_x^{-5/2-\\varepsilon}"
    assert_includes text, "D_T:=\\|u\\|_{L_t^2H_x^1}"
    assert_includes text, "(TM^2+D^2)^{1/2}"
    assert_includes text, "M^{1-\\theta}D_T^\\theta"
    assert_includes text, "D^2\\le {\\|u_0\\|_2^2\\over2\\nu}"
    assert_includes text, "\\left(T+{1\\over2\\nu}\\right)^{1/2}\\|u_0\\|_2"
    assert_includes text, "false at low frequency"
  end

  def test_viscous_row_embeds_in_every_claimed_first_row_target
    [0.1, 0.25, 0.5].each do |theta|
      interpolated_viscous_order = theta - 2.0
      target_order = -2.5 + (2.0 * theta)
      assert_operator interpolated_viscous_order, :>=, target_order
      assert_operator 2.0 / theta, :>=, 1.0 / theta
    end

    [0.5, 0.6, 0.75].each do |theta|
      target_order = -2.5 + (2.0 * theta)
      assert_operator(-1.0, :>=, target_order)
      assert_operator 2.0, :>=, 1.0 / theta
    end
  end

  def test_every_time_integrable_parent_pair_has_half_derivative_deficit
    [1.1, 4.0 / 3.0, 1.5, 2.0, 3.0, 10.0].each do |p|
      sum = spatial_order(p) + max_time_integrable_theta(p)
      assert_operator sum, :<=, -0.5 + 1.0e-12
    end

    [4.0 / 3.0, 1.5, 2.0].each do |p|
      sum = spatial_order(p) + max_time_integrable_theta(p)
      assert_in_delta(-0.5, sum, 1.0e-12)
    end

    assert_includes text,
                    "misses even the pre-divergence product by one\nhalf"
    assert_includes text, "{1\\over2}+{3\\over4}={5\\over4}>1"
    assert_includes text, "\\langle V_1,u\\varphi\\rangle_{H^{-1},H^1}"
    assert_includes text, "\\sigma>5/2"
    assert_includes text, "\\|V_1\\otimes u\\|_{H^{-\\sigma}}"
    assert_includes text, "very weak but\nenergy-controlled spatial estimate"
    assert_includes text, "transport parent in \\(H^{-\\sigma-1}\\)"
    assert_includes text, "\\in L_t^{4/5}"
    assert_includes text, "not \\(L_t^1\\)"
    assert_includes text, "test-function-level"
    assert_includes text, "it is not a continuous"
    assert_includes text, "do not provide a finite whole-interval"
    assert_includes text, "nevertheless exists locally on \\(I\\) because the same solution is classical"
    assert_includes text, "first unclosed multiplication"
    assert_includes text, "not a denial of a stronger joined same-history cancellation"
  end

  def test_complete_binomial_recombination_is_kept_and_only_distributional
    assert_includes text, "\\sum_{a=0}^{N}\\binom Na"
    assert_includes text, "+\\nabla P_N"
    assert_includes text, "=\\partial_t^N\\mathcal Q(u,p)"
    assert_includes text, "unique energy-class extension of the **joined**"
    assert_includes text, "W_t^{-N,4/3}H_x^{-1}"
    assert_includes text, "W_t^{-N,2}H_x^{-3/2}"
    assert_includes text, "makes (TIR.6)\nlawful at all depths as a joined distribution"
  end

  def test_exact_shear_calibration_forces_linear_negative_spatial_loss
    [[1, 1.0, 0.0], [1, 2.0, 1.0], [2, 2.0, 3.0],
     [3, 4.0, 5.5]].each do |n, p, s|
      exponent = (2.0 * n) - s - (2.0 / p)
      assert_in_delta(0.0, exponent, 1.0e-12)
    end

    assert_includes text, "u_K(t,x)=A e^{-\\nu K^2t}\\sin(Kx_2)e_1"
    assert_includes text, "(u_K\\cdot\\nabla)u_K=0"
    assert_includes text, "2N-s-2/p"
    assert_includes text, "s\\ge2N-{2\\over p}"
    assert_includes text, "\\mathcal P_{1/2}\\equiv0"
    assert_includes text, "L_t^p(0,\\infty;H_x^{-s})"
    assert_includes text, "not, by itself, an obstruction to an"
    assert_includes text, "\\mathbb R^3\\)-specific signed same-history cancellation"
  end

  def test_scope_preserves_thomas_theory_and_the_live_prefix
    assert_includes text, "one-fluid pressure-explicit binomial method"
    assert_includes text,
                    "uses only the kinetic-energy row of the one continuing solution"
    assert_includes text, "every binomial coefficient and every parent is retained"
    assert_includes text, "does not imply (TIR.37a)"
    assert_includes text,
                    "does not\nprove or disprove the stronger one-fluid turn-down theorem"
    assert_includes text, "not direct theorem authority"
    refute_includes text.downcase, "mpp closure is proved"
    refute_includes text.downcase, "rectangle"
  end
end
