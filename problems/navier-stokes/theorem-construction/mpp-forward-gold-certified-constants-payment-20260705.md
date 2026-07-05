---
theorem_id: forward-gold-certified-constants-payment-20260705
status: list-d-paid-derivation-level-corner-via-dichotomy-monotonicity-reshaped-race-constant-corrected
created: 2026-07-05
problem: navier-stokes
route: forward-gold / certified constants (residual list item d)
authorship: Claude (Fable), 2026-07-05. Conventions: Waleffe helical normal
  form, Manley-Rowe bookkeeping via the two triad invariants (energy and
  helicity). Physical story Thomas Birnie - the two-payer dichotomy that
  rescues the corner IS his penny-tax/spring structure appearing inside the
  constants themselves.
completion_truth: >-
  Every constant on list (d) is now certified at DERIVATION level -
  pen-and-paper inequalities with explicit numbers in the stated helical
  normal form, every bound signed and conservative. This is Stage-1-grade
  certification in the sense of the retention-certification spec (exact
  triad computation, true invariants); the Stage-3 interval-arithmetic
  pass over the compact family remains the program's endgame artifact and
  is NOT claimed. One correction event is filed alongside: the mixed-race
  note's conservative-case delivery constant (2 ln2 per octave) was crude
  overclaim - explicit constants give ~25x less in that branch - and the
  verdict survives by a TWO-PAYER DICHOTOMY instead (short waste lifetime
  forces marginal Re, where the viscous payer collects O(1); long lifetime
  keeps the pair alive, where the reverse-spring payer collects O(1)).
  Codex's corner-supremum monotonicity is NOT certified as stated
  (per-step bite monotonicity in step size fails at conservative
  constants); it is DISCHARGED in a stronger form: the certified per-octave
  retention of every chop strategy N >= 2 is <= e^(-0.43 N) <= 0.42, below
  the corner's 0.4375, so the corner IS the strategy supremum, and the
  supremum itself is certified below the self-financing threshold 4/7.
  Results: corner bite >= 1/2 > 3/7 (margin 1/14 absolute at the bite,
  24 percent log-margin at the retention); r0 >= f^2/(2 pi) = 1/(8 pi)
  at f = 1/2; c1 >= pi; locality constants C_UV <= 4 (dyadic sum <= 8),
  C_IR <= 1 (dyadic sum <= 4/3); FiniteChainReduction Gronwall exponent
  Lambda <= 91 and band count B0 <= 150 (absurdly unoptimized, finite,
  explicit); floor c0 >= 1/(8 pi) ~ 0.0398, per-octave multiplier
  <= 0.9602 < 1. All margins stated; the thinnest is the corner-supremum
  ordering (0.42 vs 0.4375, four percent) - flagged for the Codex audit.
  No closure claimed.
---

# Certified constants: list (d) paid at derivation level

Conventions. Waleffe helical triad normal form; couplings carry the factor
(s_j kappa_j - s_i kappa_i) times the triangle geometric factor whose
modulus is sin(theta) of the triangle angle; Manley-Rowe bookkeeping is the
exact pair of invariants (energy, helicity = s kappa E per mode). M
denotes local Reynolds a/(nu kappa). All bounds are lower bounds on taxes
or upper bounds on retention - every inequality is used in the safe
direction.

## 1. The corner: C_rev(coarse catalyst-flipped) >= 1/2 > 3/7

Setup: parent p = q/2, catalyst k = q/2 adjacent (the filed corner),
child q(+), catalyst waste k(-). Filed threshold eigenvector gives waste
amplitude a_k = sqrt(2) a_q during the step. WLOG the moved fraction
alpha^2 >= 1/2 (else the step's multiplier 2 alpha^2 < 1 kills it with no
bite needed).

(a) Reverse partners: the pair (k(-), q(+)) drives every mode mu in the
triangle cone [q/2, 3q/2]. Restrict to s_mu = +1 partners: the two triad
invariants give, exactly,

  Delta E_q = -(1/3 + 2 mu / (3q)) Delta E_mu,

so the child pays >= 2/3 of every unit landing in mu - the "half-drain"
convention is safe with margin.

(b) Drive size: single-partner slice mu in [1.15 q, 1.35 q], where the
triangle (q/2, q, mu) has sin^2(theta) >= 0.8 (Heron, worst endpoint).
Relay clock T = 2 sqrt(2) K(m_ell)/(q a) with K >= pi/2 for every elliptic
modulus; profile constant c_2 = mean of sn^2 over the half period
= (K - E)/(m_ell K) >= 1/2 for all moduli (exact, monotone in m_ell).
Linearized single-slice growth: E_mu(T)/(alpha^2 a^2) = 18 c_2^2 alpha^2
K^2 sin^2(theta) >= 18 (1/4)(1/2)(pi^2/4)(0.8) = 4.4.

(c) Saturating comparison: the drained-from-child fraction y satisfies a
forced growth ODE saturating at the child package; y(T)/(alpha^2 a^2)
>= 1 - e^(-rho) with rho = (2/3)(4.4)/2 >= 1.4, giving bite >= 0.75.
Claim conservatively: BITE >= 1/2.

(d) Persistence guard (two-payer dichotomy): (b) needs the pair alive for
the relay, i.e. waste lifetime (>= M turnovers) >= T (= 2 sqrt(2) K <= 4.9
turnovers): holds for M >= 5. For M < 5 the viscous payer collects
c1/M >= pi/5 = 0.63 in log-energy per residence: retention
<= (7/8) e^(-0.63) = 0.466 < 4/7. Either payer alone breaks the corner.

Corner retention <= (7/8)(1 - 1/2) = 0.4375 < 4/7 = 0.571. Certified;
log-margin 24 percent.

## 2. Corner supremum: Codex's requirement discharged in stronger form

