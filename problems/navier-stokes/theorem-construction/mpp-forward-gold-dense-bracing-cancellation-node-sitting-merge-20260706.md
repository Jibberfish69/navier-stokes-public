---
theorem_id: forward-gold-dense-bracing-cancellation-node-sitting-merge-20260706
status: persistent-net-vector-cancellation-merged-into-node-sitting-moving-constraint
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / dense bracing
target_object:
  - DenseBracing.PersistentCancellation.MERGED
  - NodeSitting.MovingConstraint.REUSED
  - DenseCrowd.SeparateNetVectorBranch.NO
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-goal-decide-the-confinement-constant-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-dense-bracing-net-vector-ledger-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-node-sitting-moving-constraint-tracking-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-node-sitting-amplitude-homogeneity-tangent-obstruction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-one-holder-tracking-display-amplitude-channel-20260705.md
completion_truth: >-
  Exact kinematic merge, not a dense-crowd theorem. After the net-vector-only
  ledger is obstructed, a sustained cancellation schedule is precisely a
  zero-set constraint on the summed geometric-exit vector:
  C(q,h)=sum_j e_ij(q,h)=0. Along any producing episode with this cancellation
  kept exact, differentiating gives D_h C hdot = -D_q C qdot, the same
  moving-node identity already filed for node-sitting. Thus persistent
  net-vector cancellation is not a new third bracing branch; it is node-sitting
  in the coordinates of the cancelled exit vector. The amplitude-homogeneity
  caveat remains: common amplitude growth is tangent to homogeneous nodes, so
  the floor must come from shape/angle/frame/relative-component motion or from
  the supply-amplitude channel. No transversality floor, no no-eviction crowd,
  no confinement constant, and no MPP closure is claimed.
---

# Dense bracing: persistent cancellation merges into node-sitting

## 1. Kill condition

After the net-vector-only ledger obstruction, the remaining bracing danger is a
real PDE schedule whose summed geometric-exit vector stays cancelled while
production continues.

The subquestion here is:

\[
  \text{Does persistent net-vector cancellation create a branch outside
  node-sitting/tracking?}
  \tag{CN.1}
\]

The kill condition is an exact cancellation schedule that is neither a moving
zero-set constraint nor one of the already typed tangent/singular/co-optimized
node escapes.

## 2. Cancellation as a zero-set

Let \(q\) denote the producing packet's shape variables after quotienting common
amplitude where appropriate: angle, frame, relative component weights, and
local profile variables. Let \(h\) denote the bracer or holder variables:
positions, strengths, orientations, extent parameters, and any holder profile
variables retained in the finite matrix.

For a selected carrier \(i\), write the summed bracing exit vector as
\[
  C(q,h):=\sum_{j\ne i}e_{ij}(q,h).
  \tag{CN.2}
\]

Static net-vector cancellation is exactly
\[
  C(q,h)=0.
  \tag{CN.3}
\]

This is the same formal object as node-sitting: the holder sits on a zero of the
demanded components. The only difference is that the demanded component is now
the cancelled geometric-exit vector rather than the holder's back-reaction
components.

## 3. Persistent cancellation

If the cancellation is sustained through a producing episode, then
\[
  C(q(t),h(t))\equiv0.
  \tag{CN.4}
\]

Differentiating gives
\[
  D_qC(q,h)\,\dot q + D_hC(q,h)\,\dot h=0,
  \tag{CN.5}
\]
hence
\[
  D_hC(q,h)\,\dot h=-D_qC(q,h)\,\dot q.
  \tag{CN.6}
\]

At a regular cancellation node, the least holder speed in the Euclidean model is
\[
  \inf_{\dot h:\,D_hC\dot h=-D_qC\dot q}|\dot h|
  =
  |(D_hC)^\dagger D_qC\,\dot q|.
  \tag{CN.7}
\]

This is exactly the moving-node identity from the node-sitting note, with \(C\)
specialized to the net geometric-exit vector.

## 4. What this kills

The dense-bracing branch had three appearances:

1. pairwise TV before cancellation;
2. net-vector readout after cancellation;
3. persistent cancellation as a real PDE schedule.

The first is paid by the K3 TV floor. The second is obstructed as a ledger
target. The third is not a separate algebraic branch: it is node-sitting,
because sustaining the cancellation means tracking a moving zero set.

Thus no proof target remains of the form "handle net-vector cancellation" in
the abstract. The live target is the already filed tracking-floor object, now
with \(C\) allowed to be the net exit vector.

## 5. Caveats that stay alive

The amplitude-homogeneity correction is still binding. If the leading matrix is
homogeneous,
\[
  C(a,\xi,h)=aC_0(\xi,h),
  \tag{CN.8}
\]
then at a node \(C_0=0\), common amplitude growth gives \(\dot C=0\). Pure
amplification does not move the cancellation node.

Therefore the tracking source must still be one of:

1. shape, angle, eigenframe, or relative-component motion;
2. singular or high-leverage node geometry;
3. a co-optimized schedule through (CN.6);
4. the supply-amplitude channel, where the holder must grow the cancelling
   field itself and pays through its own amplification or separation energy.

These are not closed here. This note only removes persistent net-vector
cancellation as an independent fourth branch.

## 6. Four-sentence result

Persistent net-vector cancellation is a zero-set condition:
\[
  C(q,h)=\sum_{j\ne i}e_{ij}(q,h)=0.
\]
If production continues while that cancellation is held, differentiating gives
\[
  D_hC\,\dot h=-D_qC\,\dot q,
\]
the same moving-node equation as node-sitting. Therefore net-vector
cancellation is not a separate dense-crowd escape class; it is the node-sitting
tracking-floor problem in exit-vector coordinates. The open work is unchanged
but cleaner: prove the transversality/supply floor, or display a genuine
tangent, singular, or co-optimized PDE schedule.
