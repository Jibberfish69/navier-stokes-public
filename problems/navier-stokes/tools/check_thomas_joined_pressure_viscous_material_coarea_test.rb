#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasJoinedPressureViscousMaterialCoareaTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  NOTE = File.join(
    ROOT,
    "theorem-construction",
    "thomas-joined-pressure-viscous-material-coarea-and-critical-scale-jump-boundary-20260803.md"
  )

  def test_finite_abel_scale_coarea_identity
    scales = [1.to_r, 2.to_r, 5.to_r, 11.to_r]
    shells = [
      Rational(1, 10),
      Rational(2, 10),
      Rational(3, 10),
      Rational(4, 10)
    ]
    direct = scales.zip(shells).sum { |scale, shell| scale * shell }

    baseline = scales.first * shells.sum
    cumulative = (1...scales.length).sum do |j|
      (scales[j] - scales[j - 1]) * shells[j..].sum
    end

    assert_equal direct, baseline + cumulative
  end

  def test_coasting_visit_refunds_strain_square_by_entry_exit
    alpha_in = Rational(-1, 2)
    alpha_out = -1.to_r

    # alpha(t) = -1/(2-t) solves alpha_dot = -alpha^2 on [0,1].
    strain_square_integral = Rational(1, 2)
    entry_exit = alpha_in - alpha_out

    assert_equal strain_square_integral, entry_exit
  end

  def test_continuous_compression_coarea_cancels_on_coasting
    initial_stock = (Rational(1, 2))**Rational(3, 2)
    terminal_stock = 1.0
    action = Rational(2, 3) * (1.0 - 2.0**(-1.5))
    endpoint = -Rational(2, 3) * (terminal_stock - initial_stock)

    assert_in_delta 0.0, endpoint + action, 1.0e-12
  end

  def test_critical_scale_jump_is_constant_while_unweighted_action_sums
    nu = 3.to_r
    unweighted = 0.to_r
    weighted = []

    (1..24).each do |j|
      k = 2**j
      previous_k = k / 2
      delta_k = k - previous_k
      mass = Rational(1, k**3)
      duration = Rational(1, nu * k**2)
      alpha_square = (nu * k**2)**2
      action = mass * duration * alpha_square

      unweighted += action
      weighted << delta_k * action
    end

    assert_operator unweighted, :<, nu
    assert_equal [nu / 2] * 24, weighted
  end

  def test_all_terms_have_critical_fixed_viscosity_scaling
    r = Rational(1, 17)
    k = r**-1
    spacetime = r**5
    spatial_volume = r**3
    curvature = r**-4
    gradient = r**-2
    material_selector_rate = r**-2
    pressure = r**-2
    selector_hessian = r**-2

    assert_equal 1, k * curvature * spacetime
    assert_equal 1, k * gradient * spatial_volume
    assert_equal 1, k * material_selector_rate * gradient * spacetime
    assert_equal 1, k * gradient**2 * spacetime
    assert_equal 1, k * pressure * selector_hessian * spacetime
  end

  def test_note_preserves_signs_scope_and_variable_frame_caveat
    note = File.read(NOTE)

    assert_includes note, %q{D_tM+M^2=\mathsf C}
    assert_includes note, %q{-\int(D_tA):M\,dx}
    assert_includes note, %q{\Delta K_j:=K_j-K_{j-1}>0}
    assert_includes note, %q{\Delta K_j=(1-q^{-1})K_j}
    assert_includes note, %q{=-[\vartheta\alpha]_{s}^{e}}
    assert_includes note, %q{\kappa\,P:\mathsf C}
    assert_includes note, %q{y^{5/2}}
    assert_includes note, "The constancy qualification is essential"
    assert_includes note,
                    "may not be\nidentified with the global first prefix without that bridge"
    assert_includes note, "does not prove `(TIR.37a)` or close the MPP"
  end
end
