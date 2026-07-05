---
theorem_id: forward-gold-composition-theorem-and-alignment-lemma-attack-20260705
status: composition-ledger-filed-same-helicity-toll-mixed-fine-chop-open
created: 2026-07-05
problem: navier-stokes
route: forward-gold / impedance / composition and entropy-nonexpansion lemma
authorship: >-
  Thomas Birnie (physical story, TFE.19 entropy nonexpansion, no-self-
  tightening). Triad correction: Codex 2026-07-05 (asymmetry factor). 
  Composition ledger, per-octave reformulation, Liouville skeleton: Claude
  (Fable).
completion_truth: >-
  Corrected and honest state. (1) Codex's correction is verified and adopted:
  the marginal eigenvector ratio carries sqrt((q-p)/(p-k)); downscale share
  c_down = k^2(p-k) / (k^2(p-k) + q^2(q-p)); the universal sub-half claim
  holds only for centered same-helicity triads; asymmetric near-degenerate
  triads (p -> q, distant catalyst k) push c_down toward 1. (2) Same-helicity
  repair: high-retention same-helicity triads make vanishing scale progress;
  optimizing over catalyst gives a closed per-octave toll, with chopping not
  helping in that branch. Correction: the later catalyst-flipped mixed-helicity
  computation breaks the branch-complete claim. Mixed fine chopping tends to
  2^(-1/2)>1/2, so scalar retention alone does not kill that channel. Its live
  burden is phase/reverse-instability debt under relay-drift transversality.
  (3) Composition ledger: recycling killed by parent depletion on the marginal
  line; multiplicity killed by
  echo-channel orthogonality (echoes land on distinct wavevectors, add
  incoherently - Pythagorean, no cancellation); coherent M-fold focusing is
  the unique survivor and reduces to the entropy-nonexpansion lemma. (4)
  Lemma attack skeleton: Galerkin-truncated Euler conserves phase volume
  (classical Liouville property); viscosity contracts volume uniformly and
  alignment-blind; therefore the inviscid dynamics cannot mint aligned-set
  measure and the viscous part cannot prefer it - measure-level entropy
  nonexpansion. Open gap: trajectory-level version (dwell-time bound in the
  codimension-M aligned set); measure nonconcentration does not yet forbid a
  single orbit from lingering. No closure claimed.
---

# Composition theorem and the alignment-lemma attack

## Correction header

This note predates the mixed-helicity fine-chop correction. Its same-helicity
per-octave repair remains valid, but the broad statement that chopping cannot
evade the toll is false for the catalyst-flipped mixed branch. In that branch,
fine chopping gives scalar retention tending to 2^(-1/2), above the half
self-financing barrier. The live composition burden is therefore the
mixed-helicity phase/reverse-instability race, not scalar retention alone.

## 1. Corrected atomic input (Codex correction adopted)

Marginal eigenvector: |x_k/x_q| = (q/k) sqrt((q-p)/(p-k)), hence

  c_down = k^2(p-k) / ( k^2(p-k) + q^2(q-p) ).

Centered (p-k = q-p): c_down = k^2/(k^2+q^2) < 1/2 always; (3,4,5) = 9/34.
Asymmetric (q-p -> 0, distant catalyst k): c_down -> 1. The sub-half law is
NOT universal per triad.

## 2. Same-helicity repair: toll per octave, not per step

High-retention triads are exactly the vanishing-progress triads. For
fractional scale progress delta = (q-p)/q with a generic catalyst
(k ~ q/2): c_down ~ 1 - C*delta, C order ten. Echo toll is linear in
progress, so same-helicity descent through one octave pays a fixed accumulated
toll independent of how finely the ladder chops its steps:

  retention per octave <= exp(-c_oct), c_oct > 0 (conjectured uniform).

The supremum-1/2 statement survives in the same-helicity branch as a rate law:
the medium's cut is proportional to log-scale progress. The mixed-helicity
catalyst-flipped branch does not obey this scalar composition law; it requires
the separate phase/reverse-instability budget.

## 3. Composition ledger

Recycling: killed on the marginal line by parent depletion (O(1) passes -
source drains on the same clock). Multiplicity: echoes from distinct
triads land on distinct wavevectors - orthogonal channels, incoherent
addition, no phase arrangement cancels them (B-coh at ensemble level,
derived). Coherent focusing: M parents pumping one target coherently
requires M-fold phase alignment of the parent packet, self-assembled and
maintained against pressure re-coordination. Unique surviving loophole.

## 4. The lemma and its skeleton

Lemma (entropy nonexpansion / no minted alignment; TFE.19, no-self-
tightening): an unforced packet cannot grow its own M-fold phase
alignment; pressure rotates accessibility, never mints it.

Skeleton: (i) Galerkin-truncated Euler conserves phase-space volume - the
classical Liouville property of the truncated system; the inviscid flow
transports aligned-set measure, never creates it. (ii) Viscosity contracts
phase volume uniformly (rate independent of configuration angle) - it is
alignment-blind and cannot prefer aligned sets. (iii) Hence at measure
level the aligned fraction of accessibility is nonincreasing: entropy
nonexpansion holds statistically.

Open gap, stated exactly: the enemy is one trajectory, not a measure. The
aligned set needed for M-fold focusing has codimension ~ M; Liouville
preservation bounds its measure but not yet a single orbit's DWELL TIME in
it. The remaining theorem is the dwell-time bound: an orbit of the coupled
system cannot linger in the shrinking aligned set for the O(1) turnover
per rung the relay requires, uniformly along a ladder. That is the last
formal residue of the composition question.

## 5. Status

Adopted first correction; same-helicity per-octave reformulation installed;
later correction demotes branch-complete scalar closure because catalyst-
flipped mixed fine chopping survives scalar retention. Two of three
conspiracies remain structurally controlled; the third is now the mixed-
helicity phase/reverse-instability race under trajectory dwell-time /
relay-drift transversality.
