---
theorem_id: forward-gold-energy-stable-routed-current-projection-20260627
status: conditional-projection-stability-closed-for-finite-parent-known-routing
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / routed current square-packing
attacks_hinge:
  - EnergyStableRoutedCurrentProjection.A
  - RoutedCurrentEnergySubledgerOfFullMaterialClock.A
  - OriginalHistoryRoutedCurrentEnergyFinite.A
  - StoppedRoutedCurrentSquarePacking.A
---

# Energy-stable routed-current projection

## 1. Target

The routed energy is

```math
\mathcal E_{route}(P)=\int_{\operatorname{Hist}(P)}
w\left(|\partial_\sigma Z|^2+|T_\sigma|^2+|E_\sigma|^2+|C_\sigma|^2\right).
\tag{1}
```

We need this to be controlled by the original full material derivative/service
ledger.

## 2. Fixed stopped projection model

Let \(\mathfrak D_{full}\) be the full original-history material derivative data
on the stopped history, with energy density \(\Theta_{full}\).  The stopped
routing is a finite parent-known map

```math
\mathcal R_{stop}:\mathfrak D_{full}
\mapsto
(\partial_\sigma Z,T_\sigma,E_\sigma,C_\sigma).
\tag{2}
```

Assume the stopped selector/order-lock fixes a finite family of projections and
coefficient maps before child readout.  Then, on each stopped chart,

```math
\|\mathcal R_{stop}v\|_{w}^2
\le C_R\|v\|_{\Theta}^2
\tag{3}
```

with \(C_R\) depending only on the fixed aperture/order-lock constants, finite
score multiplicity, and material metric comparability.

In density form this is

```math
w\left(|\partial_\sigma Z|^2+|T_\sigma|^2+|E_\sigma|^2+|C_\sigma|^2\right)
\le C_R\Theta_{full}+Err_{legal}+Err_{stop}.
\tag{4}
```

## 3. Energy domination

Integrating `(4)` over the stopped same-material history gives

```math
\mathcal E_{route}(P)
\le C_R\int_{\operatorname{Hist}(P)}\Theta_{full}
+CR_{legal}(P)+CStop(P).
\tag{5}
```

Thus, if the full material clock gives

```math
\int_{\operatorname{Hist}(P)}\Theta_{full}
\le C(u_0)+CR_{legal}(P)+CStop(P),
\tag{6}
```

then

```math
\mathcal E_{route}(P)
\le C(u_0)+CR_{legal}(P)+CStop(P).
\tag{7}
```

This proves the routed-current energy is a subledger of the original full
material clock.

## 4. Why the finite stopped condition matters

The estimate `(3)` is not true for a future-selected routing map.  If the
projection is chosen after seeing the future selected tail, the operator norm can
encode the tail itself and `(4)` becomes circular.

It is also not true if the stopped aperture degenerates.  Degeneration of the
routing basis must be routed to turnstile/exchange/covector/legal loss; otherwise
\(C_R\) can blow up.

Therefore this theorem is conditional on the same finite parent-known stopped
selector machinery used in the reset and fixed-core branch gates.

## 5. Result

Under finite parent-known stopped routing with uniform aperture and material
metric comparability,

```math
\boxed{
\mathcal E_{route}(P)
\le C\int_{\operatorname{Hist}(P)}\Theta_{full}
+CR_{legal}(P)+CStop(P).
}
```

So `EnergyStableRoutedCurrentProjection.A` is closed at the local operator level.
The remaining proof obligation is the relay:

```text
StoppedRoutedCurrentSquarePackingToSelectedFirstRatio.A / ParentDropRelay.A.
```

That relay must show the stopped routed-current square-packing estimate actually
controls the selected-density martingale square function, selected first-ratio
action, parent drop, and the full same-material clock continuation chain.