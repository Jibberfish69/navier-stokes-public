---
theorem_id: forward-gold-wkb-beltrami-radius-sum-vector-moment-correction-20260706
status: exact-full-3d-fixed-output-vector-moment-certificate
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB bath construction-exclusion
target_object:
  - MultiRadiusResonantGraph.FIXED-OUTPUT-VECTOR-MOMENT-CERTIFICATE
  - RadiusSumScalarCertificate.COPLANAR-ONLY
  - TwoGradeMultiAzimuthCancellation.POSSIBLE
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-shared-output-radius-sum-grading-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-max-alignment-radius-scope-correction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-nonresonant-cross-shell-cancellation-obstruction-20260706.md
completion_truth: >-
  Exact fixed-output 3D correction only. For same-helicity Beltrami pairs
  p+q=m, the coefficient at m is, up to a nonzero scalar amplitude factor,
  T_s r with s=|p|+|q|, r the transverse direction of p relative to m, and
  T_s=|m|J_m-i sI on the complexified transverse plane m^\perp. The scalar
  radius-sum moment equations in the previous note are the common-plane
  reduction where all r lie on one transverse axis. In full 3D, cancellation is
  the vector equation sum_s T_s R_s=0 with R_s the complex transverse vector
  moment in grade s. Therefore one-pair-per-grade unequal two-pair cancellation
  is still blocked, but two radius-sum grades can cancel if one grade carries
  enough transverse azimuth directions; an explicit M=1 witness is
  T_3 e_2 + T_4(-11 e_2/15 - i e_3/15)=0. This proves no finite graph
  theorem, no WKB bath exclusion, no confinement constant, and no MPP closure.
---

# Radius-sum cancellation is vector-valued in 3D

## 1. Object

The shared-output radius-sum note found the right local coordinate but then
collapsed it too far. A fixed output \(m\) has a whole transverse plane
\[
  m^\perp,
\]
not just one transverse axis. The radius-sum certificate is therefore a vector
moment in that plane.

The physical object is still one same-fluid Beltrami/WKB packet cloud. This is
only the algebra of one Fourier output of its pressure/nonlinear mismatch row.

## 2. Coordinate-free fixed-output law

Let \(m\ne0\), set
\[
  M=|m|,\qquad e={m\over M},
\]
and let \(J_m\) be the quarter-turn on \(m^\perp\),
\[
  J_m r=e\times r .
\]

For a noncollinear same-helicity pair
\[
  p+q=m,
\]
write the transverse direction of \(p\) as
\[
  r=p-(p\cdot e)e\in m^\perp,
  \qquad r\ne0,
\]
and set
\[
  s=|p|+|q|.
\]

The coplanar computation in the previous note is exactly the statement that,
after absorbing the scalar factor containing amplitudes, orientation, and
\(|p|-|q|\), the coefficient has the form
\[
  T_s r,
  \qquad
  T_s:=M J_m-i s I
  \quad\hbox{on }m^\perp_\mathbb C .
  \tag{VM.1}
\]

In the basis \(e_2,e_3\) with \(J_m e_2=e_3\), this says
\[
  T_s e_2=-is e_2+M e_3,
  \qquad
  T_s e_3=-M e_2-is e_3.
  \tag{VM.2}
\]

Thus the pair-radius sum \(s\) grades the operator, while the transverse
azimuth \(r/|r|\) is still live.

## 3. Correct local cancellation certificate

At one fixed output \(m\), group all contributing pairs by radius sum
\[
  s=|p|+|q|.
\]
Inside each grade, absorb all scalar amplitude factors into the complex
transverse vector moment
\[
  R_s\in m^\perp_\mathbb C.
\]

The total coefficient at \(m\) is
\[
  \sum_s T_sR_s.
  \tag{VM.3}
\]
Therefore exact fixed-output cancellation is
\[
  \sum_s (M J_m-i sI)R_s=0.
  \tag{VM.4}
\]

Equivalently,
\[
  M J_m\sum_s R_s
  =
  i\sum_s sR_s.
  \tag{VM.5}
\]

This is the correct 3D radius-sum certificate. It is vector-valued.

## 4. What survives from the scalar note

If every contributing pair lies in one common transverse plane, then each
\(R_s\) is a scalar multiple of the same transverse direction. In that special
case (VM.4) reduces to the scalar equations
\[
  \sum_s A_s=0,
  \qquad
  \sum_s sA_s=0.
  \tag{VM.6}
\]

Also, a single pair in grade \(s_1\) cannot cancel a single pair in grade
\(s_2\ne s_1\). The two complex lines
\[
  \mathbb C T_{s_1}r_1,
  \qquad
  \mathbb C T_{s_2}r_2
\]
do not coincide for real nonzero transverse directions \(r_1,r_2\) when
\(s_1\ne s_2\). In a basis with \(r_1=e_2\), the determinant condition becomes
\[
  iM(s_2-s_1)\cos\phi+(M^2-s_1s_2)\sin\phi=0,
  \tag{VM.7}
\]
which forces both \(\cos\phi=0\) and \(\sin\phi=0\), impossible because
\(s_1,s_2>M\).

So the two-pair unequal-grade cancellation obstruction is still true.

## 5. What fails in full 3D

The broader claim that two radius-sum grades cannot cancel across grades is
false once a grade has more than one transverse azimuth.

Take \(M=1\) and use the basis \(e_2,e_3\) of \(m^\perp\). Then
\[
  T_s e_2=-is e_2+e_3,
  \qquad
  T_s e_3=-e_2-is e_3.
\]
A direct calculation gives
\[
  T_3 e_2
  +
  T_4\left(-{11\over15}e_2-{i\over15}e_3\right)
  =
  0.
  \tag{VM.8}
\]

Thus two radius-sum grades can cancel at one output if one grade carries enough
transverse directions and its amplitudes are chosen accordingly.

This is only a local Fourier-coefficient cancellation. It does not build a
neutral Beltrami bath, because the added pairs create their own sidebands and
must satisfy the same graph-closure problem.

## 6. Updated finite algebra door

After this correction, the finite Beltrami algebra is typed as follows.

One-pair-per-grade unequal multiradius cancellation is blocked. Common-plane
two-grade cancellation is blocked. Full 3D multi-azimuth two-grade cancellation
is locally possible and must be tested by sideband closure. Three-or-more-grade
moment-balanced cancellation is also locally possible and must be tested by the
same finite graph closure.

Thus the live finite branch is no longer a scalar radius-sum moment problem. It
is a vector-moment resonant graph problem:
\[
  \sum_s (|m|J_m-isI)R_s(m)=0
  \qquad\hbox{at every dangerous output }m,
  \tag{VM.9}
\]
plus the requirement that every sideband generated by the participating modes
also passes its own certificate or is degenerate.

## 7. Four-sentence result

At a fixed output \(m\), same-helicity Beltrami coefficients are governed by
the operator \(T_s=|m|J_m-isI\) on the transverse plane, with
\(s=|p|+|q|\). The previous scalar radius-sum equations are only the
common-plane reduction. A single unequal-grade pair cannot cancel another
single unequal-grade pair, but two grades can cancel in full 3D when one grade
uses multiple transverse azimuths; \(T_3e_2+T_4(-11e_2/15-ie_3/15)=0\) is an
explicit local witness. The remaining finite Beltrami door is a vector-moment
resonant graph with sideband closure, not a scalar radius-sum ledger.

## 8. State

This corrects the previous radius-sum note and sharpens the live finite
algebraic branch.

It proves no finite neutralizer, no finite neutralizer exclusion, no WKB
localization theorem, no same-fluid custody theorem, no confinement constant,
and no MPP closure.
