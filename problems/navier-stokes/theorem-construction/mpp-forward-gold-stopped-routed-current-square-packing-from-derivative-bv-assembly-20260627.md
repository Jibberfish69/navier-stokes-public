---
theorem_id: forward-gold-stopped-routed-current-square-packing-from-derivative-bv-assembly-20260627
status: conditional-square-packing-assembled-energy-and-full-clock-relay-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / routed current square-packing
attacks_hinge:
  - StoppedRoutedCurrentSquarePacking.A
  - StoppedRoutedCurrentSquarePackingFromDerivativeBV.A
  - StoppedPrimitiveSignedScalePotentialLiftWithDerivativeControl.A
  - NoFreeHighWeightTubeEscapeCharge.A
  - QuantitativeZeroCostSelectedResetRigidity.A
  - ParentDrop.A
---

# Stopped routed-current square-packing from derivative BV: assembly

## 1. Target

The routed selected source has been reduced to a stopped same-material current
plus stop/legal terms:

```math
\nu^S=D_AJ^S+\nu^S_{stop}+\nu^S_{legal}.
\tag{1}
```

The current local goal is to prove stopped square-packing of the nonlegal current
increments:

```math
\sum_{Q\subseteq P}\|\Delta_QJ^S\|_{\mathcal H_{lift}}^2\,\mathcal R(Q)
\le C\mathcal E_{route}(P)+CR_{legal}(P)+CStop(P).
\tag{2}
```

The original-history routed energy is

```math
\mathcal E_{route}(P)
:=\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
\right).
\tag{3}
```

## 2. Branch partition

Partition retained nonlegal increments into three classes:

```math
\mathcal E(P)=\mathcal E_{fix}(P)\cup\mathcal E_{reset}(P)\cup\mathcal E_{legal/stop}(P).
\tag{4}
```

- `fixed`: stopped carrier/channel remains fixed;
- `reset`: strict first-exit reset of the stopped selector record;
- `legal/stop`: charged outside the nonlegal square-packing ledger.

## 3. Fixed stopped-core branch

On a fixed stopped channel, the primitive scale potential is

```math
P_R=\Gamma_R Z^S.
\tag{5}
```

The stopped selector cone gives positive selected increments controlled by
positive increments of \(P_R\).  Differentiating `(5)` gives

```math
\partial_\sigma P_R
=\Gamma_R(\partial_\sigma Z^S)+(\partial_\sigma\Gamma_R)Z^S,
\tag{6}
```

and

```math
|\partial_\sigma P_R|
\le
C\left(
|\partial_\sigma Z|
+|\operatorname{turnstile}_\sigma|
+|\operatorname{exchange}_\sigma|
+|\operatorname{covector}_\sigma|
\right)
+Err_{legal}.
\tag{7}
```

Using stopped Cauchy/root-control on each fixed-core chain, this yields

```math
\sum_{e\in\mathcal E_{fix}(P)}
\|\Delta_eJ^S\|^2\mathcal R(e)
\le
C\mathcal E_{route}(P)+CR_{legal}(P).
\tag{8}
```

The bounded-record oscillation counterexample is removed because every oscillation
of \(P_R\) must pass through the derivative ledger `(7)`.

## 4. Strict reset branch

For a strict reset edge \(e\), first-exit selector geometry gives the derivative
representation

```math
D_e^{fresh}
=|I_e|^{-1}\int_{I_e}
(\partial_\sigma Z+\operatorname{turnstile}_\sigma
+\operatorname{exchange}_\sigma+\operatorname{covector}_\sigma)\,d\sigma
+Err_e^{legal}.
\tag{9}
```

The active harmonic weight is

```math
H_e={|I_e|^2\over\int_{I_e}w^{-1}}.
\tag{10}
```

Weighted Cauchy--Schwarz gives the single-edge estimate

```math
H_e\|D_e^{fresh}\|^2
\le
C\int_{I_e}w\left(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
\right)
+CR_e^{legal}.
\tag{11}
```

The maximal first-exit witness slabs have bounded overlap, hence summing `(11)`
gives

```math
\sum_{e\in\mathcal E_{reset}(P)}
H_e\|D_e^{fresh}\|^2
\le
C\mathcal E_{route}(P)+CR_{legal}(P).
\tag{12}
```

The tight/escape dichotomy plus zero-cost rigidity says there is no remaining
normalized active-weight defect outside `(12)`.

## 5. Assembly

Combining `(8)`, `(12)`, and the legal/stop packing gives

```math
\boxed{
\sum_{Q\subseteq P}\|\Delta_QJ^S\|^2\mathcal R(Q)
\le
C\mathcal E_{route}(P)+CR_{legal}(P)+CStop(P).
}
\tag{13}
```

This is `StoppedRoutedCurrentSquarePackingFromDerivativeBV.A`, conditional on
finite original-history routed energy and on the stopped finite parent-known
selector implementation used in both branches.

## 6. What remains

This note assembles the branch gates.  It does not yet prove the global energy
finiteness or the final full-clock relay.

The remaining theorem pair is:

```text
OriginalHistoryRoutedCurrentEnergyFinite.A
```

Statement:

```math
\mathcal E_{route}(P)\le C(u_0)+CR_{legal}(P)+CStop(P)
\tag{14}
```

for every stopped same-material history \(P\), from the original smooth data and
already-installed material service ledgers.

and

```text
StoppedRoutedCurrentSquarePackingToSelectedFirstRatio.A / ParentDropRelay.A
```

Statement: the square-packing estimate `(13)` controls the selected-density
martingale square function / entropy, yields finite selected first-ratio action,
and then gives the parent-drop/full-clock continuation chain.

## 7. Result

The local branch defects are no longer independent obstructions.  Both fixed
returns and strict resets are paid by the same original-history routed derivative
current:

```math
\boxed{
\text{fixed-core derivative BV}
+
\text{reset active-weight escape/rigidity}
\Rightarrow
\text{stopped routed-current square-packing}.
}
```

The proof now moves to the global producer:

```text
OriginalHistoryRoutedCurrentEnergyFinite.A
```

and then to the relay from stopped square-packing into the selected
first-ratio/full same-material clock.