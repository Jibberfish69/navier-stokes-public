---
theorem_id: forward-gold-return-race-elliptic-writeup-and-w1-20260705
status: elliptic-writeup-filed-exposition-grade-w1-paid-by-packet-decomposition
created: 2026-07-05
problem: navier-stokes
route: forward-gold / residual list item c / elliptic write-up + W1
authorship: Claude (Fable), 2026-07-05. The mechanism is Thomas Birnie's
  spring; every formula below is the spring made exact - periodicity IS
  payback, the separatrix IS parking, and the log-divergent period IS the
  sands of time running slow at the turning point.
completion_truth: >-
  The chain-level rigorous write-up of the return-race, in closed elliptic
  form, plus the W1 payment. Every step of the four-step chain is now an
  identity or inequality about Jacobi elliptic functions on the exact
  three-wave system - no "~" remains at chain level; the crude constants
  of the certification note are re-derived here from the closed-form
  solutions. W1 (dominant-mode-per-band truncation) is PAID by packet
  decomposition: within one window the ladder increment at a band is one
  coherent helical packet BY DEFINITION of the ladder concentration frame
  (support one correlation volume); sibling packets of other lineages are
  spatially disjoint (co-location = merger = relabel), overlap tails are
  priced by the certified locality constants, and the DIFFUSE remainder
  (defect mass at a band that concentrates on no packet) has local
  Reynolds below marginal by the same volume counting, so payer 1 kills
  it - the dichotomy again. Honest residues, named: (R1) the
  measurable-selection write-up of the lineage decomposition at PDE level
  (standard, tedious, exposition only); (R2) the normal-form lift
  (Waleffe form to full NS projection coefficients) - Stage-2 family
  scope, shared with every constant; (R3) Stage-3 interval pass. No
  closure claimed.
---

# The return race in closed form, and the W1 payment

## Correction header, 2026-07-06

The Gate-6 cubic normalization audit
`mpp-forward-gold-codex-gate6-cubic-normalization-jacobian-interface-20260706.md`
fixes the root convention used by the elliptic display below. For the
Gate-6 algebraic cubic
\[
P(X)=X(I_1-X)(I_2-X)-G_0^2,
\]
the positive swing interval lies between the first two roots
\[
r_-<X<r_+,
\]
and the third root \(r_*\) sits above the interval. Thus the closed form
in Section 2 should be read as
\[
X(t)=r_-+(r_+-r_-)\operatorname{sn}^2(\lambda t;m),
\quad
m={r_+-r_-\over r_*-r_-},
\quad
\lambda^2=g^2(r_*-r_-).
\]
The normalized roots are \(0,1,1/m\). The earlier shorthand
\(X_1\le X_2\le X\le X_3\) is not the Gate-6 \(P\)-root order.

## 1. The exact triad and its invariants

Waleffe helical normal form for one triad (kappa_1 < kappa_2 < kappa_3,
helicities s_i):

  da_1/dt = g1 conj(a_2 a_3),  da_2/dt = g2 conj(a_3 a_1),
  da_3/dt = g3 conj(a_1 a_2),

with g_i proportional to (s_j kappa_j - s_k kappa_k) times the common
triangle factor. Invariants: E = sum |a_i|^2 and H = sum s_i kappa_i
|a_i|^2 (energy, helicity); equivalently the two Manley-Rowe combinations
|a_i|^2/g_i - |a_j|^2/g_j. These are the SAME invariants that produced
the ceilings - one bookkeeping, used twice.

## 2. Closed-form solution: the spring exact

Set X = |a_3|^2 (the transferred package). Then

  (dX/dt)^2 = 4 g^2 (X-r_-)(r_+-X)(r_*-X),

a cubic with positive swing interval \(r_-\le X\le r_+\) and third root
\(r_*>r_+\), so

  X(t) = r_- + (r_+ - r_-) sn^2(lambda t ; m),
  m = (r_+ - r_-)/(r_* - r_-),   lambda^2 = g^2 (r_* - r_-).

