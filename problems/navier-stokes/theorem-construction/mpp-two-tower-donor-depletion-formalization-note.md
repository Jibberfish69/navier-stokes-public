# MPP Two-Tower Donor-Depletion Formalization Note

## Status

This note formalizes the old donor-tower slogan:

```math
\text{one tower can feed another only by depleting a donor tower.}
```

The slogan is meaningful, but it is not automatically a proof of
`SourcePulseExclusion.A`.  In theorem-facing form it becomes a precise donor
depletion theorem.  Proving that theorem closes the current ancestry route, but it
is not supplied by raw energy, local energy, finite dyadic band structure, or
same-fluid transport alone.

## Source-Pulse Setting

Work on the localized `SourcePulseExclusion.A` presentation.  Failure gives a
same-fluid active child pulse `P` with normalized source/mix mass bounded below.
Let

```math
d\pi_P(P^-)
```

be the positive same-fluid parent edge measure from
`mpp-sourceparent-measure-formal-definition-note.md`, after the
`EdgeDisintegrate.A` layer has kept the co-located source decomposition before
global Cauchy/Young estimates erase parent structure.

The tower model is:

```math
{d\over dt}E_j^Q(t)
+\nu D_j^Q(t)
=
\sum_i \mathsf T_{i\to j}^Q(t)
+\mathsf{Err}_j^Q(t),
```

where `E_j^Q` is the localized shell/tower energy, `D_j^Q` is viscous
dissipation, and `\mathsf T_{i\to j}^Q` is the nonlinear transfer from a donor
tower/window to the child tower/window.  The positive part of the localized
transfer is one source of `d\pi_P`.

## Correct Formal Statement

The usable theorem is not merely "energy is conserved".  It is:

```math
\boxed{
\textbf{TwoTowerDonorDepletion.A}
}
```

There exist:

1. a nonnegative donor reserve `\mathcal R_{\mathrm{don}}`;
2. a nonnegative edge-cost measure `d\mathfrak d(P^-\to P)`;
3. a summable localization / pressure / cutoff loss `d\ell`;

such that for every legal same-fluid source-parent edge,

```math
d\pi(P^-\to P)
\le
C\,d\mathfrak d(P^-\to P)+d\ell(P^-\to P),
\tag{TTD.1}
```

and for every legal ancestry tree `\mathcal T`,

```math
\sum_{e\in\mathcal T}d\mathfrak d(e)
\le
C\,\mathcal R_{\mathrm{don}}(root(\mathcal T))
+C\sum_{e\in\mathcal T}d\ell(e),
\tag{TTD.2}
```

with `\mathcal R_{\mathrm{don}}` finite under `OriginalSmoothData`.

In words: every positive source-parent edge must spend a genuinely finite donor
reserve, up to already-licensed summable losses.

## What This Would Prove

### Lemma TTD.B (donor depletion implies diffuse-parent charge)

Assume `TwoTowerDonorDepletion.A`.  For a child pulse `P`, decompose
`\pi_P` into any bounded concentrated subfamily and its diffuse complement.
By `(TTD.1)`,

```math
\pi_P(\mathsf{Pred}(P)\setminus\mathcal C(P))
\le
C\,\mathfrak d_P(\mathsf{Pred}(P)\setminus\mathcal C(P))
+\ell_P(\mathsf{Pred}(P)\setminus\mathcal C(P)).
```

By `(TTD.2)` the first term is paid by the finite donor reserve along the
ancestry tree, and the second term is summable by the installed legal-loss
ledger.  Therefore:

```math
\boxed{
TwoTowerDonorDepletion.A
\Longrightarrow
DiffuseParentCharge.A.
}
```

Consequently:

```math
\boxed{
TwoTowerDonorDepletion.A
\Longrightarrow
ParentConcentrationOrDiffuseCharge.A.
}
```

without needing bounded physical parent concentration.

### Lemma TTD.C (donor depletion implies a backward drain)

Assume a legal infinite source ancestry chain:

```math
\cdots\to P^{-2}\to P^{-1}\to P^0 .
```

The source-pulse lower bound gives a fixed normalized edge lower density:

```math
\pi(P^{-m-1}\to P^{-m})\ge c_0>0
```

