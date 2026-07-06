---
theorem_id: forward-gold-node-sitting-amplitude-homogeneity-tangent-obstruction-20260705
status: exact-amplitude-homogeneity-tangent-obstruction-to-node-tracking-source
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant / dense crowd node-sitting tracking floor
target_object:
  - NodeSitting.AmplitudeTangent
  - TrackingFloor.ShapeSourceOnly
  - MomentGrowth.NodeMotion.NO
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-node-sitting-moving-constraint-tracking-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-matrix-node-sitting-correction-tracking-floor-merge-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-dense-crowd-two-channel-regate-20260705.md
completion_truth: >-
  Exact homogeneity correction inside the node-sitting branch; not a
  tracking-floor theorem. In the leading filament/dipole matrix, the
  demanded back-reaction components are linear in the producer's
  strength or common amplitude: C(a,xi,h)=a C0(xi,h). At any static
  node C0(xi,h)=0, pure amplitude growth gives dC/dt = adot C0 = 0.
  Therefore producer amplification or moment growth by itself does
  not move the node and cannot supply the tracking floor. The tracking
  source must be shape/angle/eigenframe evolution, relative strength
  changes between components, singular-node geometry, or a different
  co-optimized schedule. This corrects the loose "moment grows, so
  nodes move" language in the node-sitting merge note. No dense-crowd
  theorem, no confinement-constant decision, and no MPP closure are
  claimed.
---

# Node-sitting: amplitude growth is tangent to homogeneous nodes

## 1. Physical object

The previous moving-constraint note reduced sustained node-sitting to

\[
  D_hC\,\dot h=-D_qC\,\dot q.
\]

That reduction is correct, but it leaves an immediate correction:
not every component of \(\dot q\) moves the node. The producer's
common amplitude is one such harmless component.

## 2. Homogeneous node constraint

Write the producer state as

\[
  q=(a,\xi),
\]

where \(a>0\) is the common strength, circulation, or moment amplitude
of the producer's far field, and \(\xi\) contains the shape variables:
angle, frame, relative component weights, and geometry.

At leading filament/dipole order, Biot-Savart is linear in vorticity
strength. Hence the demanded back-reaction components have the form

\[
  C(a,\xi,h)=a\,C_0(\xi,h).
  \tag{NAH.1}
\]

A static node is

\[
  C(a,\xi,h)=0.
  \tag{NAH.2}
\]

For \(a>0\), this is equivalent to

\[
  C_0(\xi,h)=0.
  \tag{NAH.3}
\]

The zero set does not depend on the common amplitude.

## 3. Tangency calculation

Differentiate (NAH.1):

\[
  \dot C
  =
  \dot a\,C_0(\xi,h)
  +
  a\,D_\xi C_0(\xi,h)\,\dot\xi
  +
  a\,D_h C_0(\xi,h)\,\dot h.
  \tag{NAH.4}
\]

At a node \(C_0(\xi,h)=0\). Therefore pure amplitude growth
\((\dot\xi,\dot h)=(0,0)\) gives

\[
  \dot C=0.
  \tag{NAH.5}
\]

So amplification alone is tangent to the node set. It does not force
tracking.

## 4. Correct tracking source

The moving-node equation reduces to the shape variables:

\[
  D_h C_0\,\dot h
  =
  -D_\xi C_0\,\dot\xi.
  \tag{NAH.6}
\]

The normalized node-sitting tracking floor is therefore a floor on

\[
  \left|(D_h C_0)^\dagger D_\xi C_0\,\dot\xi\right|
\]

relative to protected production. The producer's common amplitude may
increase the production size, but it does not move the static angular
node.

## 5. Consequence for the dense-crowd branch

The remaining node-sitting theorem cannot be proved from "moment
growth" alone. It must prove that a producing held configuration has
shape, angle, eigenframe, or relative-component motion at a definite
rate, and that the node family is transverse to that motion with a
nonvanishing inverse constant.

The exact escapes are correspondingly sharper:

1. shape-stationary amplification at a node;
2. shape motion tangent to the node family;
3. singular or high-leverage node geometry;
4. a co-optimized schedule changing the exponent law.

Any one of these, if sustained with production, is a real candidate
for the dense-crowd evasion.

## 6. Four-sentence result

The static node equation is homogeneous in the producer's common
amplitude:
\[
  C(a,\xi,h)=aC_0(\xi,h).
\]
At a node, \(C_0=0\), so pure amplitude growth gives \(\dot C=0\).
Therefore producer amplification or moment growth alone does not move
the node. The tracking-floor theorem must come from shape/angle/frame
motion and the transversality of the node set to that motion.
