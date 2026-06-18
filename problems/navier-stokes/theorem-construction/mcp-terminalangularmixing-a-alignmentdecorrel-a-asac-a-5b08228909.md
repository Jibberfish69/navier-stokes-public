# TerminalAngularMixing.A / AlignmentDecorrel.A conditional proof note

## Status

Conditional theorem note.  The angular component has an ASAC account only after
the exact packet residual estimate and the no-incoming/backward-uniqueness inputs
for `ASAC.A` are installed.  The same selected terminal-window estimate closes
once that conditional ASAC gate and the terminal source-current branch are
supplied by `ZenoSourceResidueRigidity.A`.

## Target

For the same-fluid bounded-overlap terminal family `\mathcal F_N`, prove the selected-window angular/decorrelation estimate

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}
|w_{j_P}|^2
\left[e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}\right]_+\,dxdt
\le
C\rho_{inst,N}(\mathcal F_N)+o_N(1),
```

where `\rho_{inst,N}` consists of allowed drain, parent-drain, legal loss, and already-installed CM witness charges.

## Decomposition

On the selected windows, the native positive carrier splits into:

```text
active-alignment / near-band material-source part,
projected-cutoff and legal boundary part,
finite donor/refill part,
terminal signed source-current part.
```

The ASAC parent-drain assembly supplies the active-alignment payment only under
the exact residual/no-incoming hypotheses of `ASAC.A`:

```math
ASAC.A
\Longrightarrow
\text{active-alignment carrier paid by parent drain / legal drain}.
```

The installed bookkeeping gives

```math
ProjectedCutoffLedger.A+LegalBoundaryLedger.A
\Longrightarrow
\text{cutoff and boundary pieces paid by legal loss}.
```

The donor tree ledgers give

```math
LocalDonorBalance.A+EntranceLeafDecay.A
\Longrightarrow
\text{finite and non-Zeno refill branches paid}.
```

## Remaining branch

After the conditional ASAC gate and legal ledgers, the only surviving
source-current branch is

```math
TerminalWeightedNoFreeSink.A.
```

The post-ASAC reduction is

```math
ASAC.A
+ProjectedCutoffLedger.A
+LegalBoundaryLedger.A
+LocalDonorBalance.A
+EntranceLeafDecay.A
+ZenoSourceResidueRigidity.A
\Longrightarrow
TerminalWeightedNoFreeSink.A.
```

Thus, with ZenoSourceResidueRigidity.A installed, every selected positive terminal source-current edge has a signed partner, legal exit, donor depletion payment, or terminal residue evacuation.

## Conditional proof

Sum the four components over the bounded-overlap family.  Proved `ASAC.A` pays
the active-alignment component through its residual/no-incoming gate.
Projected-cutoff and boundary ledgers pay the legal pieces.
`LocalDonorBalance.A` and `EntranceLeafDecay.A` telescope finite/non-Zeno refill
trees.  `ZenoSourceResidueRigidity.A` removes the terminal atom branch.  The
family bounded-overlap constant converts packetwise payments into a single global
ledger bound:

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}
|w_{j_P}|^2
\left[e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}\right]_+\,dxdt
\le
C\rho_{inst,N}(\mathcal F_N)+o_N(1).
```

This is AlignmentDecorrel.A on the same selected terminal windows.  Therefore

```math
ASAC.A
+ProjectedCutoffLedger.A
+LegalBoundaryLedger.A
+LocalDonorBalance.A
+EntranceLeafDecay.A
+ZenoSourceResidueRigidity.A
\Longrightarrow
TerminalAngularMixing.A/AlignmentDecorrel.A.
```

Together with the previous note, this gives

```math
TerminalAngularMixing.A/AlignmentDecorrel.A
\Longrightarrow
PositiveRemainderDepletion.A.
```

## Verdict

The angular item closes conditionally through ASAC plus ZenoSourceResidueRigidity.A.  The live atom after this reduction is

```math
ZenoSourceResidueRigidity.A,
```

or equivalently TemporalNonAtomicSource.A / an explicit rigid class plus a residue Liouville theorem.
