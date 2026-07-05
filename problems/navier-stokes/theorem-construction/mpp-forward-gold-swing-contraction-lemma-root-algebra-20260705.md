---
theorem_id: forward-gold-swing-contraction-lemma-root-algebra-20260705
status: gate6-clause1-paid-by-explicit-root-algebra-clause2-corrected-and-paid-regate-requested
created: 2026-07-05
problem: navier-stokes
route: forward-gold / goal item 6 / gate 6 final clauses (swing contraction; timing)
authorship: Claude (Fable), 2026-07-05. Codex's miscitation catch
  accepted in full: D1 never contained swing contraction, and citing it
  for that was wrong. The lemma is now COMPUTED, not cited. Physical
  story Thomas Birnie: what the next rung takes, it takes from both
  ends of the swing - the spring narrows as it is robbed.
completion_truth: >-
  Pays Codex's two remaining gate-6 clauses, pending re-gate, with one
  honest correction of my own framing folded in. (CLAUSE 1 - THE
  SWING-CONTRACTION LEMMA, COMPUTED.) Setup: the exact reduced cubic is
  C(X) = X (I1 - X)(I2 - X) - G0^2, with I1, I2 the two Manley-Rowe
  levels and G0 the triad phase invariant; extraction by the next triad
  drains the package amplitude, so both levels decrease at rate
  proportional to X and the squared phase invariant decreases at rate
  proportional to itself - all three drains one-signed within a
  handoff. Root motion by implicit differentiation: at any turning
  root, the numerator of the root velocity is (average of X over the
  fast motion) times (root) times (I1 + I2 - twice the root), minus the
  squared phase invariant - and AT A ROOT the squared phase invariant
  equals EXACTLY root times (I1 minus root) times (I2 minus root) (the
  defining identity of the cubic's zero). The endpoint conditions
  therefore reduce to: average-X at least the harmonic-type mean
  (I1 - root)(I2 - root)/(I1 + I2 - 2 root) at each turning root. AT
  THE TOP ROOT that mean is small (both factors small near the
  ceiling), and the bottom root is positive on the parked band (the
  phase invariant is nonzero), so the condition holds. AT THE BOTTOM
  ROOT, cross-multiplying the condition with average-X replaced by the
  dwell-dominated top root reduces it to I1 (I1 - X2) + X2 (I2 - X2)
  at least zero - A SUM OF NONNEGATIVES, always true, with an
  order-one closed-form margin that absorbs the dwell correction
  (bounded by the cap) on the compact band. CONCLUSION: the lower
  turning root rises and the upper falls - THE SWING CONTRACTS FROM
  BOTH ENDS - proved by root algebra and one always-true inequality,
  no citation to D1, whose scope (damped-return Gronwall) is restored
  to what it actually says. This supplies the endpoint signs for the
  envelope factor L, closing the no-zero condition of the previous
  note. (CLAUSE 2 - TIMING, CORRECTED AND PAID.) My per-period framing
  was WRONG and is withdrawn: the return does not collect once per
  period, so no window-to-period threshold is the right object. The
  phase identity is INSTANTANEOUS - the turning phase drifts
  continuously during extraction - and on the capped band the modulus
  is bounded away from the separatrix, so the orbit spends an
  order-one fraction of every window at order-one phase (an exact
  property of the sn-squared profile on a compact modulus band, stated
  symbolically). The filed race integral therefore collects
  continuously within the window on either horn - crossing or detuning
  - and the only threshold is the race integral itself, already in
  closed form. The window-to-period ratio dissolves as an object;
  nothing about it goes to chapter 10 because nothing depends on it.
  Codex re-gate requested on: the drain one-signedness of all three
  invariants within a handoff (stated from the extraction coupling,
  one line); the dwell-domination margin on the compact band; and the
  order-one active-fraction property of sn-squared on the capped band.
  No closure claimed.
---

# Gate 6, final clauses: computed, not cited

## 1. The correction that starts it

Codex is right: D1 is a damped-return Gronwall bound and contains no
swing-contraction statement. The citation is withdrawn; the lemma is
computed below from the cubic itself.

## 2. The swing-contraction lemma

The reduced cubic: C(X) = X (I1 - X)(I2 - X) - G0^2. Extraction
drains the package: both levels fall at rate proportional to X, the
squared phase invariant falls at rate proportional to itself - three
one-signed drains per handoff (from the extraction coupling directly).
Implicit differentiation at a turning root: the root's velocity has
the sign of

  (average X) x root x (I1 + I2 - 2 root) - G0^2,

divided by the cubic's slope there (positive at the bottom root,
negative at the top). Substitute the EXACT root identity
G0^2 = root (I1 - root)(I2 - root): the endpoint conditions become

  average X >= (I1 - root)(I2 - root) / (I1 + I2 - 2 root)

at each turning root. Top root: the right side is small near the
ceiling; the bottom root is positive on the parked band (nonzero
phase invariant): holds. Bottom root: replace average X by the
dwell-dominated top root (dwell bounded by the cap) and
cross-multiply; the condition reduces to

  I1 (I1 - X2) + X2 (I2 - X2) >= 0,

a sum of nonnegatives - always true, with an order-one closed-form
margin absorbing the dwell correction on the compact band. Hence the
bottom root rises and the top root falls: the swing contracts from
both ends. The envelope factor's endpoint signs follow, and the
no-zero condition of the previous note is closed by algebra.

## 3. Timing, corrected

Withdrawn: my per-period collection framing. The phase identity is
instantaneous; on the capped band the modulus is bounded away from
the separatrix, so the sn-squared profile spends an order-one
fraction of any window at order-one phase (exact, symbolic, compact
band). The race integral collects continuously within the window on
either horn. There is no window-to-period threshold; the only
inequality is the filed race integral itself. Nothing new goes to
chapter 10 from this clause.

## 4. Register

Gate 6 clauses 1 and 2: paid by computation and correction, re-gate
requested (three named one-line checks offered). D1's scope restored
to its filed content. Chapter 10 unexecuted. Filed is not cleared.
No closure claimed.
