---
theorem_id: forward-gold-k3-two-tube-record-doubling-tv-toll-20260705
status: exact-two-tube-record-doubling-tv-toll-not-starvation
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant / goal item 1 to item 5 bridge
target_object:
  - K3.RecordDoublingTVToll
  - TwoTubeRecordFreeDoubling.NO
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k3-two-tube-lifetime-tv-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k3-combined-instantaneous-eviction-floor-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-goal-decide-the-confinement-constant-20260705.md
completion_truth: >-
  Exact conditional record-toll corollary, not record starvation and not
  a full composition theorem. On the same leading-order two-tube episode
  class as the TV reduction, any material record component whose growth
  is driven by the positive stretching integral satisfies
  log(G(T)/G(0)) <= Prod_+(T). Therefore a doubling event G(T) >= 2G(0)
  requires Prod_+(T) >= log 2. Combining with Prod_+ <= 3 TV_evict
  gives TV_evict >= (log 2)/3. Thus a two-tube record doubling cannot be
  free in geometric total-variation currency. Remaining open: whether
  the record ladder can repeatedly finance this TV toll; whether
  TV_evict is accepted by the composition ledger as same-packet tax;
  curve-profile persistence, off-profile/core corrections, high-Re
  edge timing, crowd/bath interaction, and octave composition. No
  per-encounter cap, no record starvation theorem, no confinement-
  constant decision, and no MPP closure are claimed.
---

# K3 two-tube record-doubling TV toll

## 1. Record-growth input

Let \(G(t)\) be a material record component whose local growth on a
leading-order two-tube episode is driven by the positive stretching
integral:

\[
\log\frac{G(T)}{G(0)}
\le
\mathrm{Prod}_+(T).
\tag{K3R.1}
\]

This is the usual logarithmic record currency: a factor-two record rise
costs \(\log 2\) units of positive stretch.

## 2. TV reduction input

The two-tube lifetime TV reduction gives, on the same producing packet,

\[
\mathrm{Prod}_+(T)
\le
3\,\mathrm{TV}_{\rm evict}(T).
\tag{K3R.2}
\]

The right side is geometric total variation of the full eviction vector,
not signed endpoint displacement.

## 3. Doubling toll

If the record doubles during the episode,

\[
G(T)\ge2G(0),
\]

then by (K3R.1),

\[
\mathrm{Prod}_+(T)\ge\log 2.
\]

Combining with (K3R.2),

\[
\boxed{
\mathrm{TV}_{\rm evict}(T)\ge \frac{\log 2}{3}.
}
\tag{K3R.3}
\]

So a leading-order two-tube episode cannot double a record for free.
It must spend a fixed geometric-TV toll.

## 4. What remains

This does not say a two-tube doubling event is impossible. It says that
every such event has a fixed TV toll. To turn the toll into starvation,
the composition layer must show that the same-packet record economy has
only finite available eviction TV, or that paying this toll forces
custody, return-race, sideband-crowd, or octave-composition depletion.

## 5. Four-sentence result

A factor-two record rise costs \(\log 2\) of positive stretch. On the
two-tube episode class, positive stretch is bounded by three times
geometric eviction total variation. Therefore any two-tube record
doubling pays \(\mathrm{TV}_{\rm evict}\ge(\log2)/3\). The open problem
is not the toll; it is whether the record ladder can fund that toll
indefinitely.
