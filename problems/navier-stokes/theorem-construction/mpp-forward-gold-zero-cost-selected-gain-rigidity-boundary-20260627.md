---
theorem_id: forward-gold-zero-cost-selected-gain-rigidity-boundary-20260627
status: conditional-rigidity-reduced-to-parent-predictable-no-fresh-action
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - ZeroCostSelectedGainRigidity.A
  - QuantitativeNoFreeSelectedGain.A
  - GlobalSamePacketFullClockFromOriginalData.A
---

# Zero-cost selected-gain rigidity: boundary

## 1. Target

The proposed global smoothness spine requires:

```math
\mathcal L(Q,Q')=0\quad\Longrightarrow\quad A_{sel}(Q')=0.
\tag{1}
```

Here

```math
\mathcal L
=
B_{Schur}+E_{top-ex}+S_{material}+S_{cov/frame}+Stop+Reset+Return+R_{legal}.
```

## 2. Formal zero-cost limit

Assume a retained transition \(Q\to Q'\) has zero ledger:

```math
B_{Schur}=E_{top-ex}=S_{material}=S_{cov/frame}=Stop=Reset=Return=R_{legal}=0.
```

Then the installed local classifications imply:

1. no parent Schur-visible source;
2. no selected silent pressure-Helmholtz--Leray carrier except unselected/gauge material;
3. no top-strain exchange;
4. no material service;
5. no covector/frame drift;
6. no reset/order-lock change;
7. no return event;
8. no legal exit.

Thus the child packet can only be the parent-predictable transport of the parent packet, up to gauge/unselected terms.

## 3. Conditional rigidity step

If parent-predictable transport cannot create fresh selected gain, i.e.

```math
Q'=\operatorname{Pred}_{Q\to Q'}(Q)
\quad\Longrightarrow\quad
A_{sel}(Q')=0,
\tag{2}
```

then `(1)` follows immediately.

This is the desired zero-cost selected-gain rigidity theorem.

## 4. Missing nonformal theorem

The current route does not yet prove `(2)` as a standalone theorem. It must be installed explicitly:

```text
ParentPredictableTransportNoFreshSelectedAction.A
```

Statement:

A retained child obtained only by parent-predictable same-material transport, with no Schur defect, no exchange, no material service, no covector/frame drift, no reset, no return, and no legal exit, carries no fresh selected action:

```math
A_{sel}(Q')=0.
```

One also needs compactness/existence of the zero-ledger bad-profile limit:

```text
ZeroLedgerCompactnessForRetainedTransitions.A
```

Statement:

If \(A_{sel}(Q'_n)=1\) and \(\mathcal L(Q_n,Q'_n)\to0\), then a retained zero-ledger profile exists after normalization, with all ledgers vanishing and selected action retained in the limit.

## 5. Result

`ZeroCostSelectedGainRigidity.A` is reduced to two precise obligations:

```math
\boxed{
\text{ZeroLedgerCompactnessForRetainedTransitions.A}
+
\text{ParentPredictableTransportNoFreshSelectedAction.A}.
}
```

Once those are proved, the zero-cost implication follows:

```math
\mathcal L=0\Rightarrow A_{sel}=0.
```

This is a cleaner root target than constructing additional detectors, but it is not closed until parent-predictable transport is proven unable to generate fresh selected action.