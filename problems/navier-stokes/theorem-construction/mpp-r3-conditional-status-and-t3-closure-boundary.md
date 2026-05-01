# R3 Conditional Status And T3 Closure Boundary

## Status

Conditional boundary note.

The `R^3` extension branch is organized but remains conditional. The periodic `T^3` branch remains the closed theorem-program surface.

## R3 status

The R3 branch has discharged the finite-energy mass-tail component:

```math
Tail.L2_{R^3}.
```

The high-order spatial-infinity component remains open:

```math
Tail.Hs_{R^3}
```

or equivalently elimination of

```math
TailFace_{R^3}^{Hs}.
```

The attempted noncircular exterior cascade theorem

```math
ExtCascade_s^{R^3}
```

does not close from the current inputs. Its proof requires a continuation-grade coefficient or a new exterior high-frequency cascade estimate beyond finite energy and compact-core tower bounds.

## Conditional R3 theorem

The branch supports only

```math
OriginalSmoothData_{R^3}+Tail.Hs_{R^3}
\Longrightarrow
TTU.A_{R^3}
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s(R^3)}<\infty
\Longrightarrow
T_*=\infty.
```

It does not currently support

```math
OriginalSmoothData_{R^3}\Longrightarrow T_*=\infty.
```

## Required R3 matrix status

A dedicated R3 matrix must include the tail row

```math
TailFace_{R^3}^{Hs}\quad\text{removed by }Tail.Hs_{R^3}\text{ or }ExtCascade_s^{R^3}.
```

Until that row is closed, the R3 branch remains conditional.

## T3 boundary

The periodic `T^3` branch remains the completed theorem-program surface. Its proof uses compactness, finite covers, periodic pressure normalization, and finite-cover Sobolev patching. Those inputs are unavailable on `R^3` without tail replacements.

Therefore R3 conditional notes must not be treated as whole-space promotion evidence for the periodic matrix.

## Verdict

```math
T^3:\quad closed\text{ in the theorem-program matrix.}
```

```math
R^3:\quad conditional\text{ on }Tail.Hs_{R^3}\text{ / }ExtCascade_s^{R^3}.
```