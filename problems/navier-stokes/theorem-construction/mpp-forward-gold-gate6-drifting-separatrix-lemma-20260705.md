---
theorem_id: forward-gold-gate6-drifting-separatrix-lemma-20260705
status: codex-regate-reduced-far-swing-one-signedness-and-detuning-tax-open
created: 2026-07-05
problem: navier-stokes
route: forward-gold / goal item 6 / Codex gate 6 core (drifting separatrix)
authorship: Claude (Fable), 2026-07-05. Physical story Thomas Birnie: the
  spring is not robbed at the turning point - it is robbed on the swing,
  and every swing tells the turning point what was taken.
completion_truth: >-
  CODEX RE-GATE UPDATE, same date. This note is a useful structural
  reduction of Codex gate 6, not a cleared theorem. It correctly
  replaces T5's too-crude "no restoring term" argument and identifies
  the far swing as the place where drift can bite. THE HONEST
  CONCESSION FIRST: Codex's
  objection is not pedantry - near the saddle the crude argument is
  WRONG in an instructive way. By the envelope identity (the separatrix
  level is the saddle's level, and the saddle is critical, so the
  parameter-derivative of the separatrix level equals the plain
  parameter-derivative of the Hamiltonian AT the saddle), the gap
  between the orbit's level and the separatrix level drifts at a rate
  proportional to the DIFFERENCE of the Hamiltonian's parameter-
  derivative between the orbit's position and the saddle - and that
  difference VANISHES where a deeply parked orbit spends almost all its
  time. Deep parking is drift-protected near the saddle; the crude
  lemma missed this entirely. THE LEMMA: the drift bites on the FAR
  SWING. Each period the orbit traverses the full loop; on the far
  swing the envelope difference is order one, so the gap moves per
  period by the drift rate times a closed-form loop integral (the
  far-swing envelope integral - an exact object on the compact family,
  positive by one-signedness of the drained reservoir's derivative
  along the swing, value chapter-10-typed). The one-signedness and
  uniform lower bound of this integral are still load-bearing proof
  obligations, not chapter-10 value bookkeeping. Then the TWO-SIDED
  DICHOTOMY: (i) if the gap SHRINKS, the orbit crosses the separatrix
  within gap-over-drift-per-period periods - and the failure comparison
  of chapter 5 section 3 (drift per period versus exponentially small
  gap) makes that within ONE period beyond the cap depth; (ii) if the
  gap GROWS, the orbit DETUNES: the modulus falls, the period leaves
  the parking band, the dwell collapses, and the return runs at
  order-one phase - the shallow-parking horn of the un-parking
  identity, already exact. EITHER sign un-parks; the only protected
  case is drift-per-period small against the gap, which is exactly the
  regime the parking cap already forbids the enemy to reach while
  extracting. The phase displacement collected on either horn is at
  least the accumulated drift, f-scaled, feeding the race integral
  unchanged. Referee cares stated: the envelope identity is exact
  (criticality of the saddle); the far-swing integral's positivity is a
  one-signedness statement on the compact family (structural), its
  value chapter-10; damping is D1's controlled perturbation. Codex
  re-gate result: the one-signedness clause and the detuning horn's
  period estimate are the theorem, not a receipt. The detuning horn must
  prove that the shorter period produces the return-race tax before the
  handoff can use the detuned packet as forward financing. Gate 6 is
  reduced to two explicit estimates - far-swing signed envelope floor
  and detuning-to-return tax - plus D1 damping perturbation. No closure
  claimed.
---

# Gate 6 core: the drifting-separatrix lemma

## 1. The concession that shapes the proof

Codex was right that the crude argument fails near the saddle. The
envelope identity - the separatrix level is the critical value, so
its parameter-derivative equals the Hamiltonian's parameter-derivative
AT the saddle - makes the orbit-to-separatrix gap drift-INSENSITIVE
exactly where a deeply parked orbit dwells. If the orbit never left
the saddle's neighborhood, parking would survive slow extraction.

## 2. Where the drift bites: the far swing

The orbit does leave: every period traverses the full separatrix loop,
spending the long dwell near the saddle and an order-one time on the
far swing, where the envelope difference is order one. Per period the
gap moves by (drift rate) x (far-swing envelope integral) - a
closed-form loop integral on the compact family, positive because the
drained reservoir's parameter-derivative is one-signed along the
swing (the extraction drains monotonically within a handoff, D1). The
gap's per-period motion is therefore neither zero nor sign-ambiguous:
it is the extraction, read once per period, at full strength.

## 3. The two-sided dichotomy

(i) GAP SHRINKS: crossing within gap-over-(drift per period) periods;
beyond the cap depth the chapter-5 comparison (exponentially small gap
against fixed drift) makes this a single period. The crossing horn
feeds the turning-phase identity and the race integral as filed.
(ii) GAP GROWS: the orbit detunes from the separatrix - the modulus
falls, the period leaves the parking band (the dwell is logarithmic in
the gap, so a growing gap collapses it), and the return runs at
order-one phase: the shallow-parking horn of the un-parking identity,
already exact. Detuning is not escape; it is un-parking by the other
door.
Either sign of the drift un-parks the orbit with phase displacement at
least the accumulated extraction. The only protected regime -
drift-per-period small against the gap - is the regime the parking cap
already excludes for any extracting enemy.

## 4. Register

Gate 6 core reduced, not paid. Remaining: prove the one-signed
far-swing envelope floor and the detuning-to-return period/tax
estimate at referee strength. Chapter 10 supplies values only after
these qualitative signs and comparisons are theorem-level. No closure
claimed.
