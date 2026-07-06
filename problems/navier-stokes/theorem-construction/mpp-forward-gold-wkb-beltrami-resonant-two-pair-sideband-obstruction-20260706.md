---
theorem_id: forward-gold-wkb-beltrami-resonant-two-pair-sideband-obstruction-20260706
status: exact-two-pair-resonant-cancellation-leaks-sidebands
later_supersession: >-
  The same-two-shell finite resonant graph left open here is closed by
  mpp-forward-gold-wkb-beltrami-finite-max-alignment-obstruction-20260706.
  The radius-free finite claim was scope-corrected by
  mpp-forward-gold-wkb-beltrami-max-alignment-radius-scope-correction-20260706.
  The finite multiradius resonant-graph branch is later closed by
  mpp-forward-gold-wkb-beltrami-finite-duplicate-sideband-growth-closure-20260706.
  Infinite/dense WKB support remains outside these finite algebraic
  exclusions.
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB bath construction-exclusion
target_object:
  - ResonantFrequencyCrowd.MINIMAL-TWO-PAIR-GADGET
  - BroadbandBeltramiBath.CrossShellCancellationCertificate
  - ClosedResonantGraph.REMAINING-CANCELLATION-DOOR
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-bandwidth-mismatch-turnover-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-nonresonant-cross-shell-cancellation-obstruction-20260706.md
completion_truth: >-
  Exact finite-mode resonant subcase only. Two cross-shell same-helicity
  Beltrami pairs can cancel one shared output frequency: for
  p=e_1, q=-e_1+e_3, p'=-e_1, q'=e_1+e_3, both pairs land at e_3 and
  their projected mismatch coefficients are opposite. Thus resonant
  cancellation is a genuine algebraic door, not a vacuous label. However,
  the same four-mode gadget necessarily produces off-diagonal sideband
  outputs p+q'=2e_1+e_3 and p'+q=-2e_1+e_3; each is isolated inside the
  four-mode cloud and has nonzero projected cross-shell mismatch by the
  nonresonant two-mode theorem. More generally, a nondegenerate two-pair
  resonant cancellation cannot be a full projected-neutral broadband
  Beltrami bath unless further active pairs cancel the sidebands. The
  remaining exact-cancellation door is therefore a closed resonant frequency
  graph, not a minimal two-pair resonant gadget. This proves no lower bound
  for closed resonant crowds, no exclusion or construction of a WKB bath, no
  same-fluid custody theorem, no confinement constant, and no MPP closure.
---

# Resonant two-pair Beltrami cancellation leaks sidebands

## 1. Question

The nonresonant note proved that an isolated cross-shell Beltrami output
cannot cancel. The remaining algebraic door was resonant cancellation:
multiple cross-shell pairs land on the same output frequency.

This note checks the smallest resonant gadget:
\[
  p+q=p'+q'=m,
  \qquad
  |p|=|p'|=K,
  \qquad
  |q|=|q'|=L,
  \qquad
  K\ne L.
  \tag{RTS.1}
\]

The result has two parts. A shared output can cancel. The same two-pair gadget
then leaks sidebands.

## 2. Exact shared-output cancellation witness

Take
\[
  p=e_1,\qquad q=-e_1+e_3,
  \qquad
  p'=-e_1,\qquad q'=e_1+e_3.
  \tag{RTS.2}
\]

Then
\[
  p+q=p'+q'=e_3,
  \qquad
  |p|=|p'|=1,
  \qquad
  |q|=|q'|=\sqrt2.
  \tag{RTS.3}
\]

Using the same-helicity polarization convention from the nonresonant note, the
projected mismatch coefficient at \(m=e_3\) from the pair \((p,q)\) is
\[
  C_{p,q}
  =
  \left({i\over2\sqrt2},\,
        -{\sqrt2-1\over2\sqrt2},\,0\right).
  \tag{RTS.4}
\]

Reflection \(e_1\mapsto -e_1\) gives
\[
  C_{p',q'}=-C_{p,q}.
  \tag{RTS.5}
\]

With equal amplitude products, the \(e_3\) output cancels exactly:
\[
  C_{p,q}+C_{p',q'}=0.
  \tag{RTS.6}
\]