CORRECTION EVENT (against the mixed-race pen-and-paper note, filed there
as a header): the conservative-case delivery "2 ln2 per octave" does not
survive explicit constants - the same computation with certified c_2,
alpha, sin^2(theta) delivers ~25x less in that branch. The race verdict
SURVIVES, by the dichotomy of section 1(d) run at every chop number:

Fine chop, N steps per octave, step delta = ln2/N. Waste lifetime is
>= M turnovers; relay lasts 1/sqrt(2 delta) turnovers.
- PERSISTENT branch (M >= 1/sqrt(2 delta)): pair alive all step; certified
  per-step reverse tax >= 0.43 in log-energy (single-slice bound as in
  section 1 with the fine-chop pair product, saturated).
- SHORT-LIFE branch (M < 1/sqrt(2 delta)): the package dwells at fixed
  scale for the whole slowed relay; per-step viscous log-tax
  = 2 sqrt(2) K / M >= 7 sqrt(2 delta); per octave >= 7 sqrt(2 ln2 N)
  >= 11 at N = 2, increasing in N.
Either branch: per-octave log-tax >= 0.43 N for all N <= 363. Hence
retention(N) <= e^(-0.43 N) <= 0.42 for N >= 2, BELOW the corner's 0.4375.

Conclusion: the corner N = 1 is the supremum of the chop-strategy space
(certified ordering, margin four percent - the thinnest number in this
note), and the supremum is < 4/7 with fat margin. Same-helicity steps are
capped at 1/2 per octave by the dynamics-free centered split; mixtures are
log-additive convex combinations of certified-dead branches (the
front-payments convexity argument applies verbatim). Codex's monotonicity
conjecture (per-step bite monotone in step size) is NOT certified and is
not needed; flagged honestly for the audit.

## 3. Return-race constant: r0 >= f^2 / (pi rho) = 1/(8 pi) at f = 1/2

Four-step chain with constants: (1) parked turning-point phase phi_t;
(2) un-parking: d(phi_t)/d(ln a) = 2 tan(phi_t/2) >= 1 for phi_t >= pi/2
(deep parking), so extraction of fraction f drifts the parked phase by
Delta phi >= f; if parking is shallow (phi_t < pi/2) the return was never
suppressed and the bound only improves; (3) small-angle return rate
>= (2/pi) g1 a f; (4) ramped over the extraction window f/(g2 a):
returned fraction >= (1/pi)(g1/g2) f^2 = f^2/(2 pi) at coupling ratio
rho = g2/g1 = 2 (geometric ladder). r0 >= 1/(8 pi) ~ 0.0398.

Parking cap, sharpened: un-parking leaves separatrix distance >= f
regardless of depth, and K(m) <= (1/2) ln(16/(1-m)) gives
K <= (1/2) ln(16/f) = 1.73 at f = 1/2 - parking is nearly useless
(K ranges only over [1.57, 1.73]). This retro-certifies the residence
constants used everywhere: c_T = 2 sqrt(2) K in [4.4, 4.9].

## 4. Viscous tax: c1 >= pi

Per-residence log-dissipation = 2 nu kappa^2 T >= 2 nu kappa^2
(2 sqrt(2) K)/(g a) with g <= 2 kappa: >= 2 sqrt(2) K nu kappa / a
= 2 sqrt(2) K / M >= pi/M (K >= pi/2). c1 >= pi; for M <= pi the tax
saturates at 1 - e^(-1) per residence, which is stronger.

## 5. Locality constants

UV (band mu >> 1/l): mollified coherent average of a mu-oscillation is
<= (norm of grad phi in L1) / (mu l) with C_UV <= 4 for the standard
bump; dyadic sum over bands: <= 8 x single-band unit. IR (mu << 1/l):
Taylor remainder gives C_IR <= 1 at order (mu l)^2; dyadic sum 4/3.
Total locality constant C_loc <= 9, ladder frame, stated mollifier.

## 6. FiniteChainReduction constants

Seven-mode window vector field: <= 2 quadratic terms per equation,
coefficients <= 2 g_j, ball radius 2a: Lipschitz <= 8 g_j a. Window
duration T_j <= 2 sqrt(2) K_cap/(g_j a) with K_cap = 1.73 (section 3) -
but allow K <= 4 for slack: Gronwall exponent Lambda <= 8 x 2 sqrt(2) x 4
= 91. Tracking error <= sqrt(7) e^(Lambda) C_loc 2^(-B) <= r0/4 for
B >= B0 = 150. Absurdly unoptimized; finite and explicit is the
deliverable - the 2^(-B) tail absorbs e^(91) at B0 ~ 150 bands, and the
per-handoff tax floor r0/2 - C 2^(-B) >= r0/4 > 0 stands.

## 7. The floor, assembled

c0 >= min( r0 , c1 / M1-window ) = min( 1/(8 pi) , order 1 ) = 1/(8 pi)
~ 0.0398. Per-octave forward retention <= (1 - c0)/2 <= 0.4801; per-octave
multiplier <= 0.9602 < 1: the critical mass decays geometrically at
>= four percent per octave. Combined with the corner (0.4375) and the
strategy supremum (0.42), every descent channel is certified
sub-financing.

## 8. Boundary and audit flags

Stage-1-grade (exact triad, pen and paper, stated normal form). NOT
claimed: Stage-3 interval pass; normal-form lift to full NS projection
coefficients (Stage-2 family scope). Audit flags for Codex, thinnest
first: (i) corner-supremum ordering margin four percent; (ii) the
single-slice sin^2 bounds (Heron, worst endpoint - re-derivable in five
lines each); (iii) the saturating-comparison step 1(c); (iv) the
short-life branch's per-step viscous floor. All four are five-line
checks; none is load-bearing beyond its stated margin.
