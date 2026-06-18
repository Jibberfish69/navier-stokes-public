---
ns_viewer:
  theorem_id: source-native-finite-cap-bump-comparability-direct-attempt-20260609
  status: failed-unconditional-comparability-discharge-angular-equidistribution-open
  proof_role: selector_source_comparability_reentry
  logical_landing_node: source-native-selector-angular-equidistribution
  edge_effect: "Tests SourceNativeFiniteCapBumpComparability.A. Finite nets, total selector mass, incompressibility, and material-gap tether do not imply cap/shell bump comparability; a selected pair-direction measure may remain anisotropic or avoid one finite bump. The installed QSP route consumes comparability as a source packet. The next atom is SourceNativeSelectorAngularEquidistribution.A: prove a same-strip angular equidistribution or quantitative nonconcentration theorem for the selected pair/shape measure."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-source-native-finite-cap-bump-lower-bound-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/selector-quadratic-sign-separation-packet.md
    - problems/navier-stokes/theorem-construction/mcp-source-packet-nonclosure-and-exact-primitive-boundary-2a4f79a676.md
    - problems/navier-stokes/theorem-construction/mcp-remaining-source-packet-closure-audit-for-qsp-11r-to-sg-4b-a99d570ec9.md
  downstream_consequence: "The next theorem atom is SourceNativeSelectorAngularEquidistribution.A: prove that the selected pair/shape direction measure on the same selector-good strip is quantitatively nonconcentrated across the fixed finite QSP cap/shell bump family, without using the finite-frame branch or the cap-floor loop."
---

# MPP Source-Native Finite-Cap Bump Comparability Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close
`SourceNativeFiniteCapBumpComparability.A`,
`SourceNativeFiniteCapBumpLowerBound.A`, Pack survival, or CMI finality.

## Target

The active target is:

```text
SourceNativeFiniteCapBumpComparability.A.
```

It must prove, from source-native estimates on the same selector-good strip,
finite cap/shell bump comparability or shell equidistribution strong enough to
give the positive lower bump packet, without using the finite-frame branch or
the cap-floor loop.

## Method Pass

Proof program: Navier-Stokes CM contrapositive support route.

Target object: source-native finite bump comparability theorem.

Object role: supplier/bridge, not final CM class exit.

Logical skeleton: test whether the current source facts force finite bump
comparability; isolate the angular spreading theorem that would actually do
it.

Mechanism: selected pair-direction measure, finite cap/shell bump tests,
reference spherical values, angular tether, nonconcentration, and
equidistribution.

## Attempt 1: Finite Net Or Finite Test Family

The finiteness of the QSP bump list does not prove comparability. It only
makes a comparison theorem finite once one has a source mechanism.

A finite measure can be supported outside the support of one finite bump while
having positive total mass and while satisfying unrelated estimates. Then its
integral against that bump is zero, so it is not comparable to the positive
reference spherical value.

## Attempt 2: Incompressibility Or Smooth Flow Alone

Incompressibility preserves volume in physical space. It does not force the
selected angular pair-direction measure on the active selector-good strip to
look like spherical measure on the finite QSP bump family.

Smooth transport can carry an anisotropic angular measure smoothly. Smoothness
and incompressibility by themselves do not create missing angular directions.

## Attempt 3: Material-Gap Tether

The material-gap tether compares entrance directions to a chosen carrier such
as the oriented right-singular direction. It transfers a bump packet once a
positive packet exists on that carrier.

It does not prove that the carrier distribution is comparable to a positive
reference distribution across all fixed cap/shell bumps. A tethered
concentrated carrier remains concentrated.

## Installed Conditional Route

The installed route is exact:

```text
finite bump comparability / shell equidistribution
=> positive lower finite bump packet
=> cap occupancy
=> QSP sign separation
=> finite-frame branch.
```

This pass does not challenge that implication. It confirms that the implication
is still waiting on a source theorem that spreads or nonconcentrates the
selected angular measure on the same strip.

## Result

`SourceNativeFiniteCapBumpComparability.A` is not proved from the installed
inputs.

The next theorem atom is:

```text
SourceNativeSelectorAngularEquidistribution.A:
prove that the selected pair/shape direction measure on the same selector-good
strip is quantitatively nonconcentrated across the fixed finite QSP cap/shell
bump family, without using the finite-frame branch or the cap-floor loop.
```

Equivalently, prove a finite discrepancy bound against the reference spherical
or shell measure that is smaller than the reference mass of every bump in the
finite list. That would pay the comparability and lower-bound
packets. The current repo surfaces do not yet prove such an angular spreading
mechanism from the Navier-Stokes source data.

## New Live Criticism

`NS-LIVE-20260609-151`: `SourceNativeFiniteCapBumpComparability.A` is not
proved. Finite test lists, positive total mass, smooth incompressible
transport, and material-gap tether do not force finite cap/shell bump
comparability. The proof still lacks
`SourceNativeSelectorAngularEquidistribution.A`: a same-strip source-native
angular equidistribution or quantitative nonconcentration theorem for the
selected pair/shape direction measure across the fixed QSP cap/shell bump
family.
