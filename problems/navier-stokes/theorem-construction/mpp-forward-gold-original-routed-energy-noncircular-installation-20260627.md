---
theorem_id: forward-gold-original-routed-energy-noncircular-installation-20260627
status: installable-conditional-on-full-clock-subledger-domination
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / routed current square-packing
installs:
  - OriginalHistoryRoutedCurrentEnergyFinite.A
supports:
  - StoppedRoutedCurrentSquarePacking.A
  - ParentDrop.A
---

# Original routed-current energy: noncircular installation note

## 1. Installed statement

The routed-current energy is finite from original data if it is a bounded subledger of the pre-existing full material clock.  The target statement is

```math
\mathcal E_{route}(P)\le C(u_0)+CR_{legal}(P)+CStop(P).
\tag{1}
```

where

```math
\mathcal E_{route}(P)=\int_{\operatorname{Hist}(P)}w\left(
|\partial_\sigma Z|^2+|T_\sigma|^2+|E_\sigma|^2+|C_\sigma|^2
\right).
\tag{2}
```

## 2. Required subledger domination

Let \(\Theta_{full}\) be the original same-material full-clock density.  The needed noncircular domination is

```math
w\left(|\partial_\sigma Z|^2+|T_\sigma|^2+|E_\sigma|^2+|C_\sigma|^2\right)
\le C\Theta_{full}+Err_{legal}+Err_{stop}.
\tag{3}
```

This follows if the stopped routing map is finite, parent-known, and energy-stable:

```math
(\partial_\sigma Z,T_\sigma,E_\sigma,C_\sigma)=\mathcal R_{stop}\mathfrak D_{full}+Err_{legal}+Err_{stop},
\tag{4}
```

with

```math
\|\mathcal R_{stop}v\|_w^2\le C_R\|v\|_{\Theta}^2.
\tag{5}
```

Then

```math
\mathcal E_{route}(P)\le C_R\int_{\operatorname{Hist}(P)}\Theta_{full}+CR_{legal}(P)+CStop(P).
\tag{6}
```

The full material clock ledger supplies

```math
\int_{\operatorname{Hist}(P)}\Theta_{full}\le C(u_0)+CR_{legal}(P)+CStop(P),
\tag{7}
```

and `(1)` follows.

## 3. Noncircularity condition

The routed energy may not be defined from future selected increments.  The fields

```math
\partial_\sigma Z,\quad T_\sigma,\quad E_\sigma,\quad C_\sigma
```

must be projections of original same-material derivative/service data.  Any routing change whose operator norm degenerates must be charged as turnstile, exchange, covector, stop, or legal loss.

## 4. Installation result

`OriginalHistoryRoutedCurrentEnergyFinite.A` is installable with this explicit dependency:

```text
EnergyStableRoutedCurrentProjection.A + FullMaterialClockLedger.A
```

where `EnergyStableRoutedCurrentProjection.A` is the bounded stopped projection estimate `(5)`, and `FullMaterialClockLedger.A` is the pre-existing original-history full-clock density bound `(7)`.

This is not a new selected-tail reserve.  It is a subledger of the same original full material clock used by the global continuation route.

## 5. Remaining certification

The manuscript/source graph must make the dependency explicit:

```text
OriginalHistoryRoutedCurrentEnergyFinite.A
  depends on EnergyStableRoutedCurrentProjection.A
  and the full material clock ledger,
  not on selected first-ratio action.
```

Once this is recorded, the stopped routed-current square-packing estimate has an original-data finite right-hand side.