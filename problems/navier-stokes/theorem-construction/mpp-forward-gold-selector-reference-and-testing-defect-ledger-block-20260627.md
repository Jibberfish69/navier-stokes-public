---
theorem_id: forward-gold-selector-reference-and-testing-defect-ledger-block-20260627
status: hard-structural-block-stopped-tb-route
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - SelectorReferenceStateFromOriginalHistory.A
  - TestingDefectChargeToInstalledLedgers.A
  - StoppedSelectorAccretiveReferenceState.A
  - OriginalHistoryAdjointTestingMeasureCarleson.A
  - OriginalHistoryHilbertBMOProducer.A
---

# Selector reference and testing-defect ledger block

## 1. Target

The stopped \(Tb\) route now requires two original-history facts.

First, a selector reference state:

```math
|\langle b_P^0\rangle_P|\ge c,
\qquad
\|b_P^0\|_{L^2(P,\mathcal R)}^2\le C\mathcal R(P),
\tag{1}
```

or a payment for failure of `(1)`.

Second, testing-defect charge:

```math
\sum_{P\subseteq P_0}Def_{test}(P)
\le C\sum_{P\subseteq P_0}
\bigl(B_{Schur}(P)+E_{top-ex}(P)+S_{material}(P)+Stop(P)+Reset(P)+R_{legal}(P)\bigr),
\tag{2}
```

with the right side finite from original data.

## 2. Reference-state test

The natural selector reference state is a normalized selector density,

```math
b_P^0={\chi_P\over \langle\chi_P\rangle_P}.
```

It is accretive by construction, but its \(L^2\) size is

```math
\|b_P^0\|_{L^2(P)}^2
=\frac{\mu(P)}{\mu(\operatorname{supp}\chi_P)}\,\mu(P).
```

Thus `(1)` requires a thickness lower bound

```math
\mu(\operatorname{supp}\chi_P)\ge c\mu(P),
\tag{3}
```

or a finite payment for loss of thickness:

```math
\log {\mu(P)\over\mu(\operatorname{supp}\chi_P)}
\le
C(Stop(P)+Reset(P)+S_{material}(P)+R_{legal}(P)).
\tag{4}
```

But `(3)` and `(4)` are not consequences of stopped selection alone. A selector can be retained while selecting a thin high-density core unless the construction already charges selector thinning.

Therefore `SelectorReferenceStateFromOriginalHistory.A` is not installed.

## 3. Testing-defect ledger test

The testing defect is a transform square term:

```math
Def_{test}(P)\simeq
\left[\|T_S(b_P\nu^S)\|_{L^2(P,\mathcal R)}^2-C\mathcal R(P)\right]_+.
```

Installed local ledgers control pressure-visible source, pressure-null source, source-origin exchange, stops, resets, and legal exits. But the transform defect also depends on cancellation geometry across subpackets. The implication

```math
\text{local source payment}
\Rightarrow
\text{Carleson testing defect payment}
```

is false without a \(T1/Tb\)-type testing theorem or a direct square-function orthogonality statement.

Thus `(2)` is exactly the missing BMO-producing theorem in another form. Treating it as an installed ledger would be circular.

## 4. Hard block

The stopped \(Tb\) route is blocked unless one proves a new original-history structural theorem:

```text
SelectorThicknessOrPaidThinning.A
```

and

```text
StoppedTestingDefectOrthogonality.A
```

in the forms

```math
\log {\mu(P)\over\mu(\operatorname{supp}\chi_P)}
\lesssim Stop(P)+Reset(P)+S_{material}(P)+R_{legal}(P),
```

and

```math
\sum_{P\subseteq P_0}Def_{test}(P)
\lesssim
B_{Schur}(P_0)+E_{top-ex}(P_0)+S_{material}(P_0)+Stop(P_0)+Reset(P_0)+R_{legal}(P_0).
```

Neither theorem follows from the current route notes.

## 5. Result

This is a hard structural block for the stopped adjoint \(Tb/BMO\) producer. The route is not dead in principle, but it now requires genuinely new noncircular structure:

```math
\boxed{
\text{selector thickness or paid thinning}
+
\text{stopped testing-defect orthogonality}
}
```

Without those, the original-history Hilbert/BMO producer cannot be constructed from the current ledgers, and the selected log-amplification Carleson theorem remains open.