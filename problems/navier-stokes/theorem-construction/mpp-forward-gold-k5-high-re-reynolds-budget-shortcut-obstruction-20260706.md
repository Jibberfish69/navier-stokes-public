---
theorem_id: forward-gold-k5-high-re-reynolds-budget-shortcut-obstruction-20260706
status: exact-obstruction-raw-reynolds-budget-is-weighted-readout-not-finite-payer
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / K5 high-Re edge payer
authorship: Codex, 2026-07-06.
target_object:
  - K5HighReRawReynoldsBudgetShortcut.NO
  - K5HighReEdgePayer.ReturnRaceCustodySideband
  - GateAReynoldsWeightedReadout
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-lambda-edge-duffing-viscous-regate-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-edge-uniform-cap-obstruction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-edge-log-viscous-reynolds-split-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-gate-a-three-residues-payment-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-theorem2-two-payer-impedance-attack-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-return-race-elliptic-writeup-and-w1-20260705.md
completion_truth: >-
  Exact obstruction to one shortcut. The lambda-edge re-gate left the high-Re
  edge branch as return-race, custody, sideband/crowd, or an apparent same-packet
  Reynolds-budget allocation. This note checks the last phrase. On the damped
  high-Re edge, \(dA/dt=-s c_v\kappa^2\operatorname{Re}^{-1}A\) while
  \(\mathcal P=s\Pi A\) and viscous dissipation is proportional to
  \(s\kappa^2\operatorname{Re}^{-1}A\). Hence total dissipation over the edge
  residence is \(O(A_0)\), while total production is
  \(O(\operatorname{Re}A_0)\). The Reynolds factor is not a finite budget; it is
  the weighted residence/readout already identified by Gate A. Therefore the
  high-Re edge cannot be paid by raw Reynolds-budget accounting. It still needs
  return-race, custody, sideband/crowd, or a genuine Gate-A/Theorem-2 allocation
  theorem that supplies a uniform payer beyond the raw weight. No such theorem is
  proved here; no confinement constant or MPP closure is claimed.
---

# K5 high-Re edge: Reynolds-budget shortcut obstruction

## 1. Object

The lambda-edge re-gate left the high-Re edge as:
\[
  \text{return-race, custody, sideband/crowd, or same-packet Reynolds budget}.
  \tag{K5R.1}
\]

The last phrase is dangerous if read as a new finite account. This note checks
it directly.

## 2. High-Re edge equations

Let \(A=|a|^2\) be the edge-mode amplitude squared. The viscous Reynolds split
gives, on the small-amplitude neutral edge branch,
\[
  \dot A
  =
  -s c_v{\kappa^2\over \operatorname{Re}_\Gamma}A
  +O(sA^2),
  \tag{K5R.2}
\]
and
\[
  \mathcal P_{\rm edge}
  =
  s\Pi A+O(sA^2).
  \tag{K5R.3}
\]

The same linear damping has viscous dissipation density, in edge-mode units,
\[
  \mathcal D_\nu
  \simeq
  s c_v{\kappa^2\over\operatorname{Re}_\Gamma}A.
  \tag{K5R.4}
\]

Thus
\[
  \mathcal P_{\rm edge}
  =
  {\Pi\over c_v\kappa^2}\operatorname{Re}_\Gamma
  \mathcal D_\nu
  +O(sA^2).
  \tag{K5R.5}
\]

## 3. Integrated consequence

Integrating along the damped edge residence gives
\[
  \int \mathcal D_\nu\,dt
  \simeq
  A_0,
  \tag{K5R.6}
\]
while
\[
  \int \mathcal P_{\rm edge}\,dt
  \simeq
  {\Pi\over c_v\kappa^2}\operatorname{Re}_\Gamma A_0.
  \tag{K5R.7}
\]

So the Reynolds factor is exactly the mismatch between production time and
viscous spending. It is not an additional finite budget stored on the packet.

This is the same shape as the Gate-A weighted law:
\[
  \operatorname{TV}(\text{flux})
  \le
  C\,M(\ell)\,(\text{dissipation budget}).
  \tag{K5R.8}
\]

The weight \(M\) is a readout of super-marginality. It is not itself the payer.

## 4. Consequence for high-Re edge routing

The high-Re edge branch should now be written without a free-standing Reynolds
budget:
\[
  \text{high-Re edge}
  \Rightarrow
  \text{return-race, custody, sideband/crowd, or Gate-A/Theorem-2 allocation}.
  \tag{K5R.9}
\]

Here Gate-A/Theorem-2 allocation means a genuine theorem that turns the
weighted readout into a uniform payer. The raw identity
\(\int\mathcal P\sim\operatorname{Re}A_0\) does not do that.

## 5. Four-sentence result

On the high-Re edge, total viscous dissipation is only \(O(A_0)\), while total
edge production is \(O(\operatorname{Re}_\Gamma A_0)\). The Reynolds factor is
therefore not a packet budget; it is the residence/readout weight already
identified in Gate A. So a raw same-packet Reynolds budget cannot pay the
high-Re edge. The remaining payers are return-race, custody, sideband/crowd, or
a real Gate-A/Theorem-2 allocation theorem that removes the raw weight.
