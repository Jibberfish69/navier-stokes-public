---
ns_viewer:
  theorem_id: source-native-finite-cap-bump-lower-bound-direct-attempt-20260609
  status: failed-direct-bump-lower-bound-discharge-comparability-open
  proof_role: selector_source_bump_floor_reentry
  logical_landing_node: source-native-finite-cap-bump-comparability
  edge_effect: "Tests SourceNativeFiniteCapBumpLowerBound.A. Positive total selector mass and material-gap carrier tether do not force a positive lower bound for every fixed QSP cap/shell bump; the selected measure can avoid a finite bump while retaining mass elsewhere. The installed QSP route pays the implication from finite bump comparability or reference shell-bump comparability to the needed lower bounds, but that comparability remains a source input. The next atom is SourceNativeFiniteCapBumpComparability.A."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-source-native-cap-family-density-floor-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/selector-quadratic-sign-separation-packet.md
    - problems/navier-stokes/theorem-construction/mcp-source-packet-nonclosure-and-exact-primitive-boundary-2a4f79a676.md
    - problems/navier-stokes/theorem-construction/mcp-remaining-source-packet-closure-audit-for-qsp-11r-to-sg-4b-a99d570ec9.md
  downstream_consequence: "The next theorem atom is SourceNativeFiniteCapBumpComparability.A: prove, from source-native estimates on the same selector-good strip, finite cap/shell bump comparability or shell equidistribution strong enough to give the positive lower bump packet, without using the finite-frame branch or the cap-floor loop."
---

# MPP Source-Native Finite-Cap Bump Lower-Bound Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close
`SourceNativeFiniteCapBumpLowerBound.A`,
`SourceNativeCapFamilyDensityFloor.A`,
`CapFamilyCompatibleRegularCoreSelection.A`, Pack survival, or CMI finality.

## Target

The active target is:

```text
SourceNativeFiniteCapBumpLowerBound.A.
```

It must prove a positive lower bound for every fixed finite QSP cap bump /
shell bump from source-native estimates on the same selector-good strip,
without using `InitialQSPCoreCapMassFloor.A`,
`FinitePositiveReferenceShellBumpPacket.A`, or the finite-frame branch those
bounds are meant to supply.

## Method Pass

Proof program: Navier-Stokes CM contrapositive support route.

Target object: source-native finite cap/shell bump lower-bound theorem.

Object role: supplier/bridge, not final CM class exit.

Logical skeleton: test direct lower-bound sources; isolate the installed
comparability route.

Mechanism: finite smooth bump lower packet, reference shell-bump packet, cap
comparability, shell equidistribution, and support-avoidance countermodels.

## Attempt 1: Positive Total Selector Mass

This fails. Let `\psi` be one fixed nonnegative cap bump supported in a
required QSP cap. A selector/shape measure can have positive total mass while
being supported outside `\operatorname{supp}\psi`. Then

```math
\int \psi\,d\nu=0
```

even though `\nu(S)>0`.

Thus total selector mass does not prove the finite bump lower packet.

## Attempt 2: Material-Gap Carrier Tether

The material-gap route gives an angular tether between entrance directions and
one pairwise reference carrier, such as the oriented right-singular carrier.
That tether transfers a lower bump packet after the packet already exists for
the reference carrier.

It does not create positive mass for every fixed cap bump. A reference carrier
can stay outside the support of one bump, and then the tether keeps it outside
that bump rather than forcing a lower bound inside it.

So the material-gap tether is transport for an already positive packet, not a
source-native proof of positivity for all finite bumps.

## Installed Conditional Route

The installed QSP surfaces pay the composition:

```text
finite cap/bump comparability to a positive reference measure
=> finite smooth bump lower packet
=> finite cap occupancy
=> QSP sign separation.
```

This is Corollary `QSP.F` on the cap-bump side. On the graph/shell route,
Proposition `QSP.U` similarly uses a positive reference shell-bump packet plus
finite shell comparability to supply the graph and oscillation sides.

The source-packet audits identify this exact comparability/equidistribution
input as open. The current canonical surfaces do not derive it from the
Navier-Stokes source data.

## Result

`SourceNativeFiniteCapBumpLowerBound.A` is not proved from the installed
inputs.

The direct lower-bound target narrows to the source theorem that would actually
pay it:

```text
SourceNativeFiniteCapBumpComparability.A:
prove, from source-native estimates on the same selector-good strip, finite
cap/shell bump comparability or shell equidistribution strong enough to give
the positive lower bump packet, without using the finite-frame branch or the
cap-floor loop.
```

Until that comparability/equidistribution theorem is paid, the finite bump
lower bound is an assumption in the QSP chain rather than a Clay-facing proof
step.

## New Live Criticism

`NS-LIVE-20260609-150`: `SourceNativeFiniteCapBumpLowerBound.A` is not proved.
Positive total selector mass and material-gap carrier tether do not force a
positive lower bound for every fixed QSP cap/shell bump. The proof still lacks
`SourceNativeFiniteCapBumpComparability.A`: a non-circular source-native
finite cap/shell bump comparability or shell-equidistribution theorem on the
same selector-good strip.
