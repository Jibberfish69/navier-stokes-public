# TerminalSourceCoherence.A from OriginalSmoothData

## Target

Prove

```math
OriginalSmoothData\Longrightarrow TerminalSourceCoherence.A.
```

In packet form, for every bounded-overlap same-fluid terminal family `\mathcal F_N`, prove

```math
\sum_{P\in\mathcal F_N}\mathfrak C_{src}(P)=o_N(1),
```

where

```math
\int_{Q(P)}[\mathcal N_{preCauchy}^{loc}(u;P)]_+\,dxdt
\le C\mathfrak C_{src}(P)+\ell(P).
```

Concrete coherence defects include vorticity-direction incoherence, anti-Beltrami or mixed-helicity defect, positive strain-alignment defect, and exact lifted signed-remainder positive-part defect.

## Installed bridge

The bridge is valid:

```math
TerminalSourceCoherence.A\Longrightarrow PositiveSourceDepletion.A.
```

Summing the packet inequality over bounded-overlap terminal families gives

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}[\mathcal N_{preCauchy}^{loc}(u;P)]_+\,dxdt
\le o_N(1)+\text{summable legal losses}.
```

Thus:

```math
TerminalSourceCoherence.A
\Longrightarrow
PositiveSourceDepletion.A
\Longrightarrow
ScaleCriticalTreeCarleson.A
\Longrightarrow
SourcePulseExclusion.A.
```

## Direct tests from OriginalSmoothData

Pressure Poisson recovery supplies elliptic control of pressure and strain response. It gives no sign or coherence decay for the positive active source on selected terminal packets.

Energy-class vorticity supplies global finite enstrophy-level information. It gives no DFD/CKN-style direction modulus on arbitrary terminal active packets.

Beltrami/helical coherent packets are compatible cancellation geometries. The installed package has no theorem forcing arbitrary terminal bad active windows into anti-Beltrami or mixed-helicity defect decay.

Same-fluid transport preserves the selected carrier. It does not make coherence defects small.

The signed lifted-remainder route requires cancellation of the true weighted
lifted remainder before absolute values and active-window selection. That
supplier remains open.

## Verdict

`TerminalSourceCoherence.A` is a valid sufficient supplier, while

```math
OriginalSmoothData\Longrightarrow TerminalSourceCoherence.A
```

remains open. The result returns to the source-pulse primitive through the coherence presentation.
