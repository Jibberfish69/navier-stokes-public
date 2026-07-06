---
theorem_id: forward-gold-k5-close-return-two-tube-tv-paid-subcell-20260706
status: exact-conditional-close-return-two-tube-subcell-paid-in-tv
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / K5 high-Re edge route-out
target_object:
  - K5CloseReturn.SingleTwoTubeSubcell.PAID
  - K5CloseReturn.EvasionRequiresOffProfileCoreMultiCrowdOrAllocationEscape
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-recirculating-endpoint-close-return-alias-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-two-tube-exact-tilt-stretch-eviction-ratio-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k3-combined-instantaneous-eviction-floor-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k3-two-tube-lifetime-tv-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-dense-bracing-pairwise-tv-no-free-subcell-20260706.md
completion_truth: >-
  Exact conditional subcell decision, not a K5 closure. After the
  close-return alias, a returning endpoint/collar that enters O(d) of the
  flat producer creates a local two-strand interaction if the active region is
  represented at leading filament order by one ordered two-tube profile and
  the same-packet pairwise eviction TV is accepted as tax. On that subcell,
  the K3 instantaneous floor and lifetime TV reduction give
  Prod_+ <= 3 TV_evict. If the close return has no positive two-tube
  stretching, it cannot fund K5 production; if it has positive stretching, it
  pays the TV toll. Therefore the single visible close-return pair is not an
  evasion branch. Remaining open: forced occurrence of such close return,
  acceptance/budgeting of same-packet TV, core/off-profile corrections,
  multiple-return and dense-crowd cancellation, route-out/exclusion, record
  length, new unweighted high-Re mechanism, confinement constant, and MPP
  closure.
---

# K5 close-return two-tube subcell is paid in TV

## 1. Object

The close-return alias note reduced recirculating endpoint return to two
possibilities. Far return is tail-small. Close return means the endpoint or
collar material comes within the edge scale \(d\) of the flat producer.

This note checks the simplest close-return cell:

\[
  \text{one visible returning strand interacting with one flat producing strand}
\]

at leading filament order, with the active region represented by a single
ordered two-tube profile on the same arclength-time packet.

The kill condition for this subcell is a close-return pair with positive
production and arbitrarily small same-packet geometric-exit TV.

## 2. Local two-tube reduction

Once the returned material is within \(O(d)\), the producer no longer sees a
distant endpoint tail. It sees another local vorticity strand. At leading
filament order, the ordered interaction has the two-tube variables

\[
  d(t),\qquad \beta(t)=\sin 2\alpha(t),\qquad
  \gamma(t)=\cos 2\alpha(t),\qquad \Gamma(t).
\]

The local stretching density is \(\sigma_+\). The full geometric-exit vector is

\[
  \mathcal E^2=|\tau_y|^2+|\tau_n|^2+B_d^2,
\]

with \(\tau_y,\tau_n\) the axis-rotation components and \(B_d\) the normal
curve-leakage component.

The combined K3 floor gives, pointwise on the producing half of the profile,

\[
  \mathcal E\ge {1\over 3}\sigma_+.
\]

This includes the curve-leakage blind point: when \(B_d\) vanishes, an
axis-rotation component remains.

## 3. Same-packet TV payment

Define the production and eviction TV over the close-return episode \(J\) by

\[
  \mathrm{Prod}_+(J)
  =
  \int_J\int_{\mathrm{prod}(t)}\sigma_+(s,t)\,ds\,dt,
\]

\[
  \mathrm{TV}_{\rm evict}(J)
  =
  \int_J\int_{\mathrm{prod}(t)}\mathcal E(s,t)\,ds\,dt.
\]

These are on the same arclength-time packet. Integrating the K3 floor gives

\[
  \mathrm{Prod}_+(J)\le 3\,\mathrm{TV}_{\rm evict}(J).
\]

Therefore a single leading-order close-return pair has no free producing
channel. It is production-dead when \(\mathrm{Prod}_+=0\), and TV-paid when
\(\mathrm{Prod}_+>0\).

## 4. Consequence for K5

The isolated K5 pure edge cannot use a single visible close return as an
unpriced high-Re mechanism. A close return that is locally a two-tube episode
has moved into the paid K3 cell.

The still-open close-return/crowd branch is narrower:

\[
\begin{array}{ccl}
\text{forced occurrence} &:&
  \text{prove the pure edge must create close return or contamination},\\
\text{allocation/budget} &:&
  \text{prove same-packet TV is accepted and consumed by the record economy},\\
\text{off-profile/core} &:&
  \text{control finite-core and non-two-tube corrections},\\
\text{multiple-return/crowd} &:&
  \text{handle bracing, cancellation, or broadband geometry}.
\end{array}
\]

This is why the dense-crowd notes remain live. Pairwise TV is paid before
vector cancellation; the unresolved question is whether the real PDE ledger
must accept that TV, or whether an off-profile/crowd schedule evades the
pairwise allocation.

## 5. Four-sentence result

A single close-return strand does not give K5 a free high-Re payer. Once the
returned material is within \(O(d)\), the local interaction is a leading-order
two-tube episode whenever it is represented by one ordered pair. The K3 floor
then gives \(\mathrm{Prod}_+\le3\,\mathrm{TV}_{\rm evict}\) on the same packet.
Thus the remaining close-return danger is not a visible two-tube pair; it is
forced occurrence, TV allocation/budget, core/off-profile correction, or
multiple-return/crowd cancellation.

## 6. State

Exact conditional subcell decision only. This note proves no forced
close-return occurrence, no same-packet TV allocation theorem, no TV budget
bound, no core/off-profile correction theorem, no dense-crowd theorem, no
record/effective-length cap, no route-out/exclusion theorem, no new unweighted
high-Re mechanism, no confinement constant, and no MPP closure.
