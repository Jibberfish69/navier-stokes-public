---
theorem_id: forward-gold-crossover-uniformity-single-dial-proof-20260705
status: single-dial-argument-derived-two-flagged-debts-damped-return-and-split-bookkeeping
created: 2026-07-05
problem: navier-stokes
route: forward-gold / theorem 2 / crossover uniformity
authorship: Claude (Fable), 2026-07-05. Physical story Thomas Birnie.
completion_truth: >-
  Crossover uniformity derived by the SINGLE-DIAL argument; two debts
  flagged, no closure claimed. The finding: both payers are functions of
  ONE variable - the local Reynolds excess M - with opposite monotonicity
  and overlapping O(1) support, so no window exists where both vanish.
  Payer 1 is identity-level: the dissipated fraction per turnover IS the
  clock ratio tau_turnover/tau_viscous = 1/M (up to geometry) - not an
  estimate, a ratio of definitions. Payer 2 activates when the spring is
  underdamped: the swap period T_swap ~ 1/(g a) falls below the viscous
  time exactly when M exceeds an EXPLICIT threshold M1 built from coupling
  constants; above 2 M1 the return survives damping with factor
  >= (1 - M1/M) (damped three-wave perturbation - flagged debt D1), and
  the un-parking theorem then yields return fraction >= r0 (1 - M1/M).
  Attenuation per octave (returned + dissipated - disjoint exit channels,
  no double count):
  A(M) >= c1/M + r0 (1 - M1/M)_+ ,
  whose minimum over all M is min(r0, c1/M1) > 0. The floor exists because
  the SAME dial that switches the return on switches the viscous tax off:
  at the switch point both are O(1). A gap would require M1 infinite
  (impossible: M1 is a finite coupling-constant ratio) or r0 = 0 (the
  return-race bound, separately certified). Composition with the
  amplitude-free Manley-Rowe ceiling: forward fraction <= 1/2 - c0/2 per
  octave (split bookkeeping of attenuation against the ceiling - flagged
  debt D2), giving geometric decay of critical mass along any ladder,
  hence the signed-height peak bound, hence smoothness via the installed
  critical-embedding import - CONDITIONAL on: r0 certification, M1 and c1
  evaluation, D1 (damped-return perturbation), D2 (split bookkeeping),
  the ladder-scaling locality exponent, and the PDE lifts (L1-prime
  general bands; handoff-before-return). The Clay-facing analytic content
  of the campaign is now: TWO explicit compact-family constants (r0, and
  the pair c1/M1), two bookkeeping debts, and the lift discipline. Every
  prior correction event stands; nothing here reopens them.
---

# Crossover uniformity: the single-dial proof

## 1. One dial, two payers

Both payers depend on one local variable: M = delta-u l / nu.

Payer 1 (viscous residence): dissipated fraction per turnover equals the
clock ratio 1/M - an identity of definitions, full strength at small M,
fading as 1/M.

Payer 2 (return-race): the spring returns only when underdamped, i.e.
when the swap period 1/(g a) is below the viscous time - precisely
M > M1, with M1 an explicit finite ratio of coupling constants. Above
2 M1, damping degrades the return by at most (1 - M1/M), and the
un-parking theorem gives returned fraction >= r0 (1 - M1/M).

## 2. The floor

Returned and dissipated are disjoint exit channels of the same
throughput; attenuation adds:

  A(M) >= c1/M + r0 (1 - M1/M)_+  >=  min( r0, c1/M1 )  =: c0 > 0.

The minimum is attained either as M -> infinity (pure return-race, r0) or
at the switch point M = M1 (pure viscous, c1/M1). No window exists where
both vanish, because one dial controls both with opposite monotonicity:
the viscous tax at the point where the return reaches half strength is
still c1/(2 M1) = O(1). A gap requires M1 = infinity (impossible - finite
coupling ratio) or r0 = 0 (the separately certified return-race bound).

## 3. Composition and consequence

Manley-Rowe holds the forward share at <= 1/2 at every amplitude
(dynamics-free). Attenuation c0 comes out of the throughput; worst-case
split bookkeeping gives forward <= 1/2 - c0/2 per octave (debt D2). Then
critical mass along any ladder obeys h' <= (1 - c0) h: geometric decay,
uniform peak bound on the signed height, smoothness via the installed
critical-embedding import. The T*+ schedule and Silver's pass-or-exit
grammar close the Clay-facing statement CONDITIONALLY on the named debts.

## 4. Debts, exactly (nothing hidden)

D1: damped three-wave perturbation - the return survives damping with
factor >= (1 - M1/M) for M >= 2 M1 (Jacobi-elliptic plus linear damping;
real but bounded work). D2: attenuation-vs-ceiling split bookkeeping.
Constants: r0 (return-race, compact family), c1 and M1 (clock and
coupling ratios, explicit). Inherited: ladder-scaling locality exponent;
PDE lifts (L1-prime general bands; handoff-before-return). This is the
complete list; the campaign's remaining analytic content is exactly it.
