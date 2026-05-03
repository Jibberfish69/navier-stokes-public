# MPP SourcePulse Localized-Core Bypass of MSC.Localize Note

## Status

Route-refinement note for the ancestry attack on

```math
\boxed{
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
}
```

This note separates two uses of localization.

## Two Presentations

The older `MSC.BadAC` presentation starts from a global mixed-shell product:

```math
D_j(t)D_\ell(t).
```

That route needs a localization theorem:

```math
MSC.Localize^{src}
\quad\text{or}\quad
MSC.DiagTether^{src}
```

before compactness or ancestry can even select a physical child pulse.

The localized source-pulse core is different.  In
`mpp-sourcepulse-irreducible-core-and-route-equivalence-note.md`,
failure of `SourcePulseExclusion.A` is already represented by a terminal
same-fluid source-pulse packet

```math
P_n=(Q_n^\Phi,j_n,I_n,\mu_n^{src},\mu_n^{mix},\gamma_n,\mathfrak F_n)
```

with nonzero localized active source / mixed mass on the selected heat-scale
windows.

## Bypass Rule

For the ancestry route, use the localized core presentation as the starting
object:

```math
\neg SourcePulseExclusion.A
\Longrightarrow
\exists\ \text{localized source-balanced child pulse }P.
```

Then `MSC.Localize^{src}` is not an extra upstream theorem for ancestry.  It is
only needed if one insists on proving the route-equivalence bridge from the
global `MSC.BadAC` formulation to the localized core.

The parent theorem is also not left at the older coarse
`SourceParent.Measure` label.  The positive parent object is reduced by

```math
EdgeDisintegrate.A+AntiDiffuseParent.A
\Longrightarrow
SourceParent.Measure,
```

and the live ancestry-side parent subtarget is sharpened further to

```math
ParentConcentrationOrDiffuseCharge.A.
```

Thus the ancestry path should be written as:

```math
\neg SourcePulseExclusion.A
\Longrightarrow
P^0
\xRightarrow{ParentConcentrationOrDiffuseCharge.A}
\bigl[
\text{finite charge}
\vee
\text{legal same-fluid ancestry chain}
\bigr].
```

not as:

```math
\neg MSC.BadAC
\Longrightarrow
MSC.Localize^{src}
\Longrightarrow
P^0.
```

## Consequence

This bypass does not prove `SourcePulseExclusion.A`.  It removes a false
blocker from the ancestry attack.

The remaining ancestry burden is exactly:

```math
\boxed{
ParentConcentrationOrDiffuseCharge.A
+
\bigl(
BackwardDrainFunctional.A
\vee
BoundedAncestryClass.A+SourceResidueLiouville.A
\bigr).
}
```

The global localization / diagonal-tether machinery remains relevant only for
older presentations such as `MSC.BadAC`.
