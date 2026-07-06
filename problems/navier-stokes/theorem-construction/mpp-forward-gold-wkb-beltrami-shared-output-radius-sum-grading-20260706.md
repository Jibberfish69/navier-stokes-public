---
theorem_id: forward-gold-wkb-beltrami-shared-output-radius-sum-grading-20260706
status: exact-fixed-output-radius-sum-grading-two-grade-cancellation-obstruction
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
completion_truth: >-
  Exact fixed-output coefficient grading only. For same-helicity Beltrami modes
  p,q with p+q=m, |p|=K, |q|=L, K != L, and p not parallel to q, the
  projected eigenvalue-gap coefficient at m lies on the complex line spanned by
  -i(K+L)e_perp + |m|e_n in the plane m^\perp. Thus the coefficient direction
  depends on the shared output m and the pair-radius sum K+L, not on the
  individual split. A two-pair multiradius resonant output with unequal
  radius-sums cannot cancel by amplitude choice. More generally, at one output
  the cancellation condition is exactly two scalar moment equations over
  radius-sum grades: sum A_s = 0 and sum s A_s = 0. Hence one or two distinct
  radius-sum grades cannot cancel across grades; each grade must cancel
  internally. Three or more grades, equal-radius-sum internal cancellation,
  sideband closure, full finite graph closure, WKB localization, same-fluid
  custody, and construction/exclusion remain open. This proves no finite graph
  theorem, no WKB bath exclusion, no confinement constant, and no MPP closure.
---

# Beltrami shared outputs are graded by radius sum

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

The answer is the pair-radius sum.

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

The scalar prefactor carries the split and orientation. The complex line is
determined by
\[
  s:=K+L.
  \tag{RSG.5}
\]

Thus two nondegenerate same-output pairs with radius sums \(s_1\ne s_2\) have
coefficient vectors on different complex lines in \(m^\perp\). They cannot
cancel each other by choosing amplitudes.

## 3. Local cancellation equations

At the same output \(m\), group all active pairs by radius sum
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

These are the radius-sum moment equations.

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
So two different radius-sum grades cannot cancel across grades. Each grade must
already cancel internally.

With three or more radius-sum grades, the local equations alone do not rule out
cancellation. The remaining certificate is a moment-balanced radius-sum crowd
plus its sidebands and graph closure.

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
They are unequal. Therefore those two pairs cannot cancel the shared output
coefficient. The witness remains exactly what it was meant to be: a failure of
the radius-free max-alignment proof, not a resonant neutralizer.

## 5. Four-sentence result

For a fixed output \(m=p+q\), the same-helicity Beltrami coefficient line is
controlled by \(|p|+|q|\). Two shared-output pairs with different radius-sums
are not complex-collinear in \(m^\perp\), so a two-pair multiradius duplicate
cannot cancel unless the two radius-sums agree. At one output, the exact local
certificate is the pair of equations \(\sum_s A_s=0\) and
\(\sum_s sA_s=0\) over radius-sum grades. The remaining finite algebraic door
is equal-radius-sum internal cancellation, or a three-or-more-grade
moment-balanced resonant graph with sideband closure.

## 6. State

This kills the simplest multiradius reading of the reopened finite door:
different shell radii are not enough; the shared output must also pass the
radius-sum moment certificate.

It proves no full finite resonant-graph exclusion, no WKB localization theorem,
no same-fluid custody theorem, no dense-crowd theorem, no confinement constant,
and no MPP closure.
