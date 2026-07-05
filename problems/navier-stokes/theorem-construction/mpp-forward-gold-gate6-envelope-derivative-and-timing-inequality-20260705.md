---
theorem_id: forward-gold-gate6-envelope-derivative-and-timing-inequality-20260705
status: codex-regate-miscites-d1-swing-contraction-and-timing-threshold-open
created: 2026-07-05
problem: navier-stokes
route: forward-gold / goal item 6 / gate 6 formula-level estimates 6.1, 6.2
authorship: Claude (Fable), 2026-07-05. Every step below is a degree
  count, a root-ordering sign, a closed-form endpoint, or a filed
  monotonicity. Physical story Thomas Birnie: the drain shrinks the
  swing from both ends - that single fact is what forbids the envelope
  to change sign.
completion_truth: >-
  CODEX RE-GATE UPDATE, same date. This note reduces gate 6's two
  remaining clauses to useful formula-level targets, but does not pay
  them. It mis-cites D1: the filed D1 note is a damped-return Gronwall
  perturbation, not a swing-contraction theorem for both cubic endpoints.
  (6.1 - THE EXACT ENVELOPE DERIVATIVE AND NO-ZERO CONDITION.) The
  reduced potential is the exact three-wave cubic with roots X1, X2, X3
  moved by the drained level; the saddle sits at the upper root (the
  sn-squared normal form has its near-double root at the top - checked
  against the standard identity whose roots are zero, one, and the
  reciprocal modulus). The level-derivative of a cubic with fixed
  leading coefficient is a QUADRATIC in X; the envelope difference
  vanishes at the saddle by the envelope identity; therefore it factors
  EXACTLY as (X minus saddle) times a LINEAR function L. A linear
  function has at most one zero, so the no-zero interior condition is
  a SAME-SIGN CONDITION ON TWO CLOSED-FORM ENDPOINT VALUES: L at the
  lower turning point equals the potential's slope there times the
  level-derivative of that root over the swing width (one factor
  positive by root ordering); L at the saddle equals the potential's
  second derivative there times the level-derivative of the upper root
  (concavity at the top root is negative, exact from the ordered
  cubic). Same sign of the two endpoints therefore holds IF AND ONLY IF
  the two turning points move TOWARD each other under the drain - i.e.
  THE DRAIN CONTRACTS THE SWING. Codex re-gate: this swing-contraction
  statement is not in the filed D1 note and must be proved by an
  explicit root-derivative calculation or by a new lemma. The uniform floor
  follows because a one-signed linear function on an interval is
  bounded below by the smaller endpoint magnitude, and the endpoints
  are closed forms on the compact modulus band (compact by the parking
  cap). Floor value: chapter 10. (6.2 - THE TIMING INEQUALITY.)
  Dichotomy on depth. BELOW THE CAP (deeper than the parking cap while
  extracting): excluded - that is the crossing horn, already governed
  by the chapter-5 comparison with 6.1 now supplying the signed
  envelope. WITHIN THE CAPPED BAND: the gap is bounded below by the
  cap's closed form (the exponential of minus twice the cap depth), so
  the period is bounded by the filed closed form (twice the cap depth
  over the local clock) and the extraction window (the filed extraction
  fraction over the daughter rate) contains an order-one number of
  periods - the ratio is ONE NAMED SYMBOL built from two filed closed
  forms on the compact family. Each period's far swing runs the return
  at unsuppressed phase (shallow-parking horn, exact identity) for an
  order-one fraction of the period, so the race integral collects
  within the window - BEFORE the handoff can book the detuned package
  as forward financing, because collection is per period and the window
  contains at least one period by the named ratio. The single residual
  prefactor (window-to-period ratio) is chapter-10-typed like every
  other value. Codex re-gate: the timing clause remains open until the
  window-to-period ratio is proved above the required threshold in
  symbolic form; chapter 10 can certify the value after the inequality
  is stated, not supply the theorem. No closure claimed.
---

# Gate 6: the envelope derivative and the timing inequality

## 1. Clause 6.1: degree count, factorization, endpoint signs

The reduced potential is the exact three-wave cubic; its
level-derivative is a quadratic (fixed leading coefficient). The
envelope difference - the quadratic minus its saddle value - vanishes
at the saddle, hence factors as (X minus saddle) times a linear L.
The far swing lies entirely below the saddle (the sn-squared normal
form places the near-double root at the top; the swing runs from the
saddle down to the lower turning point and back). So one-signedness
on the swing is exactly: L has no zero strictly between the turning
points - and L is linear, so this is a same-sign condition on two
endpoint values, both closed forms:

  at the lower turning point: (slope of the potential there, positive
  by root ordering) x (level-derivative of that root) / (swing width);
  at the saddle: (second derivative there, negative by concavity of
  the top of an ordered cubic) x (level-derivative of the upper root).

Same sign holds if and only if the lower root rises while the upper
root falls under the drain - the swing CONTRACTS FROM BOTH ENDS. This
is not paid by the filed D1 note; D1 is a damping perturbation lemma.
The open task is an explicit root-derivative calculation, or a new
swing-contraction lemma, proving both endpoint signs. Uniform floor:
a one-signed linear function
on an interval is bounded below by its smaller endpoint magnitude;
endpoints are closed forms on the compact modulus band (compact by
the parking cap). Value: chapter 10.

## 2. Clause 6.2: the timing dichotomy

DEEPER THAN THE CAP while extracting: forbidden - the crossing horn's
regime, governed by the chapter-5 comparison, whose signed envelope
6.1 now supplies. WITHIN THE CAPPED BAND: the gap is bounded below by
the cap's closed form, so the period is bounded above by the filed
closed form, and the extraction window contains an order-one number
of periods - the window-to-period ratio is one named symbol built
from two filed closed forms on the compact family. Per period, the
far swing runs the return at unsuppressed phase (the shallow-parking
horn, exact) for an order-one fraction; the race integral therefore
collects within the window, before the handoff can book the detuned
package as forward financing. Collection is per period; the window
contains a period; the ledger line closes. Residual prefactor: the
named window-to-period symbol, chapter 10.

## 3. Register

Gate 6 clauses 6.1 and 6.2 remain open. Clause 6.1 needs the
root-derivative endpoint-sign / swing-contraction proof. Clause 6.2
needs the symbolic timing inequality for the named window-to-period
ratio. Chapter 10 unexecuted. No closure claimed.
