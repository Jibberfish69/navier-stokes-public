---
ns_viewer:
  theorem_id: cross-profile-reverse-holder-production-direct-attempt-20260609
  status: failed-reduced-to-scale-normalized-cross-profile-square-reserve
  proof_role: proof_method_pivot
  logical_landing_node: cross_profile_reverse_holder_production
  edge_effect: "Tests whether reverse-Holder / Orlicz / source-Carleson control for selected positive cross-profile Pack terms follows from current profile and active-pulse inputs."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-uniform-pack-cross-term-integrability-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-active-square-residual-tail-reentry-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-source-balanced-active-pulse-reserve-spend-reentry-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-reverseholder-parent-concentration-direct-attempt-note.md
  downstream_consequence: "The reverse-Holder production route needs a scale-normalized cross-profile square/source reserve; pdfs_final remains false."
---

# MPP CrossProfileReverseHolderProduction Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close public Clay
finality and does not license PDF finality.

## Target

The active target is:

```text
CrossProfileReverseHolderProduction.A.
```

It should produce a super-L1 temporal control for selected positive
cross-profile Pack source terms:

```text
reverse-Holder, Orlicz, source-Carleson, active-square, or terminal-layer
Morrey control.
```

## Method Pass

Proof program: CM contrapositive public-finality bridge.

Target role: production theorem for the uniform-integrability anti-atom route.

Logical skeleton: profile separation, source-balanced pulse accounting,
scale-normalized square reserve, and terminal layer exclusion.

Mechanism tested: derive reverse-Holder or source-Carleson control from current
profile orthogonality, finite energy, active-square residual-tail material, and
source-balanced pulse reserve-spend surfaces.

## Direct Reverse-Holder Test

The desired estimate is:

```math
\|g_m^R\|_{L_s^p(-1,0)}\le C_R,
\qquad p>1,
```

where `g_m^R` is the selected positive cross-profile Pack source density on
`B_R`.

Current inputs give only a finite local `L_s^1` source ledger. The terminal
layer

```math
g_m(s)=m1_{(-1/m,0]}(s)
```

has bounded `L^1_s` mass and violates every `L_s^p`, `p>1`, estimate. Profile
separation does not remove this witness after the terminal selector chooses
the shrinking layer.

## Active-Square / Source-Carleson Test

A source-Carleson route would prove:

```text
CrossProfileSourceCarlesonReserve.A
=> CrossProfileReverseHolderProduction.A.
```

An active-square route would prove:

```text
CrossProfileActiveSquareReserve.A
=> CrossProfileReverseHolderProduction.A.
```

The existing active-square residual-tail and source-balanced active-pulse notes
show the production gap. First-moment dissipation and finite energy do not
control square density on shrinking active windows. A source-balanced pulse can
keep order-one normalized mass while its time support shrinks to zero.

For the cross-profile term, the same issue appears with two profiles replacing
one carrier. Raw orthogonality prices unweighted donor energy. The selected
positive Pack term asks for a scale-normalized square/source reserve on the
terminal heat-scale window.

## Diffuse Parent Cloud Test

A reverse-Holder theorem would also follow if diffuse parent clouds were
forbidden:

```text
CrossProfileParentDensityFloor.A:
any order-one selected cross-profile child source has a bounded parent family
carrying a fixed fraction of the mass.
```

The current reverse-Holder parent concentration audit records why this is not
installed. A legal same-fluid parent cloud can spread across many small
predecessors. Each predecessor has small raw quadratic cost, while the
normalized child-feeding source remains order one.

Thus the cross-profile structure does not create a new finite-reserve
contradiction.

## Result

`CrossProfileReverseHolderProduction.A` is not proved from current inputs.

The pass narrows the next non-alias atom to:

```text
ScaleNormalizedCrossProfileSquareReserve.A.
```

Equivalent useful forms are:

```text
CrossProfileSourceCarlesonReserve.A,
CrossProfileActiveSquareReserve.A,
CrossProfileParentDensityFloor.A,
or CrossProfileTerminalLayerMorreyDecay.A.
```

Until one of these is installed and propagated through
`CrossProfileReverseHolderProduction.A`,
`UniformPackCrossTermIntegrability.A`,
`TerminalPositiveCrossProfileSourceControl.A`,
`PositivePackDefectOrthogonality.A`,
`PackCriticalElementStability.A`,
`ProducedMinimalFirstPackBubbleRigidity.A`,
`NoGenuineExitFromSmoothData.A`, and both rendered PDF rereads, both PDF tracks
remain non-final.

## New Live Criticism

`NS-LIVE-20260609-170`: cross-profile reverse-Holder production is not currently
proved. The cross-profile term still permits a selected terminal heat-scale
pulse with finite L1 source mass and order-one normalized positive Pack source.
The active loop must prove `ScaleNormalizedCrossProfileSquareReserve.A`,
`CrossProfileSourceCarlesonReserve.A`, `CrossProfileActiveSquareReserve.A`,
`CrossProfileParentDensityFloor.A`, `CrossProfileTerminalLayerMorreyDecay.A`,
or an equivalent theorem before the reverse-Holder route can feed the CMI final
gate.
