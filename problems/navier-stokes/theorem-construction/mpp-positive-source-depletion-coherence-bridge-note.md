# MPP PositiveSourceDepletion.A Coherence Bridge Note

## Status

This note proves the conditional bridge from terminal source coherence to
positive source depletion.  It does not prove that terminal Zeno packets become
coherent; it isolates that as the remaining theorem.

## Target

The Carleson side of the Zeno source-refill branch asks for:

```math
\boxed{
PositiveSourceDepletion.A:
\quad
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\,dxdt
\to0
}
```

up to summable legal pressure/cutoff/localization losses.

## Coherence Hypothesis

Define the native terminal coherence defect `\mathfrak C_{\mathrm{src}}(P)` by
the least nonnegative quantity for which the localized pre-Cauchy source on a
packet `P` satisfies:

```math
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\,dxdt
\le
C\,\mathfrak C_{\mathrm{src}}(P)
+\ell(P).
\tag{CDB.1}
```

Here `\ell(P)` is the already-licensed pressure/cutoff/localization loss.

Concrete realizations of `\mathfrak C_{\mathrm{src}}` include:

```math
\text{vorticity-direction incoherence defect,}
```

```math
\text{anti-Beltrami / mixed-helicity defect,}
```

```math
\text{positive strain-alignment defect after subtracting coherent cancellation,}
```

or the exact lifted signed-remainder positive-part defect.

The theorem-facing production hypothesis is:

```math
\boxed{
TerminalSourceCoherence.A:
\quad
\sum_{P\in\mathcal F_N}
\mathfrak C_{\mathrm{src}}(P)
=o_N(1)
}
\tag{CDB.2}
```

for every bounded-overlap same-fluid terminal family `\mathcal F_N`.

## Theorem `CDB.A`

```math
\boxed{
TerminalSourceCoherence.A
\Longrightarrow
PositiveSourceDepletion.A.
}
```

## Proof

Sum `(CDB.1)` over the bounded-overlap terminal family:

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\,dxdt
\le
C\sum_{P\in\mathcal F_N}\mathfrak C_{\mathrm{src}}(P)
+\sum_{P\in\mathcal F_N}\ell(P).
```

By `(CDB.2)`, the first term is `o_N(1)`.  The second term is summable by the
installed legal-loss ledger for the same source-parent packet.  Therefore:

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\,dxdt
\le
o_N(1)+\text{summable legal losses}.
```

This is exactly `PositiveSourceDepletion.A`.

## What Is And Is Not Solved

Solved:

```math
\boxed{
\text{coherence / alignment depletion implies positive source depletion.}
}
```

Not solved:

```math
\boxed{
OriginalSmoothData
\Longrightarrow
TerminalSourceCoherence.A.
}
```

The existing pressure-vortex, vorticity-direction, and Beltrami/helical audits
show that current installed estimates do not force this coherence on arbitrary
terminal `Jump_avg` / Zeno source-refill packets.

## Export

The positive-source side is sharpened to:

```math
\boxed{
TerminalSourceCoherence.A
\Longrightarrow
PositiveSourceDepletion.A
\Longrightarrow
ScaleCriticalTreeCarleson.A
\Longrightarrow
SourcePulseExclusion.A.
}
```

No promotion is licensed until `TerminalSourceCoherence.A`, an equivalent
reverse-Holder concentration theorem, or the Zeno source-residue rigidity route
is proved from `OriginalSmoothData`.

