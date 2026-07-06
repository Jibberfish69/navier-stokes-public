---
theorem_id: forward-gold-overlap-bath-variable-weight-refresh-variation-ledger-20260706
status: strict-reduction-variable-weights-to-total-variation-refresh-ledger
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - VariableWeightWKBBranch.TotalVariationLedger
  - WeightMotion.RefreshOrReassemblyCurrency
  - MovingBank.RelativeScaleAccounting
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-material-phase-service-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-carrier-scale-room-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-many-cell-wkb-parameter-window-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-many-cell-wkb-support-density-split-20260706.md
completion_truth: >-
  Strict reduction only. In a fixed WKB log-window of width Delta, active
  Beltrami service satisfies S:K=sum_i w_i D_t log lambda_i. If the total
  mixture weight W=sum_i w_i is fixed and the carrier log-scales remain in that
  window, then for any interval [t0,t1],
  |int S:K dt| <= W Delta + (Delta/2) int sum_i |D_t w_i| dt. Thus changing
  weights cannot supply active service without either spending endpoint
  carrier-scale room or accumulating L1 total variation of the weights. In
  normalized form, a sign-coherent active service A with bounded endpoints
  forces V_w >= 2(A/Delta-W)_+. A complete unit-mass replacement has variation
  2, so this is a refresh/reassembly ledger rather than a free escape. Moving
  the bank scale only adds the explicit bank-log displacement term and routes
  to moving-envelope custody. This proves no uniform floor because Delta can
  grow like a high-Re logarithmic reservoir, and it proves no Gate-8 custody
  theorem or dynamic WKB construction/exclusion.
---

# Variable-weight refresh variation ledger

## 1. Object

The carrier-scale room note left the variable-weight door open:
\[
  S:K=\sum_i w_iD_t\log\lambda_i.
  \tag{VW.1}
\]

With fixed weights, this is a boundary term in carrier log-scale. The question
here is whether changing the weights creates a new active-service source that
does not spend carrier room.

The answer is no in the fixed-window reading. Weight motion replaces carrier
boundary drift by total variation of the weights. That is refresh/reassembly
currency, not carrier-neutral service.

## 2. Fixed WKB log-window

Let
\[
  x_i(t):=\log\lambda_i(t)
  \tag{VW.2}
\]
and assume the active carriers stay in one admissible WKB log-window
\[
  a\le x_i(t)\le b,
  \qquad
  \Delta:=b-a.
  \tag{VW.3}
\]

Assume also that the total mixture weight is fixed:
\[
  W:=\sum_iw_i(t),
  \qquad
  D_tW=0.
  \tag{VW.4}
\]

Let
\[
  c:={a+b\over2},
  \qquad
  y_i:=x_i-c.
  \tag{VW.5}
\]
Then \(|y_i|\le\Delta/2\), and since \(\sum_iD_tw_i=0\),
\[
  \sum_i w_iD_tx_i
  =
  D_t\left(\sum_iw_iy_i\right)
  -
  \sum_i(D_tw_i)y_i.
  \tag{VW.6}
\]

Combining (VW.1) and (VW.6) gives the exact variable-weight ledger
\[
  S:K
  =
  D_t\left(\sum_iw_iy_i\right)
  -
  \sum_i(D_tw_i)y_i.
  \tag{VW.7}
\]

## 3. Total-variation bound

Integrating (VW.7) on \([t_0,t_1]\) gives
\[
  \int_{t_0}^{t_1}S:K\,dt
  =
  \left[\sum_iw_iy_i\right]_{t_0}^{t_1}
  -
  \int_{t_0}^{t_1}\sum_i(D_tw_i)y_i\,dt.
  \tag{VW.8}
\]

The boundary term is bounded by
\[
  \left|
  \left[\sum_iw_iy_i\right]_{t_0}^{t_1}
  \right|
  \le W\Delta.
  \tag{VW.9}
\]

The weight-motion term is bounded by
\[
  \left|
  \int_{t_0}^{t_1}\sum_i(D_tw_i)y_i\,dt
  \right|
  \le
  {\Delta\over2}
  \int_{t_0}^{t_1}\sum_i |D_tw_i|\,dt.
  \tag{VW.10}
\]

