---
theorem_id: forward-gold-c0-owned-half-tail-bill-face-classification-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / owned same-edge half-tail / first-ratio bill-face classification
status: formal-route-classification-not-bill-payment
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
target_object:
  - FullTowerPositiveChannelThreeMeasureAdmission.A
  - ParentOwnedPositiveRecordBillCurrency.A
  - SameEventNoRecountFirstRatioBillCurrency.A
  - WLF.60
  - ODP.91
  - SelectedFirstRatioAffineTransitionReducer.A
  - PersistentAffineQuotientRecordReturnProducer.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-full-tower-positive-channel-log-carrier-routeout-proof-pass-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-owned-positive-channel-half-tail-wall-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-wlf-odp-affine-transition-first-ratio-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-persistent-affine-quotient-record-return-producer-reduction-20260707.md
  - problems/navier-stokes/spine.md
  - problems/navier-stokes/claim-ladder.md
completion_truth: >-
  This note completes the branch classification for the last owned same-edge
  no-recount half-tail. It proves that the survivor is not an untyped leftover:
  it is a first-ratio Bill-face debt certificate on the same carrier. If WLF.60,
  ODP.91, the selected affine-transition reducer, the persistent affine-quotient
  record/return producer, or the equivalent active-transit/full-exchange matrix
  is proved, that Bill face becomes paid bill currency. If the first-ratio
  demand is infinite, the branch is still classified as unpaid Bill, not as
  Pack/Part/Field unless a separate same-witness CM, participation, or field
  mechanism is admitted. This is not a proof of c_0 closure or WLF/ODP finiteness.
---

# Owned half-tail routes to the first-ratio Bill face

## 1. Same physical object

The surviving half-tail is one selected positive readout of the same parent
Navier-Stokes packet. Its raw heat/viscous residence, pressure-Hodge driver,
selector, stopped edge, parent root clock, return fibre, and record face all have
to describe that one material history before the scalar positive part is counted.

The previous branch pass proved raw same-carrier ownership:

```math
d\nu_e=h_e\,d\sigma_e,
\qquad
d\mu_e^A=(h_e)_+\,d\sigma_e,
\qquad
d\mu_e^N=(h_e)_-\,d\sigma_e,
\qquad
d\mu_e^J=h_e\,d\sigma_e .
\tag{BFC.1}
```

Thus

```math
d\mu_e^J=d\mu_e^A-d\mu_e^N
\tag{BFC.2}
```

on the same event carrier. The remaining problem is not ownership. It is whether
the positive selected part has first-ratio currency on that same carrier.

## 2. The Bill-face measure

On a retained selected edge \(e\), let \(a_e\) denote the same-edge first-ratio
weight supplied by the parent active/root clock. In the layer model,

```math
a_\ell\simeq 2^\ell .
\tag{BFC.3}
```

Define the first-ratio Bill demand of the retained positive channel by

```math
dB_{fr,e}:=a_e\,d\mu_e^A .
\tag{BFC.4}
```

Equivalently, on the checked half-tail model,

```math
B_{fr}(e)
\simeq
\sum_{\ell\ge 0}2^\ell\nu_\ell .
\tag{BFC.5}
```

This is the Bill face because it measures exactly the one-way selected service
that raw ownership does not measure. Raw residence is the zeroth moment
\(\sum_\ell\nu_\ell\); selected first-ratio service is `(BFC.5)'.

Define

```math
\texttt{FirstRatioBillFace}(e)
:=
\bigl[
e\text{ is same-carrier, same-edge, stopped before readout, not recounted}
\bigr]
\text{ with demand }dB_{fr,e}.
\tag{BFC.6}
```

This definition does not assume \(B_{fr}(e)<\infty\). Finiteness is the paid-bill
theorem. The face itself is the typed place where the debt lives.

## 3. The half-tail is a Bill certificate

The checked survivor has

```math
\nu_\ell={2^{-\ell}\over \ell+1},
\qquad
\sum_{\ell\ge0}\nu_\ell<\infty,
\qquad
\sum_{\ell\ge0}2^\ell\nu_\ell=\infty .
\tag{BFC.7}
```

By `(BFC.1)'--`(BFC.2)', it is owned by the same carrier as
\((\mu^A,\mu^N,\mu^J)\). By the custody and no-recount clauses of the branch
test, it remains on the same selected edge before positive readout. Therefore
`(BFC.6)' applies, and `(BFC.7)' says exactly

