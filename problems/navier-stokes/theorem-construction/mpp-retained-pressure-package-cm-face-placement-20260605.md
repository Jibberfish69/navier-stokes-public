# MPP Retained Pressure Package CM Face Placement

Date: 2026-06-05

Status: theorem-facing pressure test installed; narrows the retained receiver
route after the June 5 viewer graph repair without claiming Clay closure.

## Target

The corrected retained receiver route is:

```text
NKF.Native + NKF.Ann + NKF.Quad
=> ACT.X-Press

ACT.X-Cut + ACT.X-Press + ACT.X-MidRaw + ACT.X-TopVisc
=> ACT.KX

ACT.KX + ACT.X-Scale + RWS.C_scale
=> ACT.X-Readout => ACT.A => RCF.A => LCI.A.
```

This note tests where that pressure package belongs in the CM contrapositive
tree:

```text
finite terminal witness
=> same-fluid CM terminal packet
=> first failed Pack/Part/Field face
=> Exit(Q):=not Member(Q).
```

## Checked Inputs

- `mpp-clay-terminal-witness-invalidation-20260523.md`
- `mpp-torus-global-material-atlas-terminal-capture-20260526.md`
- `mpp-finite-terminal-obstruction-inventory-row-audit-20260605.md`
- `mpp-lci-a-direct-transported-center-package-note.md`
- `ns-proof-program-route-table.yaml`
- `campaign-status.yaml`
- `system/gui/navier-stokes-repo-viewer/src/nsAnalysis.ts`

## Theorem `RetainedPressurePackageCMFacePlacement.A`

On a CM-test-admissible finite terminal object `W_*`, the retained pressure
package `ACT.X-Press` is not a fourth terminal service. It has exactly three
legal placements.

1. If the same pressure-viscosity tower cannot be written through the retained
   pressure package on the same carrier, the failure is:

```text
not Part_{N_s,Q}.
```

2. If `Pack_Q` and `Part_{N_s,Q}` survive and the retained pressure package
   completes the `ACT.KX` receiver chain, then it is pass-side receiver support
   for the Field/readout route.

3. If `Pack_Q` and `Part_{N_s,Q}` survive but the retained receiver chain still
   cannot supply any positive coherent Field scale, the failure is:

```text
forall r>0 not Field_{N_s,r,Q}.
```

## Proof

Let `W_*` be a CM-test-admissible finite terminal object on the active
same-fluid terminal packet `Q`. By `ClayTerminalWitnessCMEntry.A`, the object
enters the Pack-first terminal CM tree. By the torus global material atlas note,
the terminal packet has only three services: carrier/readout-compatible Pack,
same pressure-viscosity participation Part, and positive-scale one-field
coherence Field.

The retained pressure package is made from the same Navier-Stokes pressure:

```text
NKF.Native + NKF.Ann + NKF.Quad => ACT.X-Press.
```

The route table and retained-center package note place `ACT.X-Press` inside the
same affine-center pressure-viscosity receiver chain:

```text
ACT.X-Cut + ACT.X-Press + ACT.X-MidRaw + ACT.X-TopVisc => ACT.KX.
```

So the first question is not whether `ACT.X-Press` is a new face. The question
is whether this pressure package is still the same-law pressure-viscosity
participation object on the same carrier. When it is not, the terminal witness
has lost Part:

```text
not Part_{N_s,Q}.
```

Assume now that `Pack_Q` and `Part_{N_s,Q}` survive. Then the pressure package
is legally inside the retained receiver chain. The installed route says
`ACT.KX` carries the core/excess scheduler and produces the receiver package
that feeds the readout:

```text
ACT.KX + ACT.X-Scale + RWS.C_scale
=> ACT.X-Readout => ACT.A => RCF.A => LCI.A.
```

This is not a terminal failure. It is pass-side receiver support for a retained
Field/readout branch.

The only remaining failure after Pack and Part survive is loss of positive-scale
one-field coherence. Therefore any retained pressure-package obstruction that
survives carrier and participation but still blocks the readout lands as:

```text
forall r>0 not Field_{N_s,r,Q}.
```

These three placements exhaust the pressure package because CM has no fourth
service after Pack, Part, and Field.

## Consequence For The June 5 Graph Repair

The viewer repair matters because it shows the pressure package in the proof
order:

```text
NKF.Native
=> ACT.X-Press
=> ACT.KX.
```

The proof consequence is this: a terminal pressure-package problem is no longer
allowed to float as an unresolved graph sibling. It must be typed as Part
failure, retained receiver support, or Field failure after retained Pack+Part.

## Remaining Open Burden

This note does not prove `ClayCounterexampleExclusionBridge.A`, whole-space
`R^3` export, or submission readiness. It narrows the next CM pressure test to
the remaining finite terminal witness rows that have not yet been admitted to
the same terminal packet and placed into Pack, Part, or Field.