Therefore
\[
  \left|
  \int_{t_0}^{t_1}S:K\,dt
  \right|
  \le
  W\Delta
  +
  {\Delta\over2}V_w[t_0,t_1],
  \tag{VW.11}
\]
where
\[
  V_w[t_0,t_1]
  :=
  \int_{t_0}^{t_1}\sum_i |D_tw_i|\,dt.
  \tag{VW.12}
\]

Equivalently, if a sign-coherent active service amount
\[
  A:=\left|\int_{t_0}^{t_1}S:K\,dt\right|
  \tag{VW.13}
\]
is demanded, then
\[
  V_w[t_0,t_1]
  \ge
  2\left({A\over\Delta}-W\right)_+.
  \tag{VW.14}
\]

For normalized weights \(W=1\), one complete replacement of the population has
\(L^1\) variation \(2\). Thus (VW.14) says that after the one-time boundary
room is spent, every additional \(\Delta\) units of sign-coherent active
service costs about one full population replacement.

## 4. Moving bank scale

The fixed-window variable is the absolute carrier log-scale \(x_i=\log\lambda_i\).
If the bank scale \(D(t)\) is allowed to move, use the relative scale
\[
  z_i:=\log(\lambda_iD).
  \tag{VW.15}
\]

Then
\[
  D_tz_i=D_t\log\lambda_i+D_t\log D,
  \tag{VW.16}
\]
so
\[
  S:K
  =
  \sum_iw_iD_tz_i
  -
  W D_t\log D.
  \tag{VW.17}
\]

The first term has the same ledger as (VW.11), now in the relative WKB window.
The second term is explicit bank-scale displacement. Thus bank retuning does
not remove the service bill; it moves it into moving-envelope custody or
large-scale log-room.

## 5. Consequence for the survivor branch

The variable-weight WKB branch is now typed as
\[
  \hbox{active service}
  \Rightarrow
  \hbox{carrier endpoint room}
  \quad\hbox{or}\quad
  \hbox{weight total variation}
  \quad\hbox{or}\quad
  \hbox{bank log-displacement}.
  \tag{VW.18}
\]

Using the carrier-scale room widths already filed, the available \(\Delta\) is
at most
\[
  {1\over2}\log\operatorname{Re}_D
  -
  {24\over25}\log {1\over\beta}
  \tag{VW.19}
\]
in the general WKB branch, and at most
\[
  {1\over2}\log\operatorname{Re}_D
  -
  {6\over5}\log {1\over\beta}
  \tag{VW.20}
\]
in the dense fixed-density branch, up to constants.

So variable weights are not an unpriced escape from the material-phase identity.
They are a refresh/reassembly ledger whose price is measured by \(V_w\) and
whose exchange rate is the WKB log-window width.

## 6. What remains

This still does not prove the confinement constant.

There are three live ways the branch could remain dangerous:

1. the Reynolds number may provide a large logarithmic carrier-depth reservoir;
2. the dynamics may realize large \(V_w\) cheaply by a same-fluid
   refresh/reassembly mechanism not yet priced by Gate-8 custody;
3. a true dynamic WKB construction may keep the required moment while routing
   endpoint room, weight variation, and bank-scale motion through a lawful
   summability schedule.

The result is strict reduction: the free variable-weight phrase is gone, but
the refresh/custody and high-Re composition questions remain.

## 7. Four-sentence result

Inside a WKB log-window of width \(\Delta\), active Beltrami service obeys
\[
  S:K=\sum_iw_iD_t\log\lambda_i.
\]
If the total mixture weight is fixed, then
\[
  \left|
  \int S:K\,dt
  \right|
  \le
  W\Delta
  +
  {\Delta\over2}
  \int\sum_i|D_tw_i|\,dt.
\]
Thus variable weights can continue active service only by spending endpoint
carrier room or by accumulating total variation of the weights, i.e. refresh
or reassembly of the WKB population. Moving the bank scale adds an explicit
bank-log displacement term; it does not create carrier-neutral active service.
