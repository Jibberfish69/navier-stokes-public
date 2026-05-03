# MPP SourceParent.Measure Axiom Direct Audit Note

## Status

Direct axiom-level audit for the coarse parent-measure theorem isolated in
`mpp-sourceparent-measure-formal-definition-note.md`:

```math
\boxed{
SourceParent.Measure.
}
```

This is no longer the sharpest ancestry-side stop on disk. The later split note
`mpp-sourceparent-edge-disintegration-and-antidiffuse-split-note.md` proves

```math
EdgeDisintegrate.A
+
AntiDiffuseParent.A
\Longrightarrow
SourceParent.Measure,
```

with `EdgeDisintegrate.A` handling the localized source-recovery / same-fluid
edge-fidelity half once the pre-Cauchy source packet is used, and
`AntiDiffuseParent.A` left as the genuine remaining theorem. The present audit
therefore records why the old aggregate route does **not** install the parent
measure axioms by itself, and why the ancestry branch must now be read more
sharply through that split.

## SP.1 Source Recovery

`SP.1` asks for a positive parent measure recovering the child's positive
active source:

```math
\int_{\mathsf{Pred}(P)}d\pi_P(P^-)
\ge
c_0\mu_P^{src,+}(P)-Charge_P-Reserve_P-o(1).
```

The installed shell/local balances identify that a source-balanced child must
be fed by nonlinear source in aggregate.  They do not construct a positive
predecessor measure from that aggregate.  The signed lifted remainder has
variable sign after active weights and cutoffs, while the positive envelope
forgets the directed source relation.

Thus `SP.1` is not installed from the old aggregate route alone. On the
sharpened ancestry branch, it is absorbed into `EdgeDisintegrate.A` once the
localized pre-Cauchy source is used.

## SP.2 Parent Lower Density

`SP.2` asks for a finite-complexity subcollection carrying a fixed fraction of
the parent measure:

```math
\pi_P(\mathcal C(P))
\ge
c_1\pi_P(\mathsf{Pred}(P)),
\qquad
|\mathcal C(P)|\le B.
```

The obstruction is diffuse parentage.  The nonlinear source feeding a child
can be distributed across many triads, many physical cells, or a broad
low/intermediate strain field.  The current dyadic and local estimates provide
aggregate bounds, not a finite-branching concentration theorem.

Thus `SP.2` is not installed.

## SP.3 Same-Fluid Edge Fidelity

`SP.3` asks every positive parent edge to preserve:

```math
\text{same labels},
\qquad
\text{same material family},
\qquad
\text{same endpoint fibre}.
```

The same-fluid flow transports labels once a physical parent packet has been
selected.  It does not select that parent from a global shell-time source
aggregate.  A candidate source contribution may come from a different physical
cell, a nonlocal pressure/strain field, or a broad frequency interaction with
no already-licensed endpoint-fibre edge.

Thus `SP.3` is not installed from the old aggregate route alone. On the
sharpened ancestry branch, it is likewise absorbed into `EdgeDisintegrate.A`.

## SP.4 Summable Loss

`SP.4` asks that iterated parent selection not lose all mass through infinitely
many tiny branches:

```math
\prod_{m=1}^K\ell_m\ge c_\infty
```

or that the loss be charged to a finite reserve.

The installed finite reserves price energy dissipation, separated source
ledgers, and selected pressure/cutoff terms.  They do not price arbitrary
normalization loss caused by diffuse source splitting unless one already has a
finite-complexity parent theorem or an active-window Carleson/square-source
charge.

Thus `SP.4` is not installed.

## SP.5 Charge Alternative

`SP.5` asks every axiom failure to land in a named finite charge:

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

The pulse-charge and bad-set countermodel notes show that existing finite
ledgers do not price a source-balanced heat-scale pulse whose active mass is
concentrated on the same bad window.  Therefore the charge alternative cannot
be asserted for failed parent recovery, failed lower density, failed
same-fluid fidelity, or failed summable-loss control.

Thus `SP.5` is not installed.

## Verdict

The five axioms of `SourceParent.Measure` are not bookkeeping consequences of
the old aggregate route. But the branch is now sharper than the original
parent-measure label:

```math
\boxed{
AntiDiffuseParent.A
\quad\text{or}\quad
LocalSource.NoPulse.A.
}
```

More precisely:

1. `EdgeDisintegrate.A` handles the localized source-recovery / same-fluid edge
   fidelity half of `SourceParent.Measure`;
2. the exact remaining ancestry-side theorem is `AntiDiffuseParent.A`, which
   must supply parent lower density, summable loss, and the charge alternative;
   the companion direct-attempt note
   `mpp-antidiffuseparent-a-direct-attempt-note.md` sharpens this further to
   `ParentConcentrationOrDiffuseCharge.A`, equivalently
   `ParentConcentration.A \vee DiffuseParentCharge.A`;
3. the pre-Cauchy bypass remains `LocalSource.NoPulse.A`, which is route-parallel
   to the ancestry branch rather than subordinate to it.

Equivalently, the ancestry-side remaining theorem must convert the
source-balanced child packet into either:

```math
\text{a finite-branching same-fluid parent edge}
```

or

```math
\text{a named finite charge}.
```

Without that sharper theorem, pulse ancestry is only a conditional attack on
`SourcePulseExclusion.A`, not an installed discharge.
