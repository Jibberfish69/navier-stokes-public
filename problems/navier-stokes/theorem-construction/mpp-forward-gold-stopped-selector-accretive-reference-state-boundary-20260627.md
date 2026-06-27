---
theorem_id: forward-gold-stopped-selector-accretive-reference-state-boundary-20260627
status: failed-directly-needs-original-history-reference-state-and-defect-charge
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - StoppedSelectorAccretiveReferenceState.A
  - OriginalHistoryAdjointTestingMeasureCarleson.A
  - MaterialAdjointAccretiveTestingData.A
  - OriginalHistoryHilbertBMOProducer.A
---

# Stopped selector accretive reference state: boundary

## 1. Target

The previous note showed that stopped adjoint tests need a pre-existing accretive reference state. The desired decomposition is

```math
b_P=b_P^0+h_P,
```

with

```math
|\langle b_P^0\rangle_P|\ge 2c,
\qquad
|\langle h_P\rangle_P|\le c,
\qquad
\|b_P\|_{L^2(P,\mathcal R)}^2\le C\mathcal R(P)+C R_{legal}(P).
\tag{1}
```

The desired testing-defect measure is

```math
\mu_{test}(P):=Def_{test}(P)+Stop(P)+R_{legal}(P),
```

with

```math
\mu_{test}(P_0)\le C\mathcal R(P_0)+C R_{legal}(P_0).
\tag{2}
```

## 2. Direct selector reference test

A tempting choice is

```math
b_P^0=1_P
```

or a normalized stopped selector density

```math
b_P^0={\chi_P\over \langle \chi_P\rangle_P}.
```

This gives accretivity formally if the selector density is not sparse:

```math
\langle \chi_P\rangle_P\ge c_0>0.
\tag{3}
```

But `(3)` is not automatic. A retained selected source can occupy a very thin subset of \(P\). Normalizing by \(\langle\chi_P\rangle_P\) then gives a large \(L^2\) norm:

```math
\left\|{\chi_P\over\langle\chi_P\rangle_P}\right\|_{L^2(P)}^2
= {\mu(P)\over\mu(\operatorname{supp}\chi_P)}\,\mu(P),
```

which can exceed \(C\mathcal R(P)\) unless selector density has a lower bound or the thinness is legally/energetically paid.

Therefore the stopped selector does not automatically produce an accretive \(L^2\)-controlled reference state.

## 3. Direct testing measure test

Even with a candidate \(b_P^0\), the testing defect

```math
Def_{test}(P)
=\left[\|T_S(b_P\nu^S)\|_{L^2(P,\mathcal R)}^2-C\mathcal R(P)-C R_{legal}(P)\right]_+
```

is not automatically charged. It measures a transform interaction, not just support size. To pack Carleson, every large defect must be assigned to an installed finite ledger:

```math
B_{Schur},\quad E_{top-ex},\quad S_{material},\quad Stop,\quad Reset,\quad R_{legal}.
```

The current setup gives local source-origin routing, but does not prove

```math
Def_{test}(P)\lesssim
B_{Schur}(P)+E_{top-ex}(P)+S_{material}(P)+Stop(P)+Reset(P)+R_{legal}(P)
\tag{4}
```

with Carleson summability.

Thus `OriginalHistoryAdjointTestingMeasureCarleson.A` does not follow from the stopped selector definition alone.

## 4. Exact missing theorem pair

The direct selector route reduces to two sharper obligations.

```text
SelectorReferenceStateFromOriginalHistory.A
```

Statement:

For every retained stopped packet \(P\), the stopped selector provides a reference test \(b_P^0\) satisfying either

```math
|\langle b_P^0\rangle_P|\ge c,
\qquad
\|b_P^0\|_{L^2(P,\mathcal R)}^2\le C\mathcal R(P),
```

or the failure is paid by selector thinning, stop entropy, reset/order-lock loss, material service, or legal exit.

and

```text
TestingDefectChargeToInstalledLedgers.A
```

Statement:

For the corrected stopped tests \(b_P\), the testing defects satisfy the pointwise/Carleson charge

```math
\sum_{P\subseteq P_0}Def_{test}(P)
\le C\sum_{P\subseteq P_0}
\bigl(B_{Schur}(P)+E_{top-ex}(P)+S_{material}(P)+Stop(P)+Reset(P)+R_{legal}(P)\bigr)
\le C\mathcal R(P_0)+C R_{legal}(P_0).
```

## 5. Result

`StoppedSelectorAccretiveReferenceState.A` and `OriginalHistoryAdjointTestingMeasureCarleson.A` do not close from stopped selection alone. The live lock is now:

```math
\boxed{
\text{SelectorReferenceStateFromOriginalHistory.A}
+
\text{TestingDefectChargeToInstalledLedgers.A}.
}
```

This is a genuine structural requirement: the stopped selector must either have a thick accretive reference state, or every loss of thickness and every large testing defect must already be charged to the installed original-history ledgers. Without that, the stopped \(Tb\) route cannot produce the Hilbert/BMO carrier noncircularly.