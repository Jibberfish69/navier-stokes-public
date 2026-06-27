---
theorem_id: forward-gold-selector-stratum-crossing-bv-closure-20260627
status: selector-stratum-crossing-closed-relative-to-full-exchange-action
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped exchange-reselection
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
proves:
  - SelectorStratumCrossingVariationBound.A
reduces_remaining_to:
  - StoppedFullExchangeActionCarleson.A
  - SelectedCompressionRootReserve.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-exchange-reselection-compensator-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-to-stopped-compensator-audit-20260627.md
---

# Selector-stratum crossing BV closure

This note closes the selector-stratum crossing side as a deterministic
same-packet BV lemma. It does not prove the remaining full exchange action is
Carleson; it shows unpaid reselection does not add a second independent Gold
burden once the full exchange variation is included in the action.

## 1. Stopped selector packet

On a stopped interval \(S\), the retained selected readout is determined by one
finite same-material selector packet

```math
Y_S(t)
=
\bigl(
e_{\max}(S(t)),
\xi_{PH}(t),
\phi_{coll}(t),
\Pi_A(t),
\gamma_{ol}(t),
\text{finite rung labels}
\bigr).
```

The stopping construction stops whenever the readout changes chamber without
payment: selected label, eigendirection, cutoff/collar coordinate,
pressure-Hodge projection coordinate, order-lock gap, tie gap, or rung label.
Thus, before the next stop, \(Y_S(t)\) remains in one selector chamber.

The chamber boundaries are a finite family of codimension-one strata

```math
\Gamma_j=\{Y:\ g_j(Y)=0\}.
```

After legal tie/gap exits are removed, each active \(g_j\) has a fixed
transversality scale on the retained chamber:

```math
|g_j(Y)|\ge \delta_S
\quad\text{inside the chamber,}
```

or crossing \(g_j=0\) is a paid stop.

## 2. BV crossing estimate

For a one-dimensional BV path \(Y(t)\), each unpaid crossing of \(\Gamma_j\)
with retained jump weight \(w_j\) forces comparable variation of
\(g_j(Y(t))\). Hence

```math
\sum_{\text{unpaid }j\text{-crossings in }P} w_j
\le
C\operatorname{Var}_{P}(g_j(Y))
+R_{\rm legal}(P).
```

Since \(g_j\) is Lipschitz on the retained finite chamber,

```math
\operatorname{Var}_{P}(g_j(Y))
\le
\operatorname{Lip}(g_j)\operatorname{Var}_{P}(Y).
```

There are finitely many stopped selector strata at fixed \(N\), so summing gives

```math
R_{\rm stop}^{unpaid}(P)
\le
C_N\operatorname{Var}_{P}(Y)
+R_{\rm legal}(P).
\tag{1}
```

This is the desired selector-stratum crossing estimate.

## 3. Same-material payment of \(Y\)-variation

Each coordinate of \(Y\) is a readout of the same material packet:

- top strain direction and eigenvalue gaps are controlled by strain-frame
  exchange and complete-frame service;
- pressure-Hodge projection motion is controlled by material Hodge/projector
  motion, hence by coefficient/frame and strain exchange;
- collar/cutoff motion is transported collar/frame service;
- order-lock and tie-gap changes are stopped or legal by construction;
- rung changes are radius/tower service.

Therefore the selector packet variation is paid by the full exchange action:

```math
\operatorname{Var}_{P}(Y)
\le
C_N
\sum_{S\subseteq P}
\Bigl(
\Omega_S^{strain/ex}
+D_S^{vis/rad}
\Bigr)
+R_{\rm legal}(P).
\tag{2}
```

Combining `(1)` and `(2)` proves

```math
R_{\rm stop}^{unpaid}(P)
\le
C_N
\sum_{S\subseteq P}
\Bigl(
\Omega_S^{strain/ex}
+D_S^{vis/rad}
\Bigr)
+R_{\rm legal}(P).
\tag{3}
```

So `SelectorStratumCrossingVariationBound.A` is not an additional independent
producer. It is the BV/coarea face of the same full exchange action.

## 4. Remaining theorem

The stopped Bellman inequality now has a single nonduplicate Gold burden:

```math
\sum_{S\subseteq P}
\Bigl(
\Omega_S^{strain/ex}
+D_S^{vis/rad}
\Bigr)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
```

That is `StoppedFullExchangeActionCarleson.A`, equivalently the selected
compression/root reserve or weight-beating tail law. It is the remaining
mathematical wall after the silent-source and selector-stratum branches are
absorbed into the same stopped compensator.
