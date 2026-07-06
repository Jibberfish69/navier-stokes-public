---
theorem_id: forward-gold-overlap-bath-nonaffine-broadband-branch-collapse-20260706
status: strict-reduction-nonaffine-broadband-is-threshold-router-not-independent-evasion-branch
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath
target_object:
  - NonAffineBroadband.NOT-INDEPENDENT-EVASION-BRANCH
  - SupercriticalResidual.THRESHOLD-ROUTER
  - DenseCrowdBath.CONSTRUCTION-OR-EXCLUSION-SURFACE
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-nonaffine-transport-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-supercritical-residual-scale-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-reynolds-edge-refresh-dichotomy-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-reynolds-edge-branch-collapse-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-fixed-density-compensator-branch-collapse-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-persistent-wkb-is-construction-surface-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-overlap-bath-survivor-front-classification-20260706.md
completion_truth: >-
  Strict branch collapse only. This note does not construct the overlap bath,
  exclude it, prove a confinement constant, close W1, compose onto the record
  ladder, or decide the MPP. It removes one stale naming layer: non-affine /
  broadband transport is not a fourth independent evasion source. Ordinary
  affine-subtracted motion stays in the q=4/5 pressure row; supercritical
  coherent motion pays by residual energy; supercritical fine/sparse motion
  routes through the Reynolds-edge refresh row, the fixed-density compensator
  residue, or the persistent high-Re WKB construction/exclusion surface.
  Therefore the dense-crowd survivor is still the actual same-fluid bath:
  construct or exclude a near-uniform WKB pressure-service bath that evades the
  filed admission, high-factor, Pack, and Part routes.
---

# Overlap bath: non-affine/broadband branch collapse

## 1. Kill question

The survivor front once listed non-affine/broadband transport as one of four
global sources of a possible overlap-bath tax or evasion.

That label is now too broad. The filed threshold and scale-split notes already
decide what non-affine motion can do. It is a router, not an independent
producing class.

## 2. Ordinary residual motion is cheap

After subtracting the affine producer frame, let
\[
  \eta_D:={\delta_D\over s}.
  \tag{NAB.1}
\]

The non-affine transport threshold note prices one producer-clock residual
motion by
\[
  {W_{\rm nonaff}\over E_{\rm prod}}
  \lesssim
  \eta_D\beta^{4/5}.
  \tag{NAB.2}
\]

Thus ordinary residual motion with \(\eta_D=O(1)\) remains in the installed
pressure row. It is not a fixed order-one payer.

An order-one non-affine payer requires
\[
  \eta_D\gtrsim\beta^{-4/5}.
  \tag{NAB.3}
\]

So the only live non-affine case is supercritical residual motion.

## 3. Supercritical residuals split by active scale

Let the residual be active on length
\[
  \ell=\theta D
  \tag{NAB.4}
\]
and support fraction \(\phi\).

The supercritical residual scale split gives
\[
  {E_{\rm res}\over E_{\rm prod}(D)}
  \sim
  \phi\eta_D^2\theta^2.
  \tag{NAB.5}
\]

At the threshold \(\eta_D\sim\beta^{-4/5}\),
\[
  {E_{\rm res}\over E_{\rm prod}(D)}
  \sim
  \phi\theta^2\beta^{-8/5}.
  \tag{NAB.6}
\]

Therefore coherent or moderate support already pays order-one energy whenever
\[
  \phi\theta^2\gtrsim\beta^{8/5}.
  \tag{NAB.7}
\]

To stay no larger than the \(q=4/5\) pressure row, it must satisfy
\[
  \phi\theta^2\lesssim\beta^{12/5}.
  \tag{NAB.8}
\]

Thus the no-payer supercritical residual is not generic broadband motion. It is
fine, sparse, or both.

## 4. Fine/sparse motion routes to already-filed branches

For a fine/sparse supercritical residual, the Reynolds-edge refresh row is
\[
  r_{\rm ref}
  \sim
  {\phi\beta^{-8/5}\over \operatorname{Re}_D}.
  \tag{NAB.9}
\]

Against a fixed demanded tax \(\theta_0\), the Reynolds-edge branch-collapse
note leaves exactly these alternatives:

1. \(r_{\rm ref}\ge\theta_0\): the edge is a payer.
2. \(r_{\rm ref}<\theta_0\): the deficit is the fixed-density compensator.
3. \(\operatorname{Re}_D\theta^2\gg1\): the branch is persistent high-Re WKB.

The fixed-density compensator branch-collapse note removes the second
alternative as an independent evasion class. The compensator is a
producer-sized missing-tax residue: without local row formation it is
Pack/routed residue; with same-packet row formation it is Part-side failure
unless routed; on the retained pass branch it vanishes unless it has left the
retained row.

The persistent-WKB merge note removes the third alternative as an independent
retained supplier. Persistent high-Re WKB is the construction surface for the
near-uniform same-fluid bath.

## 5. Branch table

The non-affine/broadband label now has this complete local routing table:

| residual case | branch |
| --- | --- |
| \(\eta_D=O(1)\) | cheap \(q=4/5\) pressure row |
| \(\eta_D\gtrsim\beta^{-4/5}\), \(\phi\theta^2\gtrsim\beta^{8/5}\) | order-one residual-energy payer |
| supercritical, intermediate \(\beta^{12/5}\lesssim\phi\theta^2\lesssim\beta^{8/5}\) | larger-than-\(q=4/5\) payer row |
| supercritical, \(q=4/5\)-hidden fine/sparse support, low or middle Reynolds | Reynolds-edge refresh row or fixed-density residue |
| supercritical, \(q=4/5\)-hidden fine/sparse support, persistent high Reynolds | actual near-uniform same-fluid WKB bath construction/exclusion |

## 6. Consequence

Non-affine/broadband transport is not a fourth global source beside Reynolds
edge, fixed-density compensator, and construction/exclusion.

It is the threshold mechanism that routes an overlap bath into those surfaces.
After the filed branch collapses, the remaining dense-crowd evasion surface is
one actual same-fluid bath problem:

construct or exclude a near-uniform WKB pressure-service bath that evades
finite/atomic carrier admission, microlocal-profile admission, high-factor
routing, and Pack/Part certificate failure.

This is still not the confinement constant. It is a sharper address for the
only surviving dense-crowd evasion candidate.
