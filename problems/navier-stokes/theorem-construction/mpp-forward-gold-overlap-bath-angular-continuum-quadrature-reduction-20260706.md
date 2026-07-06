---
theorem_id: forward-gold-overlap-bath-angular-continuum-quadrature-reduction-20260706
status: exact-reduction-diffuse-angular-wkb-profile-to-three-axis-pressure-moment
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath WKB admission
target_object:
  - WKBAngularContinuumEscape.NO-INDEPENDENT-PRESSURE-SERVICE
  - BeltramiPressureMoment.ThreeAxisQuadrature
  - WKBPhaseLabelEscape.MaterialScaleBankOnly
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-actual-wkb-carrier-extraction-finite-menu-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-admission-microlocal-profile-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-material-phase-service-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-carrier-scale-room-ledger-20260706.md
completion_truth: >-
  Exact finite-dimensional reduction only. A positive Beltrami angular profile
  on one bank supplies the pressure Hessian only through its second angular
  moment. If W is the total positive weight and M=int n tensor n dmu(n), then
  K=(W/3)I-M. Diagonalizing M=sum_a m_a e_a tensor e_a gives the exact
  three-axis quadrature K=sum_a m_a Q_{e_a}, Q_e=(1/3)I-e tensor e, with the
  same total weight and the same active scalar S:K. Therefore diffuse angular
  direction labels are not an independent WKB pressure-service escape. They do
  not by themselves create a new no-eviction bath beyond the finite-moment
  ledgers already filed. This does not prove actual material carrier
  extraction: the spectral axes may move in time and need not be actual
  same-solution packet labels with heredity. The remaining continuum escape is
  center/envelope/scale/bank/time variation, microlocal-profile admission,
  material packet admission, or construction/exclusion. No general WKB carrier
  extraction theorem, no microlocal admission theorem, no dense-crowd theorem,
  and no MPP closure is claimed.
---

# Angular continuum quadrature for Beltrami WKB pressure moments

## 1. Kill question

The finite-menu WKB extraction note pays actual carrier extraction when the
retained WKB moment lives in a fixed finite menu of actual same-solution
phase-packet families.

The remaining phrase was "moving/continuum phase-label escape." This note
checks one part of that phrase:
\[
  \text{Can a diffuse continuum of Beltrami directions supply pressure service}
  \quad
  \text{in a way no finite angular menu can see?}
  \tag{AQ.1}
\]

For the pressure-Hessian moment itself, the answer is no.

## 2. Moment algebra

Fix one bank, one packet scale, and one space-time station. Let \(\mu\) be the
positive angular weight measure of Beltrami cells on \(S^2\). Put
\[
  W=\int_{S^2}d\mu(n),
  \qquad
  M=\int_{S^2}n\otimes n\,d\mu(n).
  \tag{AQ.2}
\]

The Beltrami trace-free pressure-Hessian shape is
\[
  Q_n={1\over3}I-n\otimes n.
  \tag{AQ.3}
\]

Thus the supplied trace-free pressure moment is
\[
  K=\int Q_n\,d\mu(n)
  =
  {W\over3}I-M.
  \tag{AQ.4}
\]

Only the second angular moment \(M\) enters \(K\).

## 3. Exact three-axis quadrature

Since \(M\) is positive semidefinite and symmetric, choose an orthonormal
eigenbasis \(e_1,e_2,e_3\) with
\[
  M=\sum_{a=1}^3m_a\,e_a\otimes e_a,
  \qquad
  m_a\ge0,
  \qquad
  \sum_{a=1}^3m_a=W.
  \tag{AQ.5}
\]

Then
\[
  \sum_{a=1}^3m_aQ_{e_a}
  =
  \sum_{a=1}^3m_a\left({1\over3}I-e_a\otimes e_a\right)
  =
  {W\over3}I-M
  =
  K.
  \tag{AQ.6}
\]

So every positive Beltrami angular continuum has an exact three-direction
quadrature for the pressure moment. The quadrature preserves the total positive
weight \(W\), the tensor \(K\), and hence every scalar contraction with the
producer strain:
\[
  S:K
  =
  \sum_{a=1}^3m_a\,S:Q_{e_a}.
  \tag{AQ.7}
\]

This is stronger than a compactness approximation. It is an identity at each
bank/station.

## 4. Consequence for active service

The material-phase note gives
\[
  S:Q_n=D_t\log\lambda_n
  \tag{AQ.8}
\]
for an actual material Beltrami carrier. For a continuum profile, the active
pressure service is still the finite moment
\[
  S:K.
  \tag{AQ.9}
\]

Equation (AQ.7) says the angularly diffuse profile contributes no active scalar
service that is invisible to a finite angular decomposition. At the level of
pressure-moment accounting, a diffuse direction cloud is a three-axis object.

Therefore the continuum-direction case cannot be used as a new neutral
pressure-service reservoir after the carrier-scale room, weight-variation, bank
motion, and orthogonal-service ledgers have been installed.

## 5. What this does not prove

This is not actual WKB carrier extraction.

The axes \(e_a\) in (AQ.5) are spectral axes of the angular second moment. They
need not be actual material packet labels that occur on an infinite tail. They
may move with the bank, split across centers or scales, cross eigenspace
degeneracies, or exist only as a microlocal/profile quadrature.

So the reduction is:
\[
  \text{diffuse angular continuum}
  \quad\Rightarrow\quad
  \text{finite angular moment algebra}
  \quad+\quad
  \text{material/time/scale/bank admission problem}.
  \tag{AQ.10}
\]

The remaining open doors are exactly:

1. actual same-solution packet extraction for the quadrature branches or an
   atomic subtail;
2. microlocal/profile admission of the finite moment \(K\) as a terminal
   witness ledger;
3. time variation of the spectral axes, weights, bank, center, envelope, or
   scale, routed through the filed variation/custody ledgers;
4. construction or exclusion of a dynamic WKB bath.

## 6. Four-sentence result

A positive Beltrami angular profile supplies pressure service through
\[
  K={W\over3}I-\int n\otimes n\,d\mu(n).
\]
Diagonalizing the second moment gives the exact identity
\[
  K=\sum_{a=1}^3m_aQ_{e_a},
\]
so diffuse direction labels reduce to a three-axis pressure-moment quadrature.
Thus angular continuum is not an independent no-payer WKB service mechanism.
What remains is actual material carrier admission, microlocal/profile
admission, time/scale/bank variation, or construction/exclusion.
