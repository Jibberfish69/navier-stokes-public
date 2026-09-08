---
theorem_id: forward-gold-stopped-square-packing-noncircular-installation-20260627
status: installable-conditional-on-finite-stopped-selector-and-original-current-routing
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / routed current square-packing
installs:
  - StoppedRoutedCurrentSquarePackingFromDerivativeBV.A
supports:
  - StoppedRoutedCurrentSquarePacking.A
  - SelectedDensityMartingaleSquareFunctionCarleson.A
  - ParentDrop.A
---

# Stopped routed-current square-packing: noncircular installation note

## 1. Installed statement

Under a finite parent-known stopped selector/order-lock system, with future-tail selection excluded or charged as reset/legal loss, the routed current satisfies

```math
\sum_{Q\subseteq P}\|\Delta_Q J^S\|^2\mathcal R(Q)
\le C\mathcal E_{route}(P)+CR_{legal}(P)+CStop(P).
\tag{1}
```

Here

```math
\mathcal E_{route}(P)=\int_{\operatorname{Hist}(P)}w\left(
|\partial_\sigma Z|^2+|T_\sigma|^2+|E_\sigma|^2+|C_\sigma|^2
\right).
\tag{2}
```

This statement is noncircular only because \(J^S,Z,T,E,C\) are fixed routed objects built from the original same-material history and stopped selector data, not from the future selected-density tail.

## 2. Fixed-core branch

On a fixed stopped core/channel, define the primitive potential

```math
P_R=\Gamma_R Z^S.
\tag{3}
```

The stopped cone gives positive selected increments controlled by positive increments of \(P_R\).  Since

```math
\partial_\sigma P_R=\Gamma_R(\partial_\sigma Z^S)+(\partial_\sigma\Gamma_R)Z^S,
\tag{4}
```

fixed-core variation is controlled by original routed derivative, turnstile, exchange, and covector terms.  Thus fixed-core oscillation cannot recycle a bounded primitive record for free.

## 3. Reset branch

For strict resets, the stopped selector must be finite, parent-known, and first-exit based.  Then each reset innovation has a parent-announced scale interval and derivative representation

```math
D_e^{fresh}=|I_e|^{-1}\int_{I_e}(\partial_\sigma Z+T_\sigma+E_\sigma+C_\sigma)\,d\sigma+Err_e^{legal}.
\tag{5}
```

The harmonic active weight is the Cauchy dual weight:

```math
H_e={|I_e|^2\over\int_{I_e}w^{-1}}.
\tag{6}
```

Therefore

```math
H_e\|D_e^{fresh}\|^2
\le C\int_{I_e}w(|\partial_\sigma Z|^2+|T_\sigma|^2+|E_\sigma|^2+|C_\sigma|^2)+CR_e^{legal}.
\tag{7}
```

Maximal first-exit reset slabs have bounded laminar overlap, so reset active-weight defects also pack into \(\mathcal E_{route}\).

## 4. Excluded circular cases

The installation is invalid if any of the following is used:

```text
future best-descendant selection,
future fitted selected density,
future fitted routing projection,
degenerate selector aperture without reset/legal charge,
arbitrary nonmaximal reset witness intervals.
```

Those cases are not part of the stopped routed-current input. They must be routed as reset, stop, or legal/donor defects.

## 5. Certification result

`StoppedRoutedCurrentSquarePackingFromDerivativeBV.A` is installable as a source-graph input with the following explicit dependency clause:

```text
finite parent-known stopped selector + fixed stopped routing + first-exit reset witnesses + bounded reset overlap.
```

It remains conditional on the separate energy input:

```text
OriginalHistoryRoutedCurrentEnergyFinite.A
```

because `(1)` is a square-packing estimate in the routed-current energy currency; it does not by itself prove that this currency is finite from original data.