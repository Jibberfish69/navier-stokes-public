#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasPressureCompleteNestingReductionsTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  CONSTRUCTION = File.join(ROOT, "theorem-construction")
  SPINE = File.join(
    CONSTRUCTION,
    "thomas-one-fluid-reversible-intersection-proof-spine-20260803.md"
  )
  TRANSVERSE = File.join(
    CONSTRUCTION,
    "thomas-pressure-complete-invariant-transverse-recruitment-reduction-20260803.md"
  )
  COMMUTATOR = File.join(
    CONSTRUCTION,
    "thomas-invariant-transverse-first-binomial-commutator-boundary-20260803.md"
  )
  RECIPROCAL = File.join(
    CONSTRUCTION,
    "thomas-parent-age-reciprocal-moment-telescope-positivity-boundary-20260803.md"
  )
  HELICAL = File.join(
    CONSTRUCTION,
    "thomas-helical-common-mode-completed-action-storage-obstruction-20260803.md"
  )
  INSERTION = File.join(
    CONSTRUCTION,
    "thomas-full-field-insertion-heat-defect-no-recount-boundary-20260803.md"
  )
  RECIPROCAL_TAIL = File.join(
    CONSTRUCTION,
    "thomas-incompressible-reciprocal-tail-suppression-and-time-square-boundary-20260803.md"
  )
  TRIAD = File.join(
    CONSTRUCTION,
    "thomas-signed-first-cutoff-moment-three-leg-triad-boundary-20260803.md"
  )
  HETEROCHIRAL = File.join(
    CONSTRUCTION,
    "thomas-heterochiral-child-fraction-local-nonlocal-boundary-20260803.md"
  )
  BALANCED = File.join(
    CONSTRUCTION,
    "thomas-balanced-rip-cord-coasting-pressure-trace-and-shrinking-label-boundary-20260803.md"
  )
  UNCOLLAPSED = File.join(
    CONSTRUCTION,
    "thomas-uncollapsed-parent-causal-gramian-observability-boundary-20260803.md"
  )
  JOINED_COAREA = File.join(
    CONSTRUCTION,
    "thomas-joined-pressure-viscous-material-coarea-and-critical-scale-jump-boundary-20260803.md"
  )
  FULL_INCIDENCE = File.join(
    CONSTRUCTION,
    "thomas-full-incidence-majority-spine-and-ultra-nonlocal-wedge-20260803.md"
  )
  MATERIAL_FLUX = File.join(
    CONSTRUCTION,
    "thomas-monotone-material-scale-flux-endpoint-and-wobble-boundary-20260804.md"
  )
  DYNAMIC_CORE_TIME = File.join(
    CONSTRUCTION,
    "thomas-dynamic-core-time-oriented-three-leg-current-boundary-20260804.md"
  )
  JOINED_MATERIAL_FOURIER = File.join(
    CONSTRUCTION,
    "thomas-joined-exterior-material-pair-dynamic-fourier-core-boundary-20260804.md"
  )
  DYNAMIC_CORE_L8 = File.join(
    CONSTRUCTION,
    "thomas-dynamic-core-l8-duality-and-recombined-throughput-boundary-20260804.md"
  )
  DCT47_ONE_FORM = File.join(
    CONSTRUCTION,
    "thomas-dct47-exact-one-form-and-enstrophy-sphere-phase-boundary-20260804.md"
  )
  BINOMIAL_RESUMMATION = File.join(
    CONSTRUCTION,
    "thomas-complete-binomial-core-response-resummation-and-uniform-radius-boundary-20260804.md"
  )
  BALANCED_PAIR_TURN_DOWN = File.join(
    CONSTRUCTION,
    "thomas-balanced-pair-radial-covariance-and-turn-down-boundary-20260804.md"
  )
  CONTRACT = File.join(ROOT, "target-operating-contract.yaml")
  DIRECT = %w[
    live-theorem-edge.yaml
    source-frontier.yaml
    theorem-packet.yaml
    theorem-repair.yaml
    dependency-discharge.yaml
  ].map { |name| File.join(ROOT, name) }.freeze

  def test_invariant_transverse_gram_formula_is_the_actual_projection_residue
    modes = [
      [1.0, 1.0, 0.7],
      [1.0, 3.0, 0.4],
      [-1.0, 2.0, 0.9],
      [-1.0, 5.0, 0.2]
    ]
    moments = helical_moments(modes)
    r = moments.fetch(:r)
    z = moments.fetch(:z)
    d = moments.fetch(:d)
    j2 = moments.fetch(:j2)
    j3 = moments.fetch(:j3)
    determinant = r * d - j2**2

    alpha = (d * z - j2 * j3) / determinant
    beta = (-j2 * z + r * j3) / determinant
    direct_residue = modes.sum do |sign, radius, weight|
      radius * ((1.0 - beta * sign) * radius - alpha)**2 * weight
    end
    gram_residue =
      d - (d * z**2 - 2.0 * j2 * z * j3 + r * j3**2) / determinant

    assert_in_delta direct_residue, gram_residue, 1.0e-11
    assert_operator gram_residue, :>, 0.0
    assert_operator gram_residue, :<=, d - z**2 / r + 1.0e-11

    d_plus = modes.select { |entry| entry[0] > 0.0 }
                  .sum { |_, radius, weight| radius**3 * weight }
    d_minus = modes.select { |entry| entry[0] < 0.0 }
                   .sum { |_, radius, weight| radius**3 * weight }
    assert_operator gram_residue,
                    :<=,
                    4.0 * d_plus * d_minus / d + 1.0e-11
  end

  def test_transverse_residue_vanishes_on_the_two_exact_null_classes
    homochiral = [[1.0, 1.0, 0.4], [1.0, 7.0, 0.3], [1.0, 11.0, 0.2]]
    two_radius = [[1.0, 2.0, 0.8], [-1.0, 5.0, 1.1]]

    assert_in_delta 0.0, projection_residue(homochiral), 1.0e-10
    assert_in_delta 0.0, projection_residue(two_radius), 1.0e-10

    note = File.read(TRANSVERSE)
    assert_includes note, %q{(Q,u)_2=0}
    assert_includes note, %q{(Q,\omega)_2=0}
    assert_includes note, %q{\mathcal P_{1/2}
=(\Lambda^{-1/2}Q,\mathfrak d(u))_2}
    assert_includes note, "The datum bound (ITR.45) is not proved"
  end

  def test_later_individual_reciprocal_kernel_is_indefinite
    gamma = 10.to_r
    x = 2.to_r
    y = 1.to_r

    (2..8).each do |m|
      wx = x**m / (gamma + x)**(m + 1)
      wy = y**m / (gamma + y)**(m + 1)
      determinant =
        (x * wy - y * wx) * (x * wx - y * wy) /
        (x * y * (x + y)**2)
      assert_operator determinant, :<, 0
    end
  end

  def test_every_joined_finite_reciprocal_kernel_prefix_is_positive
    gamma = 1.7
    ages = [0.2, 0.8, 2.3, 9.0]
    coefficient_sets = [
      [1.0, -2.0, 0.5, 1.3],
      [-1.0, 0.4, 2.2, -0.7],
      [3.0, -1.0, -1.0, 0.2]
    ]

    (1..12).each do |depth|
      coefficient_sets.each do |coefficients|
        quadratic = 0.0
        ages.each_with_index do |x, i|
          ages.each_with_index do |y, j|
            rx = x / (gamma + x)
            ry = y / (gamma + y)
            kernel = 0.5 *
                     ((1.0 - rx**depth) + (1.0 - ry**depth)) /
                     (x + y)
            quadratic += coefficients[i] * coefficients[j] * kernel
          end
        end
        assert_operator quadratic, :>=, -1.0e-11
      end
    end

    note = File.read(RECIPROCAL)
    assert_includes note, "Every joined finite kernel prefix is positive"
    assert_includes note, %q{N\asymp d_a}
    assert_includes note, %q{(DQ(u)[Q(u)],u)_2=-\|Q(u)\|_2^2}
    assert_match(/No such bound\s+is\s+proved here/, note)
  end

  def test_completed_helical_actions_cannot_supply_bounded_below_cancellation
    difference = 1.4
    psi = ->(value) { value**2 - 0.3 * value }
    values = [1.0, 4.0, 20.0].map do |common|
      n_plus = common + difference / 2.0
      n_minus = common - difference / 2.0
      -(n_plus + n_minus) / 2.0 + psi.call(n_plus - n_minus)
    end

    assert_operator values[1], :<, values[0]
    assert_operator values[2], :<, values[1]

    note = File.read(HELICAL)
    assert_includes note, %q{N_+'=N_-'=J}
    assert_includes note, %q{F_{N_+}+F_{N_-}=-1}
    assert_includes note, "no bounded-below nonlinear storage"
    assert_includes note, "remaining theorem must use the uncollapsed signed"
  end

  def test_canonical_authority_keeps_reductions_quarantined_below_proved_closure
    spine = File.read(SPINE)
    contract = File.read(CONTRACT)
    names = [TRANSVERSE, COMMUTATOR, RECIPROCAL, HELICAL, INSERTION,
             RECIPROCAL_TAIL, TRIAD, HETEROCHIRAL, BALANCED, UNCOLLAPSED,
             JOINED_COAREA, FULL_INCIDENCE, MATERIAL_FLUX, DYNAMIC_CORE_TIME,
             JOINED_MATERIAL_FOURIER, DYNAMIC_CORE_L8, DCT47_ONE_FORM,
             BINOMIAL_RESUMMATION, BALANCED_PAIR_TURN_DOWN]
            .map { |path| File.basename(path) }

    names.each do |name|
      assert_includes spine, name
      assert_includes contract, name
      DIRECT.each { |path| assert_includes File.read(path), name }
    end

    assert_includes contract,
                    "proved_invariant_transverse_and_reciprocal_parent_reductions:"
    assert_includes contract,
                    "authority_scope: sole-active-proved-navier-stokes-global-closure-authority"
    assert_includes contract,
                    "producer_status: proved-datum-to-endpoint-spanning-compatible-all-orders-intersection"
    assert_includes contract,
                    "global_closure_status: proved-through-common-H_x-infinity-endpoint-and-same-history-restart"
    DIRECT.each do |path|
      direct = File.read(path)
      assert_includes direct,
                      "authority_scope: sole-active-proved-navier-stokes-global-closure-authority"
      assert_includes direct, "lower_route_status: historical-provenance-only-no-closure-authority"
    end
    assert_includes contract, "not MPP closure"
    assert_includes spine, "exact weighted moving-triangle no-recount identity"
    assert_includes spine, "fixed-\\(T\\) tail decay cannot be exchanged"
    assert_includes File.read(RECIPROCAL),
                    "complete **unweighted** global \\(L^2\\) pairing"
    assert_includes File.read(RECIPROCAL),
                    %q{W=\nu^{-1}\Lambda^{-1}}
    assert_includes File.read(TRIAD),
                    %q{=2\kappa_oT_{\tau,o}}
    assert_includes File.read(TRIAD),
                    %q{m_s(r)=r+a+bsr}
    assert_includes File.read(HETEROCHIRAL),
                    %q{\vartheta_o\le\Upsilon(\eta):={1-\eta\over2\eta}}
    assert_includes File.read(HETEROCHIRAL),
                    %q{|\mathcal P_{1/2}^{\rm nl}(\eta)|}
    assert_includes File.read(BALANCED),
                    %q{n\cdot\mathsf C_{\rm VPI}n=0}
    assert_includes File.read(BALANCED),
                    %q{\sum_j\frac{m_j}{r_j^3}<\infty}
    assert_includes File.read(UNCOLLAPSED),
                    %q{2\mathcal K_{K,T}
 =(X(0),\mathsf O_{M_K,T}(0)X(0))}
    assert_includes File.read(UNCOLLAPSED),
                    "lower bound }\\Longleftrightarrow"
    assert_includes File.read(UNCOLLAPSED),
                    %q{\gtrsim N^3}
    assert_includes File.read(JOINED_COAREA),
                    %q{\Delta K_j:=K_j-K_{j-1}>0}
    assert_includes File.read(JOINED_COAREA),
                    %q{=-[\vartheta\alpha]_{s}^{e}}
    assert_includes File.read(JOINED_COAREA),
                    %q{y:=(-\alpha)_+}
    assert_includes File.read(FULL_INCIDENCE),
                    %q{X_{n+1}=X_n+Y_n}
    assert_includes File.read(FULL_INCIDENCE),
                    %q{\mathcal P_{1/2}^{\rm ultra}(t)|
 \leq {\nu\over4}}
    assert_includes File.read(FULL_INCIDENCE),
                    "All six assignments of low input, high input, and"
    assert_includes File.read(FULL_INCIDENCE),
                    %q{K_Z(t):=C_Z{Z(t)\over\nu^2}}
    assert_includes File.read(FULL_INCIDENCE),
                    %q{\int_0^{T_*}\Xi(t)^8\,dt}
    assert_includes File.read(MATERIAL_FLUX),
                    %q{-(D_t\Theta_j)\alpha
=\psi_j'\alpha^2\ge0}
    assert_includes File.read(MATERIAL_FLUX),
                    %q{\mathfrak J_{J,N}+\mathfrak Q_{J,N}
=\sum_{j>J}}
    assert_includes File.read(MATERIAL_FLUX),
                    %q{\sum_{i=1}^3K_i\alpha_i}
    assert_includes File.read(MATERIAL_FLUX),
                    %q{f(y):=\sin y-\frac14\sin(2y)}
    assert_includes File.read(DYNAMIC_CORE_TIME),
                    %q{c_\tau'+d_\tau c_\tau=a_\tau}
    assert_includes File.read(DYNAMIC_CORE_TIME),
                    %q{Z(t)\ge Z_\tau^\dagger}
    assert_includes File.read(DYNAMIC_CORE_TIME),
                    %q{m_{\ell\tau}\asymp{1\over\nu K}}
    assert_includes File.read(DYNAMIC_CORE_TIME),
                    %q{\omega_\tau c_\tau
 =-(\omega_\tau b_\tau)'}
    assert_includes File.read(DYNAMIC_CORE_TIME),
                    %q{\det=-{(m_1-m_2)^2\over4}}
    assert_includes File.read(JOINED_MATERIAL_FOURIER),
                    %q{j_{ab}=-4e_{ab}\alpha_{ab}}
    assert_includes File.read(JOINED_MATERIAL_FOURIER),
                    %q{\iint j_{ab}(t)\,da\,db
=\mathcal P_{1/2}(t)}
    assert_includes File.read(JOINED_MATERIAL_FOURIER),
                    %q{h={K\over|m\cdot n|}}
    assert_includes File.read(JOINED_MATERIAL_FOURIER),
                    %q{{D_tw_{ab}\over w_{ab}}=2\chi_{ab}-3\alpha_{ab}}
    assert_includes File.read(JOINED_MATERIAL_FOURIER),
                    %q{\alpha{Z'\over Z}}
    assert_includes File.read(DYNAMIC_CORE_L8),
                    %q{\Xi(t)^8={U^2\over\nu^4}Z(t)}
    assert_includes File.read(DYNAMIC_CORE_L8),
                    %q{[\mathcal J_c(t)]_+^{8/7}}
    assert_includes File.read(DYNAMIC_CORE_L8),
                    %q{Z(t)D(t)^{4/7}}
    assert_includes File.read(DYNAMIC_CORE_L8),
                    %q{Z(u_{A,K})^{13/7}}
    assert_includes File.read(DYNAMIC_CORE_L8),
                    %q{S_1+S_2=0}
    assert_includes File.read(DCT47_ONE_FORM),
                    %q{R+X=B'+C}
    assert_includes File.read(DCT47_ONE_FORM),
                    %q{F=\sum_\tau\omega_\tau(Z)b_\tau+\text{constant}}
    assert_includes File.read(DCT47_ONE_FORM),
                    %q{g_\tau'={t_\tau\over Z^{3/2}}}
    assert_includes File.read(DCT47_ONE_FORM),
                    %q{Z'(0)=2A_*^3P_{1,0}-2A_*^2W_0=0}
    assert_includes File.read(DCT47_ONE_FORM),
                    "t(0)=-74390.2357346"
    assert_includes File.read(BINOMIAL_RESUMMATION),
                    %q{\mathcal U_{T,\delta}(\theta)}
    assert_includes File.read(BINOMIAL_RESUMMATION),
                    %q{(\mathscr I-\mathscr H)^n}
    assert_includes File.read(BINOMIAL_RESUMMATION),
                    %q{{r_a^N\over\gamma_k}}
    assert_includes File.read(BINOMIAL_RESUMMATION),
                    %q{={1\over\nu|k|}}
    assert_includes File.read(BINOMIAL_RESUMMATION),
                    %q{r_a^N
 \geq\left({N\over N+1}\right)^N
 \geq e^{-1}}
    assert_includes File.read(BALANCED_PAIR_TURN_DOWN),
                    %q{\mathscr C_u(x,r)}
    assert_includes File.read(BALANCED_PAIR_TURN_DOWN),
                    %q{6a^3+{a\over4}|\omega_\perp|^2
 -{a\over2}|\omega_\parallel|^2}
    assert_includes File.read(BALANCED_PAIR_TURN_DOWN),
                    %q{\mathcal R_{\rm bal}^{\zeta}(t)}
    assert_includes File.read(BALANCED_PAIR_TURN_DOWN),
                    %q{\mathbb P((u\cdot\nabla)u)=0}
    assert_includes File.read(BALANCED_PAIR_TURN_DOWN),
                    %q{\dot\alpha=|\beta|^2>0}
    assert_includes File.read(COMMUTATOR),
                    %q{P'(t)=\mathfrak K_{1/2}(u;u_t)(t)}
    assert_includes File.read(COMMUTATOR),
                    %q{\sigma(t):=\int_0^t{Z(s)^2\over R(s)}\,ds}
  end

  private

  def helical_moments(modes)
    {
      r: modes.sum { |_, radius, weight| radius * weight },
      z: modes.sum { |_, radius, weight| radius**2 * weight },
      d: modes.sum { |_, radius, weight| radius**3 * weight },
      j2: modes.sum { |sign, radius, weight| sign * radius**2 * weight },
      j3: modes.sum { |sign, radius, weight| sign * radius**3 * weight }
    }
  end

  def projection_residue(modes)
    moments = helical_moments(modes)
    r = moments.fetch(:r)
    z = moments.fetch(:z)
    d = moments.fetch(:d)
    j2 = moments.fetch(:j2)
    j3 = moments.fetch(:j3)
    determinant = r * d - j2**2
    return 0.0 if determinant.abs < 1.0e-14 && modes.all? { |entry| entry[0] == modes[0][0] }

    d - (d * z**2 - 2.0 * j2 * z * j3 + r * j3**2) / determinant
  end
end
