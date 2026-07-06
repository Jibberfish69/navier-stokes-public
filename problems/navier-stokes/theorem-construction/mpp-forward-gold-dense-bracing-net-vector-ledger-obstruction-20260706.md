---
theorem_id: forward-gold-dense-bracing-net-vector-ledger-obstruction-20260706
status: net-vector-only-eviction-ledger-obstructed-pairwise-allocation-required
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / bracing ledger
target_object:
  - DenseBracing.NetVectorLedger.OBSTRUCTED
  - DenseBracing.PairwiseAllocation.REQUIRED
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-goal-decide-the-confinement-constant-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-dense-bracing-pairwise-tv-no-free-subcell-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-dense-crowd-bracing-test-spec-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-dense-crowd-two-channel-regate-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-custody-row-lift-gate-20260705.md
completion_truth: >-
  Exact algebraic obstruction to one proof route, not a dense-crowd theorem.
  A ledger that charges only the net geometric-exit vector after different
  interactions have been summed cannot recover the pairwise K3 TV floor:
  opposite pairwise eviction vectors can cancel exactly while their total
  variation, and the pairwise production they pay for, remain positive. Thus
  the pairwise-TV subcell does not pass through any net-vector-only record
  readout. A confinement proof through this bracing lane must construct a
  pairwise/current-resolved same-packet allocation before vector cancellation,
  or prove dynamically that the cancelling schedule cannot be sustained by the
  true field. No no-eviction crowd, confinement constant, composition theorem,
  or MPP closure is claimed.
---

# Dense bracing: net-vector ledger obstruction

## 1. What is being killed

The pairwise-TV note proved the restricted statement
\[
  \mathrm{Prod}_{+,{\rm net}}
  \le
  3\sum_i\sum_{j\ne i}\mathrm{TV}(e_{ij})
  \tag{NV.1}
\]
when each ordered two-tube geometric-exit contribution is charged before
different interactions are netted.

The remaining tempting shortcut is to replace the right side by a net exit
readout:
\[
  \sum_i\mathrm{TV}\!\left(\sum_{j\ne i}e_{ij}\right).
  \tag{NV.2}
\]

This note kills that shortcut.

## 2. Two-channel cancellation

At one packet, let two bracing interactions produce opposite geometric-exit
vectors on the same carrier:
\[
  e_{12}=v,
  \qquad
  e_{13}=-v,
  \qquad
  v\ne0 .
  \tag{NV.3}
\]

Then the net exit vector is zero,
\[
  \left|e_{12}+e_{13}\right|=0,
  \tag{NV.4}
\]
while the pairwise TV is positive:
\[
  |e_{12}|+|e_{13}|=2|v|.
  \tag{NV.5}
\]

The K3 floor acts on the ordered interactions before this cancellation. It is
compatible with positive pairwise production, for example
\[
  [\sigma_{12}]_+ + [\sigma_{13}]_+
  \le
  3\left(|e_{12}|+|e_{13}|\right),
  \tag{NV.6}
\]
and gives no bound in terms of the cancelled quantity (NV.4).

Therefore no inequality of the form
\[
  \mathrm{Prod}_{+,{\rm net}}
  \le
  C\sum_i\mathrm{TV}\!\left(\sum_{j\ne i}e_{ij}\right)
  \tag{NV.7}
\]
can be derived from the pairwise K3 floor alone.

## 3. Physical reading

The fluid can have two different neighbors rotate the same producing packet in
opposite geometric directions. A pointwise or packetwise net displacement
readout sees the carrier as held still. The pairwise history still contains two
motions: the first neighbor tried to evict it one way, the second tried to evict
it back.

So the relevant cost is path length in the ordered interaction history, not the
final or instantaneous vector sum. Bracing is paid only in a ledger that keeps
that history before cancellation.

## 4. Consequence for the crowd cell

The bracing branch is now split more cleanly:

1. pairwise/current-resolved ledger: paid by the K3 TV floor;
2. net-vector-only ledger: obstructed by (NV.3)-(NV.5);
3. joint PDE dynamics: still open, because the real field may forbid or sustain
   the cancelling schedule through its exact transfer matrix, core geometry,
   sidebands, and node-sitting constraints.

The remaining theorem is not "show the net exit vector is large." That target is
false as a ledger principle. The remaining theorem is to identify the paid
pairwise/current history as same-packet Gate-8 tax, or exhibit a real dense
crowd whose cancellations persist while production continues.

## 5. Four-sentence result

The net-vector bracing ledger is dead as a proof target. Opposite pairwise
eviction vectors can cancel exactly after summation while the pairwise
total-variation bill remains positive. Hence the pairwise K3 floor cannot be
transported into a net-displacement readout without an additional same-packet
allocation theorem. The dense crowd still survives only as a real PDE schedule:
it must either defeat pairwise/current allocation or live outside the pairwise
two-tube profile.
