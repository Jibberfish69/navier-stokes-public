---
ns_viewer:
  theorem_id: source-native-cap-family-density-floor-direct-attempt-20260609
  status: failed-unconditional-cap-floor-discharge-finite-bump-lower-bound-open
  proof_role: selector_source_cap_floor_reentry
  logical_landing_node: source-native-finite-cap-bump-lower-bound
  edge_effect: "Tests SourceNativeCapFamilyDensityFloor.A. Positive total diagonal-density mass, finite regularity on a retained core, and degree-2/isotropic moment information do not force positive mass in every predetermined QSP cap; the QSP cross-measure counterexample already shows that even exact second-moment isotropy can miss a required cap. The exact non-circular source theorem needed next is SourceNativeFiniteCapBumpLowerBound.A: prove lower bounds for the fixed finite cap bump tests from source-native estimates on the same selector-good strip."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-cap-family-compatible-regular-core-selection-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/selector-quadratic-sign-separation-packet.md
    - problems/navier-stokes/theorem-construction/mcp-source-packet-nonclosure-and-exact-primitive-boundary-2a4f79a676.md
    - problems/navier-stokes/theorem-construction/mpp-finite-positive-reference-shell-bump-packet-direct-attempt-20260609.md
  downstream_consequence: "The next theorem atom is SourceNativeFiniteCapBumpLowerBound.A: prove a positive lower bound for every fixed finite QSP cap bump / shell bump from source-native estimates on the same selector-good strip, without using InitialQSPCoreCapMassFloor.A, FinitePositiveReferenceShellBumpPacket.A, or the finite-frame branch it is meant to supply."
---

# MPP Source-Native Cap-Family Density-Floor Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close
`SourceNativeCapFamilyDensityFloor.A`,
`CapFamilyCompatibleRegularCoreSelection.A`,
`UniformRelativeHolderScaleBudget.A`, `QSP.11p`, `QSP.11r`, Pack survival, or
CMI finality.

## Target

The active target is:

```text
SourceNativeCapFamilyDensityFloor.A.
```

It must prove, from source-native estimates on the same selector-good strip
and without using the cap-floor / shell-bump / finite-frame loop, that every
predetermined finite entrance-sector / shell-core-cap cell has positive
diagonal-density mass before regularization.

## Method Pass

Proof program: Navier-Stokes CM contrapositive support route.

Target object: non-circular source-native capwise support theorem.

Object role: supplier/bridge, not final CM class exit.

Logical skeleton: test the available source inputs against capwise support;
reduce to the exact finite bump lower-bound theorem consumed by QSP.

Mechanism: positive mass countermodels, QSP cap occupancy, smooth bump lower
packets, cap comparability, and source-packet nonclosure.

## Attempt 1: Positive Total Diagonal-Density Mass

This fails. Positive total mass on the selector-good strip does not imply
positive mass in every predetermined cell.

For two required cells `E_1,E_2`, the density

```math
\delta=\mathbf 1_{E_1}
```

has positive total integral, but

```math
\int_{E_2}\delta\,d\mu=0.
```

So no source-native cap-family floor follows from the total-mass input used by
the previous regular-core pass.

## Attempt 2: Regularity On One Retained Core

This also fails. Lusin regularization and finite small-diameter covering
improve the density only where a positive-density set has already been found.
They do not create density mass in a missing predetermined cap.

Thus the regular-core theorem from the previous pass is a retention theorem,
not a support theorem.

## Attempt 3: Moment Or Isotropy Information

The installed QSP packet already records the relevant obstruction. Proposition
`QSP.D` gives a cross measure that is exactly degree-2 isotropic but still has
zero mass in a required finite eigen-cap.

Therefore even exact second-moment normalization cannot prove the finite cap
occupancy packet by itself. A fortiori, the present diagonal-density and
shape-moment information does not prove `SourceNativeCapFamilyDensityFloor.A`.

## Exact Conditional Route Already Installed

The QSP packet gives the exact finite theorem that would be enough. For fixed
smooth bumps `\psi_{\pm,r}` supported inside the finite QSP caps, a uniform
lower packet

```math
\int \psi_{\pm,r}\,d\nu_J^{shape}(a,t)\ge \beta_\ast>0
\qquad
\text{for every }r,\pm
\tag{SNCF.1}
```

implies cap occupancy by `QSP.E`. Finite cap/bump comparability to the
reference spherical measure implies `(SNCF.1)` by `QSP.F`. On the shell route,
the analogous positive reference shell-bump packet plus shell comparability
supplies the graph and oscillation sides by `QSP.U`.

Those are composition theorems. They do not prove the finite bump lower bounds
from the Navier-Stokes source data.

## Result

`SourceNativeCapFamilyDensityFloor.A` is not proved from the installed inputs.

The actual next theorem atom is:

```text
SourceNativeFiniteCapBumpLowerBound.A:
prove a positive lower bound for every fixed finite QSP cap bump / shell bump
from source-native estimates on the same selector-good strip, without using
InitialQSPCoreCapMassFloor.A, FinitePositiveReferenceShellBumpPacket.A, or the
finite-frame branch it is meant to supply.
```

Equivalently, an even stronger acceptable result is source-native finite
cap/bump comparability or shell equidistribution on the same selected strip.
Without one of these, the branch returns to the known cap-floor/shell-bump
cycle rather than becoming a Clay-facing proof.

## New Live Criticism

`NS-LIVE-20260609-149`: `SourceNativeCapFamilyDensityFloor.A` is not proved.
Positive total diagonal-density mass, regularity on one retained core, and
degree-2 moment/isotropy information do not force positive density in every
predetermined finite QSP cap. The proof still lacks
`SourceNativeFiniteCapBumpLowerBound.A`: a non-circular source-native theorem
giving positive lower bounds for every fixed finite QSP cap bump / shell bump
on the same selector-good strip.
