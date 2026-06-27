---
theorem_id: forward-gold-zero-cost-selected-gain-rigidity-smoothness-spine-20260627
status: synthesis-spine-recorded-proof-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - GlobalSamePacketFullClockFromOriginalData.A
  - ZeroCostSelectedGainRigidity.A
  - QuantitativeNoFreeSelectedGain.A
  - CriticalFreshSourceTentCarleson.A
  - HsContinuationFromFullMaterialClock.A
---

# Zero-cost selected-gain rigidity as the smoothness spine

## 1. Whole-proof target

The proof should not be organized as a pile of local mechanisms. It should be organized around one global contradiction:

```text
Assume finite-time blowup.
Extract one minimal retained same-material ancestry carrying the dangerous selected growth.
Prove that ancestry cannot have an infinite unpaid selected half-tail.
Therefore the full same-material clock is finite.
Therefore the H^s norm stays bounded.
Therefore the alleged first singular time is not singular.
```

The central theorem is

```text
GlobalSamePacketFullClockFromOriginalData.A
```

in the concrete form

```math
\sum_{Q\subseteq Q_0}A_{sel}(Q)\le C(u_0).
\tag{1}
```

Everything else is support. A lemma is on route only if it helps prove `(1)`.

## 2. Selected full material clock

Define the selected full material clock on a retained material tree by

```math
\mathcal C_{sel}(Q_0):=\sum_{Q\subseteq Q_0}A_{sel}(Q).
```

The smoothness proof wants

```math
\mathcal C_{sel}(Q_0)<\infty.
```

The continuation theorem is

```math
\mathcal C_{sel}(Q_0)<\infty
\quad\Longrightarrow\quad
\sup_{t<T}\|u(t)\|_{H^s}<\infty,
\tag{2}
```

for the fixed continuation threshold \(s\) used by the route. Then local well-posedness continues the solution beyond \(T\), contradicting first finite-time blowup.

## 3. Original-history ledger

Let

```math
\mathcal L(Q,Q')
:=
B_{Schur}(Q,Q')
+E_{top-ex}(Q,Q')
+S_{material}(Q,Q')
+S_{cov/frame}(Q,Q')
+Stop(Q,Q')
+Reset(Q,Q')
+Return(Q,Q')
+R_{legal}(Q,Q').
```

The local engine should be

```math
A_{sel}(Q')\le C\mathcal L(Q,Q').
\tag{3}
```

The global packing theorem should be

```math
\sum_{Q\subseteq Q_0}\mathcal L(Q,Q')\le C(u_0).
\tag{4}
```

Then `(1)` follows immediately:

```math
\sum_{Q\subseteq Q_0}A_{sel}(Q')
\le C\sum_{Q\subseteq Q_0}\mathcal L(Q,Q')
\le C(u_0).
```

## 4. Zero-cost selected-gain rigidity

Rather than inventing a new detector for every invisible mode, prove the bad-profile theorem:

```text
ZeroCostSelectedGainRigidity.A
```

Statement:

```math
\mathcal L(Q,Q')=0
\quad\Longrightarrow\quad
A_{sel}(Q')=0.
\tag{5}
```

Equivalently, no retained child can gain selected action while all original-history ledgers vanish.

The proof shape is:

1. Assume `(3)` fails.
2. Choose a minimal bad retained transition with normalized selected gain:

```math
A_{sel}(Q'_n)=1,
```

but

```math
\mathcal L(Q_n,Q'_n)\to0.
```

3. Pass to a zero-cost bad-profile limit.
4. In the limit there is no parent Schur signal, no pressure-visible source, no selected silent source, no top-strain exchange, no material service, no covector/frame drift, no reset, no return, and no legal exit.
5. Therefore the child is only parent-predictable transport.
6. Parent-predictable transport cannot create fresh selected action:

```math
A_{sel}(Q'_{\infty})=0,
```

contradicting the normalized gain.

This proves the zero-cost implication `(5)`.

## 5. Quantitative upgrade

Once `(5)` is proved, compactness upgrades it to the coercive estimate

```math
A_{sel}(Q')\le C\mathcal L(Q,Q').
\tag{6}
```

This is

```text
QuantitativeNoFreeSelectedGain.A
```

and it is the local theorem that should replace the search for more detectors.

## 6. Ledger packing

The remaining global theorem is

```text
LedgerCarlesonPackingFromOriginalData.A
```

Statement:

```math
\sum_{Q\subseteq Q_0}\mathcal L(Q,Q')\le C(u_0).
\tag{7}
```

Every previous mechanism belongs here as a ledger term or a zero-cost exclusion subcase:

- silent source classification;
- record/return;
- reset/overrun;
- endpoint current;
- stopped testing;
- active-weight compensator;
- scale memory;
- frame/covector drift;
- material service;
- legal exit.

None should be promoted to the global proof target unless it directly proves `(6)` or `(7)`.

## 7. Final smoothness chain

The final proof should be written as five blocks:

### I. Minimal material blowup extraction

A finite-time singularity produces a retained same-material ancestry tree with infinite selected action:

```math
\sum_Q A_{sel}(Q)=\infty.
```

### II. Zero-cost selected-gain rigidity

```math
\mathcal L(Q,Q')=0\Rightarrow A_{sel}(Q')=0.
```

### III. Quantitative no-free selected gain

```math
A_{sel}(Q')\le C\mathcal L(Q,Q').
```

### IV. Ledger Carleson packing

```math
\sum_Q\mathcal L(Q,Q')\le C(u_0).
```

### V. Continuation

```math
\sum_Q A_{sel}(Q)\le C(u_0)
\Rightarrow
\mathcal C_{sel}<\infty
\Rightarrow
\sup_{t<T}\|u(t)\|_{H^s}<\infty
\Rightarrow
\text{continuation past }T.
```

This contradicts finite-time blowup.

## 8. Strategic conclusion

The best current strategy is:

```text
Do not build another detector.
Prove the free selected-gain object cannot exist.
```

All local constructions should be demoted to one of two roles:

1. identify a zero-cost escape mode;
2. prove that escape mode is either unselected or paid by an original-history ledger.

The live theorem target should therefore be

```text
ZeroCostSelectedGainRigidity.A
    -> QuantitativeNoFreeSelectedGain.A
    -> GlobalSamePacketFullClockFromOriginalData.A
    -> HsContinuationFromFullMaterialClock.A.
```