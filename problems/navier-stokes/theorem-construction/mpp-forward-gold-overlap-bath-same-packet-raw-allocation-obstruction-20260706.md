---
theorem_id: forward-gold-overlap-bath-same-packet-raw-allocation-obstruction-20260706
status: strict-reduction-raw-same-field-allocation-does-not-restore-constant
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - PressureService.RawSamePacketAllocation.NO-ORDER-ONE-FLOOR
  - Gate8NoRecountAllocation.REMAINS
  - RecordChargeCompensatorBridge.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-pressure-source-scaling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-exact-shear-cell-pressure-hessian-display-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-subcell-reynolds-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-custody-row-lift-gate-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-chapter9-draft-record-bridge-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-chapter9-reserve-queue-consumer-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-gate8-tax-density-obstruction-20260706.md
completion_truth: >-
  Strict reduction and allocation obstruction, not a Gate-8 theorem, not a
  dense-crowd theorem, and not a confinement-constant decision. The pressure
  source row already builds a same-velocity-field pressure-service cell with
  energy E_ph~H D^5. For producer-clock overlap retuning,
  H~s^2 beta^(4/5), so even if all of that pressure-service energy is charged
  to the same packet at the pressure-cell scale, the ratio to local producer
  currency is beta^(4/5). If the producer packet has larger radius R, the raw
  ratio is smaller by (D/R)^5. Thus "same packet" plus raw energy allocation
  does not restore an order-one floor. The remaining allocation branch must be
  the stronger Gate-8/chapter-9 no-recount object: an actual allocated tax or
  record-charge row on the same ordered channel-cell history, or a positive
  compensator/residue routed to tail, boundary, Silver, producer suppression,
  or construction exclusion. Follow-up Gate-8 tax-density obstruction checks
  that no-recount allocation itself preserves the beta^(4/5) density; demanding
  a fixed pressure-service tax density creates a positive tax deficit instead
  of an order-one retained row.
---

# Overlap bath: same-packet raw allocation obstruction

## 1. Kill question

The pressure-source row is not a separate equation. It is a velocity component
inside the same Navier-Stokes field, generating the pressure Hessian through
\[
  -\Delta p=\partial_i u_j\,\partial_j u_i.
  \tag{SPR.1}
\]

So the next tempting claim is:

raw same-packet allocation of the pressure-service energy should restore the
constant.

The kill question is whether charging the pressure-service energy to the same
packet, by itself, gives an order-one fraction of producer currency.

The checked answer is no.

## 2. Raw same-scale allocation

The pressure-source scaling note gives, for producer-clock retuning,
\[
  H\sim |\dot A|\sim s^2\beta^{4/5}.
  \tag{SPR.2}
\]

A shear/quadrupole pressure-source cell of scale \(D\) has energy
\[
  E_{\rm ph}(D)\sim HD^5.
  \tag{SPR.3}
\]

The local producer currency at the same scale is
\[
  E_{\rm prod}(D)\sim s^2D^5.
  \tag{SPR.4}
\]

If every bit of \(E_{\rm ph}(D)\) is charged to the same packet, the ratio is
still only
\[
  {E_{\rm ph}(D)\over E_{\rm prod}(D)}
  \sim
  \beta^{4/5}.
  \tag{SPR.5}
\]

Thus raw same-scale allocation does not produce a fixed lower fraction as
\(\beta\to0\).

## 3. Larger producer packet makes raw energy weaker

If the producer packet has curvature or coherence radius \(R\ge D\), then its
producer currency is
\[
  E_{\rm prod}(R)\sim s^2R^5.
  \tag{SPR.6}
\]

The same pressure cell gives
\[
  {E_{\rm ph}(D)\over E_{\rm prod}(R)}
  \sim
  \beta^{4/5}\left({D\over R}\right)^5.
  \tag{SPR.7}
\]

In the high-Re subcell branch,
\[
  D\lesssim R\beta^{2/5},
  \tag{SPR.8}
\]
so this raw packet-scale ratio can be as small as
\[
  \beta^{4/5}\beta^2=\beta^{14/5}.
  \tag{SPR.9}
\]

That is even farther from an order-one payer.

## 4. What Gate 8 would have to add

The Gate-8 and chapter-9 notes do not treat "same packet" as raw co-presence in
the same velocity field. They require allocated rows on the same ordered
channel-cell history:
\[
  A_n^w,\quad R_n^w,\quad T_n^w,\quad C_n^w,
  \tag{SPR.10}
\]
with no-overdraft prefix balance
\[
  B_n^w+A_n^w(J_{n,t})-R_n^w(J_{n,t})-T_n^w(J_{n,t})-C_n^w(J_{n,t})\ge0.
  \tag{SPR.11}
\]

If this balance fails, the exact residue is the compensator
\[
  K_n^{\rm ch9}(t)
  =
  \sup_{s\le t}
  \bigl(
    -B_n^w-A_n^w(J_{n,s})+R_n^w(J_{n,s})+T_n^w(J_{n,s})+C_n^w(J_{n,s})
  \bigr)_+.
  \tag{SPR.12}
\]

So the pressure row needs one of two stronger outcomes:

- the pressure service becomes an actual tax or record-charge row in
  (SPR.11), with no double counting; or
- the failure to allocate it creates a positive compensator/residue that is
  routed to tail, boundary, Silver, producer suppression, or construction
  exclusion.

Raw same-field energy is not enough.

## 5. What this kills

This kills the shortcut:
\[
  \text{same velocity field}
  \quad\Rightarrow\quad
  \text{order-one same-packet payer}.
  \tag{SPR.13}
\]

For the pressure bath, same-field energy allocated at face value is still
\[
  \beta^{4/5}E_{\rm prod}(D)
  \tag{SPR.14}
\]
at the local scale, and smaller against a larger producer packet.

The allocation branch is therefore not raw energy accounting. It is the
Gate-8/chapter-9 no-recount allocation theorem or its compensator.

## 6. What remains

The pressure row now has these typed open branches:

- no-recount allocation: build \(T_n^w\) or \(C_n^w\) for the pressure-service
  work on the same ordered channel-cell history, with the retained density still
  bounded by the pressure-service backing density;
- fixed-density tax deficit: demanding a uniform \(\theta_0\) creates a positive
  tax compensator once \(\beta\) is small;
- compensator routing: prove that failure of allocation creates a positive
  \(dK_n^{\rm ch9}\)-type residue and route it lawfully;
- Reynolds-edge bridge: convert
  \(\operatorname{Re}_R\lesssim\beta^{-4/5}\) into record-ladder payment,
  producer suppression, or construction exclusion;
- dynamic same-fluid transport/persistence:
  keep the pressure-service bank attached through the real flow, or prove that
  this demands \(\omega/s\gtrsim\beta^{-4/5}\);
- construction/exclusion for a summability-valid dynamic pressure bath.

## 7. Four-sentence result

The pressure-service cell is part of the same Navier-Stokes field, but raw
same-field allocation does not restore the constant. For producer-clock
retuning,
\[
  E_{\rm ph}(D)\sim s^2\beta^{4/5}D^5,
  \qquad
  E_{\rm prod}(D)\sim s^2D^5,
\]
so even full same-packet charging gives only
\[
  E_{\rm ph}(D)/E_{\rm prod}(D)\sim\beta^{4/5}.
\]
Follow-up Gate-8 tax-density obstruction adds that no-recount allocation cannot
amplify this into a fixed tax density; a fixed \(\theta_0\) produces a positive
compensator/residue instead.
