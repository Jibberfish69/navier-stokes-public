# AncestryCompactBound.A + SourceResidueLiouville.A — direct loop note

## Target

Assume an infinite legal same-fluid source ancestry chain

```math
\cdots\to P^{-2}\to P^{-1}\to P^0
```

with comparable normalized source residue. Prove both:

```math
AncestryCompactBound.A:
\quad
\text{the rescaled chain has an ancient limit in a rigid class }\mathcal B,
```

and

```math
SourceResidueLiouville.A:
\quad
\mathcal B\Longrightarrow \gamma_*\,d\mu_*^\sigma=0.
```

Since the ancestry chain carries nonzero inherited source residue, these two statements would contradict failure of `SourcePulseExclusion.A`.

## Attempt

The installed compactness machinery supplies local suitable ancient limits once localized packets and uniform local energy bounds are available. This produces an ancient source-residue object.

The extracted object lacks the rigid hypotheses used by known Liouville mechanisms:

```math
\text{bounded ancient},\quad
\text{Type I},\quad
\text{finite global ancient energy},\quad
\text{critical smallness},\quad
\text{self-similarity},\quad
\text{axisymmetric/two-dimensional reduction}.
```

Same-fluid ancestry preserves carrier/fibre coherence. It gives no global boundedness, no Type I scale control, no critical norm smallness, and no symmetry reduction for the ancient limit.

A broad Liouville statement for arbitrary local suitable ancient source-residue limits is unavailable. Smooth coherent ancient packets and cancellation profiles may carry local energy and source structure. The current compactness output therefore has no installed theorem forcing

```math
\gamma_*\,d\mu_*^\sigma=0.
```

Classical criteria such as BKM, Prodi-Serrin, Type I, and critical smallness are valid consumers. Their hypotheses are absent on the terminal ancestry limit produced by the current route.

## Result

The compactness/Liouville alternative remains open under installed inputs:

```math
BoundedAncestryClass.A\ \text{ open},\qquad
SourceResidueLiouville.A\ \text{ open}.
```

The precise obstruction is that local suitable compactness gives an ancient source-residue object without a rigid ancient class, and the route has no Liouville theorem for source residue outside such a class.

## Consequence

The branch cannot close through compactness alone. The remaining theorem package is

```math
ParentConcentrationOrDiffuseCharge.A
+BoundedAncestryClass.A
+SourceResidueLiouville.A.
```

Together with the failed donor-depletion and drain attempts, this leaves `SourcePulseExclusion.A` open at the source-pulse wall.