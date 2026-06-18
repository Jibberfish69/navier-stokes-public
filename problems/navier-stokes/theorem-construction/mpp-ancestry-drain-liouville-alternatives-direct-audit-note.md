# MPP Ancestry Drain / Liouville Alternatives Direct Audit Note

## Status

Direct audit of the two remaining ancestry closures after the localized-core
bypass:

```math
\boxed{
AncestryDrain.A
\quad\text{or}\quad
AncestryCompactBound.A+SourceResidueLiouville.A.
}
```

The localized core presentation of `SourcePulseExclusion.A` already supplies a
child source-pulse packet.  The ancestry route therefore does not need
`MSC.Localize^{src}` as an extra upstream theorem in this presentation.  It
also does not stop at the older coarse `SourceParent.Measure` label: the
positive parent theorem is reduced through
`EdgeDisintegrate.A+AntiDiffuseParent.A=>SourceParent.Measure`, and the live
ancestry-side parent subtarget is sharpened further to
`ParentConcentrationOrDiffuseCharge.A`.  What remains is that parent subtarget
plus one of the two closures audited here.

## Alternative 1: `AncestryDrain.A`

The drain theorem must say that every legal source-parent step either spends a
fixed positive amount of a finite route reserve or strictly improves a bounded
terminal charge.  Then an infinite same-fluid ancestry chain is impossible.

The installed reserves do not prove this.  Energy dissipation is first-moment
control, not a price for every scale-normalized source-balanced step.  The
mixed-boundary and active-square reserves were already tested in the
pulse-charge and active-square audits and do not price a terminal pulse whose
nonlinear source refills the active shell.  The source-parent axioms themselves
also leave loss/charge as a theorem requirement, not an installed fact.

Thus `AncestryDrain.A` is not installed.

## Alternative 2: `AncestryCompactBound.A+SourceResidueLiouville.A`

The compact-bound theorem would force every infinite source-balanced ancestry
chain into a closed ancient class:

```math
\mathcal B
=
\text{bounded ancient / Type I / critical-small / self-similar /
two-dimensional / axisymmetric / equivalent rigid class}.
```

The Liouville theorem would then prove:

```math
\mathcal B
\Longrightarrow
\gamma_\ast\,d\mu_\ast^\sigma=0.
```

The installed compactness machinery gives local suitable limits after the
source-residue packet is localized.  It does not provide a global bounded
ancient hypothesis, Type I control, critical smallness, self-similarity,
axisymmetry, or a theorem that the inherited source residue vanishes.  The
ancient limit is precisely allowed to carry the active source residue unless a
new rigidity theorem excludes it.

Thus `AncestryCompactBound.A+SourceResidueLiouville.A` is not installed.

## Verdict

With the localized-core bypass, the ancestry route has the sharp conditional
form:

```math
\boxed{
\neg SourcePulseExclusion.A
\Longrightarrow
P^0
\xRightarrow{ParentConcentrationOrDiffuseCharge.A}
\bigl[
\text{finite charge}
\vee
\text{infinite same-fluid ancestry chain}
\bigr].
}
```

To close that route one must still prove:

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

The drain and Liouville alternatives are not consequences of the installed
energy, local-energy, compactness, same-fluid geometry, or source-supplier
surfaces.
