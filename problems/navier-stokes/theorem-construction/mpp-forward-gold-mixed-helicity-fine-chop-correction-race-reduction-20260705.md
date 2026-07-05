---
theorem_id: forward-gold-mixed-helicity-fine-chop-correction-race-reduction-20260705
status: correction-and-race-reduction-not-proof
created: 2026-07-05
problem: navier-stokes
route: forward-gold / impedance / mixed-helicity fine-chop race
authorship: >-
  Thomas Birnie: mixed-helicity helicity-budget story and reverse-instability
  predator. Codex: correction of the mixed fine-chop composition break and
  reduction of the remaining race to explicit octave inequalities.
completion_truth: >-
  The false branch-complete octave-toll claim is corrected. Same-helicity
  scalar retention remains closed at 1/28 in the threshold-linearized helical
  normal form. Catalyst-flipped mixed-helicity scalar retention is not killed by
  chopping: its optimal conservation-ceiling step factor is 2s/(1+s), so over
  one octave the fine-chop supremum is 2^(-1/2)>1/2. Helicity conservation
  accounts for the missing toll but does not by itself close the branch. The
  remaining race has been reduced to an explicit target: either prove reverse
  leakage of at least (2^(-1/2)-1/2) of the incoming octave package, or prove an
  additional phase-suppression tax of coefficient at least 1/2 per logarithmic
  octave on the mixed fine-chop chain. This note is a strict reduction, not a
  proof of that race.
---

# Mixed-helicity fine-chop correction and race reduction

## 1. Correction

The branch-complete scalar octave claim is false. For the catalyst-flipped
mixed-helicity branch, the conservation-ceiling retained fraction for a step
with scale ratio

  s = p/q

is bounded by

  c_mix(s) <= 2s/(1+s)

in the adjacent-catalyst limit. Writing s = exp(-x), this is

  c_mix(x) <= 2/(1+exp(x)) = exp(-x/2)/cosh(x/2).

For a chopped octave with step lengths x_j and sum x_j = log 2,

  product_j c_mix(x_j)
    <= exp(-(log 2)/2) product_j cosh(x_j/2)^(-1)
    <= 2^(-1/2).

The supremum is approached by infinitely fine chopping. Thus scalar retention
alone leaves the mixed branch above the half barrier.

## 2. Helicity budget result

The missing scalar toll is exactly the helicity account. Each catalyst-flipped
step emits a same-scale opposite-helicity package: positive-helicity retained
relay plus negative-helicity catalyst dump. Because the catalyst sits at ladder
scale, helicity capacity grows with scale and can absorb the required
opposite-sign helicity at the same logarithmic cost that produces the
2^(-1/2) ceiling. The helicity budget taxes the ladder, but only down to
2^(-1/2), not to 1/2.

## 3. Race target

The branch closes only if the waste package is dynamically collected. The
required extra loss per octave is

  Delta_mix = 2^(-1/2) - 1/2.

Equivalently, since the scalar helicity/waste channel has size

  Waste_mix = 1 - 2^(-1/2),

it is enough to prove that at least the fraction

  Delta_mix / Waste_mix = 2^(-1/2)

of the mixed waste is forced into reverse leakage, echo, or phase-incompatible
nonrelay before the octave completes.

There is an equivalent phase-tax formulation. If the relay-compatible fraction
of the mixed fine-chop chain gains an additional suppression factor

  exp(-beta X)

over logarithmic descent X, then the scalar ceiling becomes

  exp(-(1/2 + beta)X).

For an octave, X = log 2. The half barrier is crossed exactly when

  beta >= 1/2,

with strict beta > 1/2 giving margin.

## 4. Mechanism to test

The candidate collector is the same-scale opposite-helicity reverse
instability created by each flipped step. Fine chopping creates N such reverse
channels per octave. To keep the scalar 2^(-1/2) retention, the ladder must
phase-suppress those N channels while simultaneously relaying. The relay-drift
lock is the proposed obstruction: active relay drives normal escape from the
alignment variety, so simultaneous suppression of the reverse channels should
cost a phase factor on the same logarithmic scale as the chopping.

## 5. Open producer

Prove one of the following on the compact unit-Re marginal family:

1. Reverse-leakage form:

   mixed fine-chop reverse channels remove at least
   2^(-1/2)-1/2 of the incoming octave package.

2. Phase-tax form:

   mixed fine-chop relay compatibility carries a phase tax beta >= 1/2 per
   logarithmic octave.

Either statement would reduce the mixed-helicity branch below the half barrier.
Neither is proved in this note.
