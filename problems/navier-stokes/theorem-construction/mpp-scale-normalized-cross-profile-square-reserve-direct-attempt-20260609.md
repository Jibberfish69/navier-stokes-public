---
ns_viewer:
  theorem_id: scale-normalized-cross-profile-square-reserve-direct-attempt-20260609
  status: failed-reduced-to-cross-profile-parent-density-floor
  proof_role: proof_method_pivot
  logical_landing_node: scale_normalized_cross_profile_square_reserve
  edge_effect: "Tests whether packet Bessel/parent-square machinery gives the needed cross-profile scale-normalized reserve."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-cross-profile-reverse-holder-production-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-parent-square-embed-and-scalecritical-reserve-reduction-20260505.md
    - problems/navier-stokes/theorem-construction/mcp-scalenormalizedparentinverse-direct-attempt-20260504.md
    - problems/navier-stokes/theorem-construction/mpp-positive-active-carleson-reserve-direct-audit-note.md
  downstream_consequence: "The cross-profile reserve still needs a parent-density floor or equivalent anti-diffuse-parent theorem; pdfs_final remains false."
---

# MPP ScaleNormalizedCrossProfileSquareReserve Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close public Clay
finality and does not license PDF finality.

## Target

The active target is:

```text
ScaleNormalizedCrossProfileSquareReserve.A.
```

It should provide the reserve needed by the cross-profile reverse-Holder /
source-Carleson route:

```text
selected positive cross-profile Pack source
<= scale-normalized square/source reserve + paid legal losses.
```

## Method Pass

Proof program: CM contrapositive public-finality bridge.

Target role: production theorem for cross-profile temporal anti-atom control.

Logical skeleton: packet Bessel embedding, parent square reserve, positive
source selection, and anti-diffuse-parent lower density.

Mechanism tested: use existing parent-square / Bessel machinery to price the
selected positive cross-profile source term.

## What The Existing Square Embedding Pays

The parent-square note proves a real conditional embedding under packet Bessel
and legal kernel hypotheses:

```math
\sum_P
\left|
\sum_{P^-\prec P}K(P,P^-)a_{P^-}
\right|^2
\le
C_{\mathrm{Bessel}}
\sum_{P^-}|a_{P^-}|^2.
```

That controls a square of the parent synthesis. It is useful support.

The live Pack source is the one-sided, scale-normalized, child-weighted object:

```math
\sum_P
\left[
B_P
\sum_{P^-\prec P}K(P,P^-)A_{P^-}
\right]_+.
```

To turn the square embedding into the desired reserve, one still needs a
scale-normalized bridge from the positive child-weighted source to the square
ledger.

## Diffuse Positive Parentage Test

The direct obstruction is a diffuse legal parent cloud:

```math
\pi_P={1\over M}\sum_{\alpha=1}^M\delta_{P^-_\alpha},
\qquad M\to\infty.
```

Every bounded selector captures only a vanishing fraction of the mass. Raw
quadratic donor cost can tend to zero while the normalized positive
child-feeding source remains order one after the selected terminal scaling.

This is the same mismatch recorded in the scale-normalized parent-inverse and
positive-active reserve audits. Finite dyadic banding and raw orthogonality
price the wrong ledger.

## Cross-Profile Variant

The cross-profile case does not remove the diffuse cloud. It adds another
profile label to the parent/child interaction, while the terminal selector can
still choose the same heat-scale child window where the normalized positive
source is order one.

To close the cross-profile reserve, one needs one of:

```text
CrossProfileParentDensityFloor.A:
order-one selected child source forces a bounded parent subfamily carrying a
fixed mass fraction;
```

```text
CrossProfileActiveSquareReserve.A:
the selected cross-profile source controls an active-square density with a
finite scale-normalized reserve;
```

```text
CrossProfileTerminalLayerMorreyDecay.A:
the selected cross-profile source has a terminal-layer decay modulus strong
enough to forbid zero-thickness concentration.
```

None is installed by the existing square embedding alone.

## Result

`ScaleNormalizedCrossProfileSquareReserve.A` is not proved from current inputs.

The pass narrows the next non-alias atom to:

```text
CrossProfileParentDensityFloor.A.
```

Equivalent useful forms are:

```text
CrossProfileActiveSquareReserve.A,
CrossProfileTerminalLayerMorreyDecay.A,
or CrossProfilePositiveSourceAntiDiffusion.A.
```

Until one of these is installed and propagated through
`ScaleNormalizedCrossProfileSquareReserve.A`,
`CrossProfileReverseHolderProduction.A`,
`UniformPackCrossTermIntegrability.A`,
`TerminalPositiveCrossProfileSourceControl.A`,
`PositivePackDefectOrthogonality.A`,
`PackCriticalElementStability.A`,
`ProducedMinimalFirstPackBubbleRigidity.A`,
`NoGenuineExitFromSmoothData.A`, and both rendered PDF rereads, both PDF tracks
remain non-final.

## New Live Criticism

`NS-LIVE-20260609-171`: the scale-normalized cross-profile square reserve is
not currently proved. Existing parent-square/Bessel machinery controls a square
embedding under legal packet hypotheses, but it does not convert the selected
one-sided child-weighted positive Pack source into a finite scale-normalized
reserve against diffuse positive parentage. The active loop must prove
`CrossProfileParentDensityFloor.A`, `CrossProfileActiveSquareReserve.A`,
`CrossProfileTerminalLayerMorreyDecay.A`,
`CrossProfilePositiveSourceAntiDiffusion.A`, or an equivalent theorem before
the reserve route can feed the CMI final gate.
