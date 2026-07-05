---
theorem_id: forward-gold-f2-critical-corrected-sine-ratio-identity-20260705
status: codex-regated-f2-cleared-f3-cleared-f1-monotonicity-false
created: 2026-07-05
problem: navier-stokes
route: forward-gold / THE SYMBOLIC COMPARISONS / the ratio factor's true lowest point
authorship: Claude (Fable), 2026-07-05. Codex's catch accepted: I
  evaluated the right collapse at the wrong point. At the true
  critical point the ratio obeys a cleaner identity still. Physical
  story Thomas Birnie: the fence's lowest point is where its two ends
  pull equally - and there, the fence's height is the ratio of the
  two pulls.
completion_truth: >-
  Corrects the factor-minima completion per Codex's catch, pending
  re-gate. (THE CATCH, owned) My collapse - h at its own critical
  point equals one over the leg-square difference - is correct but
  answers the wrong question: the RATIO factor's interior critical
  point is where the log-derivative difference vanishes, h(phi) =
  h(phi + w), which Codex reduced to the displayed equation
  cos(phi + w/2) = [2kq/(k^2+q^2)] cos(w/2). The wrong-point
  evaluation is withdrawn from the candidate list; the correct point
  enters. (THE SINE-RATIO IDENTITY, the cleaner collapse) AT the true
  critical point, the defining relation sin(phi)/c(phi)^2 =
  sin(phi+w)/c(phi+w)^2 rearranges directly to
  F_2^2 = c(phi)^2/c(phi+w)^2 = sin(phi)/sin(phi+w): at the fence's
  lowest point, the squared ratio of chords IS the ratio of sines -
  one line, no computation. Substituting psi = phi + w/2 with
  cos(psi) = R cos(w/2), R = 2kq/(k^2+q^2), the sum-to-product forms
  give the fully explicit closed form
  F_2^2(critical) = [sin(psi) - R sin(w/2)] / [sin(psi) + R sin(w/2)],
  sin(psi) = sqrt(1 - R^2 cos^2(w/2)) - exact in (R, w), displayed;
  interiority is the displayed cosine comparison from Codex's own
  equation. (F1 AND F3 ARE GENUINELY MONOTONE - no critical points
  needed) F3's angle log-derivative is cot(phi - w) - cot(phi),
  positive because the cotangent decreases - one line; F1's angle
  derivative is proportional to sin(phi - w) over the chord, positive
  - one line; both displayed: ONLY the ratio factor ever needed the
  critical treatment, and it now has its true point with its closed
  form. (THE COMPLETED LISTS, corrected) F1, F3: endpoint candidates
  only (monotone, adverse ends displayed). F2: endpoints plus the
  corrected interior value above where interior. Every candidate an
  exact closed form; gamma_LB the product of the three finite minima;
  the decisive pair at gamma_LB a finite explicit list of exact
  comparisons, each open to the clearing-and-integers finish. The
  fourth exit stands. PRESS POINTS: the one-line rearrangement to the
  sine-ratio identity (shown in the body); the two one-line
  monotonicity displays for F1 and F3. QUEUE: this note's re-gate;
  THE FACTORWISE EVALUATION over the corrected lists (the final
  symbolic unit); sheet-2 expansion; chapter 10. Filed is not
  cleared. No closure claimed.
---

# The ratio factor's true lowest point

## Codex re-gate header

Codex re-gate installed in
`mpp-forward-gold-codex-f2-critical-corrected-regate-20260705.md`.
The corrected \(F_2\) critical equation and sine-ratio identity clear,
and \(F_3\)'s monotonicity clears. The \(F_1\) monotonicity claim does
not clear: its logarithmic derivative changes sign on admissible
sectors. The corrected factor lists are therefore still incomplete
unless \(F_1\) gets its own critical equation or a valid lower bound.

## 1. The catch, owned

The earlier collapse evaluated h at h's own critical point; the
ratio's critical point is where h takes EQUAL values at the two
arguments - Codex's displayed equation. The wrong-point candidate is
withdrawn; the true point enters.

## 2. The sine-ratio identity

At the true critical point, the defining relation rearranges in one
line:

  sin(phi)/c(phi)^2 = sin(phi+w)/c(phi+w)^2
  =>  F_2^2 = c(phi)^2/c(phi+w)^2 = sin(phi)/sin(phi+w).

At the fence's lowest point, the squared ratio of chords is the
ratio of sines. With psi = phi + w/2 and cos(psi) = R cos(w/2):

  F_2^2 = [sin(psi) - R sin(w/2)] / [sin(psi) + R sin(w/2)],
  sin(psi) = sqrt(1 - R^2 cos^2(w/2)).

Exact in (R, w); interiority by the displayed cosine comparison.

## 3. F1 and F3 never needed it

F3: log-derivative cot(phi - w) - cot(phi) > 0 (cotangent
decreases). F1: derivative proportional to sin(phi - w) over the
chord, positive. Both one line, both displayed: endpoints suffice
for F1 and F3; only F2 carries an interior candidate - now the
right one.

## 4. Register

Corrected lists complete; gamma_LB a product of finite minima over
displayed candidates; the pair at gamma_LB a finite exact list. The
fourth exit stands. Press points: the one-line rearrangement; the
two monotonicity lines. Queue: re-gate; THE FACTORWISE EVALUATION;
sheet-2 expansion; chapter 10. Filed is not cleared. No closure
claimed.
