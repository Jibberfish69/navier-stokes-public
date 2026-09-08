---
theorem_id: forward-gold-routed-current-energy-subledger-full-clock-boundary-20260627
status: direct-subledger-domination-open-energy-stable-routing-needed
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / routed current square-packing
attacks_hinge:
  - RoutedCurrentEnergySubledgerOfFullMaterialClock.A
  - GaugeReducedAnnularDerivativeDensityControl.A
  - OriginalHistoryRoutedCurrentEnergyFinite.A
  - StoppedRoutedCurrentSquarePacking.A
---

# Routed-current energy as subledger of the full material clock: boundary

## 1. Target

The stopped square-packing assembly needs the routed energy

```math
\mathcal E_{route}(P)
=
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\right)
\tag{1}
```

where \(T_\sigma,E_\sigma,C_\sigma\) denote turnstile, exchange, and covector
terms, to be bounded by the original full material clock.

## 2. Conditional domination theorem

Let \(\mathfrak D_{full}\) be the original same-material derivative/service data
for the stopped history, with density \(\Theta_{full}\).  Suppose the routing map
is an energy-stable stopped projection/decomposition:

```math
(\partial_\sigma Z,T_\sigma,E_\sigma,C_\sigma)
=\mathcal R_{stop}\mathfrak D_{full}+Err_{legal}+Err_{stop}
\tag{2}
```

and

```math
w\|\mathcal R_{stop}\mathfrak D_{full}\|^2
\le C\Theta_{full}
\tag{3}
```

pointwise or in stopped Carleson testing form.  Then

```math
\mathcal E_{route}(P)
\le
C\int_{\operatorname{Hist}(P)}\Theta_{full}
+CR_{legal}(P)+CStop(P).
\tag{4}
```

If the full same-material clock ledger gives

```math
\int_{\operatorname{Hist}(P)}\Theta_{full}\le C(u_0)+CR_{legal}(P)+CStop(P),
\tag{5}
```

then

```math
\mathcal E_{route}(P)\le C(u_0)+CR_{legal}(P)+CStop(P).
\tag{6}
```

Thus `OriginalHistoryRoutedCurrentEnergyFinite.A` follows from energy-stable
routing.

## 3. What is not proved by previous notes

The previous branch-gate notes prove that selected increments are charged by
`E_route`.  They do not prove `(2)`--`(3)`.  In particular, the routed carrier
must be obtained by bounded stopped projections of original derivative/service
objects.  If the routed current is instead defined from the future selected tail,
then `(1)` is circular.

The exact noncircular requirement is that the pressure-visible, source-origin,
fixed-core, and reset components are all built by bounded maps from original
same-material fields, not by post hoc selected-density increments.

## 4. Exact missing theorem

The missing theorem is

```text
EnergyStableRoutedCurrentProjection.A
```

or equivalently

```text
GaugeReducedAnnularDerivativeDensityControl.A
```

Statement:

The stopped routing/decomposition map from the original same-material derivative
and service data to

```math
(\partial_\sigma Z,T_\sigma,E_\sigma,C_\sigma)
```

is energy-stable in the weighted annular metric:

```math
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\right)
\le
C\int_{\operatorname{Hist}(P)}\Theta_{full}
+CR_{legal}+CStop.
\tag{7}
```

This theorem must be proved from the original smooth material history and the
fixed stopped routing rules.

## 5. Result

`RoutedCurrentEnergySubledgerOfFullMaterialClock.A` is conditionally reduced to
`EnergyStableRoutedCurrentProjection.A`.  The local selected-density machinery is
not allowed to supply this estimate; it must come from the original full material
clock / gauge-reduced annular derivative density.

Once `(7)` is installed, finite stopped routed-current square-packing follows
from the branch assembly already written.  The next separate relay is then the
conversion of square-packing into selected first-ratio / parent-drop / full-clock
closure.