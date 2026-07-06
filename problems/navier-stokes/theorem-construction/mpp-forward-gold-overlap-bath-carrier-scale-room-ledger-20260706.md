---
theorem_id: forward-gold-overlap-bath-carrier-scale-room-ledger-20260706
status: strict-reduction-active-service-to-carrier-scale-room-or-refresh-ledger
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - ActiveService.CarrierScaleRoomLedger
  - FixedMaterialWKBPopulation.LogRoomBound
  - RefreshOrReassembly.AsRemainingBranch
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-material-phase-service-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-many-cell-wkb-parameter-window-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-many-cell-wkb-support-density-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-reynolds-edge-refresh-dichotomy-20260706.md
completion_truth: >-
  Strict reduction only. The material-phase identity gives
  S:K=sum_i w_i D_t log lambda_i for a positive Beltrami pressure mixture.
  Therefore, for a fixed material WKB population with fixed weights, cumulative
  active pressure service is exactly a boundary term in carrier log-scale.
  The WKB persistence window supplies only finite log-scale room:
  theta must stay below the q-row upper cutoff and above the viscous
  persistence lower cutoff Re_D^(-1/2). In the general WKB branch this room is
  at most (1/2)log Re_D-(24/25)log(1/beta), and in the dense fixed-density
  branch it is at most (1/2)log Re_D-(6/5)log(1/beta), up to constants. Once
  that room is exhausted, continued active service requires weight variation,
  carrier refresh, envelope reassembly, moving-bank co-drift, custody/Gate-8
  allocation, or a dynamic construction/exclusion theorem. A follow-up prices
  fixed-total-weight variation inside a window of width Delta by
  |int S:K dt| <= W Delta+(Delta/2) int sum_i |D_t w_i| dt, so variable
  weights are refresh/reassembly total variation rather than neutral service.
  This proves no
  carrier-drift pricing floor, no refresh theorem, no construction/exclusion,
  and no MPP closure.
---

# Carrier scale-room ledger for active WKB service

## 1. Object

The material-phase identity says that active Beltrami pressure service is
carrier-scale drift.

For a material WKB carrier
\[
  k_i=\lambda_i n_i
  \tag{CSR.1}
\]
in producer strain \(S\), the filed identity is
\[
  S:Q_{n_i}=D_t\log\lambda_i.
  \tag{CSR.2}
\]

For a positive Beltrami pressure mixture
\[
  K=\sum_i w_iQ_{n_i},
  \qquad w_i\ge0,
  \tag{CSR.3}
\]
this gives
\[
  S:K=\sum_i w_iD_t\log\lambda_i.
  \tag{CSR.4}
\]

This note asks what (CSR.4) can pay before the WKB carrier leaves the allowed
window.

## 2. Fixed material population

If the same material carriers and the same weights \(w_i\) supply the service,
then (CSR.4) integrates exactly:
\[
  \int_{t_0}^{t_1} S:K\,dt
  =
  \sum_i w_i
  \left[
    \log\lambda_i(t_1)-\log\lambda_i(t_0)
  \right].
  \tag{CSR.5}
\]

So a fixed material WKB bath does not have an unlimited active-service income
stream. It spends carrier log-scale room. When the active service keeps a fixed
sign over the producer residence, the gross service in that sign is bounded by
the available carrier-scale displacement.

If the weights vary, the exact identity is
\[
  \sum_i w_iD_t\log\lambda_i
  =
  D_t\left(\sum_iw_i\log\lambda_i\right)
  -
  \sum_i(D_tw_i)\log\lambda_i.
  \tag{CSR.6}
\]

Thus every attempt to continue active service without boundary drift must move
weights. Weight motion is not carrier-neutral service; it is refresh,
reassembly, or allocation/custody in the WKB population.

## 3. WKB scale room

The parameter-window note gives the general WKB branch
\[
  \theta={\ell\over D}\lesssim\beta^{24/25},
  \qquad
  \operatorname{Re}_D\theta^2\gg1.
  \tag{CSR.7}
\]

