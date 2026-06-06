---
ns_viewer:
  theorem_id: pressure-derivative-obstruction-trajectory-integration
  proof_role: support
  logical_landing_node: nkf_point_recovery
  edge_effect: records the route-authority cut between retained point-center forcing and averaged finite-energy receiver work.
  upstream_origin: same-day finite-energy point-pressure derivative obstruction proof.
  downstream_consequence: keep NKF.Point / NKF.Native on the retained smooth branch and route finite-energy receiver work through SCF_avg -> AACT.KX -> AVG.RCV.A.
  status: installed
  source_authority: problems/navier-stokes/theorem-construction/mpp-finite-energy-point-pressure-derivative-obstruction-20260606.md
---

# Pressure-Derivative Obstruction Trajectory Integration

## Status

Bounded trajectory integration note for the 2026-06-06 nightly run.

This note consumes the same-day obstruction proof
`mpp-finite-energy-point-pressure-derivative-obstruction-20260606.md` into the
current receiver route. It does not close the Clay theorem and it does not claim
`ClayTerminalWitnessCMEntry.A`, `ClayFiniteFailureTypeCMExhaustion.A`, or
`ClayCMContrapositiveEmbedding.A`.

## Plain Result

Finite energy and the pressure Poisson equation cannot be used as the supplier
for point-center pressure derivatives. The receiver route must keep two
branches separate:

1. The retained branch may use point-center forcing only after the retained
   smooth center-ball certificate supplies the needed local regularity.
2. The finite-energy branch must use the averaged packet route, not pointwise
   center recovery.

## Route Integration

The same-day proof note shows that the implication

```math
\|u\|_{L^2}<\infty
\quad\text{and}\quad
-\Delta p=\partial_i\partial_j(u_i u_j)
\Longrightarrow
\text{point-center pressure derivative bounds}
```

is false. Therefore the route

```math
NKF.Moll\Longrightarrow NKF.Point\Longrightarrow NKF.Native
```

has only retained-branch authority:

```math
RSCB.NKF
\Longrightarrow
NKF.Moll+NKF.Point
\Longrightarrow
NKF.Native
\Longrightarrow
ACT.KX.
```

On the finite-energy branch, the lawful receiver chain is the averaged route:

```math
SCF_{\mathrm{base}}
+SGC.A_{\mathrm{a.e.}}
+ATD_m^\varepsilon
\Longrightarrow
SCF_{\mathrm{avg}}^m
\Longrightarrow
AACT.KX
\Longrightarrow
AVG.RCV.A.
```

## Effect on the CM Contrapositive Program

This shrinks a false supplier burden. It prevents the trajectory from spending
work on an unavailable pointwise pressure recovery from energy and Poisson data
alone.

The CM target stays:

```math
Exit(Q):=\neg Member(Q)
```

through the Pack/Part/Field witness tree. The obstruction here is not itself a
Pack, Part, or Field face failure. It is a route-authority cut: point-center
native forcing belongs to the retained smooth branch, while finite-energy
receiver work must pass through averaged packets.

## Remaining Work

The open theorem work is now cleaner:

1. Retained branch: prove or consume the retained smooth center-ball certificate
   that licenses `NKF.Native`.
2. Averaged branch: continue the `SCF_avg^m => AACT.KX => AVG.RCV.A` receiver
   route without importing point-center pressure derivatives.
3. CM closure: consume the terminal witness through Pack/Part/Field and only
   then support `Exit(Q):=not Member(Q)`.
