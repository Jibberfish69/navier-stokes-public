# LocalPositiveSourceCarleson.A first reduction and obstruction audit

## Status

Direct theorem attempt. Result: failed as an unconditional proof from `OriginalSmoothData`.

## Target

Prove

```math
OriginalSmoothData\Longrightarrow LocalPositiveSourceCarleson.A.
```

Concrete target:

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}[\mathcal N_{preCauchy}^{loc}(u;P)]_+\,dxdt
\le o_N(1)+\text{summable legal losses}.
```

Here `\mathcal F_N` is the bounded-overlap same-fluid terminal packet family selected by the source-pulse branch.

## Decomposition

On each packet `P`, decompose the local pre-Cauchy source density into

```math
\mathcal N_{preCauchy}^{loc}
=
\mathcal N_{trans}^{loc}
+
\mathcal N_{ps}^{loc}
+
\mathcal N_{cut/off}^{loc}.
```

`\mathcal N_{trans}^{loc}` is the localized principal transport source.  In the divergence-free transported frame, this term cancels after moving the principal low-flow transport into the packet operator:

```math
\int_{Q(P)}\mathcal N_{trans}^{loc}=0
```

up to cutoff terms.

The cutoff and off-packet terms are controlled by the installed packet calculus:

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}[\mathcal N_{cut/off}^{loc}]_+
\le o_N(1)+\text{summable legal losses}.
```

Thus the direct target reduces to the localized positive pressure-strain/source term:

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}[\mathcal N_{ps}^{loc}]_+
\le o_N(1)+\text{summable legal losses}.
```

## Live obstruction

The term `\mathcal N_{ps}^{loc}` contains the selected positive stretching / pressure-strain source on terminal heat-scale windows.  Calderon-Zygmund pressure recovery controls size, while it supplies no sign depletion for the localized positive part.  Global skew cancellation applies to signed unlocalized exchange.  The target has localization, terminal selection, weights, and positive-part extraction, so the global signed cancellation cannot discharge this term.

Cauchy/Young estimates give an active-square envelope and return the proof to

```math
ScaleCriticalTreeCarleson.A.
```

Therefore the direct proof closes only to the equivalence class

```math
LocalPositiveSourceCarleson.A
\equiv_{route}
ScaleCriticalTreeCarleson.A
\equiv_{route}
SOURCE.NO\text{-}PULSE.A.
```

## Result

The direct reduction is useful because it isolates the sole live analytic term:

```math
[\mathcal N_{ps}^{loc}]_+.
```

An unconditional proof still needs one new source-control theorem, for example

```math
TerminalSourceCoherence.A,
```

```math
ReverseHolderParentConcentration.A,
```

```math
ScaleCriticalTreeCarleson.A,
```

or

```math
ZenoBoundedClass.A+ZenoResidueLiouville.A.
```

## Boundary

This note does not discharge `LocalPositiveSourceCarleson.A`.  It records the exact failed direct route and the reduced live obstruction.