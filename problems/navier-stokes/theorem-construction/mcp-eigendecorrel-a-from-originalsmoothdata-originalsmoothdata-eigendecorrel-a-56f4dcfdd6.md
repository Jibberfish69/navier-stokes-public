# EigenDecorrel.A from OriginalSmoothData

## Target

Prove

```math
OriginalSmoothData\Longrightarrow EigenDecorrel.A.
```

Concrete form: on every bounded-overlap same-fluid terminal family `\mathcal F_N`, show active high-shell packet directions decorrelate from expanding eigendirections of the low/intermediate local strain:

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}
[\langle S_{<j}^{loc}w_j,w_j\rangle]_+\,dxdt
\le o_N(1)+\text{legal losses}.
```

## Direct tests

Incompressibility gives `tr S=0`. A trace-free symmetric strain can have a positive eigenvalue, and an active packet can align with that expanding eigendirection.

Global dyadic transport skew symmetry cancels signed energy transfer before one-sided weights, cutoffs, terminal packet selection, and positive-part extraction. The selected bad windows still permit positive localized strain production.

Pressure Poisson recovery controls elliptic response and routes pressure losses. It lacks a sign rule for localized active strain production.

Same-fluid transport preserves selected labels and packet legality. It lacks a mixing rate or angular decorrelation theorem.

Vorticity-direction and Beltrami/helical coherence are useful under an additional assumption. Current original-data inputs lack a theorem forcing those coherence defects to vanish on arbitrary terminal active packets.

## Result

`EigenDecorrel.A` is absent from current route inputs. It is a concrete presentation of the terminal source coherence wall:

```math
EigenDecorrel.A
\Longrightarrow
TerminalSourceCoherence.A
\Longrightarrow
PositiveSourceDepletion.A
\Longrightarrow
SourcePulseExclusion.A.
```

## Verdict

The eigen-decorrelation branch remains open.  The downstream signed-balance
branch must compare positive and negative parts of the same selected localized
source carrier after one-sided weights, cutoffs, terminal packet selection, and
positive-part extraction.
