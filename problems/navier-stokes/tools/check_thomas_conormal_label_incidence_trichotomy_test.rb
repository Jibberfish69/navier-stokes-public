#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"
require "matrix"

class ThomasConormalLabelIncidenceTrichotomyTest < Minitest::Test
  TOL = 1.0e-12
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-conormal-deformation-gradient-high-rate-label-incidence-" \
    "trichotomy-boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_preserves_thomas_one_fluid_method_and_physical_order
    assert_includes text, "one continuing fixed-viscosity\nfluid"
    assert_includes text, "pulse or spring winding"
    assert_includes text, "imbalanced stretched vortex"
    assert_includes text, "perfectly balanced rip-cord"
    assert_includes text, "pressure-explicit\nbinomial/VPI"
    assert_includes text, "simultaneous intersected readings"
    refute_includes text.downcase, "rectangle"
  end

  def test_diagonal_incompressible_deformation_has_the_exact_conormal_rate
    c = 3.0
    b = 1.25
    e = 1.75
    time = 0.4

    assert_in_delta c, b + e, TOL

    determinant = Math.exp(-c * time) * Math.exp(b * time) * Math.exp(e * time)
    conormal_norm = Math.exp(c * time)

    assert_in_delta 1.0, determinant, TOL
    assert_in_delta c * time, Math.log(conormal_norm), TOL
    assert_includes text, "D_tF=MF"
    assert_includes text, "D_tN=-M^TN"
    assert_includes text, "D_t\\log|N|=-n\\cdot Sn"
    assert_includes text, "D_t\\log h=n\\cdot Sn"
  end

  def test_alignment_identity_and_half_rate_threshold
    cases = [
      [2.0, 0.5, 1.5, [Math.sqrt(0.8), Math.sqrt(0.1), Math.sqrt(0.1)]],
      [5.0, 2.0, 3.0, [Math.sqrt(0.75), 0.5, 0.0]],
      [7.0, 6.0, 1.0, [Math.sqrt(0.9), Math.sqrt(0.04), Math.sqrt(0.06)]]
    ]

    cases.each do |c, b, e, components|
      mu, n2, n3 = components
      gamma = c * mu**2 - b * n2**2 - e * n3**2
      defect = c - gamma
      exact_defect = (c + b) * n2**2 + (c + e) * n3**2
      transverse = 1.0 - mu**2

      assert_in_delta c, b + e, TOL
      assert_in_delta defect, exact_defect, 1.0e-10
      assert_operator defect, :>=, c * transverse - 1.0e-10
      assert_operator defect, :<=, 2.0 * c * transverse + 1.0e-10
      assert_operator gamma, :>=, c / 2.0 - 1.0e-10 if mu**2 >= 0.75
    end

    assert_includes text, "\\mu^2\\ge\\frac34"
    assert_includes text, "\\gamma\\ge\\frac c2"
    assert_includes text, "e^{-\\ell/2}"
  end

  def test_contracting_line_reduced_inverse_is_safe_at_expanding_collision
    c = 4.0
    b = 2.0
    e = 2.0
    off_diagonal_response = [3.0, -1.5]

    component_formula = [
      off_diagonal_response[0] / (-c - b),
      off_diagonal_response[1] / (-c - e)
    ]
    reduced_inverse_formula = [
      -off_diagonal_response[0] / (c + b),
      -off_diagonal_response[1] / (c + e)
    ]

    assert_equal component_formula, reduced_inverse_formula
    assert_operator c + b, :>=, c
    assert_operator c + e, :>=, c
    assert_includes text, "(S+cI)_{e_-^\\perp}^{-1}"
    assert_includes text, "No full simple-spectrum hypothesis is needed"
    assert_includes text, "whole-field trace-free\npressure Hessian"
  end

  def test_loss_of_alignment_requires_the_fixed_rotation_action
    threshold_angle = Math.acos(Math.sqrt(3.0 / 4.0))

    assert_in_delta Math::PI / 6.0, threshold_angle, TOL
    assert_includes text, "D_t\\vartheta"
    assert_includes text, "\\le |\\mathcal R_-|"
    assert_includes text, "\\ge\\frac\\pi6"
    assert_includes text, "\\mathcal R_-:=D_te_--\\Omega e_-"
    assert_includes text, "first time the alignment threshold is reached"
    assert_includes text, "upper-Dini derivative"
    assert_includes text, "\\mu\\ge\\frac{\\sqrt3}{2}"
    assert_includes text, "the threshold is not hit on"
    assert_includes text, "\\mu_J^2>3/4"
    assert_includes text, "\\tau_{\\rm hit}\\le\\tau_\\ell"
  end

  def test_episode_uses_relative_probe_without_claiming_a_coherent_surface
    assert_includes text, "F_J(a,\\tau)&:=F(a,\\tau)F(a,\\tau_0)^{-1}"
    assert_includes text, "N_J(a,\\tau)&:=F_J(a,\\tau)^{-T}"
    assert_includes text, "A new episode creates a new observational"
    assert_includes text, "Frobenius-integrable up to"
    assert_includes text, "not an asserted coherent level-surface field"
    assert_includes text, "does not by itself define a\nvortex-core thickness field"
  end

  def test_relative_frame_identity_matches_direct_conormal_differentiation
    c = 3.0
    b = 1.0
    e = 2.0
    strain = Matrix.diagonal(-c, b, e)
    rotation = Matrix[
      [0.0, -0.4, 0.3],
      [0.4, 0.0, -0.2],
      [-0.3, 0.2, 0.0]
    ]
    gradient = strain + rotation
    n = Vector[Math.sqrt(0.8), Math.sqrt(0.12), Math.sqrt(0.08)]
    contracting_line = Vector[1.0, 0.0, 0.0]
    frame_rate = Vector[0.0, -0.7, 0.5]

    n_strain_n = n.inner_product(strain * n)
    n_rate = -1.0 * (gradient.transpose * n) + n_strain_n * n
    mu_rate_direct =
      n_rate.inner_product(contracting_line) + n.inner_product(frame_rate)

    mu = n.inner_product(contracting_line)
    gamma = -n_strain_n
    relative_response = frame_rate - rotation * contracting_line
    mu_rate_formula =
      (c - gamma) * mu + n.inner_product(relative_response)

    assert_in_delta mu_rate_direct, mu_rate_formula, TOL
  end

  def test_pressure_explicit_contraction_rate_matches_the_gradient_diagonal
    c = 3.5
    w2 = 1.2
    w3 = -0.7
    h11 = 2.3
    nu = 0.4
    laplacian_s11 = -1.1

    lambda_one_rate =
      -c**2 + (w2**2 + w3**2) / 4.0 - h11 + nu * laplacian_s11
    c_rate_from_eigenvalue = -lambda_one_rate
    c_rate_displayed =
      c**2 - (w2**2 + w3**2) / 4.0 + h11 - nu * laplacian_s11

    assert_in_delta c_rate_from_eigenvalue, c_rate_displayed, TOL
    assert_includes text, "D_tc"
    assert_includes text, "c^2-\\frac14(w_2^2+w_3^2)"
    assert_includes text, "+e_-\\cdot H e_-"
    assert_includes text, "-\\nu e_-\\cdot\\Delta S e_-"
  end

  def test_positive_membership_variation_counts_new_episodes
    histories = [
      [0, 1, 1, 0, 1, 0],
      [1, 1, 0, 0, 1, 1],
      [0, 0, 0, 1, 0, 1]
    ]

    histories.each do |history|
      entries = history.each_cons(2).count { |left, right| left.zero? && right == 1 }
      episodes = entries + history.first
      direct_episodes = history.chunk_while { |left, right| left == 1 && right == 1 }
                               .count { |chunk| chunk.first == 1 }

      assert_equal direct_episodes, episodes
    end

    assert_includes text, "\\mathfrak R_{\\lambda,L,\\varepsilon,\\delta}^+(I)"
    assert_includes text, "\\operatorname{Var}_I"
    assert_includes text, "\\mathfrak R_{\\lambda,L}^{+}(I)"
    assert_includes text, "E_{\\lambda,L}(t)"
    assert_includes text, "Positive variation counts entries and re-entries"
    assert_includes text, "Without joint transversality"
    assert_includes text, "An exit does not by itself guarantee a\nreplacement label"
  end

  def test_short_episode_action_is_bounded_by_threshold_times_episode_count
    threshold = 2.0
    episode_actions = [0.4, 1.5, 1.99, 0.01]

    assert episode_actions.all? { |action| action < threshold }
    assert_operator episode_actions.sum, :<=, threshold * episode_actions.length
    assert_includes text, "A_J<\\ell"
    assert_includes text, "\\le\\ell\\bigl(|E_{\\lambda,L}(s)|"
    assert_includes text, "+\\mathfrak R_{\\lambda,L}^+(I)\\bigr)"
    assert_includes text, "priority stopping rule"
    assert_includes text, "a short episode may also rotate"
  end

  def test_aligned_episode_multiplicity_is_paid_by_the_same_action
    ell = 2.0
    episode_actions = [2.0, 2.4, 3.1]
    count = episode_actions.count { |action| action >= ell }
    alpha = episode_actions.sum

    assert_operator ell * count, :<=, alpha
    assert_includes text, "\\ell N_{{\\rm al},\\ell}(a)\\le\\alpha_I(a)"
    assert_includes text, "|\\{a:N_{{\\rm al},\\ell}(a)\\ge K\\}|(K\\ell)^2"
    assert_includes text, "multiplicity bound for episodewise local probes"
  end

  def test_frame_and_membership_scaling_is_explicit
    kappa = 5.0
    response = 3.0
    duration = 0.2
    spacetime_measure = 0.7

    scaled_response_action = (kappa**2 * response) * (duration / kappa**2)
    scaled_membership_variation =
      (kappa**2 * response) * (spacetime_measure / kappa**5)

    assert_in_delta response * duration, scaled_response_action, TOL
    assert_in_delta response * spacetime_measure / kappa**3,
                    scaled_membership_variation,
                    TOL
    assert_includes text, "\\lambda_\\kappa=\\kappa^6\\lambda"
    assert_includes text, "L_\\kappa=\\kappa^2L"
    assert_includes text, "\\varepsilon_\\kappa=\\kappa^6\\varepsilon"
    assert_includes text, "\\delta_\\kappa=\\kappa^2\\delta"
    assert_includes text, "\\chi_\\kappa(x,t)=\\chi(\\kappa x,\\kappa^2t)"
    assert_includes text, "=\\kappa^{-3}\\int\\!\\int|D_t\\chi|"
  end

  def test_exact_verdict_remains_same_critical_and_selector_refunded
    assert_includes text, "J_n^{\\rm rr}"
    assert_includes text, "\\mathcal D_{\\rho,n}^{+,\\rm rr}"
    assert_includes text, "same-critical trichotomy"
    assert_includes text, "no datum-finite upper bound"
    assert_match(/no proof\s+of `\(TIR\.37a\)`/, text)
    assert_includes text, "no MPP closure"
    refute_includes text, "Status: MPP is closed"
  end

  def test_note_has_no_control_byte_corruption
    bytes = File.binread(NOTE).bytes
    forbidden = [0x08, 0x09, 0x0b, 0x0c, 0x0d]

    forbidden.each { |byte| refute_includes bytes, byte }
    assert_includes text, "\\theta_\\varepsilon"
    assert_includes text, "\\eta_\\delta"
    assert_includes text, "\\mathfrak q"
    assert_includes text, "\\vartheta"
    refute_includes text, "\\left(mathcal"
  end
end
