---
theorem_id: forward-gold-k5-endpoint-return-length-cap-alias-20260706
status: strict-reduction-local-endpoint-return-aliases-to-record-length-cap
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / K5 high-Re edge route-out
target_object:
  - K5EndpointReturn.LocalAlias
  - K5RecordLengthOrNonlocalReturn.Required
  - K5HighRePureEdgePayerExhaustion.STRICT_REDUCTION
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-edge-uniform-cap-obstruction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-reynolds-budget-shortcut-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-return-race-handoff-premise-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-custody-trigger-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-gate-a-allocation-alias-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-sideband-trigger-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-finite-energy-long-packet-routeout-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-endpoint-room-reynolds-length-obstruction-20260706.md
completion_truth: >-
  Strict reduction only. The endpoint-room obstruction already proves that a
  local endpoint/envelope signal cannot pay the K5 high-Re pure edge without a
  length theorem: over the whole viscous residence, the endpoint/envelope
  defect remains O((kL)^(-1)) relative to production, and endpoint contact can
  be delayed by taking kL >> Re. Therefore "endpoint return" is not an
  independent local payer beside "record-length cap." It has only two lawful
  meanings left: either prove a record/effective-length cap of the form
  kL <= C Re, or prove a genuinely nonlocal/recirculating endpoint influence
  that beats the 1/(kL) and bounded group-speed scaling. This note proves no
  such nonlocal influence, no curve/core/crowd contamination theorem, no
  route-out/exclusion of the isolated pure edge, no new unweighted high-Re
  mechanism, no confinement constant, and no MPP closure.
---

# K5 endpoint return is a length-cap theorem unless it is genuinely nonlocal

## 1. Object

The current K5 high-Re list still names

\[
  \text{record-length cap}
  \qquad\hbox{and}\qquad
  \text{endpoint return}
\]

as separate-looking exits. The prior endpoint-room note already decides the
local version of the second phrase. This note only records that typing.

The physical object is the same long, localized pure edge packet used in the
finite-energy and endpoint-room obstructions:

\[
  \eta_L(z,t)
  =
  a_L(t)\chi(z/L)e^{ikz}
  +
  \overline{a_L(t)}\chi(z/L)e^{-ikz}.
\]

It is the model for an isolated high-Re edge residence with a large flat
producing interior and remote endpoints.

## 2. Local endpoint propagation is already killed

The endpoint-room note gives two exact scaling facts over the whole high-Re
residence.

First, production and envelope defect carry the same Reynolds lifetime, so

\[
  {
  \int \mathcal D_{\rm env}(t)\,dt
  \over
  \int \mathcal P_L(t)\,dt
  }
  \lesssim {1\over kL}.
\]

Second, if endpoint information travels along the carrier at bounded
strain-clock group speed,

\[
  |v_g|\le C_g {s\over k},
\]

then a central flat subpacket avoids endpoint contact through the residence
whenever

\[
  kL\gtrsim \operatorname{Re}.
\]

Choosing \(kL/\operatorname{Re}\to\infty\) makes both local endpoint contact
and local envelope tax vanish relative to production.

Thus local endpoint propagation does not supply an unweighted high-Re payer.

## 3. Endpoint return has only two remaining meanings

After that obstruction, a surviving endpoint-return theorem must do one of two
things.

First, it can prove a record or effective-length cap:

\[
  kL\le C\operatorname{Re}
\]

or a stronger bound on the retained producing segment. That is the same
mathematical object as the record-length cap.

Second, it can prove a nonlocal or recirculating endpoint influence that does
not obey the local \(1/(kL)\) envelope and bounded group-speed scaling. This
would be a new theorem: an elliptic pressure/Biot-Savart return, curve/core
feedback, or global same-fluid constraint that reaches the flat producing
interior before the local endpoint clock does.

Those two options are not interchangeable. The first is the length-cap branch.
The second is a genuinely nonlocal return branch and must display the
nonlocal mechanism.

## 4. Consequence for K5

The isolated pure edge has now lost all installed automatic payers:

\[
\begin{array}{ccl}
\text{K5 alone} &:& \text{Reynolds-weighted, not uniform},\\
\text{return-race} &:& f=0\ \text{without financed handoff},\\
\text{custody} &:& \text{no destruction/reassembly trigger},\\
\text{Gate-A/Theorem 2} &:& \text{marginal or weighted alias},\\
\text{sideband/crowd} &:& B_{\rm sb}=0\ \text{on the exact pure edge},\\
\text{finite energy/localization} &:& \text{long-packet leakage }o(1),\\
\text{local endpoint return} &:& \text{aliases to a length cap}.
\end{array}
\]

So the K5 high-Re pure edge is now typed as:

\[
  \text{record/effective-length cap}
  \quad\vee\quad
  \text{genuine nonlocal endpoint return}
  \quad\vee\quad
  \text{curve/core/crowd contamination}
  \quad\vee\quad
  \text{route-out/exclusion}
  \quad\vee\quad
  \text{new unweighted high-Re mechanism}.
\]

This is a smaller list than "endpoint return" as a broad local phrase, but it
does not decide the branch.

## 5. Four-sentence result

Local endpoint return is not an independent K5 high-Re payer. The long-packet
calculation already shows that endpoint/envelope effects remain
\(O((kL)^{-1})\) relative to production and can be delayed past the high-Re
residence by taking \(kL\gg\operatorname{Re}\). Therefore endpoint return must
mean either a record/effective-length cap or a genuinely nonlocal
recirculating influence that beats the local endpoint clock. The latter is
still open and must display its nonlocal mechanism before it can be charged.

## 6. State

This note is a branch typing and strict reduction. It proves no length cap, no
nonlocal endpoint return theorem, no curve/core/crowd contamination theorem,
no route-out/exclusion, no new unweighted high-Re mechanism, no confinement
constant, and no MPP closure.
