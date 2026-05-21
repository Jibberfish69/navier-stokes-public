# MPP ParabolicNoFreeSink.A Direct Attempt

## Status

Direct theorem-grade attempt on the no-free-sink input isolated by the
parabolic source-current route:

```math
\boxed{
ParabolicNoFreeSink.A.
}
```

Verdict:

```math
\boxed{
ParabolicNoFreeSink.A
\text{ is not proved from the installed inputs.}
}
```

The theorem is equivalent, on the selected terminal same-fluid ledger, to
`TerminalSignedSaturation.A` / `SignedPositiveBalance.A`.  It is not a
consequence of first-current selection, graph flow decomposition, or bare
antisymmetric exchange.

## Target

Let `J` be a localized same-fluid source current on a finite time-expanded
packet ledger.  The desired statement is:

```math
\boxed{
\begin{gathered}
\text{every internal source-current path feeding selected terminal positive}
\\
\text{divergence is boundary-fed, heat-action charged, legal-loss/residual}
\\
\text{charged, or creates a strictly earlier admissible source-current arrival.}
\end{gathered}
}
\tag{PNFS.1}
```

This is the bridge needed to turn a positive terminal source-current arrival
into a payable boundary/heat/cycle object.

## Direct Graph Test

The statement is false for a general antisymmetric graph current.  With two
internal same-time vertices `A,B`,

```math
J(A\to B)=F>0,
\qquad
J(B\to A)=-F,
```

one has

```math
\operatorname{div}J(B)=F,
\qquad
\operatorname{div}J(A)=-F.
```

There is positive terminal divergence at `B`, no boundary input, no heat edge,
and no closed cycle.  This is not a Navier--Stokes counterexample; it shows
that `ParabolicNoFreeSink.A` is a PDE/same-ledger saturation theorem, not a
graph-theoretic consequence of skewness.

## Navier--Stokes Interpretation

The vertex `A` is a donor packet and `B` is a receiver packet.  The receiver
gets positive terminal source by inviscid transfer from stored donor energy.
Energy conservation supplies the donor sink, but it does not by itself charge
that sink by:

```math
\text{heat, boundary flux, legal loss, residual charge, or earlier positive
arrival.}
```

First-current selection removes earlier positive arrivals of the same selected
class.  The donor side is negative source, not earlier positive arrival.
Therefore first-current selection cannot prove `(PNFS.1)`.

Same-fluid transport keeps admissible labels for the transfer.  It does not
force the donor sink to remain inside the selected terminal bad family, nor
does it prove that a donor outside the family is legally small.

Heat-action estimates apply only after the path is known to cross a heat edge
or close into a heat-charged parabolic cycle.  The sink-to-source path above
can produce terminal positive divergence before any such crossing.

## Relation To Terminal Signed Saturation

The missing assertion is exactly that every donor sink feeding a selected
terminal positive receiver is payable in the same ledger.  In signed source
language:

```math
\boxed{
ParabolicNoFreeSink.A
\equiv_{\mathrm{route}}
TerminalSignedSaturation.A.
}
\tag{PNFS.2}
```

More concretely, `ParabolicNoFreeSink.A` would follow from:

```math
\boxed{
\begin{aligned}
&TerminalSignedSaturation.A\\
&\quad+
CurrentRectification.A\\
&\quad+
FirstCurrentSelection.A\\
&\Longrightarrow
ParabolicNoFreeSink.A.
\end{aligned}
}
\tag{PNFS.3}
```

Proof.  Rectify the signed source current into an admissible nonnegative
arrival flow.  For each internal path feeding terminal positive divergence,
apply `TerminalSignedSaturation.A` to the donor counter-edge.  If the donor
partner is retained in the same ledger, the path is part of the payable signed
current ledger.  If it leaves the ledger, saturation charges it to legal
boundary, residual, heat, or off-family loss.  If the path begins at an earlier
positive arrival, first-current selection excludes it.  The remaining paths
are exactly the legal alternatives in `(PNFS.1)`.

The proof is conditional because `TerminalSignedSaturation.A` is not installed.

## Why Installed Inputs Do Not Prove It

The installed inputs provide:

```math
BareDyadicSkewCurrent.0,
\quad
same\text{-}fluid transport fidelity,
\quad
legal pressure/cutoff/off-family ledgers,
\quad
first-pulse ordering,
\quad
finite heat dissipation.
```

They do not provide the same-ledger dominance:

```math
\int_{\mathcal F_N}
(\mathfrak S_{N,loc}^{active})_+
\le
\int_{\mathcal F_N}
(\mathfrak S_{N,loc}^{active})_-
+o_N(1)+Loss_{legal}.
```

Nor do they prove that a negative donor sink outside `\mathcal F_N` is paid by
the legal ledger.  Enlarging to the saturated hull merely changes the consumer
family and reintroduces the same unpaid internal sink.

## Verdict

```math
\boxed{
ParabolicNoFreeSink.A
\text{ is not a lower installed theorem.}
}
```

It collapses to the same live signed source-control primitive:

```math
\boxed{
TerminalSignedSaturation.A
\quad\text{or}\quad
SignedPositiveBalance.A.
}
```

Without that primitive, the parabolic source-current route cannot close
`ScaleCriticalTreeCarleson.A`; it remains a structurally sharper presentation
of the source wall, not a discharge.

## 2026-05-06 update after ASAC

The post-ASAC route no longer needs to treat the pair-weight and active
alignment defects as open in this no-free-sink packet.  The one-sided positive
pair-weight defect is charged by:

```text
ASAC.A => PositivePairWeightDefectCharge.A.
```

The donor sink branch is sharpened in
`mpp-terminal-weighted-no-free-sink-after-asac-20260506.md`:

```text
LocalDonorBalance.A
+ EntranceLeafDecay.A
+ ZenoSourceResidueRigidity.A
=> TerminalWeightedNoFreeSink.A.
```

So the current non-circular no-free-sink wall is the terminal Zeno source-residue
rigidity atom, not a generic graph-flow obstruction.
