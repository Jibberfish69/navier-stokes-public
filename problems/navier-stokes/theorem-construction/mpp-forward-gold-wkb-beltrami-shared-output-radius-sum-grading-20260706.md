---
theorem_id: forward-gold-wkb-beltrami-shared-output-radius-sum-grading-20260706
status: scope-corrected-coplanar-radius-sum-grading-full-3d-vector-moment-followup
scope_correction: >-
  Same-day correction: the scalar radius-sum moment equations in this note are
  the common-plane / common-transverse-axis reduction. In full 3D the transverse
  azimuth around m is a vector coordinate, and two radius-sum grades can cancel
  if one grade carries enough transverse directions. See
  mpp-forward-gold-wkb-beltrami-radius-sum-vector-moment-correction-20260706.md.
  The finite resonant-graph branch is later closed by
  mpp-forward-gold-wkb-beltrami-finite-duplicate-sideband-growth-closure-20260706.md.
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB bath construction-exclusion
target_object:
  - MultiRadiusResonantGraph.FIXED-OUTPUT-RADIUS-SUM-GRADING
  - TwoPairMultiRadiusCancellation.EXCLUDED-UNLESS-EQUAL-RADIUS-SUM
  - RadiusSumMomentCertificate.REMAINING-LOCAL-CANCELLATION-DOOR
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-max-alignment-radius-scope-correction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-nonresonant-cross-shell-cancellation-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-resonant-two-pair-sideband-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-unique-mixed-sum-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-finite-duplicate-sideband-growth-closure-20260706.md
completion_truth: >-
  Scope-corrected fixed-output coefficient grading. For same-helicity Beltrami
  modes p,q with p+q=m, |p|=K, |q|=L, K != L, and p not parallel to q, the
  projected eigenvalue-gap coefficient is obtained by applying the operator
  T_s=|m|J_m-i sI, s=K+L, to the transverse direction of p, up to scalar
  amplitude and orientation. In one fixed transverse plane this reduces to the
  scalar line spanned by -is e_perp+|m|e_n, and a two-pair unequal-radius-sum
  duplicate cannot cancel. The broader scalar claim that one or two
  radius-sum grades cannot cancel across grades is false in full 3D once
  transverse azimuth is allowed; the correct certificate is a vector-moment
  equation over the complexified plane m^\perp. Equal-radius-sum internal
  cancellation, multi-azimuth two-grade cancellation, three-or-more-grade
  moment-balanced graphs, sideband closure, full finite graph closure, WKB
  localization, same-fluid custody, and construction/exclusion remain open.
  This proves no finite graph theorem, no WKB bath exclusion, no confinement
  constant, and no MPP closure.
---

# Beltrami shared outputs are graded by radius sum

## 0. Same-day 3D scope correction

The scalar equations below are valid only after a common transverse plane has
been chosen for the contributing pairs at the fixed output \(m\). In the full
three-dimensional geometry, the transverse azimuth around \(m\) is part of the
coefficient data. The corrected fixed-output law is the vector-moment
certificate in
[mpp-forward-gold-wkb-beltrami-radius-sum-vector-moment-correction-20260706.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-radius-sum-vector-moment-correction-20260706.md).

The two-pair unequal-grade obstruction survives when there is only one
transverse direction in each grade. The stronger claim that two radius-sum
grades cannot cancel across grades is false in full 3D.

## 1. Question

The radius-scope correction reopened the finite Beltrami algebra because a
duplicate output
\[
  p+q=p'+q'
\]
may use different shell radii. The graph question is still open, but the
coefficient question has an exact answer:

\[
  \text{At one shared output, what data controls the helical coefficient line?}
  \tag{RSG.1}
\]

In this coplanar coordinate, the answer is the pair-radius sum. In full 3D,
the answer is the vector operator recorded in the correction note.

## 2. Fixed-output calculation

Fix one nonzero output \(m\). Rotate coordinates so
\[
  m=M e_1,\qquad M=|m|.
\]
Let
\[
  p=(x,y,0),\qquad q=(M-x,-y,0),
  \qquad y\ne0,
\]
so \(p+q=m\). Set
\[
  K=|p|,\qquad L=|q|.
\]

