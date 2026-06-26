---
theorem_id: forward-gold-weighted-laminar-ancestry-reserve-audit-20260626
status: audit-installed-laminar-target-kept-but-bare-volume-reserve-rejected
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge: GlobalLaminarAncestryVariationReserve.A
refined_hinge: GlobalWeightedLaminarAncestryVariationReserve.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-ratio-laminar-ancestry-multiplicity-tax-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-ancestry-line-frame-deformation-tax-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-laminar-ancestry-tax-summability-boundary-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-laminar-ancestry-variation-reserve-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-paid-nonlaminar-exit-collar-separation-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-localized-affine-global-matching-scaling-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-forward-native-reserve-ratio-tail-obstruction-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-weight-beating-tail-ns-structure-audit-20260626.md
---

# Weighted Laminar Ancestry Reserve Audit

This audits the relay target

```text
HighRatioLaminarAncestryMultiplicityTax.A
```

and the follow-up hinge

```text
GlobalLaminarAncestryVariationReserve.A.
```

The laminar ancestry target is the right same-material structure.  The half-tail
cannot be treated as unrelated affine packets.  After paid nonlaminar exits, the
remaining high-ratio visits must be organized by one transported material
ancestry forest.

The correction is that the global reserve cannot be read as a bare material
volume estimate.

## 1. What is already proved

The single-line ancestry tax gives, on one laminar ancestry line,

```math
\sum_{\gamma\subset\mathcal A(a)} a_\gamma
\le
C\,V_C(\mathcal A(a))
+C\,V_F(\mathcal A(a))
+R_{\rm legal}(\mathcal A(a)).
```

Here \(a_\gamma\) is the Gold-weighted high-ratio visit contribution, and the
sum over all retained visits is the first ratio moment:

```math
\sum_\gamma a_\gamma
\simeq
\sum_{\ell\ge0}2^\ell\nu_\ell .
```

The paid-nonlaminar note also gives the correct geometric split: crossing
visits are charged to angle, collar separation, normal separation, or legal
interface terms, leaving a laminar forest.

So the relay idea is valid as a structural reduction:

```text
critical half-tail
-> paid nonlaminar exits + laminar ancestry forest
-> single-line Cauchy-Green/frame/collar multiplicity tax.
```

## 2. Why the bare-volume reading is too weak

The current boundary note phrases the global reserve as

```math
\int \bigl(V_C+V_F\bigr)\,da+E_{\rm nonlam}
\le
C_N(u_0)+R_{\rm legal}.
```

If \(da\) means ordinary material volume, this is not the Gold first-ratio
reserve.

The localized affine scaling audit gives terminal heat-scale samples with raw
cost

```math
\int |u_r|^2\lesssim r,
\qquad
\int_0^{r^2}\int |\nabla u_r|^2\lesssim r,
```

and similarly radius-weighted collar, convective, and pressure work, while the
normalized material action satisfies

```math
\int_0^{r^2}|A_r|\,dt\simeq 1.
```

Thus a dyadic terminal sequence can have

```math
\sum_k r_k<\infty
```

for raw volume, energy, dissipation, and fixed-collar ledgers, while retaining

```math
\sum_k 1=\infty
```

units of normalized material action.

That is the same separation as the ratio-tail obstruction:

```math
\sum_{\ell\ge0}\nu_\ell<\infty,
\qquad
\sum_{\ell\ge0}2^\ell\nu_\ell=\infty.
```

So a bare-volume laminar variation estimate either proves only a raw
zeroth-moment statement, or it is secretly using the missing Gold weight.

## 3. Corrected reserve statement

The reserve has to be weighted by the retained high-ratio ancestry/action
measure, or by an equivalent native deformation/turnstile reserve.  The correct
form is:

```math
\sum_{\gamma}a_\gamma
\le
C\int_{\mathcal F_{\rm lam}}
\bigl(V_C+V_F+V_{\rm collar}+V_{\rm turnstile}\bigr)
\,d\mathcal R_{\rm ancestry}
+C\,E_{\rm nonlam}
+R_{\rm legal},
```

with

```math
\int_{\mathcal F_{\rm lam}}
\bigl(V_C+V_F+V_{\rm collar}+V_{\rm turnstile}\bigr)
\,d\mathcal R_{\rm ancestry}
+E_{\rm nonlam}
\le
C_N(u_0)+R_{\rm legal}.
```

Here \(d\mathcal R_{\rm ancestry}\) is not a new detached supplier.  It is the
native same-material deformation, complete-frame, collar-normal, and annular
turnstile reserve carried by the original transported history.

Equivalently, one may define the laminar forest measure so that \(da\) already
means this Gold ancestry/action measure.  With ordinary material volume, the
statement is too weak.

## 4. Refined hinge

The included relay target should therefore be held as:

```text
HighRatioLaminarAncestryMultiplicityTax.A
```

with the live global reserve sharpened to:

```text
GlobalWeightedLaminarAncestryVariationReserve.A
```

Plain statement:

After paid nonlaminar exits, the critical high-ratio terminal family is a
laminar same-material ancestry forest.  Repeated visits on each ancestry line
are taxed by Cauchy-Green deformation, complete-frame projective variation,
collar-normal separation, and annular turnstile variation.  The missing theorem
is a finite global weighted reserve for that laminar forest, with the retained
Gold high-ratio action measure included.

## 5. Result

This audit includes the supplied laminar idea, but it rejects the unweighted
forest-reserve reading.

The current Gold frontier is not a local Liouville theorem, a raw energy
estimate, or a bare material-volume variation estimate.  It is the global
weighted same-material ancestry reserve that controls

```math
\sum_{\ell\ge0}2^\ell\nu_\ell.
```
