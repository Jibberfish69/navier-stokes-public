# MPP ParentConcentrationOrDiffuseCharge.A Direct Audit Note

## Status

Direct split audit for the sharper anti-diffuse parent theorem isolated in
`mpp-antidiffuseparent-a-direct-attempt-note.md`:

```math
\boxed{
ParentConcentrationOrDiffuseCharge.A.
}
```

This is the current live subtarget inside the ancestry presentation of
`SourcePulseExclusion.A`.

## Target

Given a localized source-balanced child pulse `P` and its positive
same-fluid parent measure

```math
d\pi_P(P^-)
```

prove at least one of:

```math
\boxed{
ParentConcentration.A:
\exists \mathcal C(P)\subset\mathsf{Pred}(P),\quad
|\mathcal C(P)|\le B,\quad
\pi_P(\mathcal C(P))\ge c\,\pi_P(\mathsf{Pred}(P)).
}
\tag{PCD.1}
```

or

```math
\boxed{
DiffuseParentCharge.A:
\pi_P(\mathsf{Pred}(P)\setminus \mathcal C(P))
\le
Charge_P+Reserve_P+o(1)
}
\tag{PCD.2}
```

with the right-hand side summable over the terminal selected ancestry.

## Attempt 1: `ParentConcentration.A`

The frequency support of legal parents has finite band complexity:

```math
j_{P^-}\in[j_P-M,j_P+M]
```

up to the licensed lower-feed bands.  This does not bound physical parent
complexity.  At heat scale `r_P`, a child cylinder can receive source
contributions from many legal physical predecessor packets and many triadic
pieces while the total positive parent measure is normalized to
\(\pi_P(\mathsf{Pred}(P))=1\).

The obstruction is the diffuse model:

```math
\pi_P=\frac1M\sum_{\alpha=1}^M\delta_{P^-_\alpha},
\qquad
\pi_P(\mathsf{Pred}(P))=1,
\qquad
M\to\infty.
```

For every fixed route constant `B`,

```math
\sup_{|\mathcal C|\le B}\pi_P(\mathcal C)\le B/M\to0.
```

The installed same-fluid transport law preserves labels after a predecessor is
chosen.  It does not select a bounded-complexity predecessor family from this
diffuse measure.  The installed dyadic finite-band structure also does not
exclude broad physical or triadic parent diffusion.

Thus `ParentConcentration.A` is not installed.

## Attempt 2: `DiffuseParentCharge.A`

The diffuse-charge alternative would price the high-branching part of the
parent measure by an installed finite ledger.  The available ledgers are:

```math
EnergyDrain,
\quad
MixedBoundary,
\quad
PressureCutoffLedger,
\quad
ActiveSquareReserve,
\quad
SourceLocalizationLoss.
```

Energy and local-energy ledgers control raw first-moment dissipation and local
balances.  They do not price the branching number or entropy of a positive
source-parent measure.

Pressure and cutoff ledgers route separated response terms after localization.
They do not charge diffuse nonlinear source parentage on the same active bad
windows.

An active-square reserve is sufficient here only under the exact additional
hypothesis that the same terminal bad windows satisfy the active-window Carleson
/ square-source bound.  That theorem has already been audited as
route-equivalent to `SourcePulseExclusion.A`, not as an installed reserve.

Source-localization loss is a legal charge only for edges outside the licensed
same-fluid predecessor region.  It does not price legal diffuse parentage
inside `\mathsf{Pred}(P)`.

Thus `DiffuseParentCharge.A` is not installed.

## Sufficient Donor-Depletion Upgrade

The note `mpp-two-tower-donor-depletion-formalization-note.md` records the
stronger sufficient theorem:

```math
\boxed{
TwoTowerDonorDepletion.A.
}
```

If every legal positive source-parent edge spends a finite scale-normalized
donor reserve, then diffuse parentage is charged by that reserve.  Hence:

```math
\boxed{
TwoTowerDonorDepletion.A
\Longrightarrow
DiffuseParentCharge.A
\Longrightarrow
ParentConcentrationOrDiffuseCharge.A.
}
```

The same note audits the obstruction: raw `L^2` energy and local energy do not
give a fixed positive cost at source-pulse normalization, and finite frequency
banding does not prevent diffuse physical parentage.  The donor-depletion
upgrade is therefore a real sufficient theorem target, not an installed input.

## Verdict

Neither branch of the disjunction is supplied by the installed finite-band,
same-fluid, local-energy, pressure/cutoff, positive-carrier, or active-square
surfaces:

```math
\boxed{
ParentConcentration.A\ \text{open}
\qquad
DiffuseParentCharge.A\ \text{open}.
}
```

The single exact obstruction is:

```math
\boxed{
\text{legal positive parent mass may be spread across arbitrarily many
predecessor packets, with no bounded concentration and no installed finite
charge for the diffuse part.}
}
```

Therefore the ancestry-side parent step remains:

```math
\boxed{
ParentConcentrationOrDiffuseCharge.A.
}
```

It is the sharpest current form of `AntiDiffuseParent.A`, and remains a
route-equivalent presentation of the same `SourcePulseExclusion.A` terminal
source-pulse wall.
