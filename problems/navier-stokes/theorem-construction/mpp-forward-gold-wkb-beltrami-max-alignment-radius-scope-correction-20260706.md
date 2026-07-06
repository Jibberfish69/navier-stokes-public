---
theorem_id: forward-gold-wkb-beltrami-max-alignment-radius-scope-correction-20260706
status: exact-proof-scope-correction-multiradius-resonant-branch-open
later_followup: >-
  The multiradius branch left open here is locally sharpened by
  mpp-forward-gold-wkb-beltrami-shared-output-radius-sum-grading-20260706:
  fixed-output cancellation is graded by |p|+|q| and must satisfy two
  radius-sum moment equations.
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB bath construction-exclusion
target_object:
  - BeltramiMaxAlignmentObstruction.SAME-TWO-SHELL-SCOPE
  - MultiRadiusResonantGraph.REMAINING-CANCELLATION-DOOR
  - AtomicBeltramiWKBProfile.MAX-ATTAINMENT-FORK
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-finite-max-alignment-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-shared-output-radius-sum-grading-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-unique-mixed-sum-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-nonresonant-cross-shell-cancellation-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-atomic-diffuse-admission-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-atomic-wkb-prelimit-quantization-criterion-20260706.md
completion_truth: >-
  Exact correction only. The maximal-alignment obstruction is valid for
  same-two-shell duplicate representations: if p+q=p'+q' with |p|=|p'| and
  |q|=|q'|, the off-diagonal pairs force larger normalized alignment and the
  selected pair rings. The radius-free version of that step is false: a
  cross-radius duplicate can keep all off-diagonal normalized alignments no
  larger than the selected one. Therefore the finite Beltrami neutralizer door
  is not certified closed by the filed maximal-alignment note unless a separate
  multiradius resonant-graph argument is supplied. For atomic WKB profiles, an
  attained maximal pair only reduces to the same-two-shell obstruction inside a
  fixed pair of shell radii; multiradius accumulation/fragmentation,
  profile-admission, and construction/exclusion remain open. This proves no
  neutralizer exists, no neutralizer is excluded, no confinement constant, and
  no MPP closure.
---

# Max-alignment Beltrami obstruction: radius scope correction

## 1. What remains certified

The finite maximal-alignment proof has one certified algebraic core.

Fix two curl-eigenvalue shell radii \(K\ne L\). Let
\[
  |p|=|p'|=K,\qquad |q|=|q'|=L,
  \qquad p+q=p'+q',
\]
with \(p'\ne p\). Then
\[
  p\cdot q'=p\cdot q+K^2-p\cdot p'>p\cdot q
\]
and similarly
\[
  p'\cdot q>p\cdot q.
\]
Because the denominators are the same fixed product \(KL\), the normalized
alignments of the off-diagonal pairs are strictly larger. Since the two radii
differ, at least one off-diagonal pair remains noncollinear. Thus a maximal
noncollinear active pair inside this fixed two-shell slice has a unique output,
and the nonresonant two-mode calculation makes that output ring.

So the same-two-shell resonant graph subcase is closed.

## 2. The radius-free step is false

The same argument does not extend automatically to duplicate representations
on different shell radii.

Take the lattice vectors
\[
  p=(-2,-1),\qquad q=(-1,-1),
\]
and
\[
  p'=(-2,0),\qquad q'=(-1,-2).
\]
Then
\[
  p+q=p'+q'=(-3,-2),
\]
but the squared lengths are
\[
  |p|^2=5,\qquad |q|^2=2,\qquad |p'|^2=4,\qquad |q'|^2=5.
\]

The selected alignment is
\[
  c(p,q)={p\cdot q\over |p||q|}
       ={3\over\sqrt{10}}.
\]
The off-diagonal alignments are
\[
  c(p,q')={4\over5},
  \qquad
  c(p',q)={1\over\sqrt2}.
\]
Both are smaller than \(3/\sqrt{10}\). A tied cross-shell pair also exists:
\[
  c(q,q')={3\over\sqrt{10}}.
\]

This witness does not build a neutralizer. It only proves the needed
correction: a duplicate sum with different radii need not produce a strictly
larger normalized-alignment off-diagonal cross-shell pair. The proof in the
finite max-alignment note therefore has same-two-shell scope.

## 3. Correct fork for atomic WKB profiles

The profile consequence is narrower than the earlier lift attempt.

If an atomic same-helicity Beltrami WKB profile has a noncollinear active pair
that attains maximal alignment inside one fixed two-shell slice, and all
duplicate representations of its output stay inside that same two-shell slice,
then the same-two-shell obstruction applies and that output rings.

If the cancellation uses cross-radius duplicate representations, the
max-alignment proof does not decide it. The radius-sum grading follow-up shows
that fixed-output cancellation must then satisfy
\[
  \sum_s A_s=0,\qquad \sum_s sA_s=0,
  \qquad s=|p|+|q|.
\]
The branch is a multiradius resonant frequency graph with that local
radius-sum certificate. In the WKB profile language, that means one of:

1. a separate finite multiradius graph obstruction using the radius-sum
   certificate;
2. nonattainment by shell/direction accumulation;
3. unbounded prelimit fragmentation;
4. profile-level admission or certificate failure;
5. actual same-fluid WKB construction/exclusion.

Thus atomicity alone does not restore the finite-support conclusion. It only
restores it after the active cancellation graph is confined to one fixed pair
of shell radii, or after a new multiradius graph theorem is supplied.

## 4. Four-sentence result

The maximal-alignment Beltrami proof is valid for duplicate outputs on the
same two curl-eigenvalue shells. It is not valid as a radius-free proof,
because cross-radius duplicates can avoid the larger-alignment off-diagonal
conclusion; the explicit vector witness is
\((-2,-1)+(-1,-1)=(-2,0)+(-1,-2)\). Therefore the finite Beltrami cancellation
door is not certified closed by that note alone. The surviving algebraic
branch is multiradius radius-sum-certified resonant graph closure, or, in the
WKB setting, accumulation, fragmentation, profile admission, certificate
failure, or actual construction/exclusion.

## 5. State

This is a correction note, not a new payer.

It preserves the same-two-shell maximal-alignment obstruction and withdraws
the unsupported radius-free closure. It proves no finite neutralizer, no
finite neutralizer exclusion, no WKB bath construction or exclusion, no
confinement constant, and no MPP closure.
