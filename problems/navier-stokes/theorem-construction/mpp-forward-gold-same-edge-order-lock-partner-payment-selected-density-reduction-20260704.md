---
theorem_id: forward-gold-same-edge-order-lock-partner-payment-selected-density-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-height record-net work / same-record selector label modulus
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - SameEdgeOrderLockPartnerDeficitPayment.A
  - SelectedDensityMartingaleSquareFunctionCarleson.A
  - SelectedDensityUniformIntegrability.A
  - OriginalHistorySelectedReserve.A
  - SelectedCompressionRootReserve.A
  - OrderLockOverlapFourBodyPayment.A
role: >
  Reduces the same-edge order-lock partner payment gate to selected-density
  gain or same-packet four-body overlap payment. It records the terminal
  channel-first cancellation pulse as the checked obstruction when neither
  payment is available.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-edge-selector-modulus-same-packet-gate-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-participation-order-lock-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-order-lock-selected-density-first-ratio-alignment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-order-lock-overlap-fourbody-payment-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-selected-density-atom-exclusion-direct-test-20260626.md
completion_truth: >-
  This note does not prove SameEdgeOrderLockPartnerDeficitPayment.A from
  original smooth data. It proves that the partner-payment gate is a consumer:
  it follows from selected-density reverse-Holder/uniform-integrability/root
  reserve, or from retained same-packet four-body channel-overlap payment. If
  both producer families are absent, the surviving obstruction is the same
  critical terminal half-tail already isolated in the selected-density route.
---

# Same-edge order-lock partner payment selected-density reduction

## 1. Physical object

The object is one retained future-positive record edge of the same
Navier-Stokes field. The edge is carried by one packet through transport,
pressure, viscosity, incompressibility, localization, sign, scale, and terminal
time.

Write the channel-first positive scalar as

```math
n=\langle N,\Phi\rangle .
\tag{SOL.1}
```

Write the same-packet partner as

```math
b=
\langle P+V+T+I+L+S,\Phi\rangle
-cD^\nu .
\tag{SOL.2}
```

The full same-packet scalar is

```math
h=n+b .
\tag{SOL.3}
```

The physical issue is simple: the selected edge may look positive only because
the negative pressure/viscosity/transport/incompressibility/localization/sign
partner was ignored. Then the selector did not merely move labels. It selected
half of the packet.

So the payment must come from the same physical story. Either the selected
positive density has a real reserve gain, or the canceled same-packet partner is
retained and paid by the four-body overlap channels. Otherwise the pulse
survives as an unpaid terminal half-tail.

## 2. Exact scalar gap

The full-participation order-lock direct attempt proves the exact pointwise
gap:

```math
\Delta^{ol}
:=
\bigl([n]_+-[h]_+\bigr)_+
=
\min\{[n]_+,[-b]_+\}.
\tag{SOL.4}
```

Therefore

```math
0\le \Delta^{ol}\le [n]_+
\tag{SOL.5}
```

and

```math
[n]_+\le [h]_++\Delta^{ol}.
\tag{SOL.6}
```

This is the proof-grade algebraic part. The remaining question is not algebra.
It is whether the same field supplies a nonterminal payment for
\(\Delta^{ol}\).

## 3. Selected-density payment

Let \(d\mathcal R\) be the retained material-tree reserve measure, and let
\(f\) be the selected channel-first density:

```math
A(Q)=\int_Q f\,d\mathcal R.
\tag{SOL.7}
```

Normalize the order-lock gap in the same units:

```math
A_{ol}(Q)=\int_Q f_{ol}\,d\mathcal R,
\qquad
f_{ol}\simeq \Delta^{ol},
\tag{SOL.8}
```

up to already-declared legal, selector, collar, and packet-synchronization
residuals. By `(SOL.5)`,

```math
0\le f_{ol}\le C f+f_{\rm legal}.
\tag{SOL.9}
```

Thus any selected-density gain that beats the terminal critical half-tail pays
the same-edge partner gap:

```math
\texttt{SelectedDensityMartingaleSquareFunctionCarleson.A}
\Longrightarrow
\texttt{SameEdgeOrderLockPartnerDeficitPayment.A}.
\tag{SOL.10}
```

The same consumer implication is supplied by

