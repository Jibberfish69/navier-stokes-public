---
theorem_id: forward-gold-dense-bracing-pairwise-tv-no-free-subcell-20260706
status: pairwise-tv-bracing-subcell-paid-net-vector-cancellation-remains-open
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / bracing
target_object:
  - DenseBracing.PairwiseTVSubcell.PAID
  - DenseBracing.NetVectorCancellation.OPEN
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-goal-decide-the-confinement-constant-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-dense-crowd-bracing-test-spec-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bracing-first-verdict-regress-nondecay-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-dense-crowd-two-channel-regate-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k3-combined-instantaneous-eviction-floor-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k3-two-tube-lifetime-tv-reduction-20260705.md
completion_truth: >-
  Exact reduction for a restricted but important dense-bracing subcell. In any
  leading straight-filament episode where producing interactions are decomposed
  into ordered two-tube pairwise profiles and the geometric-exit tax is measured
  before cross-interaction vector cancellation, net positive production is
  bounded by pairwise positive production, and the two-tube floor gives
  pairwise positive production <= 3 * pairwise eviction TV. Therefore bracing
  cannot be free in unallocated pairwise-TV currency. This does not decide the
  four-tube bracing test or the dense crowd: an escape can still hide in
  cancellation of eviction vectors before the accepted ledger sees them, in
  off-profile/core geometry, in sideband/crowd allocation, or in a node-sitting
  schedule. The note retypes the first bracing danger: the bracer can cancel a
  producer's net geometric motion, but only by creating pairwise TV that must be
  either accepted as same-packet tax or proved cancellable in the real ledger.
  No full crowd theorem, confinement constant, composition theorem, or MPP
  closure is claimed.
---

# Dense bracing: pairwise TV is not free

## 1. Kill condition

The first dense bracing danger is that a neighboring structure cancels a
producer's geometric exit while preserving the producer's stretching. The
restricted subcell checked here is:

\[
  \text{Can bracing beat the floor if every ordered interaction's
  pairwise TV is charged before vector cancellations are netted?}
  \tag{DBTV.1}
\]

The kill condition for this subcell is a braced crowd with positive net
production and zero or arbitrarily small pairwise eviction TV.

## 2. Pairwise decomposition

Let the active filament family have ordered pairwise contributions
\[
  \sigma_i(t,s)=\sum_{j\ne i}\sigma_{ij}(t,s),
  \qquad
  e_i(t,s)=\sum_{j\ne i}e_{ij}(t,s),
  \tag{DBTV.2}
\]
where \(\sigma_{ij}\) is the stretching of filament \(i\) due to filament
\(j\), and \(e_{ij}\) is the corresponding two-tube geometric-exit vector:
axis rotation plus curve-leakage components in the local two-tube frame.

For every point,
\[
  \left[\sum_{j\ne i}\sigma_{ij}\right]_+
  \le
  \sum_{j\ne i}[\sigma_{ij}]_+.
  \tag{DBTV.3}
\]

Thus netting the production interactions cannot create more positive production
than the sum of pairwise positive productions.

## 3. Pairwise TV payment

On each leading-order two-tube ordered interaction, the K3 instantaneous and
lifetime reductions give
\[
  [\sigma_{ij}]_+
  \le
  3\,|e_{ij}|
  \tag{DBTV.4}
\]
in the same arclength-time density, with \(e_{ij}\) measured in total-variation
currency.

Summing (DBTV.3)-(DBTV.4) over all active filaments gives
\[
  \mathrm{Prod}_{+,{\rm net}}
  \le
  \sum_{i}\sum_{j\ne i}\mathrm{Prod}_{ij,+}
  \le
  3\sum_i\sum_{j\ne i}\mathrm{TV}(e_{ij}).
  \tag{DBTV.5}
\]

Therefore a braced crowd cannot produce for free in pairwise-TV currency.

## 4. What bracing can still do

Bracing can still cancel the net geometric-exit vector:
\[
  \left|\sum_{j\ne i}e_{ij}\right|
  \ll
  \sum_{j\ne i}|e_{ij}|.
  \tag{DBTV.6}
\]

That is exactly the dangerous dense-crowd maneuver. It does not defeat the
pairwise-TV toll; it challenges whether pairwise TV is an accepted same-packet
tax in the real ledger, or whether the fluid is allowed to cancel the pairwise
motions before any record-relevant cost is charged.

So the four-tube bracing test is now split:

1. pairwise-TV bracing: paid by (DBTV.5);
2. net-vector bracing: open and genuinely dangerous;
3. off-profile/core/sideband/node-sitting schedules: open.

## 5. Four-sentence result

If the ledger sees each ordered pairwise geometric exit before vector
cancellation, dense bracing is not free. Net positive production is bounded by
the sum of pairwise positive productions, and every pairwise two-tube production
pays the K3 TV floor. The only way bracing can still evade this subcell is to
cancel the eviction vectors before the accepted same-packet ledger charges
their path length. Thus the remaining four-tube danger is no longer "pairwise
bracing for free"; it is ledger-level vector cancellation or a non-pairwise
crowd geometry.
