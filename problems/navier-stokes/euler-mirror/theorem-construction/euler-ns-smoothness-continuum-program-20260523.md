# Euler-NS Smoothness Continuum Program

## Purpose

This note fixes the branch meaning after the May 22 referee audit.

The Euler mirror is not only a viscosity-removal audit of Navier-Stokes. The
audit is the graphing layer for two theorem programs:

1. extract Euler-only smoothness results from the part of the Navier-Stokes road
   that uses transport, pressure, incompressibility, fixed covers, compactness,
   and explicit regularity controls rather than viscosity;
2. push past that Euler smoothness frontier and test whether base
   `Member_E = EVol + EMom` can still hold while one-field smoothness,
   Lagrangian carriers, receiver ledgers, or classical continuation fail.

The controlling case split remains
[referee-audit-ledger.yaml#case_matrix](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/referee-audit-ledger.yaml).

## Continuum Principle

Every major Navier-Stokes surface should have a related Euler surface on the
same conceptual road, but the Euler surface is not identical. The graph has
three useful regions.

### Region 1: Viscosity-Free Smoothness Overlap

These are the surfaces where Euler and Navier-Stokes should look uncannily
close because the proof labor is not really viscosity. The relevant ingredients
are transport geometry, incompressibility, pressure Poisson response, fixed
finite covers, explicit compactness controls, and explicitly assumed
regularity.

Installed rows:

- `ESM.S1`: fixed-interval classical Euler;
- `ESM.S2`: fixed-thickness smooth stationary shear;
- `ESM.C1`: `ELCI.CP.A` under explicit same-cover envelopes;
- `ESM.C2`: positive-control / compactness / Route B under explicit Euler
  controls;
- `ESM.C3`: retained-window native forcing under local smooth center-ball
  bounds.

Program consequence: where an Euler-only theorem proves smoothness here without
viscosity, the corresponding Navier-Stokes surface is smooth at least as a
fixed-positive-viscosity comparison case. This is the part of the Euler mirror
that can strengthen the Navier-Stokes route rather than merely audit it.

## Region 2: Viscosity Divergence

These are the places where Navier-Stokes succeeds because viscosity supplies an
actual proof mechanism.

Installed rows:

- `ESM.V1`: `ACT.KX` absorption scheduler;
- `ESM.V2`: `2nu` lower-collar sink and top-viscous receiver;
- `ESM.V3`: `nu D_N` dyadic damping;
- `ESM.V4`: heat / Stokes / static diffusion;
- `ESM.V5`: selector/export viscous consumers;
- `ESM.V6`: first-rung viscous-center supplier.

Program consequence: these rows are the informative difference. They say what
Navier-Stokes gets from viscosity and what an Euler-only smoothness theorem
would have to replace by inviscid structure.

## Region 3: Euler Beyond The Smoothness Frontier

These are the rows where Euler can keep base equation membership while failing a
stronger smoothness, one-field, Lagrangian, or receiver condition.

Installed rows:

- `ESM.N1`: tangential slip / vortex-sheet weak Euler member;
- `ESM.N2`: stationary unbounded shear with base `Member_E` but failed
  smoothness and receiver ledger;
- `ESM.N3`: zero-thickness limit of smooth shear layers;
- `ESM.N4`: same-datum nonclassical weak branch;
- `ESM.N5`: boundary/axisymmetric blowup comparison;
- `ESM.N6`: shared Pack / non-one-field participation split.

Program consequence: these rows are Euler nonsmoothness candidates inside or
near the class-membership grammar. A local nonsmooth Euler member is already a
local counterexample to "base Euler membership forces classical smoothness."
For `ESM.N1` and `ESM.N2`, that bridge is now explicit: the local slip sheet and
the local unbounded shear both globalize to stationary periodic weak Euler
members, so base global `Member_E` does not imply global classical smoothness or
the receiver ledger. For `ESM.N3`, global smooth stationary periodic shears
converge to the global slip sheet, so finite-`p` closure of smooth Euler does
not preserve one-field smoothness. For `ESM.N4`, Wiedemann closes the global
periodic same-datum weak-branch row. For `ESM.N5`, Chen-Hou closes the
boundary/axisymmetric smooth-data blowup row. For `ESM.N6`, the shared
Pack/non-one-field split is closed as grammar: flux-volume is shared
membership, while one-field coherence is an added regularity layer. The
no-boundary smooth-data finite-time question keeps its own stated hypotheses.

## Working Rule

The May 22 audit is terminal only as a comparison cleanup. It is not the end of
Euler theorem work.

The route now has this order:

```text
NS surface
-> Euler analogue on the same conceptual road
-> ESM classification
-> either Euler-only smoothness extraction,
   viscosity-divergence replacement problem,
   or Euler nonsmooth class-membership witness
```

The useful Navier-Stokes insight comes from the overlap region. The useful Euler
insight comes from pushing beyond that overlap until base membership survives
while smoothness fails, then proving exactly what global consequence that local
failure has.