```math
\texttt{FirstRatioBillFace}(e)
\quad\hbox{and}\quad
B_{fr}(e)=\infty .
\tag{BFC.8}
```

So the survivor is not an unclassified channel. It is an unpaid Bill-face
certificate.

Physically, this says that the same fluid packet can have finite raw residence
while demanding infinite one-way selected work from the parent active/root clock.
The proof cannot erase that demand by saying the packet is owned. Ownership names
the carrier; \(dB_{fr,e}\) names the service cost of keeping the selected positive
edge on that carrier.

## 4. Payment and route split

The Bill face is paid by any source theorem that proves finite first-ratio
currency on the same order-locked carrier:

```math
\texttt{WLF.60}
\quad\hbox{or}\quad
\texttt{ODP.91}
\quad\hbox{or}\quad
\texttt{SelectedFirstRatioAffineTransitionReducer.A}
\Longrightarrow
B_{fr}(e)<\infty .
\tag{BFC.9}
```

The checked lower producer package is

```math
\texttt{PersistentAffineQuotientRecordReturnProducer.A},
\tag{BFC.10}
```

or equivalently an original-history active/root storage matrix with strict
feedback margin:

```math
\texttt{StrictOriginalLedgerGeneratorStorage.A}
\quad\hbox{or}\quad
\texttt{FullExchangeCriticalDepletionStorage.A}.
\tag{BFC.11}
```

Thus the formal branch split for the owned no-recount half-tail is

```math
\begin{array}{ll}
B_{fr}(e)<\infty
  &\Rightarrow \text{paid Bill},\\[1mm]
B_{fr}(e)=\infty
  &\Rightarrow \text{unpaid Bill-face debt certificate},\\[1mm]
\text{carrier, edge, stopping, selector, chart, or no-recount clause fails}
  &\Rightarrow \text{legal, stop, service/custody, or typed Pack/Part/Field},\\[1mm]
\text{same-witness terminal/participation/field mechanism is admitted}
  &\Rightarrow \text{Part or Field route-out}.
\end{array}
\tag{BFC.12}
```

The last two rows are not substitutes for the Bill face. They require their own
typed mechanisms. Missing first-ratio payment alone lands in Bill.

## 5. Conditional theorem

For every positive generated tower-record channel \(e\), the installed branch
theorems now give

```math
\begin{gathered}
\text{positive generated tower-record channel }e\\
\Longrightarrow\\
\text{same-carrier }(\mu^A,\mu^N,\mu^J)
\quad\hbox{or}\quad
\text{Bill}
\quad\hbox{or}\quad
\text{legal}
\quad\hbox{or}\quad
\text{stop}
\quad\hbox{or}\quad
\text{Pack/Part/Field}.
\end{gathered}
\tag{BFC.13}
```

Proof. If the parent-known raw signed event exists, Hahn-Jordan on that event
carrier gives `(BFC.1)'--`(BFC.2)', so the generated positive channel is owned by
the same carrier as \((\mu^A,\mu^N,\mu^J)\). If the raw event, chart, selector,
stopped edge, custody tuple, compactness face, or no-recount clause fails, the
previous branch split routes the failure to legal, stop, service/custody, or to
Pack/Part/Field after the corresponding CM or field admission. On the remaining
branch, all ownership and custody clauses pass. Then `(BFC.4)' defines the
first-ratio Bill demand on that same carrier. If the demand is finite, the branch
is paid Bill. If the demand is infinite, `(BFC.8)' classifies it as unpaid Bill.
No branch remains outside the listed destinations.

## 6. Findings

1. Same-carrier ownership and Bill payment are different statements. Ownership
   gives the carrier of \((\mu^A,\mu^N,\mu^J)\); Bill payment controls the
   first-ratio service measure on that carrier.

2. The owned half-tail is now routed. It is a first-ratio Bill-face debt
   certificate, finite when WLF/ODP or the active/root matrix pays, infinite in
   the checked half-tail obstruction.

3. Pack/Part/Field remains typed. Missing first-ratio Bill does not by itself
   create a CM face failure; it becomes Part/Field only after same-witness
   terminal, participation, or field admission.

4. The c0 proof is still open at the payment theorem. The branch taxonomy is
   complete; the original-data finiteness of \(B_{fr}\) is not.