Use the same-helicity polarization convention
\[
  h_p={1\over\sqrt2}\left(-{y\over K}e_1+{x\over K}e_2+i e_3\right),
\]
and
\[
  h_q={1\over\sqrt2}\left({y\over L}e_1+{M-x\over L}e_2+i e_3\right).
  \tag{RSG.2}
\]

A direct cross product gives, after Leray projection onto \(m^\perp\),
\[
  \mathbb P_m(h_p\times h_q)
  =
  {1\over2}\left(
    i\,y\left({1\over K}+{1\over L}\right)e_2
    -
    {M y\over KL}e_3
  \right).
  \tag{RSG.3}
\]

The projected eigenvalue-gap coefficient is therefore, up to the global sign
convention,
\[
  \mathcal C_{p,q}(m)
  =
  { (L-K)y\over 2KL}
  \left(
    -i(K+L)e_2+M e_3
  \right).
  \tag{RSG.4}
\]

The scalar prefactor carries the split and orientation. Inside this fixed
transverse plane, the complex line is determined by
\[
  s:=K+L.
  \tag{RSG.5}
\]

Thus two nondegenerate same-output pairs with radius sums \(s_1\ne s_2\) have
coefficient vectors on different complex lines in \(m^\perp\). They cannot
cancel each other by choosing amplitudes.

## 3. Coplanar local cancellation equations

In the same fixed transverse plane, group all active pairs by radius sum
\[
  s=|p|+|q|.
\]
Absorb amplitudes, orientation signs, and the scalar prefactor in (RSG.4) into
one complex number \(A_s\), summed over all pairs in that same radius-sum
grade. The total coefficient has the form
\[
  \sum_s A_s(-is e_2+M e_3).
  \tag{RSG.6}
\]

Since \(e_2\) and \(e_3\) are independent in \(m^\perp\), exact cancellation is
equivalent to
\[
  \sum_s A_s=0,
  \qquad
  \sum_s sA_s=0.
  \tag{RSG.7}
\]

These are the coplanar radius-sum moment equations.

If only one radius-sum grade is present, then \(A_s=0\) is required inside that
grade. If exactly two distinct grades \(s_1\ne s_2\) are present, then
\[
  A_{s_1}+A_{s_2}=0,
  \qquad
  s_1A_{s_1}+s_2A_{s_2}=0
\]
forces
\[
  A_{s_1}=A_{s_2}=0.
  \tag{RSG.8}
\]
So in the coplanar scalar reduction, two different radius-sum grades cannot
cancel across grades. Each grade must already cancel internally.

In full 3D this conclusion must be replaced by the vector-moment correction.
Transverse directions in one grade can span \(m^\perp\), and then two grades can
cancel through vector moments. The remaining certificate is a vector-balanced
radius-sum crowd plus its sidebands and graph closure.

## 4. Effect on the correction witness

The radius-scope correction used
\[
  (-2,-1)+(-1,-1)=(-2,0)+(-1,-2).
  \tag{RSG.9}
\]
The two pair-radius sums are
\[
  \sqrt5+\sqrt2,
  \qquad
  2+\sqrt5.
  \tag{RSG.10}
\]
They are unequal, and the two pairs lie in the same transverse plane. Therefore
those two pairs cannot cancel the shared output coefficient. The witness
remains exactly what it was meant to be: a failure of the radius-free
max-alignment proof, not a resonant neutralizer.

## 5. Four-sentence result

For a fixed output \(m=p+q\), a same-helicity Beltrami coefficient in one
transverse plane is graded by \(|p|+|q|\). Two coplanar shared-output pairs with
different radius-sums are not complex-collinear in \(m^\perp\), so that
two-pair duplicate cannot cancel unless the two radius-sums agree. The scalar
certificate \(\sum_s A_s=0\), \(\sum_s sA_s=0\) is only the coplanar reduction.
In full 3D the local certificate is vector-valued, and multi-azimuth
two-grade cancellation remains possible.

Later finite-graph closure: vector-moment local cancellation remains possible
at one output, but no finite dangerous duplicate graph can close all sidebands;
the duplicate-growth obstruction forces a larger dangerous output.

## 6. State

This kills only the simplest coplanar multiradius reading of the reopened
finite door: different shell radii are not enough in one transverse plane. The
shared output must pass the full vector-moment certificate in 3D.

It proves no full finite resonant-graph exclusion, no WKB localization theorem,
no same-fluid custody theorem, no dense-crowd theorem, no confinement constant,
and no MPP closure.
