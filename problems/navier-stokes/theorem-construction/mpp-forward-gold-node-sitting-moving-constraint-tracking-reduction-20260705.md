---
theorem_id: forward-gold-node-sitting-moving-constraint-tracking-reduction-20260705
status: exact-moving-constraint-identity-for-node-sitting-tracking-floor-reduction
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant / dense crowd node-sitting tracking floor
target_object:
  - NodeSitting.MovingConstraint
  - TrackingFloor.TransversalityConstant
  - StaticMatrixRatio.NotDecisive
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-matrix-node-sitting-correction-tracking-floor-merge-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-steady-or-tracking-dichotomy-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-exponent-recursion-energy-nondecay-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-dense-crowd-two-channel-regate-20260705.md
completion_truth: >-
  Exact finite-dimensional kinematic identity for the node-sitting
  branch; not a tracking-floor theorem. A static node-sitter is a
  holder state h solving C(q,h)=0, where q is the producer state and C
  is the vector of demanded back-reaction components. Along a sustained
  producing episode q(t), any exact node-sitting path h(t) must satisfy
  D_h C(q,h) hdot = -D_q C(q,h) qdot. At a regular node, the least
  instantaneous tracking speed is exactly |(D_h C)^\dagger D_q C qdot|
  in the Euclidean model, with the usual Moore-Penrose inverse after
  projecting to the demanded-component range. Hence static angular
  node cancellation is not the decision object: the decision object is
  the normalized transversality constant comparing this forced tracking
  speed/power to protected production. Vanishing tracking can occur
  only by tangent producer evolution, singular or high-leverage node
  geometry, or a different exact schedule; a fixed positive floor folds
  node-sitting into the bath/composition line. No dense-crowd theorem,
  no confinement-constant decision, and no MPP closure are claimed.
---

# Node-sitting as a moving constraint

## 1. Physical object

Node-sitting is a static cancellation strategy. A holder chooses its
station and orientation so the demanded back-reaction components vanish
at its own location while its field still supplies cancellation at the
producer.

That is legal at a frozen instant. The producer is not frozen during a
record event. Its producing state changes on the production clock, so
the node that protected the holder moves.

## 2. Static zero constraint

Let \(q\) denote the finite list of producer variables that the exact
dense-crowd matrix uses: producing angle, orientation, strength, and
the channel components that determine the demanded tensor. Let \(h\)
denote the holder variables: station angle, distance or extent
parameter, strength normalization, and holder orientation.

Let

\[
  C(q,h)\in\mathbb R^m
\]

be the demanded back-reaction components on the holder. Static
node-sitting is the constraint

\[
  C(q,h)=0.
  \tag{NSM.1}
\]

This is the exact form of the static node correction in the matrix
note. It does not decide the dynamic problem.

## 3. Moving-node identity

Along a sustained node-sitting episode,

\[
  C(q(t),h(t))\equiv0.
\]

Differentiating gives

\[
  D_qC(q,h)\,\dot q
  +
  D_hC(q,h)\,\dot h
  =
  0.
  \tag{NSM.2}
\]

Thus the holder must solve

\[
  D_hC(q,h)\,\dot h
  =
  -D_qC(q,h)\,\dot q.
  \tag{NSM.3}
\]

This is the tracking equation. It is an identity, not a heuristic.
The static matrix ratio has disappeared; only the moving zero-set
geometry remains.

## 4. Regular-node speed floor

At a regular node, assume \(A:=D_hC(q,h)\) has full row rank on the
demanded components. Let \(B:=D_qC(q,h)\). Among all holder velocities
that keep the node exact, the least Euclidean speed is

\[
  \inf_{\dot h:\,A\dot h=-B\dot q}|\dot h|
  =
  |A^\dagger B\dot q|,
  \tag{NSM.4}
\]

where \(A^\dagger\) is the Moore-Penrose right inverse on the range of
\(A\). Equivalently, writing \(v_{\rm prod}:=\dot q/P(q)\) with
\(P(q)\) the protected production rate,

\[
  \frac{\inf|\dot h|}{P(q)}
  =
  |A^\dagger Bv_{\rm prod}|.
  \tag{NSM.5}
\]

So the tracking-floor constant for node-sitting is the infimum of
\(|A^\dagger Bv_{\rm prod}|\) over the admissible regular node family,
after the chosen normalization of holder variables.

## 5. Exact escape list

The identity leaves only three mathematical escapes.

First, tangent producer evolution:

\[
  Bv_{\rm prod}=0.
  \tag{NSM.6}
\]

Then the producer moves in a direction that does not move the demanded
node to first order.

Second, high-leverage or singular node geometry: the normalized
\(A^\dagger Bv_{\rm prod}\) tends to zero along the admissible family.
This is an exact compactness/transversality failure, not a static
matrix victory.

Third, a different co-optimized schedule changes the exponent law
already tested in the bath-recursion note. Then the schedule must be
displayed as an exact path through (NSM.3), not as a frozen angular
ratio.

## 6. Four-sentence result

A static node-sitter solves \(C(q,h)=0\). During production the
producer state \(q(t)\) changes, so exact node-sitting must satisfy
\[
  D_hC\,\dot h=-D_qC\,\dot q.
\]
At a regular node the minimum tracking speed is exactly
\(|(D_hC)^\dagger D_qC\,\dot q|\). Thus the dense-crowd node branch is
now a transversality-floor problem for this moving constraint, not a
static transfer-ratio problem.
