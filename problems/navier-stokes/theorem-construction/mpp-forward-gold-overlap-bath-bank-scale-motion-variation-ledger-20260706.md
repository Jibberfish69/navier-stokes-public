---
theorem_id: forward-gold-overlap-bath-bank-scale-motion-variation-ledger-20260706
status: strict-reduction-bank-retuning-to-log-variation-custody-ledger
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - MovingBank.RelativeWKBWindowLedger
  - BankScaleMotion.LogVariationBill
  - SameBankBath.NeutralRetuningObstruction
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-material-phase-service-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-carrier-scale-room-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-variable-weight-refresh-variation-ledger-20260706.md
completion_truth: >-
  Strict reduction only. Bank retuning is not a neutral escape from the
  material-phase identity. If the relative WKB carrier scales
  z_i=log(lambda_i D) stay in a log-window of width Delta, the total mixture
  weight W is fixed, V_w=int sum_i |D_t w_i| dt, and
  V_D=int |D_t log D| dt, then active Beltrami service obeys
  |int S:K dt| <= W Delta + (Delta/2) V_w + W V_D. Thus a moving bank can
  continue active service only by endpoint relative carrier room, population
  refresh/reassembly variation, or log-variation of the bank scale itself.
  A same-bank WKB bath cannot retune its envelope and remain carrier-neutral;
  the retuning is a scale-custody/T* schedule bill. This proves no uniform
  floor because V_D and the high-Re logarithmic reservoir still require
  Gate-8/custody or construction/exclusion.
---

# Bank-scale motion variation ledger

## 1. Object

The variable-weight note left bank retuning as an explicit term:
\[
  S:K
  =
  \sum_i w_iD_t\log(\lambda_iD)
  -
  W D_t\log D.
  \tag{BS.1}
\]

This note records the corresponding ledger. Moving the bank scale can continue
active service only by moving the physical bank in log scale. It is not a
carrier-neutral pressure bath.

## 2. Relative WKB window

Set
\[
  z_i(t):=\log(\lambda_i(t)D(t)).
  \tag{BS.2}
\]

Assume the active carriers remain in one relative WKB log-window
\[
  a\le z_i(t)\le b,
  \qquad
  \Delta:=b-a,
  \tag{BS.3}
\]
and assume the total mixture weight is fixed:
\[
  W:=\sum_iw_i(t),
  \qquad
  D_tW=0.
  \tag{BS.4}
\]

Let
\[
  c:={a+b\over2},
  \qquad
  y_i:=z_i-c.
  \tag{BS.5}
\]
Then \(|y_i|\le\Delta/2\), and
\[
  \sum_i w_iD_tz_i
  =
  D_t\left(\sum_iw_iy_i\right)
  -
  \sum_i(D_tw_i)y_i.
  \tag{BS.6}
\]

Combining (BS.1) and (BS.6),
\[
  S:K
  =
  D_t\left(\sum_iw_iy_i\right)
  -
  \sum_i(D_tw_i)y_i
  -
  W D_t\log D.
  \tag{BS.7}
\]

## 3. Gross service bound

Integrating (BS.7) over \([t_0,t_1]\) gives
\[
  \left|\int_{t_0}^{t_1}S:K\,dt\right|
  \le
  W\Delta
  +
  {\Delta\over2}V_w[t_0,t_1]
  +
  W V_D[t_0,t_1],
  \tag{BS.8}
\]
where
\[
  V_w[t_0,t_1]
  :=
  \int_{t_0}^{t_1}\sum_i |D_tw_i|\,dt,
  \tag{BS.9}
\]
and
\[
  V_D[t_0,t_1]
  :=
  \int_{t_0}^{t_1}|D_t\log D|\,dt.
  \tag{BS.10}
\]

Thus a demanded sign-coherent active service amount
\[
  A:=\left|\int_{t_0}^{t_1}S:K\,dt\right|
  \tag{BS.11}
\]
forces
\[
  W V_D+{\Delta\over2}V_w
  \ge
  (A-W\Delta)_+.
  \tag{BS.12}
\]

For normalized total weight \(W=1\), after endpoint relative scale-room is
spent, each further unit of active service must appear as either weight
variation or bank log-variation.

## 4. Meaning of the bank term

The bank term is not a local cancellation. A bank variation
\[
  V_D=B
  \tag{BS.13}
\]
means the bank scale has travelled total logarithmic distance \(B\). A
monotone octave of bank travel costs \(\log 2\). Oscillatory bank travel costs
its total variation, not merely its endpoint.

Therefore a moving-bank WKB bath is no longer a fixed same-bank reserve. It is
a scale-custody object: it must be routed through the \(T^{*+}\) schedule,
Gate-8/no-recount allocation, bank refresh/reassembly, or a genuine dynamic
construction/exclusion theorem.

## 5. Consequence for the survivor branch

The WKB active-service branch is now typed as
\[
  \hbox{active service}
  \Rightarrow
  \hbox{relative carrier endpoint room}
  \quad\hbox{or}\quad
  \hbox{weight total variation}
  \quad\hbox{or}\quad
  \hbox{bank log-variation}.
  \tag{BS.14}
\]

Using the already filed WKB window, the relative endpoint room is still at
most
\[
  {1\over2}\log\operatorname{Re}_D
  -
  {24\over25}\log {1\over\beta}
  \tag{BS.15}
\]
in the general WKB branch, and at most
\[
  {1\over2}\log\operatorname{Re}_D
  -
  {6\over5}\log {1\over\beta}
  \tag{BS.16}
\]
in the dense fixed-density branch, up to constants.

So bank retuning does not remove the service bill. It chooses the third
currency in (BS.14).

## 6. What remains

This still does not prove the confinement constant.

The remaining dangerous branches are:

1. a high-Re logarithmic reservoir large enough to fund the relative endpoint
   room;
2. weight total variation that is dynamically cheap under same-fluid custody;
3. bank log-variation that is dynamically cheap under the \(T^{*+}\) schedule
   and Gate-8/no-recount allocation;
4. orthogonal-only pressure service with \(S:K=0\);
5. a true dynamic WKB construction or exclusion theorem.

The result is strict reduction: "move the bank" is no longer a free phrase. It
is a log-variation bill.

## 7. Four-sentence result

For relative WKB carrier scales \(z_i=\log(\lambda_iD)\),
\[
  S:K
  =
  \sum_iw_iD_tz_i
  -
  W D_t\log D.
\]
If the \(z_i\) stay in a log-window of width \(\Delta\), then
\[
  \left|\int S:K\,dt\right|
  \le
  W\Delta+{\Delta\over2}V_w+WV_D.
\]
Thus bank retuning can continue active pressure service only by spending
relative endpoint room, weight variation, or bank log-variation. The same-bank
neutral WKB bath is gone; high-Re reservoir and custody/construction remain.
