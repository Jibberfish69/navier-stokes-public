---
theorem_id: forward-gold-wkb-beltrami-vector-moment-minimal-gadget-sideband-leak-20260706
status: exact-local-vector-cancellation-gadget-leaks-unique-sidebands
later_followup: >-
  The general finite-graph reason for this sideband leak is isolated in
  mpp-forward-gold-wkb-beltrami-output-maximal-sideband-shield-criterion-20260706.md:
  output-maximal resonant cancellations must degenerate their norm-increasing
  off-diagonal sidebands. The full finite graph closure is later supplied by
  mpp-forward-gold-wkb-beltrami-finite-duplicate-sideband-growth-closure-20260706.md:
  every dangerous duplicate creates a larger dangerous sideband.
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB bath construction-exclusion
target_object:
  - VectorMomentLocalCancellation.MINIMAL-GADGET.NOT-NEUTRAL
  - MultiRadiusResonantGraph.SIDEBAND-CLOSURE-REQUIRED
  - BeltramiFiniteGraphConstructionExclusion.REMAINING-DOOR
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-radius-sum-vector-moment-correction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-output-maximal-sideband-shield-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-shared-output-radius-sum-grading-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-nonresonant-cross-shell-cancellation-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-finite-duplicate-sideband-growth-closure-20260706.md
completion_truth: >-
  Exact finite-gadget obstruction only. The full 3D vector-moment correction
  showed that two radius-sum grades can cancel one fixed output when one grade
  carries multiple transverse azimuths. This note realizes the smallest such
  local cancellation as an integer Fourier gadget at output m=(24,0,0), using
  one s/|m|=3 pair and two s/|m|=4 pairs. With vector moments
  R_3=e_2 and R_4=-11e_2/15-i e_3/15, the selected output cancels. However,
  the same six modes create unique dangerous cross-shell sidebands, for example
  q_3+q_{4,e_3}=(0,-32,-45), fed by exactly one noncollinear cross-shell pair.
  The nonresonant two-mode theorem makes that sideband coefficient nonzero
  whenever the selected-output cancellation amplitudes are nonzero. Therefore
  the minimal local vector-moment cancellation gadget is not a finite neutral
  Beltrami bath. This proves no general finite graph exclusion, no WKB bath
  exclusion, no same-fluid custody theorem, no confinement constant, and no MPP
  closure.
---

# Minimal vector-moment cancellation leaks sidebands

## 1. Object

The vector-moment correction showed that full 3D fixed-output cancellation is
not scalar. A local output can cancel by using more than one transverse azimuth:
\[
  T_3 e_2+T_4\left(-{11\over15}e_2-{i\over15}e_3\right)=0
  \tag{VML.1}
\]
after normalizing \(|m|=1\).

This note checks the next question:
\[
  \text{Does that local vector cancellation already give a finite neutral}
  \quad
  \text{Beltrami cloud?}
  \tag{VML.2}
\]

The answer is no. The same modes leak unique sidebands.

## 2. Integer realization of the local cancellation

Scale the normalized output to
\[
  m=(24,0,0).
\]

Use these three same-output pairs:
\[
  p_3=(24,32,0),\qquad q_3=(0,-32,0),
  \tag{VML.3}
\]
\[
  p_{4,2}=(24,45,0),\qquad q_{4,2}=(0,-45,0),
  \tag{VML.4}
\]
and
\[
  p_{4,3}=(24,0,45),\qquad q_{4,3}=(0,0,-45).
  \tag{VML.5}
\]

Each pair sums to \(m\). The radii are
\[
  |p_3|=40,\qquad |q_3|=32,
  \tag{VML.6}
\]
and
\[
  |p_{4,2}|=|p_{4,3}|=51,
  \qquad
  |q_{4,2}|=|q_{4,3}|=45.
  \tag{VML.7}
\]
Thus
\[
  {|p_3|+|q_3|\over |m|}=3,
  \qquad
  {|p_{4,a}|+|q_{4,a}|\over |m|}=4.
  \tag{VML.8}
\]

At the selected output, choose the pair-moment weights so that
\[
  R_3=e_2,
  \qquad
  R_4=-{11\over15}e_2-{i\over15}e_3.
  \tag{VML.9}
\]
By the vector-moment identity,
\[
  T_3R_3+T_4R_4=0.
  \tag{VML.10}
\]
So the \(m\)-coefficient can be canceled locally.

This is only a local coefficient cancellation. The modes are now part of one
finite Fourier cloud, and every other cross-pair output has to be checked.

## 3. A unique sideband rings

Look at the sideband from \(q_3\) and \(q_{4,3}\):
\[
  q_3+q_{4,3}=(0,-32,-45).
  \tag{VML.11}
\]

Inside the six-mode gadget, this output has exactly one feeding pair:
\[
  (q_3,q_{4,3}).
  \tag{VML.12}
\]

The pair is cross-shell:
\[
  |q_3|=32,\qquad |q_{4,3}|=45,
  \tag{VML.13}
\]
and it is noncollinear. Therefore the nonresonant cross-shell Beltrami
calculation applies. The coefficient at this sideband is one nonzero projected
term, provided the selected-output cancellation uses both nonzero amplitudes.

Thus the six-mode local cancellation gadget is not projected-neutral.

The same check exposes several other unique dangerous sidebands, for example
\[
  q_3+p_{4,3}=(24,-32,45),
  \qquad
  p_3+q_{4,3}=(24,32,-45),
  \tag{VML.14}
\]
and
\[
  p_3+p_{4,3}=(48,32,45).
  \tag{VML.15}
\]
One unique ringing sideband is already enough.

## 4. Consequence for the finite graph branch

The vector-moment correction remains important: a fixed output can be canceled
locally in full 3D. But a finite neutralizer needs more than one canceled
output. It needs graph closure:
\[
  \text{every sideband created by the cancellation gadget must also pass its}
  \quad
  \text{own vector-moment certificate or be degenerate.}
  \tag{VML.16}
\]

The minimal vector-moment gadget fails this immediately. Any finite
multiradius Beltrami neutralizer must add further modes to cancel the sidebands
without creating an exposed dangerous sideband elsewhere.

That is a strict graph problem, not a one-output coefficient problem.

The output-maximal sideband shield follow-up abstracts the obstruction. In a
finite graph, a cancellation partner for an output-maximal dangerous pair
creates two off-diagonal sidebands, at least one with larger output norm. Any
larger sideband must be same-shell or collinear, or else maximality is
contradicted.

The later duplicate-growth closure removes the remaining finite graph door:
even shielded duplicates create a larger dangerous sideband somewhere among
the four cross-pairings.

## 5. Four-sentence result

The smallest local 3D vector-moment cancellation can be realized by one
\(s/|m|=3\) pair and two \(s/|m|=4\) pairs at \(m=(24,0,0)\). With moments
\(R_3=e_2\) and \(R_4=-11e_2/15-i e_3/15\), the selected output cancels. The
same six modes produce a unique dangerous sideband
\((0,-32,-45)=q_3+q_{4,e_3}\), and the nonresonant theorem makes it ring. So
local vector-moment cancellation is not a finite neutral Beltrami bath unless
the sideband graph is closed by additional modes.

## 6. State

This kills the minimal local vector-moment gadget as an exit candidate.

It does not close the general finite vector-moment resonant graph. It proves no
WKB localization theorem, no same-fluid custody theorem, no dense-crowd theorem,
no confinement constant, and no MPP closure.

The general finite vector-moment resonant graph is closed only by the later
duplicate-growth note.
