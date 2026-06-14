---
ns_viewer:
  theorem_id: cross-profile-two-tower-donor-depletion-direct-attempt-20260609
  status: failed-reduced-to-cross-profile-zeno-refill-rigidity
  proof_role: direct_attempt_and_reduction
  logical_landing_node: cross_profile_two_tower_donor_depletion
  edge_effect: "Tests the cross-profile donor-depletion/quantized-charge target directly, installs the local donor-balance reduction for the cross-profile branch, and narrows the open theorem to terminal Zeno refill well-foundedness rather than cycling through parent-density or active-square aliases."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-cross-profile-parent-density-floor-cycle-pivot-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-two-tower-donor-depletion-formalization-note.md
    - problems/navier-stokes/theorem-construction/mpp-two-tower-donor-balance-modulo-refill-note.md
    - problems/navier-stokes/theorem-construction/mpp-refilltree-wellfounded-direct-attempt-note.md
    - problems/navier-stokes/theorem-construction/mpp-zeno-refill-branch-alternatives-direct-attempt-note.md
  downstream_consequence: "CrossProfileTwoTowerDonorDepletion.A is not proved from raw energy, local energy, finite banding, same-fluid transport, transported-boundary tightness, or fixed parent-charge quantum. The next non-alias target is CrossProfileZenoSourceResidueRigidity.A / CrossProfileRigidAncientResidueClass.A for uncharged terminal Zeno refill branches."
---

# MPP CrossProfileTwoTowerDonorDepletion Direct Attempt

Date: 2026-06-09

Status: active-completion direct attempt. This note does not close public Clay
finality and does not license PDF finality.

## Target

The active target was:

```text
CrossProfileTwoTowerDonorDepletion.A.
```

A useful theorem would assign every legal positive cross-profile source-parent
edge a finite scale-normalized donor cost. Equivalently, it would prove one of:

```text
CrossProfileQuantizedParentCharge.A,
CrossProfileDiffuseParentCharge.A,
CrossProfileDonorEntropyCharge.A.
```

That theorem would pay the anti-diffuse parent wall exposed by
`CrossProfileParentDensityFloor.A`, then feed the cross-profile reserve chain
back toward `NoGenuineExitFromSmoothData.A`.

## Direct Edge-Cost Test

Raw global energy does not price the edge at the right scale. A heat-scale
terminal packet can carry order-one normalized positive source-parent mass
while its physical `L^2` contribution shrinks with the packet volume. Thus

```math
\sup_t \|u(t)\|_2^2 < \infty
```

does not give a fixed lower cost for each positive cross-profile edge.

Local energy gives a telescoping inequality only after the missing normalized
charge is supplied. In the current branch it has the form:

```math
\text{child feed}
\le
\text{donor energy drop}
+ \text{donor refill}
+ \text{legal loss}.
```

This proves the local balance identity. It does not prove that an arbitrarily
deep terminal refill tree has controlled leaves.

Finite banding and same-fluid transport also do not price the edge. Finite
banding restricts shell adjacency; it does not bound physical predecessor
multiplicity. Same-fluid transport preserves the legal carrier after an edge is
chosen; it does not attach a cost to the positive edge.

## Quantized Parent-Charge Test

A fixed parent-charge quantum fails for the same scaling reason. A normalized
terminal edge can stay active while the physical parent charge tends to zero.

A normalized quantum also fails without a summable reserve. A diffuse legal
parent cloud can satisfy:

```math
\sum_{\alpha=1}^{M} \pi(P^-_\alpha \to P) \ge c_0,
\qquad
\max_\alpha \pi(P^-_\alpha \to P) \to 0.
```

So no bounded parent subfamily or fixed per-edge quantum follows from the
installed inputs.

## Transported-Boundary Test

The transported-boundary route is not a new closure for this target. Existing
attempts show that transported-boundary tightness controls boundary flux, while
the hard source can be an interior terminal concentration inside the transported
shell. It does not supply the missing source-parent edge cost.

## What Is Installed

The installed local theorem is the donor-balance half:

```text
LocalDonorBalance.A:
a donor tower feeds a child only by draining, by legal loss, or by being
refilled from its own source parents.
```

For the cross-profile branch this gives the same finite-tree statement:

```math
\sum_{e\in \mathcal T_L^{int}} \pi(e)
\le C_T
\sum_{v\in \partial \mathcal T_L} E(v;t_v^-)
+\sum_{v\in \mathcal T_L}\ell(v)
+\operatorname{Boundary}_{overlap}(\mathcal T_L).
```

Finite cross-profile refill trees telescope. The remaining problem is the
terminal infinite tree, not the local shell algebra.

## Reduction

The direct attempt reduces the target to:

```text
CrossProfileRefillTreeWellFounded.A:
every legal positive cross-profile source-refill ancestry tree has controlled
terminal leaves, or else spends a finite scale-normalized reserve.
```

The non-Zeno branch is controlled by the existing entrance-leaf mechanism: a
branch that reaches a fixed preterminal entrance surface is paid by original
smooth tail decay.

The open branch is a Zeno refill tree:

```math
\cdots \to P^{-2}\to P^{-1}\to P^0,
\qquad
r_m\downarrow0,
\qquad
\sum_m r_m^2<\infty.
```

At current theorem resolution, the scale-critical Carleson / active-square
route has already cycled through the same missing source reserve. The non-alias
target is therefore:

```text
CrossProfileZenoSourceResidueRigidity.A:
an uncharged cross-profile Zeno refill branch extracts a rigid ancient
source-residue limit, and the inherited positive source residue vanishes in
that rigid class.
```

Equivalently, prove:

```text
CrossProfileRigidAncientResidueClass.A
+
CrossProfileResidueLiouville.A.
```

## Result

`CrossProfileTwoTowerDonorDepletion.A` is not proved from current installed
inputs.

The useful installed movement is:

```text
LocalDonorBalance.A
+
CrossProfileRefillTreeWellFounded.A
=> CrossProfileTwoTowerDonorDepletion.A.
```

The next active theorem atom is:

```text
CrossProfileZenoSourceResidueRigidity.A
```

with the first smaller burden:

```text
CrossProfileRigidAncientResidueClass.A:
produce a rigid ancient class from an uncharged cross-profile Zeno refill branch,
strong enough for a source-residue Liouville theorem.
```

Until that theorem or an equivalent scale-critical donor reserve is proved and
propagated through the cross-profile chain, `NoGenuineExitFromSmoothData.A` and
both PDF final rereads remain open.

## New Live Criticism

`NS-LIVE-20260609-173`: the cross-profile donor-depletion / quantized-parent
target does not follow from raw energy, local energy, finite banding, same-fluid
transport, transported-boundary tightness, or a fixed parent-charge quantum.
The installed local donor-balance identity reduces finite cross-profile refill
trees, but the terminal Zeno refill branch can still accumulate at the endpoint
across shrinking heat scales. The active loop must prove
`CrossProfileZenoSourceResidueRigidity.A`,
`CrossProfileRigidAncientResidueClass.A+CrossProfileResidueLiouville.A`, or an
equivalent scale-critical donor reserve before the cross-profile branch can feed
the CMI final gate.
