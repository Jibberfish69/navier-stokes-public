---
theorem_id: forward-gold-fresh-holder-architecture-enumeration-reuse-survivor-20260706
status: gated-spatial-fresh-enumeration-closed-overlap-bath-survives
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / fresh-holder consolidation
target_object:
  - FreshHolderFunding.SPATIAL-LOCALIZED-CLOSED
  - OverlappingSmoothBath.SURVIVES-AS-EXACT-MATRIX
  - CrowdCell.LiveSpace = {OverlapExactMatrix, ReuseTrackingFloor, Gate8Allocation}
authorship: >-
  Consolidation: Claude (Fable), 2026-07-06. Physical story Thomas
  Birnie (participation: nothing is built for one use; the fluid has
  no quartermaster issuing fresh scaffolds per record - whatever
  holds you was already there, and using it wears it).
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-depth-bath-energy-only-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-depth-beta-depth-correction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-far-holder-harmonic-interior-supply-price-lemma-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-recursion-summability-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-dilute-crowd-monopole-vanishing-quartic-quiet-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k3-tv-toll-funding-allocation-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-steady-or-tracking-dichotomy-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-node-sitting-moving-constraint-tracking-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-holder-architecture-gate-overlap-survivor-20260706.md
completion_truth: >-
  Gate-corrected consolidation with one new check. The enumeration below closes
  the localized spatial fresh-holder architectures, not the whole FRESH half of
  the growing-depth door. A later Codex gate shows the missing architecture:
  smooth or broadband bath holding can overlap the producer region, so holder
  vorticity need not vanish on a standoff ball and no localized fresh
  octave-adjacent bottom tier is forced. That overlap bath survives as the
  exact-matrix/bath-recursion branch. ENUMERATION of localized fresh
  architectures, each priced by a filed exact object: (AR1)
  single holder at standoff R_n with R_n/d_n -> infinity - priced by
  the far-holder harmonic lemma (fifth/seventh standoff powers); per-
  event cost DIVERGES, cheap direction closed. (AR2) octave-adjacent
  chain (bounded per-tier scale jump) of any depth, uniform or
  growing - the BOTTOM tier alone, adjacent to the producer, costs a
  fixed fraction of the demanded holding work per event in the filed
  one-tier model, so the fresh series inherits geometric divergence
  regardless of depth; uniform depth is independently killed by the
  beta-depth correction, and the infinite chain by the summability
  criterion under every shallowing law. (AR3) sparse chain (per-tier
  jump of m octaves, m large) - NEW CHECK: by the far-holder lemma the
  per-jump supply price grows like the fifth-to-seventh power of the
  jump factor while the one-tier discount is only geometric in m, so
  jump-monotonicity favors bounded jumps; sparse chains pay MORE than
  AR2, not less. (AR4) holding from below (sub-producer scales) -
  reduces to the filed dilute cell (quartic-quiet far field under
  monopole vanishing) or the contact cell (K3 TV-taxed); no new
  channel. GRAFT DICHOTOMY: any mixed architecture either has a fresh
  bottom tier (then AR2's fixed fraction applies per event) or a
  reused bottom tier (then it is the reuse branch by definition). CORRECTED
  CONSEQUENCE: the crowd cell's live space is three objects - overlapping
  smooth/broadband bath exact matrix, reuse/tracking floor, and same-packet
  Gate-8 allocation. KILL CONDITION: a localized fresh architecture outside
  AR1-AR4, or failure of the jump-monotonicity check, or a validity-band failure
  of the one-tier ratio at the bottom tier. CAVEATS: conditional on the far-holder
  lemma's pending Codex gate; the one-tier ratio's tilt-vs-scale
  reading is flagged (the bottom-tier fraction uses demanded holding
  work, not a scale-ratio power, precisely to be robust to that
  conflation); demand-side values imported conditionally from the
  filed cells; event-index energy model tier where models are used.
  No confinement constant, no dense-cell clearance, no composition
  theorem, no MPP closure claimed.
---

# Fresh-holder architectures: enumeration, prices, survivor

## 1. Kill condition

The beta-depth correction leaves one door open on the finite-depth
fork: the growing-depth/up-scale cascade. This note decides only the
localized spatial fresh-holder half. Kill condition: exhibit a localized
fresh holding architecture outside the enumeration AR1-AR4, break the
jump-monotonicity check in section 4, or show the bottom-tier fraction
fails inside the filed one-tier model's validity band. The separate
overlapping smooth/broadband bath is not killed here; it remains the
exact-matrix/bath-recursion branch.

## 2. The enumeration

A fresh holder for record event n is built for that event and paid
as new energy. Its architecture, by where its vorticity sits
relative to the producer (scale d_n), is one of:

AR1 - a single structure at standoff R_n, with R_n/d_n unbounded.
AR2 - a chain of tiers, each within a bounded scale jump of the
      one below, bottom tier octave-adjacent to the producer.
AR3 - a chain with large per-tier jumps (sparse ladder).
AR4 - structure at or below the producer scale.

Mixtures reduce by the graft dichotomy: fresh bottom tier => AR2's
bottom-tier price applies; reused bottom tier => not fresh funding.

## 3. Prices, each from a filed object

AR1: far-holder harmonic lemma. Supplying the demanded gradient from
standoff R costs energy growing like the fifth power (coherent
demand) or seventh power (differential demand) of R at fixed demand.
The FDB cheap schedule required the opposite sign. Closed.

AR2: the bottom tier is octave-adjacent and must carry the full
demanded holding work of the producer at order-one range; in the
filed one-tier model its committed energy is a fixed fraction of
that work, independent of what sits above it. Geometric record
demand times a fixed per-event fraction diverges. Depth does not
help: uniform depth is killed by the beta-depth correction (FDC.9),
and infinite chains by the summability criterion under every
shallowing law. Closed at every depth.

AR3: see section 4. Closed by monotonicity toward AR2.

AR4: sub-producer structure supplies far field under the dilute
cell's monopole vanishing - quartically quiet - or crowds to contact
range, where the K3 TV floor and four-tube back-reaction tax it.
Reduces to filed cells. Closed as a new channel.

## 4. The new check: jump-monotonicity

Compare one tier holding from m octaves up (jump factor 2^m) against
a bounded-jump ladder covering the same span. By the far-holder
lemma, holding at standoff-to-scale 2^m pays a supply price growing
like at least the FIFTH power of 2^m at fixed demand, while the
one-tier cost discount available from being larger is only a fixed
geometric factor per octave. Fifth power beats geometric discount:
for large m the sparse jump is strictly more expensive than
descending the ladder in bounded steps. So the optimal fresh
architecture is bounded-jump - which is AR2, already closed by its
bottom tier. Sparse ladders cannot undercut it.

## 5. What survives

First, the overlapping smooth/broadband bath survives. It can overlap the
producer region, so the far-holder standoff lemma is not licensed and a
localized fresh bottom tier is not forced. This is the already-filed exact
joint transfer matrix / bath-recursion object.

Second, reuse survives. The structure that holds record event n was not built
for it: it is the ambient field - and then BD1 applies. A reused holder
protecting production at rate sigma must track on the production clock; its
supply must grow at sigma; tracking power scales with sigma times the holder's
energy scale, and pure node-sitting is blocked on the supply-amplitude channel
(strengths must match strengths). The reuse branch is therefore the
already-filed tracking-floor object - transversality/supply display owed - plus
the composition-lane question of whether reuse costs allocate same-packet into
Gate 8 (no-recount custody).

The crowd cell's live space after the gate correction: three objects.

1. Overlapping smooth/broadband bath exact matrix.
2. Tracking floor with reuse (transversality/supply display).
3. Gate-8 same-packet allocation (composition lane).

## 6. Four-sentence result

Localized fresh holders must sit far away, chain down octave-adjacent tiers,
jump sparsely, or push from below, and those four cases are priced by the
far-holder standoff powers, the bottom-tier fixed fraction plus depth kills,
jump-monotonicity, and the dilute/contact cells. That closes the localized
spatial fresh-holder branch. It does not close an overlapping smooth or
broadband bath, which remains the exact-matrix/bath-recursion object. The crowd
cell is therefore three objects: overlap matrix, reuse tracking floor, and
Gate-8 allocation.