The persistence condition gives the lower carrier-scale cutoff
\[
  \theta\gtrsim\operatorname{Re}_D^{-1/2}
  \tag{CSR.8}
\]
up to constants. Therefore the log room in \(\theta\) is finite:
\[
  \Delta_{\rm room}^{\rm WKB}
  \lesssim
  \log\!\left({\beta^{24/25}\over \operatorname{Re}_D^{-1/2}}\right)
  =
  {1\over2}\log \operatorname{Re}_D
  -
  {24\over25}\log {1\over\beta}
  \tag{CSR.9}
\]
whenever the right side is positive.

Equivalently, since \(\log\lambda=-\log\ell\) and \(D\) is the bank scale in
this fixed-bank reading, this is the same amount of carrier log-frequency room,
up to the bank-scale bookkeeping term. If the bank co-drifts to cancel this
relative scale change, that is no longer a fixed material WKB population; it is
moving-envelope/reassembly bookkeeping.

The dense fixed-density branch is sharper:
\[
  \theta\lesssim\beta^{6/5},
  \qquad
  N\sim\theta^{-3},
  \qquad
  \operatorname{Re}_D\theta^2\gg1.
  \tag{CSR.10}
\]
Its log room is
\[
  \Delta_{\rm room}^{\rm dense}
  \lesssim
  \log\!\left({\beta^{6/5}\over \operatorname{Re}_D^{-1/2}}\right)
  =
  {1\over2}\log \operatorname{Re}_D
  -
  {6\over5}\log {1\over\beta}.
  \tag{CSR.11}
\]

If (CSR.9) or (CSR.11) is negative, the corresponding persistent WKB branch is
empty at that Reynolds number. If it is positive, it is still only finite
scale-room, not an indefinite active-service source.

## 4. What this changes

The material-phase identity killed carrier-neutral active service. This note
adds the next ledger:

\[
  \hbox{active service}
  \quad\Longrightarrow\quad
  \hbox{carrier log-scale room}
  \quad\hbox{or}\quad
  \hbox{weight refresh/reassembly}.
  \tag{CSR.12}
\]

So the WKB branch cannot remain both fixed-carrier and active indefinitely.
It must do one of the following:

1. spend finite scale room until the carrier exits the WKB persistence window;
2. vary weights, refresh carriers, or reassemble the envelope;
3. co-drift the bank/envelope, which is the same reassembly/custody problem in
   relative-scale coordinates;
4. supply only orthogonal pressure service with \(S:K=0\);
5. or provide a true dynamic construction/exclusion theorem.

## 5. What is still open

This is not yet the WKB exclusion theorem.

It does not prove that the finite log room is too small for the record ladder,
because \(\operatorname{Re}_D\) may itself be very large. It does not prove a
positive floor for the refresh/reassembly branch. The follow-up
`mpp-forward-gold-overlap-bath-variable-weight-refresh-variation-ledger-20260706.md`
prices fixed-total-weight variation by \(L^1\) total variation of the weights,
but it still does not route that variation through Gate-8 no-recount
allocation.

It does, however, remove one more free option: active WKB pressure service is
not an indefinitely reusable neutral Beltrami bath. It is finite carrier-scale
room plus a named refresh/reassembly/custody debt.

## 6. Four-sentence result

For a positive Beltrami WKB mixture,
\[
  S:K=\sum_iw_iD_t\log\lambda_i.
\]
With fixed material carriers and fixed weights, cumulative active pressure
service is the boundary change of \(\sum_iw_i\log\lambda_i\). The WKB window
gives only finite log-scale room: at most
\[
  {1\over2}\log\operatorname{Re}_D-{24\over25}\log {1\over\beta}
\]
in the general branch, and at most
\[
  {1\over2}\log\operatorname{Re}_D-{6\over5}\log {1\over\beta}
\]
in the dense fixed-density branch. Continued active service after that is
weight variation, refresh/reassembly/custody, orthogonal-only service, or a
real construction/exclusion problem.
