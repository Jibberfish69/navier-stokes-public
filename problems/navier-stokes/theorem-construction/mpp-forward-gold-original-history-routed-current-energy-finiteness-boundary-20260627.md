---
theorem_id: forward-gold-original-history-routed-current-energy-finiteness-boundary-20260627
status: direct-finiteness-open-subledger-domination-needed
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / routed current square-packing
attacks_hinge:
  - OriginalHistoryRoutedCurrentEnergyFinite.A
  - StoppedRoutedCurrentSquarePackingFromDerivativeBV.A
  - GlobalSamePacketFullClockFromOriginalData.A
---

# Original-history routed-current energy finiteness: boundary

## 1. Target

The stopped square-packing assembly reduced the branch gates to the routed energy

```math
\mathcal E_{route}(P)
=
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
\right).
\tag{1}
```

The target is to prove

```math
\mathcal E_{route}(P)\le C(u_0)+CR_{legal}(P)+CStop(P)
\tag{2}
```

from original smooth data.

## 2. Conditional domination by the full material ledger

The correct noncircular route is to show that the density in `(1)` is a
subledger of the original same-material service/annular derivative density.  Let

```math
\Theta_{full}
=\Theta_{annular}
+\Theta_{service}
+\Theta_{frame}
+\Theta_{covector}
+\Theta_{exchange}
```

be the full original-history material clock density already used in the global
same-packet route.  The required pointwise/measurable domination is

```math
w\left(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
\right)\,d\sigma dt
\le
C\Theta_{full}\,dt
+dR_{legal}+dStop.
\tag{3}
```

If `(3)` holds, then

```math
\mathcal E_{route}(P)
\le
C\int_{\operatorname{Hist}(P)}\Theta_{full}
+CR_{legal}(P)+CStop(P).
\tag{4}
```

The global same-material clock hypothesis/ledger gives

```math
\int_{\operatorname{Hist}(P)}\Theta_{full}\le C(u_0)+CR_{legal}(P)+CStop(P),
\tag{5}
```

and `(2)` follows.

## 3. Why local square-packing does not prove this

The branch notes prove that fixed-core and reset increments are charged by
`E_route`.  They do not prove that `E_route` is finite.  Defining `E_route` from
the future selected tail would be circular.

The missing step is exactly the source-to-ledger identification: the routed
objects

```math
\partial_\sigma Z,\quad
\operatorname{turnstile}_\sigma,\quad
\operatorname{exchange}_\sigma,\quad
\operatorname{covector}_\sigma
```

must be constructed from original same-material geometry and bounded by the
pre-existing full-clock/service density, not by selected action after the fact.

## 4. Exact missing theorem

The required theorem is

```text
RoutedCurrentEnergySubledgerOfFullMaterialClock.A
```

or equivalently

```text
GaugeReducedAnnularDerivativeDensityControl.A
```

Statement:

After pressure-visible/null routing and source-origin classification, the
routed-current derivative density is dominated by the original full material
clock density as in `(3)`, with legal/stop exceptions only.

This must be an original-history statement.  It cannot use the selected-density
martingale square function or the future selected first-ratio action.

## 5. Result

`OriginalHistoryRoutedCurrentEnergyFinite.A` is conditionally proved from the
subledger domination theorem `(3)`, but is not discharged by the local branch
gates alone.

The current open global producer is therefore:

```math
\boxed{\text{RoutedCurrentEnergySubledgerOfFullMaterialClock.A}.}
```

Once it holds, stopped routed-current square-packing is finite from original
smooth data.  The remaining next relay is then the conversion from stopped
square-packing to selected first-ratio / parent-drop / full-clock closure.