---
theorem_id: forward-gold-full-clock-fresh-increment-definition-audit-boundary-20260627
status: source-level-definition-audit-needed
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - FullMaterialClockDefinitionAgainstFreshIncrementCurrency.A
  - GlobalSamePacketFullClockFromOriginalData.A
  - ZeroCostSelectedGainRigidity.A
---

# Full-clock fresh-increment definition audit boundary

## 1. Target

The zero-cost selected-gain spine requires the selected clock to count fresh first-ratio/log-amplification increments after parent-predictable transport, plus finite inherited/root terms.

The desired audit statement is:

```math
\mathcal C_{sel}(Q_0)
=\mathcal C_{root/inherited}(Q_0)
+\sum_{Q\subseteq Q_0}A^{fresh}_{sel}(Q)
+\sum_{Q\subseteq Q_0}Def_{paid}(Q),
```

with

```math
\mathcal C_{root/inherited}(Q_0)+\sum Def_{paid}(Q)\le C(u_0)+C\sum \mathcal L(Q).
```

## 2. What is verified here

The active theorem-construction route uses first-ratio, log-amplification, selected-density martingale increments, and parent-subtracted fresh source language. In that theorem-construction layer, the intended currency is fresh-increment currency.

Thus the zero-cost spine is compatible with the intended route.

## 3. What is not verified

This note does not inspect every manuscript/source occurrence of selected action, selected first-ratio action, capacity action, active weight, or material clock. Therefore it cannot certify that the full authored proof consistently avoids absolute child selected mass.

The theorem remains open until the source is audited for currency consistency.

## 4. Exact missing task

The required task is:

```text
SourceLevelFullClockCurrencyAudit.A
```

Statement:

Every definition and use of selected action in the full material-clock route is one of:

1. fresh positive increment after parent-predictable transport;
2. finite inherited/root term;
3. defect explicitly charged to original-history ledgers;
4. notation alias for one of the above.

Any absolute child-mass occurrence must be rewritten into fresh increment plus inherited/root mass.

## 5. Result

`FullMaterialClockDefinitionAgainstFreshIncrementCurrency.A` is not certified by theorem-level intent alone. It requires a source-level definition audit.

The smoothness spine can proceed conditionally, but the proof document must eventually install:

```math
\boxed{\text{SourceLevelFullClockCurrencyAudit.A}.}
```