---
theorem_id: forward-gold-retention-constant-certification-spec-20260705
status: certification-specification-and-pilot-design-no-number-claimed
created: 2026-07-05
problem: navier-stokes
route: forward-gold / participation impedance / retention constant c_ret
authorship: >-
  Spec: Claude (Fable), 2026-07-05. Constant and currency: Thomas Birnie's
  theta (TFE.19 entropy nonexpansion) = strict half-barrier = branching
  retention = unit-Reynolds marginality.
completion_truth: >-
  No numerical value of c_ret is claimed here. This note fixes the object so
  the certification cannot drift: the normalized family, the functional, two
  mandatory calibration gates, and the pilot design. A rushed number would be
  counterfeit precision; the run is its own work unit.
---

# Certification spec for the retention constant

## 1. Normalized family

Collar configurations at unit local Reynolds: divergence-free fields on the
annulus 1/2 <= |x| <= 2 (nondimensionalized: r = 1, delta-u = 1, nu = 1),
with tower norms bounded through depth N_0, quotiented by the co-moving
frame (Galilean shift removed, order-lock convention). Compactness comes
from smoothness at Re ~ 1: bounded family in every C^k on the closed
annulus. Parametrize by low-order toroidal/poloidal moments to finite
dimension d with certified truncation-error control.

## 2. The functional

For a configuration q, evolve the coupled loop (velocity -> pressure ->
heat-lag viscous update, TFE.1) over one heat-lag window. Decompose the
parked collar load's exit channels exactly:

  c_diss(q): dissipated in place (the only true heat channel);
  c_out(q):  exported outward as opposing stress (echo);
  c_ret(q):  passed inward coherently to the half-scale collar
             (selected transition admission in the TFE.19 sense).

By the reaction identity the three sum to one up to certified boundary
terms. Target theorem: sup over the family of c_ret(q) <= 1/2 - delta for
explicit delta > 0.

## 3. Mandatory calibration gates (run before any NS number is read)

Gate A - rotation countermodel (TFE.21): skew rotation plus damping, no
participation. The functional must report c_ret -> 1 in the fast-rotation
limit. If it does not, the functional is not measuring selected recounting.

Gate B - dyadic shell model (Katz-Pavlovic class, known blowup): the
functional must report c_ret >= 1/2. Blowing-up relays must fail the
retention bound, or the functional is not measuring the right toll.

Only a functional that passes both gates is allowed to be evaluated on the
NS family. Any evaluation that skips the gates is void.

## 4. Pilot design (first honest number, non-certified)

Stage 1: exact NS triad computation - the atomic cascade unit with true
projection (incompressibility) coefficients; compute the retention-like
fraction for downscale triads at unit Reynolds over one interaction time.
Geometric depletion from the projector should already push the coherent
downscale fraction visibly below the shell-model value; the gap between
triad-NS and shell-model retention is the first empirical shadow of the
theorem.

Stage 2: annulus family sweep (spectral, moderate resolution), gated per
Section 3, reporting the sup of c_ret over the sampled family with margins.

Stage 3: certified pass - interval arithmetic over the parametrized family
with truncation control (Hou-discipline). This is the program's endgame
artifact; person-scale work, not a session.

## 5. Boundary

The spec exists so that no stage can silently substitute an easier object:
same family, same functional, same gates, at every stage. A number produced
outside this spec has no authority in the lane.
