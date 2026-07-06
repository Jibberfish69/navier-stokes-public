---
theorem_id: forward-gold-wkb-localized-anisotropic-defect-leray-obstruction-20260706
status: exact-single-shape-localized-anisotropic-reynolds-defect-has-nonzero-leray-force
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / WKB profile admission / pressure-law certificate
target_object:
  - WKBReynoldsDefectVanishesOrCertified.A
  - WKBActualPressureLawClosedness.A
  - WKBCertificateCompactness.A
  - LimitOfClassTerminalArtifact.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-legal-label-certificate-compactness-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-localization-cell-count-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-many-cell-wkb-parameter-window-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-dense-crowd-two-channel-regate-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-stress-characterization-20260706.md
completion_truth: >-
  Exact single-shape obstruction. Let Q be a constant symmetric matrix on
  R^3. If Q is not a scalar multiple of the identity and chi is a nonzero
  compactly supported smooth scalar cutoff, then the localized Reynolds stress
  R=chi Q has nonzero Leray-projected force: P div R is not zero. Equivalently,
  div(chi Q)=Q grad chi is a gradient only when chi is zero, for non-scalar Q
  under compact support. Therefore a localized anisotropic WKB defect, including
  a localized Beltrami pressure shape Q_n=I/3-n tensor n, cannot be absorbed as
  pressure gauge by a single-shape cutoff. It must be canceled by additional
  stresses, legally carried as a Reynolds certificate, or routed to
  actual-pressure-law / tower certificate failure. The later Reynolds-null
  characterization identifies the additional-stress cancellation branch exactly
  as pressure gauge plus divergence-free null stress. This proves no theorem
  forcing actual Navier-Stokes WKB packets into that null class, no row-level
  defect-vanishing theorem, no legal-carriage theorem, no profile
  construction/exclusion theorem, no confinement constant, and no MPP closure.
---

# Localized anisotropic WKB defects are not pressure gauge

## 1. Object

The pressure-law certificate fork says that a WKB profile with Reynolds defect
\(R\) preserves the ordinary Navier-Stokes velocity-pressure law only when
\[
  \mathbb P\,\operatorname{div}R=0
  \tag{LAD.1}
\]
with compatible pressure service, or when \(R\) is legally carried as a profile
certificate.

This note tests the simplest localized WKB defect left by a single anisotropic
pressure-service shape:
\[
  R(x)=\chi(x)Q,
  \tag{LAD.2}
\]
where \(Q\) is constant symmetric and \(\chi\in C_c^\infty(\mathbb R^3)\).

## 2. Exact curl test

Let
\[
  f:=\operatorname{div}R=Q\nabla\chi .
  \tag{LAD.3}
\]
Since \(f\) is compactly supported, \(\mathbb P f=0\) exactly when \(f\) is a
gradient, equivalently when
\[
  \nabla\times f=0
  \tag{LAD.4}
\]
in distributions.

Diagonalize \(Q\). In its eigenbasis,
\[
  Q=\operatorname{diag}(q_1,q_2,q_3),
  \qquad
  f=(q_1\partial_1\chi,q_2\partial_2\chi,q_3\partial_3\chi).
  \tag{LAD.5}
\]
Then
\[
  \nabla\times f
  =
  \left(
    (q_3-q_2)\partial_{23}\chi,\,
    (q_1-q_3)\partial_{31}\chi,\,
    (q_2-q_1)\partial_{12}\chi
  \right).
  \tag{LAD.6}
\]

If \(Q\) is not scalar, at least one eigenvalue differs from the others. Assume
for instance \(q_3\ne q_1\) after relabeling. From (LAD.6), curl-free gives
\[
  \partial_{31}\chi=0 .
  \tag{LAD.7}
\]
If \(q_3\ne q_2\) it also gives
\[
  \partial_{23}\chi=0 .
  \tag{LAD.8}
\]
When \(q_1=q_2\ne q_3\), (LAD.7)--(LAD.8) say
\[
  \partial_3\chi=g(x_3).
  \tag{LAD.9}
\]
Compact support in \(x_1,x_2\) forces \(g=0\), so \(\chi\) is independent of
\(x_3\); compact support in \(x_3\) then forces \(\chi=0\).

When all three eigenvalues are distinct, (LAD.6) gives all mixed derivatives
\(\partial_{ij}\chi=0\). In particular \(\partial_3\chi\) is a function of
\(x_3\) alone, and the same compact-support argument again forces
\(\chi=0\).

Thus:
\[
\boxed{
  Q\notin\mathbb R I,\quad
  \chi\in C_c^\infty(\mathbb R^3),\quad
  \chi\ne0
  \quad\Longrightarrow\quad
  \mathbb P\,\operatorname{div}(\chi Q)\ne0 .
}
\tag{LAD.10}
\]

## 3. Beltrami/WKB pressure shape

The Beltrami pressure-service shape is
\[
  Q_n={1\over3}I-n\otimes n.
  \tag{LAD.11}
\]
Its eigenvalues are \(1/3,1/3,-2/3\), so it is non-scalar. Therefore any
nonzero compactly supported localized defect
\[
  R=\chi Q_n
  \tag{LAD.12}
\]
satisfies
\[
  \mathbb P\,\operatorname{div}R\ne0 .
  \tag{LAD.13}
\]

So the single localized Beltrami defect is not hidden pressure gauge. The
cutoff creates a real Navier-Stokes-Reynolds force unless another stress cancels
it.

## 4. Proof-program landing

For the WKB pressure-law certificate, the single-shape localized branch has only
three lawful exits:

1. add other defect stresses whose Leray forces cancel \(\mathbb P\operatorname{div}(\chi Q)\);
2. carry the nonzero Reynolds defect as a legal same-solution profile certificate;
3. route the profile to actual-pressure-law / tower certificate failure.

Thus a one-cell localized anisotropic WKB bath cannot count as admitted
ordinary Navier-Stokes pressure service by scalar moment passage alone.

This does not decide the many-cell crowd. A sum
\[
  R=\sum_a \chi_a Q_a
  \tag{LAD.14}
\]
may still have cancellations in \(\mathbb P\operatorname{div}R\). The later
null-stress characterization says exactly what that means:
\[
  R=qI+S,\qquad \operatorname{div}S=0.
  \tag{LAD.15}
\]
So the remaining crowd pressure-law question is whether the aggregate stress
lands in that null class, is legally carried, or fails the actual-law row.

## 5. Reduced burden

The pressure-law row is sharpened to:

```text
WKBReynoldsDefectVanishesOrCertified.A
```

with the single-shape localized obstruction removed. A nonzero localized
anisotropic defect cannot satisfy the zero Leray-force horn. It must enter the
cancellation/certificate/failure split above.

## 6. Four-sentence result

A localized anisotropic WKB Reynolds defect is not just pressure. For
\(R=\chi Q\) with \(Q\) constant non-scalar and \(\chi\) nonzero compactly
supported, \(\operatorname{div}R=Q\nabla\chi\) has nonzero curl in every
possible compactly supported case, hence its Leray projection is nonzero. This
applies to localized Beltrami shapes \(Q_n=I/3-n\otimes n\). The remaining
pressure-law escape is multi-stress cancellation, legal carriage of the defect,
or typed actual-law/tower failure.

## 7. State

This note proves the exact single-shape localized anisotropic Leray obstruction.

It proves no theorem forcing actual multi-cell stresses into the Leray-null
class, no Reynolds-defect vanishing or legal-carriage theorem for actual
Navier-Stokes WKB packets, no WKB profile admission theorem, no WKB
construction/exclusion theorem, no confinement constant, and no MPP closure.