So resonant cross-shell cancellation is not vacuous. It can happen at one
Fourier coefficient.

## 3. The sidebands are isolated

The same four modes also contain the off-diagonal cross-shell pairs
\[
  (p,q')\quad\text{and}\quad(p',q).
  \tag{RTS.7}
\]

Their output frequencies are
\[
  p+q'=2e_1+e_3,
  \qquad
  p'+q=-2e_1+e_3.
  \tag{RTS.8}
\]

Inside this four-mode cloud, no other cross-shell pair lands at either
frequency. The same-shell pairs \((p,p')\) and \((q,q')\) have zero
eigenvalue-gap coefficient, and the shared-output pairs already land at
\(e_3\).

Each sideband pair is noncollinear and cross-shell:
\[
  |p|=1,\quad |q'|=\sqrt2,\quad p\nparallel q',
  \tag{RTS.9}
\]
and similarly for \((p',q)\). Therefore the nonresonant two-mode theorem
applies to each sideband:
\[
  \mathbb P_{2e_1+e_3}(h_p\times h_{q'})\ne0,
  \qquad
  \mathbb P_{-2e_1+e_3}(h_{p'}\times h_q)\ne0.
  \tag{RTS.10}
\]

Thus the minimal shared-output cancellation gadget is not a full neutralizer.
It cancels \(e_3\), but rings at \(2e_1+e_3\) and \(-2e_1+e_3\).

## 4. General two-pair form

Let a two-pair resonant cloud satisfy (RTS.1), with \(p\ne p'\). The
off-diagonal outputs are
\[
  p+q'=m+(p-p'),
  \qquad
  p'+q=m-(p-p').
  \tag{RTS.11}
\]

These are distinct from \(m\) and from each other. In the four-mode cloud they
are produced by exactly one cross-shell pair each.

If the off-diagonal pairs are noncollinear, the nonresonant theorem makes both
sideband coefficients nonzero. Hence a nondegenerate two-pair resonant
cancellation cannot be an exact projected-neutral broadband Beltrami bath.

The only exits from this two-pair obstruction are:
\[
\begin{array}{ll}
\text{same-shell collapse} & K=L,\\[1mm]
\text{collinear degeneracy} & p\parallel q'\ \text{or}\ p'\parallel q,\\[1mm]
\text{more active pairs} & \text{sidebands are themselves resonantly canceled}.
\end{array}
  \tag{RTS.12}
\]

So the remaining cancellation problem is not pairwise. It is a closed
frequency-graph problem.

## 5. Four-sentence result

Two mirrored cross-shell Beltrami pairs can cancel one shared output frequency
exactly; \(p=e_1,q=-e_1+e_3,p'=-e_1,q'=e_1+e_3\) cancels the \(e_3\)
coefficient. The same four modes necessarily create off-diagonal sidebands at
\(2e_1+e_3\) and \(-2e_1+e_3\). Those sidebands are isolated and nonzero by
the nonresonant two-mode theorem. Therefore the resonant cancellation door is
real, but a minimal two-pair gadget cannot be the broadband neutralizer; exact
neutrality would require a closed resonant frequency graph.

## 6. State

This decides only the two-pair resonant subcase.

It proves no lower bound for closed resonant frequency crowds, no exclusion of
a cancellation-engineered WKB bath, no actual same-fluid construction, no
material custody theorem, no dense-crowd theorem, no confinement constant, and
no MPP closure.

## 7. Later finite-door supersession

The same-two-shell finite resonant graph left open here is closed by
[mpp-forward-gold-wkb-beltrami-finite-max-alignment-obstruction-20260706.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-finite-max-alignment-obstruction-20260706.md).
The radius-free finite claim is scope-corrected by
[mpp-forward-gold-wkb-beltrami-max-alignment-radius-scope-correction-20260706.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-max-alignment-radius-scope-correction-20260706.md).
The finite multiradius resonant-graph branch is later closed by
[mpp-forward-gold-wkb-beltrami-finite-duplicate-sideband-growth-closure-20260706.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-finite-duplicate-sideband-growth-closure-20260706.md).
The remaining Beltrami-bath question includes infinite/dense WKB support,
localization, envelope, same-fluid custody, and construction/exclusion.
