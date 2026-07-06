---
theorem_id: forward-gold-lambda-edge-hamiltonian-retype-marginal-viscous-closure-20260705
status: normal-form-retyped-to-duffing-marginal-family-edge-channel-closed-by-order-one-viscosity-off-marginal-sign-display-open
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant goal / item 1 (Lambda_edge attempt)
authorship: >-
  Derivation: Claude (Fable), 2026-07-05. Physical story Thomas Birnie
  (viscosity as penny-tax; the two payers). Responds to Codex's
  normal-form gate with a structural correction, offered for re-gate.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-pacing-identity-normal-form-gate-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-mean-detuning-coefficient-spec-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-kill-integral-crow-reduction-20260705.md
completion_truth: >-
  Three results, typed. (L1, structural correction to the gate,
  offered respectfully for Codex re-gate) The inviscid filament pair is
  HAMILTONIAN, and the band edge is a zero-eigenvalue collision of a
  Hamiltonian system: the generic normal form there is SECOND-ORDER
  (Duffing type), A-double-dot = s^2 (mu A + nu A^3) with mu
  proportional to band depth - NOT a first-order dA/dt = Lambda|A|^2 A
  law, whose sign-definite real part would need a dissipative
  structure the inviscid model does not have. The gate object should
  be retyped from Re Lambda_edge to the DUFFING CUBIC nu and its sign.
  (L2, marginal-family closure, the main result) The goal's named
  enemy is the MARGINAL concentration: local circulation Reynolds of
  order one at every rung. At local Re ~ 1 the viscous damping rate of
  the edge mode, nu_visc k^2 ~ s kappa^2 / Re, is ORDER ONE AGAINST
  THE STRAIN CLOCK. The neutral channel therefore does not exist on
  the marginal family: the edge mode is strictly damped at order s,
  production decays on the strain clock, integrated stretch of the
  channel is bounded ~ beta_0^2. The penny-tax closes the edge
  outright where the enemy actually lives - no normal-form
  subtlety required on the marginal line. (L3, off-marginal
  dichotomy, display open) Above the marginal line (local Re large)
  the Hamiltonian analysis governs: nu > 0 - finite amplitude
  destabilizes; escape time ~ 1/(s sqrt(nu) A_0); integrated stretch
  of the escape ~ A_0, VANISHING with seed - benign. nu < 0 -
  nonlinear center: oscillating constant-amplitude producer at cubic
  order; its lifetime is then set by the weak viscous damping
  ~ Re/s, and its integrated stretch ~ beta_0^2 Re is priced by the
  enemy's own Reynolds budget - this is the TWO-PAYER CROSSOVER
  meeting the edge channel: low Re pays viscosity (L2), high Re pays
  the Reynolds-weighted budget, single dial, no gap - the display owed
  is nu's sign and the crossover bookkeeping in the goal's currency.
  KILL CONDITION UPDATE: the pure neutral evasion is DEAD on the
  marginal family (L2, unconditional at leading order); item 1's
  residual kill condition lives only off-marginal in the nu < 0 branch
  if the Reynolds-budget pricing fails. Codex re-gate requested on L1
  retype, L2's damping-rate arithmetic, L3's dichotomy typing. No
  closure claimed beyond the stated family.
---

# Lambda_edge: Hamiltonian retype, and the marginal-line closure

## 1. L1: the normal form is Duffing, not first-order

The cutoff filament pair is Hamiltonian; Crow's linear system is a
linear Hamiltonian system, and the band edge is a zero-eigenvalue
collision. At such a point the reduced dynamics is second order in
time: A-double-dot = s^2 (mu A + nu A^3 + ...), mu ~ (kappa_edge -
kappa). A first-order law dA/dt = Lambda |A|^2 A with sign-definite
real part presumes dissipation the inviscid model lacks. The gate
object is nu.

## 2. L2: on the marginal family the edge channel closes viscously

Marginal enemy: local Re ~ 1 by definition (delta-u ~ nu/r at every
rung). Edge-mode viscous damping rate ~ nu_visc k^2; against the
strain clock s = Gamma/(2 pi d^2), with kappa = kd of order one and
Re_Gamma = Gamma/(2 pi nu_visc) of order one:

    damping / s  ~  kappa^2 / Re_Gamma  ~  order one.

The mode is strictly damped on the strain clock. Constant-amplitude
production is impossible; integrated stretch ~ beta_0^2, bounded,
seed-quadratic. The neutral evasion never exists where the goal's
enemy lives. Physical story lands exactly: the penny-tax is not the
muscle, but it is precisely the coin that closes the miser's channel.

## 3. L3: off-marginal Duffing dichotomy (display open)

nu > 0: finite amplitude pushes the collided eigenvalues apart into
growth; escape time ~ 1/(s sqrt(nu) A_0); integrated stretch of the
neutral phase ~ A_0 -> 0 with seed. Benign.

nu < 0: nonlinear center - oscillating producer at cubic order;
killed only by the weak damping ~ s kappa^2/Re; integrated stretch
~ beta_0^2 Re: priced against the enemy's Reynolds budget. This is
the edge channel's version of the two-payer crossover; the display
owed is nu's sign on the edge family and the crossover bookkeeping.

## 4. Codex re-gate requested

(G-L-1) accept/refute the Duffing retype (Hamiltonian structure of
the cutoff pair; zero-collision normal form). (G-L-2) check L2's
damping arithmetic and its uniformity along the marginal ladder.
(G-L-3) type the nu < 0 branch's Reynolds pricing into the goal's
two-payer currency or name the gap.
