---
theorem_id: forward-gold-high-ratio-laminar-ancestry-multiplicity-tax-20260626
status: audit-installed-refined-live-hinge-unproved
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
supersedes_hinge: GlobalCriticalHalfTailPackingExclusion.A
refined_hinge: HighRatioLaminarAncestryMultiplicityTax.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-ratio-goodlambda-half-barrier-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strict-goodlambda-requires-epsilon-reserve-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-half-tail-profile-liouville-boundary-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-tree-carleson-does-not-pay-critical-half-tail-20260626.md
---

# High-Ratio Laminar Ancestry Multiplicity Tax

The critical half-tail note names the right enemy but in a blunt form.  It says
to exclude terminal packing of localized affine/material-time high-ratio
profiles.  The sharper same-material formulation is:

```math
\boxed{\text{HighRatioLaminarAncestryMultiplicityTax.A}}
```

The point is that the high-ratio packets are not unrelated affine packets.
They are samples of one transported material history.  Their compressed
directions, collars, pressure-Hodge frames, and annular returns must therefore
fit into one material ancestry.

## 1. Current half-tail obstruction

Use the existing high-ratio variables:

```math
d\mu_j(t)=2^{2j}e_j(t)\,dt,
\qquad
\rho_j(t)={\Theta_j^{mat}(t)\over2^{2j}},
```

```math
E_{j,\ell}=\{2^\ell\delta<\rho_j\le2^{\ell+1}\delta\},
\qquad
\nu_\ell=\sum_j\mu_j(E_{j,\ell}).
```

Raw ledgers give the zeroth moment

```math
\sum_{\ell\ge0}\nu_\ell<\infty.
```

The Gold full-action theorem needs the first ratio moment

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
```

The critical half-tail

```math
\nu_\ell\sim {2^{-\ell}\over\ell+1},
\qquad
N_L\sim {2^{-L}\over L}
```

survives the raw ledgers and sits at the good-lambda half-barrier.

## 2. Laminarity is the first structural sharpening

Let \(\gamma\) index a retained high-ratio visit.  It carries:

```math
(j_\gamma,\ell_\gamma,I_\gamma,A_\gamma(t),F_\gamma(t)),
```

where \(A_\gamma(t)\) is the transported material collar/core region and
\(F_\gamma(t)\) is the retained complete frame:

```math
F_\gamma=(p_\gamma,\widehat\xi_\gamma,n_\gamma).
```

The visit weight is

```math
a_\gamma
\simeq
2^{\ell_\gamma}\mu_{j_\gamma}(E_{j_\gamma,\ell_\gamma}\cap I_\gamma).
```

The first ratio moment is the sum of these visit weights:

```math
\sum_\gamma a_\gamma
\simeq
\sum_{\ell\ge0}2^\ell\nu_\ell.
```

The arbitrary-packing model forgets that all \(A_\gamma(t)\) are transported by
the same material flow.  For two high-ratio visits on the same terminal region,
the material supports are either nested along an ancestry line, disjoint after
transport, or they cross.  Crossing is not free: it creates transverse collar
separation, Hodge-frame mismatch, or legal/annular interface cost.

Thus the first required lemma is:

```math
\boxed{
\text{nonlaminar high-ratio overlap}
\Longrightarrow
\text{paid transverse separation / legal interface cost}.
}
```

After removing the paid nonlaminar overlaps, the surviving critical half-tail
must be laminar in material ancestry.

## 3. Multiplicity tax on one ancestry line

On one material ancestry line, repeated high-ratio visits must reuse the same
deformation history.  A unit high-ratio visit cannot be newly born without
spending at least one of:

```math
d[\log\sigma_{\max}(D_aX)]_+,
```

```math
d\,\operatorname{Var}(F_\gamma),
```

or a collar-normal / annular turnstile separation measure.

The needed tax is:

```math
\sum_{\gamma\subset \mathcal A(a)} a_\gamma
\le
C\,\mathcal R_{\rm ancestry}(a),
```

where \(\mathcal A(a)\) is the laminar chain above a material ancestry line and
\(\mathcal R_{\rm ancestry}\) is the same-history deformation, frame-rotation,
and collar-separation reserve.

Globally, this must yield

```math
\sum_\gamma a_\gamma
\le
C\int \mathcal R_{\rm ancestry}(a)\,da
+R_{\rm legal}
<\infty.
```

That estimate is exactly the missing weight-bearing structure.  It beats the
critical tail because a pure raw ledger counts each visit with weight
\(\mu_\gamma\), while the multiplicity tax counts the same visit with the
Gold weight \(2^{\ell_\gamma}\mu_\gamma\).

## 4. What remains unproved

This audit does not prove the multiplicity tax.  It refines the live theorem.

The remaining proof must establish both parts:

```math
\text{High-ratio family}
\Longrightarrow
\text{laminar ancestry after paid nonlaminar exits},
```

and

```math
\text{laminar high-ratio multiplicity}
\Longrightarrow
\text{Cauchy-Green / frame / collar tax controlling }
\sum_\gamma a_\gamma.
```

Without the second line, laminarity is only a description.  With it, the
first ratio moment follows:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
```

## 5. Result

The refined Gold hinge is:

```math
\boxed{\text{HighRatioLaminarAncestryMultiplicityTax.A}}
```

Plain statement:

For one original smooth material history, every critical high-ratio half-tail
family admits a laminar material-ancestry decomposition after paid nonlaminar
exits.  On each ancestry line, repeated unit normalized material-time action
forces Cauchy-Green deformation, Hodge-frame rotation, or collar-normal
separation.  The accumulated multiplicity tax dominates the first ratio
moment.

This is sharper than `GlobalCriticalHalfTailPackingExclusion.A` because it
names the structure that must defeat the critical half-tail instead of asking
to exclude arbitrary packing.