after passing to the charged parent branch.  By `(TTD.1)`, each edge spends at
least a fixed amount of donor reserve up to summable losses.  Summing and using
`(TTD.2)` contradicts finiteness of `\mathcal R_{\mathrm{don}}`.

Thus:

```math
\boxed{
TwoTowerDonorDepletion.A
\Longrightarrow
BackwardDrainFunctional.A.
}
```

and therefore:

```math
\boxed{
TwoTowerDonorDepletion.A
\Longrightarrow
SourcePulseExclusion.A
}
```

through the drain package already recorded in
`mpp-sourcepulse-ancestry-route-conditional-closure-note.md`.

## Direct Test Against Installed Inputs

The local algebraic half has now been separated in
`mpp-two-tower-donor-balance-modulo-refill-note.md`.  That note proves:

```math
\boxed{
LocalDonorBalance.A:
\quad
\text{a donor tower feeds another only by draining, by legal loss, or by being
refilled from its own source parents.}
}
```

Equivalently, finite refill trees telescope to leaf energy plus licensed losses.
Thus the remaining issue is not the shell balance identity.  It is the
well-foundedness or chargeability of terminal refill trees:

```math
\boxed{
RefillTreeWellFounded.A.
}
```

The strengthened donor theorem now has the sharper reduction:

```math
\boxed{
LocalDonorBalance.A+RefillTreeWellFounded.A
\Longrightarrow
TwoTowerDonorDepletion.A.
}
```

The direct attempt
`mpp-refilltree-wellfounded-direct-attempt-note.md` further reduces
`RefillTreeWellFounded.A` to the Zeno branch alternatives
`ScaleCriticalTreeCarleson.A` or `ZenoSourceResidueRigidity.A`, after the
non-Zeno entrance branch is handled by `EntranceLeafDecay.A`:

```math
\sum_{v\in\partial\mathcal T_N}E_N(v;t_v^-)
\le
C_{\mathrm{leaf}}C_{\mathrm{ov}}
\sup_{t\le T_\ast-\tau}\|P_{\ge N-C}u(t)\|_{L^2}^2
\to0.
```

The Navier-Stokes shell flux identity gives antisymmetric transfer before
weights and localization.  It does not by itself give `(TTD.1)` or `(TTD.2)` at
the source-pulse normalization.

The obstruction is scale-critical.  A terminal active pulse may have fixed
normalized source/mix mass while its raw physical `L^2` energy cost shrinks with
the heat-scale volume.  Thus the global energy reserve

```math
\sup_t\|u(t)\|_2^2
```

does not assign a fixed positive cost to every normalized parent edge.

The same failure appears for local energy:

```math
A_\ell
\le
A_{\ell-1}+Charge_\ell+Reserve_\ell.
```

This telescopes only if `Charge_\ell` is already a scale-normalized Carleson /
donor-depletion charge, or if the ancestry chain reaches a fixed entrance
scale.  The terminal source-pulse branch allows shrinking scales and moving
same-fluid labels, so neither conclusion is automatic.

Frequency finite-band structure also does not help.  It restricts which shell
indices can interact, but not how many physical or triadic parent pieces can
feed one child.  A positive parent measure can be diffuse:

```math
\pi_P={1\over M}\sum_{\alpha=1}^M\delta_{P^-_\alpha},
\qquad M\to\infty,
```

with no bounded parent subcollection carrying a fixed fraction and no raw
energy cost proportional to `M`.

## Verdict

The correct formalization of the "one tower pays another" idea is:

```math
\boxed{
TwoTowerDonorDepletion.A.
}
```

It is a strong and useful sufficient theorem:

```math
\boxed{
TwoTowerDonorDepletion.A
\Longrightarrow
ParentConcentrationOrDiffuseCharge.A
+BackwardDrainFunctional.A
\Longrightarrow
SourcePulseExclusion.A.
}
```

But it is not installed by the current route inputs.  Proving it requires
a scale-normalized donor-depletion / Carleson reserve, or a well-founded
refill-tree theorem, for the positive nonlinear source-parent edges.  That is
exactly the active source-pulse wall in two-tower language, not a softer
consequence of ordinary energy conservation.
