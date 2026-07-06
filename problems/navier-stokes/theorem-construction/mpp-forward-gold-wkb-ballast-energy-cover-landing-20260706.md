---
theorem_id: forward-gold-wkb-ballast-energy-cover-landing-20260706
status: exact-cover-landing-for-positive-reynolds-ballast-energy
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / WKB profile admission / cover certificate
target_object:
  - WKBFiniteCoverCertificateCompactness.A
  - WKBReynoldsDefectVanishesOrCertified.A
  - WKBCertificateCompactness.A
  - LimitOfClassTerminalArtifact.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-ballast-energy-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-finite-cover-certificate-compactness-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-legal-label-certificate-compactness-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-witness-closed-graph-admission-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-ballast-energy-ancestry-tower-landing-20260706.md
completion_truth: >-
  Strict reduction only. The positive trace ballast mu_R=(1/2)tr R is a scalar
  positive profile measure. Therefore it has the same cover legality burden as
  any admitted WKB profile mass: either the ballast measure lifts to a uniformly
  bounded finite readout-compatible cover with compact chart parameters and
  closed overlap/readout relations, or the ballast has lost Pack-side carrier
  service. Projecting away the cover while retaining positive ballast energy
  gives an observable positive measure outside the legal witness class. This
  note prices only the cover row; the parallel ancestry/tower landing prices
  the two Part-side rows. This proves no uniform finite-cover theorem for actual
  Navier-Stokes WKB ballast, no legal carriage theorem through material ancestry
  or tower, no WKB profile admission theorem, no WKB construction/exclusion
  theorem, no confinement constant, and no MPP closure.
---

# Positive Reynolds ballast must land on the finite cover

## 1. Object

The ballast-energy ledger proved that a PSD Leray-null Reynolds branch carries
the positive scalar measure
\[
  \mu_R={1\over2}\operatorname{tr}R .
  \tag{BEC.1}
\]
This measure is not pressure gauge. It is unresolved kinetic energy in the WKB
profile ledger.

This note gives its cover landing. The statement is measure-theoretic, but it
is exact: once \(\mu_R\) is part of the admitted profile, it must be carried by
the same finite/readout-compatible cover certificate as the rest of the WKB
witness.

## 2. Lifted cover form

Let \(X\) be the observable WKB phase-label space and let
\[
  \mu_R\in\mathcal M_+(X)
  \tag{BEC.2}
\]
be the ballast-energy measure induced by the Reynolds defect. A legal finite
cover certificate for \(\mu_R\) is a lifted positive measure
\[
  \widetilde\mu_R
  \in
  \mathcal M_+\bigl(X\times\{1,\ldots,M\}\times P^M\bigr)
  \tag{BEC.3}
\]
such that
\[
  \pi_\#\widetilde\mu_R=\mu_R
  \tag{BEC.4}
\]
and
\[
  \operatorname{supp}\widetilde\mu_R\subset\mathcal C_{\rm cov},
  \tag{BEC.5}
\]
where \(\mathcal C_{\rm cov}\) is the closed finite-cover legality set:
membership in one of the \(M\) charts, readout compatibility, and finite
overlap.

This is the same lifted-cover structure as the finite-cover certificate note,
applied to the newly identified ballast-energy measure.

## 3. Closed cover passes to ballast energy

Assume the prelimit ballast measures lift:
\[
  \operatorname{supp}\widetilde\mu_{R,j}\subset\mathcal C_{\rm cov},
  \qquad
  \widetilde\mu_{R,j}\stackrel{*}{\rightharpoonup}\widetilde\mu_R .
  \tag{BEC.6}
\]
If the cover parameter space is compact and \(\mathcal C_{\rm cov}\) is
closed, then
\[
  \operatorname{supp}\widetilde\mu_R\subset\mathcal C_{\rm cov}.
  \tag{BEC.7}
\]
Therefore
\[
  \mu_R=\pi_\#\widetilde\mu_R
  \tag{BEC.8}
\]
is ballast energy with a legal finite-cover certificate.

So positive ballast is admitted only as covered ballast.

## 4. Projection without cover is Pack loss

If \(\mu_R\) survives only after the cover coordinate is projected away, the
closed-graph witness theorem does not admit it. The exact countermodels from
the finite-cover note apply with \(\mu_R\) in place of a generic profile
measure:

1. radius collapse: the observable ballast mass remains positive while the
   legal chart radius tends to zero;
2. unbounded chart count: the observable ballast mass has a weak-* limit while
   the number of legal charts escapes;
3. overlap or readout incompatibility: the scalar energy measure survives while
   the legal cover relation fails.

In all cases, the profile has not retained an admitted WKB witness. It has
lost Pack-side carrier/cover service.

## 5. Reduced pressure-row survivor

The PSD Leray-null pressure-row survivor now has a cover clause:

```text
R is PSD Leray-null covariance,
mu_R=(1/2)tr R is positive ballast energy,
and mu_R lifts to the same finite/readout-compatible cover certificate;
otherwise the branch is Pack-side cover failure or another row failure.
```

This does not prove the finite cover exists for actual Navier-Stokes WKB
ballast. It removes one possible misrouting: positive ballast energy cannot be
retained as an uncovered pressure-null residue. The separate ballast
ancestry/tower landing records the matching Part-side obligations after the
cover row.

## 6. Four-sentence result

The ballast \(\mu_R=(1/2)\operatorname{tr}R\) is a positive scalar profile
measure. If it is admitted, it must lift to the compact closed finite-cover
certificate, just like any other WKB profile mass. If the observable ballast
survives after the cover coordinate collapses, escapes, or becomes incompatible,
the branch has lost Pack-side carrier service. Thus PSD Leray-null covariance
does not create an uncovered pressure branch; it creates covered ballast energy
or Pack-side cover failure.

## 7. State

This note proves the exact finite-cover landing for the positive
ballast-energy measure.

It proves no uniform finite-cover theorem for actual Navier-Stokes WKB ballast,
no legal carriage theorem through ancestry or tower, no WKB profile admission
theorem, no WKB construction/exclusion theorem, no confinement constant, and no
MPP closure.
