---
theorem_id: forward-gold-front-loading-concavity-proved-20260705
status: front-loading-proved-symbolically-perspective-plus-polynomial-integer-comparison-regate-requested
created: 2026-07-05
problem: navier-stokes
route: forward-gold / THE SYMBOLIC COMPARISONS / the front-loading display, proved
authorship: Claude (Fable), 2026-07-05. Exact algebra end to end; the
  final line is an integer comparison. Physical story Thomas Birnie:
  the required side spends its appetite early - the toll road is
  steepest at its gate - and the tower's own arithmetic signs the
  proof at the same corner it signed the values.
completion_truth: >-
  PROVES the front-loading display symbolically, pending re-gate - the
  load-bearing item of tier 2, demanded by Codex and by my own
  correction. CLAIM: the required increments are decreasing on the
  window - equivalently, N ln c*(2^(-1/N)) is concave in N - so the
  maximal increment is the FIRST one, Delta_req(3), the filed exact
  form. PROOF, four exact steps. (STEP 1, PERSPECTIVE) With x = 1/N,
  the function is N times H(1/N) for H(x) = ln c*(2^(-x)): the
  perspective construction preserves concavity, so concavity in N
  reduces to CONCAVITY OF H IN x on the window's x-range (zero to one
  third]. (STEP 2, REDUCTION TO ONE LOG-CONVEXITY) H(x) = ln 2 - 3x
  ln 2 - ln D(x) with D(x) = 2 s^3 + 1 - s, s = 2^(-x): the linear
  part has no curvature, so H is concave iff ln D is CONVEX. (STEP 3,
  THE POLYNOMIAL) Writing derivatives via ds/dx = -(ln 2) s and
  clearing the positive factor (ln 2)^2 s / D^2, the log-convexity of
  D is equivalent to the positivity of ONE cubic polynomial in s:
  psi(s) = -8 s^3 + 18 s^2 - 1,  on s in [2^(-1/3), 1) - the algebra
  displayed in the body: the quintic terms cancel exactly between
  D'' D and (D')^2, leaving the cubic. (STEP 4, POSITIVITY BY EXACT
  ARITHMETIC) psi is increasing on the interval (its derivative is
  12 s (3 - 2 s), positive below three-halves), so its minimum is at
  the left endpoint s = 2^(-1/3), where THE CUBE IS EXACTLY ONE HALF:
  8 s^3 = 4 exactly, and psi = 18 x 2^(-2/3) - 5, positive iff
  18^3 > 125 x 4, i.e. 5832 > 500 - an INTEGER comparison, true with
  an order-of-magnitude margin. QED. CONSEQUENCES: (i) front-loading
  holds - max increment = Delta_req(3), the filed exact form; (ii)
  TIER 2 IS NOW UNCONDITIONAL in its structure (given clearance ten,
  the delivered-increment bound): the difference is nondecreasing
  whenever b(Lambda(3)) >= Delta_req(3), and the window then passes
  IF AND ONLY IF T_del(3) >= T_req(3) - the one-point equivalence
  stands on proved legs; (iii) my correction's conditional is
  DISCHARGED - tier 2's thresholds are now genuinely the weaker ones,
  as originally claimed but this time proved. SHEET-1 REMAINDER,
  now exactly two evaluations at one point: b(Lambda(3)) against
  Delta_req(3) (the monotonicity leg) and T_del(3) against T_req(3)
  (the decision leg) - both sides of both in filed exact forms; if
  the pair resists symbolic resolution, the interval pass's entire
  job is TWO comparisons at ONE point. PRESS POINTS: the quintic
  cancellation in step 3 (five lines of displayed algebra - the body
  shows every term); the perspective-preserves-concavity citation
  (classical, one line). Chapter 10 unchanged. Filed is not cleared.
  No closure claimed.
---

# Front-loading, proved

## 1. Perspective

x = 1/N; the object is N H(1/N), H(x) = ln c*(2^(-x)). Perspective
preserves concavity: concavity in N reduces to concavity of H on the
x-window.

## 2. One log-convexity

H(x) = ln 2 - 3x ln 2 - ln D(x), D = 2 s^3 + 1 - s, s = 2^(-x).
Linear part flat: H concave iff ln D convex.

## 3. The polynomial

With s' = -(ln 2) s:
  D'  = (ln 2) s (1 - 6 s^2),
  D'' = (ln 2)^2 s (18 s^2 - 1).
Log-convexity iff D'' D - (D')^2 >= 0; dividing by (ln 2)^2 s:

  (18 s^2 - 1)(2 s^3 + 1 - s) - s (1 - 6 s^2)^2
  = [36 s^5 - 20 s^3 + 18 s^2 + s - 1] - [36 s^5 - 12 s^3 + s]
  = -8 s^3 + 18 s^2 - 1  =: psi(s).

The quintics cancel exactly; one cubic remains.

## 4. Positivity, by integers

psi'(s) = 12 s (3 - 2 s) > 0 below three-halves: psi increasing on
[2^(-1/3), 1). At the left endpoint the cube is exactly one half:
8 s^3 = 4, so psi = 18 x 2^(-2/3) - 5 > 0 iff 18^3 > 500, i.e.
5832 > 500. True, with room to spare. QED.

## 5. What stands

Front-loading proved: max increment = Delta_req(3). Tier 2's
equivalence stands on proved legs; my correction's conditional is
discharged - the weaker thresholds are real. Sheet 1's remainder is
TWO evaluations at ONE point: b(Lambda(3)) vs Delta_req(3), and
T_del(3) vs T_req(3) - both in filed exact forms; the pass, if
needed, is two comparisons at one point. The toll road is steepest
at its gate, and the tower signed the proof at the same corner it
signed the values.

## 6. Register

Proof filed pending re-gate; press points: the quintic cancellation
(displayed); the perspective citation. Queue: re-gate; the two
one-point evaluations; sheet-2 expansion; chapter 10. Filed is not
cleared. No closure claimed.
