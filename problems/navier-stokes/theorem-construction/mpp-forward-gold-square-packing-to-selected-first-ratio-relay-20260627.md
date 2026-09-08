---
theorem_id: forward-gold-square-packing-to-selected-first-ratio-relay-20260627
status: conditional-relay-closed-under-selector-correct-log-amplification-identity
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / routed current square-packing
attacks_hinge:
  - StoppedRoutedCurrentSquarePackingToSelectedFirstRatio.A
  - SelectedDensityMartingaleSquareFunctionCarleson.A
  - SelectedActionTraceCoercivity.A
  - ParentDrop.A
  - GlobalSamePacketFullClockFromOriginalData.A
---

# Square-packing to selected first-ratio relay

## 1. Input

Assume stopped routed-current square-packing has been proved:

```math
\sum_{Q\subseteq P}\|\Delta_QJ^S\|_{\mathcal H_{lift}}^2\mathcal R(Q)
\le C\mathcal E_{route}(P)+CR_{legal}(P)+CStop(P).
\tag{1}
```

Assume also the selector-correct log-amplification identity on each retained
nonlegal edge:

```math
\Delta_Q\lambda_{sel}
:=\log {f_Q\over f_{par(Q)}}
=\ell_Q(\Delta_QJ^S)-\psi_Q+e_Q,
\tag{2}
```

where

- \(\ell_Q\) is a uniformly bounded stopped readout;
- \(\psi_Q\ge0\) is stop/damping/entropy loss;
- \(e_Q\) is legal or already routed error with square packing.

## 2. Martingale square function

From `(2)` and boundedness of \(\ell_Q\),

```math
|\Delta_Q\lambda_{sel}|^2
\le C\|\Delta_QJ^S\|^2+C|e_Q|^2+C\psi_Q^2.
\tag{3}
```

Therefore, multiplying by \(\mathcal R(Q)\) and summing over the stopped tree,

```math
\sum_{Q\subseteq P}|\Delta_Q\lambda_{sel}|^2\mathcal R(Q)
\le C\mathcal E_{route}(P)+CR_{legal}(P)+CStop(P).
\tag{4}
```

This is the selected-density martingale square-function Carleson estimate in
log-density currency.

## 3. Entropy / positive first-ratio conversion

The selected first-ratio action is carried by positive log-amplification:

```math
A_{sel}(Q)\lesssim [\Delta_Q\lambda_{sel}]_+^2\mathcal R(Q)+R_{legal}(Q)+Stop(Q).
\tag{5}
```

The square is the correct critical currency: repeated small positive increments
are controlled by the martingale square function, while large increments are
stopped or legally charged by the selector threshold construction.

Using `(4)`,

```math
\sum_{Q\subseteq P}A_{sel}(Q)
\le C\mathcal E_{route}(P)+CR_{legal}(P)+CStop(P).
\tag{6}
```

If `OriginalHistoryRoutedCurrentEnergyFinite.A` holds, then

```math
\sum_{Q\subseteq P}A_{sel}(Q)\le C(u_0)+CR_{legal}(P)+CStop(P).
\tag{7}
```

Thus the selected first-ratio half-tail is finite.

## 4. Parent drop relay

The parent-drop inequality combines finite selected action with the already
available capacity monotonicity:

```math
\sum_{Q'\in ch(Q)}B_{cap}(Q')
\le B_{cap}(Q)+R_{legal}(Q),
\tag{8}
```

and selected action control from `(6)`:

```math
\sum_{Q'\in ch(Q)}A(Q')
\le C\langle U_Q,S_QU_Q\rangle+CR_{legal}(Q)
\tag{9}
```

in the stopped routed-current realization of the Schur/source ledger. Hence

```math
\sum_{Q'\in ch(Q)}A(Q')+\sum_{Q'\in ch(Q)}B_{cap}(Q')
\le B_{cap}(Q)+CR_{legal}(Q)+CStop(Q).
\tag{10}
```

Summing over the laminar tree gives finite selected action and finite
same-material service clock.

## 5. Full-clock continuation relay

The already recorded continuation criterion is:

```math
\sum_QA(Q)<\infty
\quad\Longrightarrow\quad
\text{finite full same-material clock}
\quad\Longrightarrow\quad
\sup_{t<T}\|u(t)\|_{H^s}<\infty.
\tag{11}
```

Then local well-posedness continues the smooth solution past the alleged first
singular time, contradicting finite-time blowup.

## 6. Exact remaining caveat

The relay depends on the selector-correct identity `(2)`.  If `(2)` is not
already installed, the remaining theorem is

```text
SelectorCorrectLogAmplificationIdentity.A
```

Statement: the selected log-density increment is the stopped readout of the
routed current increment plus nonpositive stop entropy and square-packable legal
error.  This identity must be built from the stopped selector and routed-current
construction, not fitted to the future selected tail.

## 7. Result

Conditional relay closure:

```math
\boxed{
\text{stopped routed-current square-packing}
+
\text{selector-correct log-amplification identity}
\Longrightarrow
\text{finite selected first-ratio action}
\Longrightarrow
\text{parent drop}
\Longrightarrow
\text{finite full same-material clock}.
}
```

The remaining work is verification/promotion: ensure `(2)` and
`OriginalHistoryRoutedCurrentEnergyFinite.A` are installed in the source graph and
then propagate this relay into the manuscript-grade parent-drop/full-clock proof.