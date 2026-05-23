# Euler-NS Continuum Closure Theorem

## Status

Closed branch-local theorem-control statement.

Authority:

- [referee-audit-ledger.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/referee-audit-ledger.yaml)
- [euler-ns-continuum-closure-ledger.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/euler-ns-continuum-closure-ledger.yaml)
- [euler-ns-smoothness-continuum-program-20260523.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/euler-ns-smoothness-continuum-program-20260523.md)

## Theorem

For the installed Euler mirror branch, every Euler/Navier-Stokes contact row in
the `ESM` case matrix lands in exactly one of the three continuum regions:

1. viscosity-free smoothness overlap;
2. viscosity divergence;
3. nonsmooth Euler class-membership boundary.

Consequently, the continuum program is closed as a route-control object:

- rows `ESM.S1`, `ESM.S2`, `ESM.C1`, `ESM.C2`, and `ESM.C3` are the current
  Euler-only smoothness extraction region, with all hypotheses included;
- rows `ESM.V1` through `ESM.V6` are the exact Navier-Stokes viscosity jobs
  that Euler cannot import;
- rows `ESM.N1` through `ESM.N6` are the Euler nonsmooth boundary region, where
  base membership or the nearby class grammar can survive while classical
  smoothness, one-field coherence, Lagrangian structure, or receiver ledgers
  fail.

## Proof

The referee ledger supplies the complete installed `ESM` case matrix and the
classification of every row.

Rows classified as `smooth_by_hypothesis` or `proved_conditional_surface` have
their smoothness or regularity content only after the stated Euler hypotheses
are included. Those are exactly the smoothness-overlap rows: the proof labor is
transport, pressure, incompressibility, fixed covers, compactness, retained
smooth center balls, or explicit Euler envelopes, rather than viscosity.

Rows classified as `non_euler_import` spend an explicitly viscous or parabolic
mechanism: `ACT.KX` absorption, `2nu`, top-viscous readout, `nu D_N`, heat or
Stokes structure, selector/export viscous consumers, or a viscous-center
supplier. Since those mechanisms vanish at `nu=0`, those rows are exactly the
viscosity-divergence region.

Rows classified as `nonsmooth_control` or `false_base_implication` exhibit the
opposite side of the Euler problem: base `Member_E` or the nearby Euler class
grammar does not force classical smoothness, one-field coherence, Lagrangian
flow maps, or receiver ledgers. Those are exactly the nonsmooth-boundary rows.

This exhausts the installed matrix. The closure ledger checks that all required
rows are present in one of the three regions and that the local/global bridge
rule is recorded.

## Local And Global Consequence

The local theorem is closed: a local nonsmooth Euler member refutes local
base-membership-implies-classical-smoothness.

The global consequence is typed: the same local witness becomes a global Euler
nonsmoothness theorem only after an explicit bridge supplies the chosen global
datum, domain, and class. This file closes the boundary; it does not silently
promote a local witness into a global theorem.

## Navier-Stokes Consequence

The overlap rows identify the part of the Navier-Stokes road that does not need
viscosity as proof labor. When an Euler-only smoothness theorem is proved on
one of those rows with a fixed datum, interval, cover, and hypotheses, the
corresponding fixed-positive-viscosity Navier-Stokes comparison inherits that
viscosity-free structure. The divergence rows record exactly where that transfer
stops and viscosity starts doing work.