Period 2K(m)/lambda: PERIODIC AT EVERY AMPLITUDE - the vortex peaks and
pays back; nothing tightens itself. Transfer completes only as m -> 1
(separatrix), where K(m) = (1/2) ln(16/(1-m)) + o(1) diverges: complete
theft takes infinite patience.

## 3. Parking, exactly

A completed swap sits at X = X_3, where dX/dt = 0: the unstable turning
point. Near-separatrix tuning (1 - m = epsilon) makes the dwell near X_3
last a fraction 1 - O(1/K) of the period, with K = (1/2) ln(16/epsilon):
parking depth is LOGARITHMIC in tuning precision - the only refuge, and
an expensive one.

## 4. Un-parking, exactly (the relay-drift lock's third job)

The turning phase phi_t satisfies cos(phi_t) = 1 - E_swap/(g^2 A^2)-form;
differentiating, d(phi_t)/d(ln A) = 2 tan(phi_t/2) >= 1 whenever
phi_t >= pi/2 (any parking worth the name). Extraction of fraction f by
the next triad moves the daughters' amplitude by f/2 in relative terms:

  Delta phi >= f x tan(phi_t/2) >= f/2 x 2 = f (deep parking), and
  shallow parking (phi_t < pi/2) never suppressed the return at all.

Equivalently in elliptic terms: extraction moves the invariants, hence
the roots X_i, hence m; the separatrix distance after extraction is
>= f REGARDLESS of initial epsilon. This is the parking cap in closed
form: K_after <= (1/2) ln(16/f), = 1.73 at f = 1/2. Parking survives
extraction only in the band K in [pi/2, 1.73] - nearly useless.

## 5. The race integral

Post-un-parking return rate: dE_return/dt = 2 g1 |a|^2 X sin(phi) and
sin(phi) >= (2/pi) phi for phi <= pi/2, so with phi ramping linearly to
Delta phi >= f over the extraction window Delta t = f/(g2 a):

  returned >= integral_0^{Delta t} (2/pi) g1 a (f t/Delta t) dt,

and, in the lane-law normalization used by the reshape note,

  r0 >= f^2/(2 pi rho).

Every factor is a coupling ratio or a phase increment; amplitude cancels -
the bound is amplitude-free, as the physical story requires (the spring
does not care how big it is). Fixed numerical evaluations are sidecar.

## 6. The five-mode chain and per-handoff uniformity

Two triads sharing the middle mode; the second triad's extraction is the
time-dependence of the first's invariants. Twist locality (frequencies
amplitude-linear in OWN members) makes sections 3-5 apply verbatim at
every rung; bounded degree (each amplitude in <= 2 triads) costs at most
factor 2: r0(L) >= r0(2)/2 for every chain length. The per-handoff
Gronwall of the FiniteChainReduction note transports this to the
eta-autonomous seven-mode window with tax >= r0/2 - C 2^(-B).

## 7. W1: the packet decomposition

The five-mode reduction uses one complex amplitude per band. Payment:

(i) CONCENTRATED LINEAGE: the ladder frame defines the increment at band
mu as one coherent helical packet on one correlation volume (support
mu^(-3)) - within one window, one band, one lineage, "dominant mode" is
not a truncation but the object itself.
(ii) SIBLINGS: packets of distinct lineages at the same band are
spatially disjoint (co-located packets ARE one packet - merge and
relabel); their cross-forcing lives in overlap tails, priced by the
certified locality constants (C_loc <= 9, geometric in separation).
(iii) DIFFUSE REMAINDER: defect mass at band mu spread over N >> 1
correlation volumes has per-volume amplitude smaller by N^(-1/2), hence
local Reynolds below marginal for N above an explicit threshold: payer 1
collects at saturated rate (1 - e^(-1) per residence). Diffuse enemies
are viscous prey - the bathtub principle: spread-out eddies cannot
overcome the tax that carries them.

Residues named in the frontmatter: R1 measurable selection (exposition),
R2 normal-form lift (Stage 2), R3 interval pass (Stage 3).
