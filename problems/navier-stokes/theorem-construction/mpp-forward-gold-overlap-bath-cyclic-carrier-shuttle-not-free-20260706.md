---
theorem_id: forward-gold-overlap-bath-cyclic-carrier-shuttle-not-free-20260706
status: exact-branch-kill-cyclic-carrier-shuttle-requires-variation-currency
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - CyclicCarrierShuttle.NotFreeEvasion
  - ClosedScaleCycle.ActiveServiceVariationFloor
  - SameBankWKBBath.CyclicResetPriced
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-material-phase-service-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-carrier-scale-room-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-variable-weight-refresh-variation-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-bank-scale-motion-variation-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-bounded-custody-wkb-no-neutral-persistence-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-free-periodic-beltrami-not-evasion-20260706.md
completion_truth: >-
  Exact branch kill only. A same-bank WKB bath cannot evade the
  carrier-scale-room ledger by closing the carrier scales into cycles and
  shuttling weight among active channels for free. In relative carrier
  coordinates z_i=log(lambda_i D) confined to a window of width Delta, active
  Beltrami service satisfies
  S:K = d_t sum_i w_i y_i - sum_i dot w_i y_i - W d_t log D,
  with |y_i| <= Delta/2. If the carrier/weight/bank state closes over an
  interval and the bank has no log variation, fixed weights give zero net
  active service. More generally, sign-coherent active service A on a closed
  same-bank cycle forces A <= (Delta/2) V_w + W V_D, and in the fixed-bank case
  V_w >= 2A/Delta. Thus a cyclic shuttle is exactly refresh/reassembly
  population variation or bank log-variation; it is not a neutral persistence
  mechanism. This proves no Gate-8 custody floor for V_w or V_D, no exclusion
  of unbounded cyclic reassembly, no construction/exclusion of the
  near-uniform same-fluid WKB bath, no confinement constant, and no MPP closure.
---

# Cyclic carrier shuttling is not free

## 1. Kill question

The bounded-custody WKB note says active service spends carrier room, weight
variation, or bank variation. A remaining tempting evasion is a cycle:

```text
let carrier scales return to their starting window, but keep active service by
shuttling weight from spent carriers to fresh carriers.
```

The kill question is whether that cycle is neutral. It is not. Closed carrier
cycles have no active service unless they spend population variation or bank
log-variation.

## 2. The same-bank identity

For Beltrami WKB pressure shapes,
\[
  K=\sum_i w_i\left({1\over3}I-n_i\otimes n_i\right),
  \qquad
  S:K=\sum_i w_iD_t\log\lambda_i .
  \tag{CCS.1}
\]

Use relative carrier scales
\[
  z_i=\log(\lambda_iD).
  \tag{CCS.2}
\]
Then
\[
  S:K=\sum_iw_iD_tz_i-WD_t\log D,
  \qquad
  W=\sum_i w_i .
  \tag{CCS.3}
\]

Assume the active carrier population stays in one relative WKB log-window
\[
  a\le z_i\le b,
  \qquad
  \Delta=b-a.
  \tag{CCS.4}
\]
Let
\[
  c={a+b\over2},
  \qquad
  y_i=z_i-c.
  \tag{CCS.5}
\]
If total weight is fixed, \(\sum_iD_tw_i=0\), so
\[
  \sum_iw_iD_tz_i
  =
  D_t\left(\sum_iw_iy_i\right)
  -
  \sum_i(D_tw_i)y_i.
  \tag{CCS.6}
\]

Thus
\[
  S:K
  =
  D_t\left(\sum_iw_iy_i\right)
  -
  \sum_i(D_tw_i)y_i
  -
  WD_t\log D .
  \tag{CCS.7}
\]

## 3. Closed cycle

Call an interval \(I=[t_0,t_1]\) a closed same-bank cycle when
\[
  \sum_iw_iy_i(t_1)=\sum_iw_iy_i(t_0),
  \tag{CCS.8}
\]
and the bank returns in log scale:
\[
  \log D(t_1)=\log D(t_0).
  \tag{CCS.9}
\]

Integrating (CCS.7) gives
\[
  \int_I S:K\,dt
  =
  -\int_I \sum_i(D_tw_i)y_i\,dt
  -
  W\int_ID_t\log D\,dt.
  \tag{CCS.10}
\]

If the bank is fixed and the weights are fixed, both terms vanish:
\[
  D_tw_i=0,
  \qquad
  D_tD=0
  \quad\Longrightarrow\quad
  \int_I S:K\,dt=0 .
  \tag{CCS.11}
\]

So a closed carrier-scale cycle with fixed weights supplies no sign-coherent
active service. The carrier-scale room has only been reversed.

## 4. Variation floor for shuttling

Let
\[
  V_w(I)=\int_I\sum_i|D_tw_i|\,dt,
  \qquad
  V_D(I)=\int_I|D_t\log D|\,dt.
  \tag{CCS.12}
\]
Since \(|y_i|\le\Delta/2\), (CCS.10) gives the exact closed-cycle bound
\[
  \left|\int_I S:K\,dt\right|
  \le
  {\Delta\over2}V_w(I)+WV_D(I).
  \tag{CCS.13}
\]

For a demanded sign-coherent service
\[
  A(I)=\left|\int_I S:K\,dt\right|,
  \tag{CCS.14}
\]
this implies
\[
  {\Delta\over2}V_w(I)+WV_D(I)\ge A(I).
  \tag{CCS.15}
\]

In a fixed-bank cycle,
\[
  V_D(I)=0
  \quad\Longrightarrow\quad
  V_w(I)\ge {2A(I)\over\Delta}.
  \tag{CCS.16}
\]

Thus a cyclic shuttle is not a reset. It is population variation. For
normalized total mass, one full replacement of the active population has
\(L^1\) variation \(2\), exactly the unit used by the variable-weight ledger.

## 5. Consequence for the WKB bath

The closed-cycle branch has no free state:
\[
\begin{array}{ll}
\text{fixed carrier/weight/bank cycle}
  &\Rightarrow \text{zero net active service},\\[1mm]
\text{carrier cycle with shuttled weights}
  &\Rightarrow \text{refresh/reassembly variation }V_w,\\[1mm]
\text{carrier cycle with moving bank}
  &\Rightarrow \text{bank log-variation }V_D.
\end{array}
\tag{CCS.17}
\]

Therefore the near-uniform WKB bath cannot avoid terminal carrier travel by
quietly cycling carriers. It must spend refresh/reassembly variation or bank
scale variation, and those are exactly the custody rows still open in the
actual same-fluid bath problem.

## 6. What remains

This does not prove a uniform confinement floor. The same-fluid dynamics might
still realize large \(V_w\) or \(V_D\) cheaply unless Gate-8/custody prices it,
or unless construction/exclusion of the actual bath decides the branch.

It does kill the cyclic-shuttle evasion as a free mechanism. Bounded closed
cycles cannot keep paying sign-coherent active service after carrier endpoint
room is returned.

## 7. Four-sentence result

In a same-bank WKB bath, active Beltrami service is
\[
  S:K
  =
  D_t\left(\sum_iw_iy_i\right)
  -
  \sum_i(D_tw_i)y_i
  -
  WD_t\log D .
\]
On a closed carrier/weight/bank cycle, fixed weights give zero net active
service. If a closed cycle supplies sign-coherent service \(A\), then
\[
  A\le{\Delta\over2}V_w+WV_D,
\]
so the service is paid by population variation or bank log-variation. Cyclic
carrier shuttling is therefore refresh/reassembly custody, not a free
no-eviction bath.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
