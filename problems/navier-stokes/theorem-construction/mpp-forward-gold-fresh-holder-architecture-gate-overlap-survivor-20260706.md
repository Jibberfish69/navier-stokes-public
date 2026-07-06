---
theorem_id: forward-gold-fresh-holder-architecture-gate-overlap-survivor-20260706
status: gate-correction-spatial-enumeration-closed-overlap-bath-survives
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / fresh-holder gate
target_object:
  - FreshHolderEnumeration.SPATIAL-LOCALIZED-CLOSED
  - OverlappingSmoothBath.SURVIVES-AS-EXACT-MATRIX
  - CrowdCell.LiveSpace = {OverlapExactMatrix, ReuseTrackingFloor, Gate8Allocation}
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-holder-architecture-enumeration-reuse-survivor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-far-holder-harmonic-interior-supply-price-lemma-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-one-holder-amplitude-floor-bath-ratio-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-steady-or-tracking-dichotomy-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-recursion-summability-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-regress-demand-cascade-two-channel-display-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-dense-crowd-two-channel-regate-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-affine-jet-static-energy-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-local-affine-dynamic-obstruction-20260706.md
completion_truth: >-
  Codex gate correction, not a crowd theorem and not a confinement-constant
  decision. The fresh-holder architecture enumeration is valid as a
  spatial-support reduction: far localized holders are priced by the harmonic
  standoff lemma, bounded-bottom-tier fresh chains pay an order-one bottom
  tier, sparse support jumps are worse than bounded jumps, and sub-producer or
  contact support returns to the dilute/contact cells. But that enumeration is
  not exhaustive for the dense broadband bath already recorded in BD2/OAF and
  the two-channel regate: a smooth or low-frequency holder may overlap the
  producer region while varying only on a larger scale. For such a holder,
  holder vorticity does not vanish on a standoff ball, so the far-holder
  harmonic lemma does not apply; and there is no localized fresh octave-adjacent
  bottom tier, so the AR2 fixed-bottom-tier charge does not apply. Therefore
  the previous claim that the FRESH half is decided is too strong. What is
  decided is the localized spatial fresh half. What survives is overlapping
  smooth/broadband bath holding, typed as the exact joint transfer matrix /
  bath-recursion branch. Follow-up affine-jet obstruction says this survivor
  cannot be killed by static finite energy or local divergence-free matching:
  a trace-free overlap strain jet of size G on scale d has compact
  divergence-free realizations with energy O(G^2 d^5), giving the filed
  beta^(8/5) cheap ratio. Second affine follow-up says the local dynamic jet
  route also cannot supply the floor: every smooth symmetric trace-free A(t)
  is an exact local Navier-Stokes packet after the pressure Hessian is chosen.
  Thus the overlap bath may be killed only by a global/material dynamic
  matrix, tracking/allocation theorem, or it may become an exit-II construction
  if it satisfies the summability criterion while preserving production. No
  dense-cell clearance, no composition theorem, and no MPP closure are claimed.
---

# Fresh-holder architecture gate: the overlap bath survives

## 1. Gate question

The fresh-holder architecture note claimed that every fresh holder is covered
by four spatial cases: far support, octave-adjacent chains, sparse jumps, or
below/contact support. The gate question is whether that list covers the
smooth bath already present in the dense-crowd notes.

It does not.

## 2. What the enumeration really closes

The enumeration closes localized support architectures.

If holder vorticity is absent from a ball around the producer, the holder field
is harmonic there, and the far-holder lemma prices supplied strain by powers of
the standoff:
\[
  \int_{B_R}|u_h|^2 \gtrsim G_1^2R^5
  \quad\text{or}\quad
  \int_{B_R}|u_h|^2 \gtrsim G_2^2R^7.
  \tag{FHG.1}
\]

If a fresh chain has a localized bottom tier at bounded scale jump from the
producer, that bottom tier carries an order-one fraction of the event's
holding work. Geometric record demand then makes the fresh bottom-tier series
diverge.

If the chain skips the bottom tier by a sparse support jump, the far-holder
standoff powers make the jump more expensive than the bounded-jump case, not
cheaper.

If support is below or at contact scale, the case returns to the dilute/contact
cells and the K3 TV floor.

Those are real reductions.

## 3. The missing architecture

The dense-crowd bath need not be localized away from the producer. A smooth
large-scale or broadband holder can overlap the producer region while varying
on a larger scale. It supplies a nearly coherent strain across the producer
without having holder vorticity vanish on a standoff ball.

That object is exactly the BD2/OAF threat:
\[
  E_{\rm bath}/E_{\rm prod}\sim\beta^{8/5}.
  \tag{FHG.2}
\]

It is also the object of the two-channel regate: the exact joint transfer
matrix must decide whether differential, coherent, and in-plane demands grow
or converge under admissible strength/spacing schedules.

The spatial enumeration does not price this holder. The far-holder lemma is
not licensed because there is no vorticity-free standoff ball. The AR2
bottom-tier charge is not licensed because there is no localized fresh bottom
tier between the producer and the smooth overlapping field.

## 4. Corrected live space

After the gate, the crowd cell has three live objects:

1. overlapping smooth/broadband bath, decided by the exact joint transfer
   matrix and the bath-recursion summability criterion;
2. reuse/tracking floor for already-present holders;
3. same-packet Gate-8 allocation for turning geometric or tracking costs into
   record-ladder currency.

The first object can still die, but not by static finite energy. The affine-jet
import shows that a prescribed trace-free overlap strain jet of size \(G\) on
scale \(d\) has compact divergence-free realizations with energy
\(O(G^2d^5)\). The local dynamic affine import also says the symmetric strain
history \(A(t)\) itself is locally Navier-Stokes-admissible after the pressure
Hessian is chosen. A uniform floor must therefore be global and material:
time-dependent matching, pressure/Hodge/collar coupling, tracking/allocation,
or same-packet allocation. The spatial enumeration, static energy, and local
affine tracking equations do not consume it.

## 5. Four-sentence result

The fresh-holder enumeration closes localized spatial holders, not every fresh
holder. A smooth or broadband bath can overlap the producer region, so the
holder vorticity need not vanish on a standoff ball and no fresh localized
bottom tier is forced. The affine-jet imports kill the local static and dynamic
floors: the overlap jet can be compactly realized at cost \(O(G^2d^5)\), and
the symmetric strain history is locally admissible after the pressure Hessian
is chosen. That survivor is the global/material exact-matrix branch, with the
summability criterion as its construction test.