```text
SelectedDensityUniformIntegrability.A
OriginalHistorySelectedReserve.A
SelectedCompressionRootReserve.A
```

whenever those are proved in the retained same-material units.

The physical reading is that the selected positive part cannot repeatedly
appear as a thin terminal pulse when the same selected density has reverse
Holder, good-lambda, Carleson, Orlicz, or root-reserve improvement. That
improvement is exactly what converts raw positive mass into a paid packet
record.

## 4. Same-packet four-body overlap payment

The same partner can also be paid channel by channel. Split

```math
b=b^p+b^v+b^t+b^i+b^l+b^s .
\tag{SOL.11}
```

Then the overlap note proves

```math
\Delta^{ol}
\le
\sum_{\kappa\in\{p,v,t,i,l,s\}}
\min\{[n]_+,[-b^\kappa]_+\}.
\tag{SOL.12}
```

This is still the same packet. The native positive factor remains inside every
channel term. A pressure-only, viscosity-only, or storage-only estimate is
support until it is tied to this retained overlap.

Therefore retained same-packet four-body payment gives the second producer:

```math
\texttt{OrderLockOverlapFourBodyPayment.A}
\Longrightarrow
\texttt{SameEdgeOrderLockPartnerDeficitPayment.A}.
\tag{SOL.13}
```

When a channel record is not retained, the failure is also typed physically:
pressure compatibility loss, heat-scale material return loss, selector/collar
drift, donor/reselection loss, legal/stop loss, or a Pack/Part/Field-facing
boundary according to the active route grammar. It is not an independent
positive-source theorem.

## 5. Checked obstruction

The sharp obstruction is the terminal channel-first cancellation pulse

```math
n_m(s)=a\tau_m^{-1}\mathbf 1_{(-\tau_m,0]}(s),
\qquad
b_m(s)=-n_m(s),
\qquad
\tau_m\downarrow0.
\tag{SOL.14}
```

Then

```math
h_m=0,
\qquad
\Delta_m^{ol}=[n_m]_+,
\tag{SOL.15}
```

and

```math
\|\Delta_m^{ol}\|_{L^1}=a,
\qquad
\|\Delta_m^{ol}\|_{L^q}^q
=
a^q\tau_m^{1-q}\to\infty
\quad(q>1).
\tag{SOL.16}
```

This has finite raw mass and no terminal uniform integrability. In retained
tree language it is the same critical half-tail:

```math
\sum_{\ell\ge0}\nu_\ell<\infty,
\qquad
\sum_{\ell\ge0}2^\ell\nu_\ell=\infty.
\tag{SOL.17}
```

Thus an unpaid order-lock partner gap is not a new Gold wall and not selector
label motion. It is the selected-density half-tail written in full-packet
admission variables.

## 6. Strict reduction

The current noncircular dependency is:

```math
\begin{aligned}
&\bigl(
\texttt{SelectedDensityMartingaleSquareFunctionCarleson.A}
\ \text{or}\
\texttt{SelectedDensityUniformIntegrability.A}
\ \text{or}\
\texttt{OriginalHistorySelectedReserve.A}
\ \text{or}\
\texttt{SelectedCompressionRootReserve.A}
\bigr)\\
&\qquad
\text{or}\quad
\texttt{OrderLockOverlapFourBodyPayment.A}
\end{aligned}
\Longrightarrow
\texttt{SameEdgeOrderLockPartnerDeficitPayment.A}.
\tag{SOL.18}
```

Combined with the record-edge selector modulus gate:

```math
\begin{aligned}
&\texttt{RecordEdgeMaterialOrderLockedSelectorModulus.A}\\
&+\texttt{TransportedSelectorHeatScaleReturn.A}\\
&+\texttt{SelectorTieGapOrDriftCharge.A}\\
&+\texttt{SameEdgeOrderLockPartnerDeficitPayment.A}
\end{aligned}
\Longrightarrow
\texttt{RecordEdgeSelectorLabelModulusOrPaidDrift.A}.
\tag{SOL.19}
```

So this note strictly narrows one producer gate inside the same physical story.
It does not close the Gold route from original data. The remaining physical
burden is to prove selected-density gain from original same-material history,
or to retain and pay the full same-packet overlap channels strongly enough to
exclude the terminal half-tail.
