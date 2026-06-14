---
ns_viewer:
  theorem_id: source-native-diagonal-density-oscillation-direct-attempt-20260609
  status: failed-uniform-relative-holder-budget-discharge
  proof_role: selector_source_regularization_attempt
  logical_landing_node: uniform-relative-holder-scale-budget
  edge_effect: "Tests SourceNativeDiagonalDensityOscillation.A. Fixed preterminal smoothness gives local continuity of the diagonal density on a regular window, and density-selected centers can supply pointwise lower density, but the Clay-facing branch needs a uniform relative Holder scale on the selected entrance-sector cells plus retained same-strip mass and finite frame geometry. The current sources do not provide that scale/loss budget independent of the cap-floor loop."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-non-circular-qsp-source-primitive-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-diagonal-density-source-oscillation-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-diagonal-density-holder-stopping-retained-mass-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mcp-source-packet-nonclosure-and-exact-primitive-boundary-2a4f79a676.md
    - problems/navier-stokes/theorem-construction/sectorwise-relative-oscillation-of-diagonal-density.md
  downstream_consequence: "The next theorem atom is UniformRelativeHolderScaleBudget.A: produce a source-native, same-strip finite entrance-sector selection with relative diagonal-density oscillation and retained mass, without using InitialQSPCoreCapMassFloor.A, DensityAdaptedStoppingLossBudget.A, DensityGoodSetFiniteFrameCoverage.A, RetainedDensityGoodCoreCapOccupancy.A, or FinitePositiveReferenceShellBumpPacket.A as premises."
---

# MPP Source-Native Diagonal-Density Oscillation Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close
`SourceNativeDiagonalDensityOscillation.A`, `QSP.11p`, `QSP.11r`,
`FinitePositiveReferenceShellBumpPacket.A`, `PTCShapeNormalization.A`,
`D.7mq`, Pack survival, or CMI finality.

## Target

The active target is:

```text
SourceNativeDiagonalDensityOscillation.A.
```

It must prove, from source-native estimates on the same selector-good strip,
one of:

```text
sectorwise relative oscillation of the diagonal density,
```

or

```text
density-selected parent-center lower density plus parent-cell Holder control.
```

It must do this without using the cap-floor / density-retention / shell-bump
loop as a premise.

## Method Pass

Proof program: Navier-Stokes CM contrapositive support route.

Target object: source-native selector regularity needed for `QSP.11p` or
`QSP.11r`.

Object role: supplier/bridge, not final CM class exit.

Logical skeleton: direct regularity attempt with uniform-scale pressure.

Mechanism: local continuity, density-selected centers, relative Holder
oscillation, finite entrance-sector selection, and retained same-strip mass.

## Attempt 1: Use Fixed Preterminal Smoothness

On a fixed regular window strictly before the alleged terminal time, the
velocity is smooth and the source-defined diagonal density is locally regular
where its defining objects are regular. That gives a finite local modulus on a
fixed compact subregion.

This is not yet the theorem needed by `QSP.11p` or `QSP.11r`. The needed
estimate is relative to the parent average:

```math
[\delta_{j,Q}]_{C^\alpha(Q_s^{ent})}
\operatorname{diam}(Q_s^{ent})^\alpha
\le
\gamma_{\mathrm{diag}}\bar\delta_j(Q),
```

with a uniform `\gamma_{\mathrm{diag}}<1` on the selected finite
entrance-sector family.

Fixed preterminal smoothness gives a finite seminorm after the strip is fixed.
It does not by itself give the uniform relative scale

```math
\operatorname{diam}(Q_s^{ent})
\le
C_{\mathrm{diag}}
\left(
\frac{\bar\delta_j(Q)}
{[\delta_{j,Q}]_{C^\alpha}}
\right)^{1/\alpha}
```

while also preserving the selected finite-frame geometry and retained mass as
the terminal sequence runs.

## Attempt 2: Choose Density-Selected Centers

For a nonnegative density with positive parent average, one can choose a
Lebesgue point `a_Q` in the set where

```math
\delta_{j,Q}(a_Q)\ge \bar\delta_j(Q).
```

This pays the center lower-density half, provided that the selector is allowed
to choose centers this way without changing the downstream branch.

It does not pay the cellwise oscillation. To move from a good center to the
whole terminal entrance-sector cell, the proof still needs the relative Holder
scale above. If that scale is chosen too small or on the wrong subset, the
finite-frame branch loses same-strip synchronization, cap coverage, or retained
mass.

## Attempt 3: Use Lusin/Egorov Regularization

Measurable regularization can make a density continuous on a large closed set.
That is still not enough for the branch. The branch needs:

```text
finite entrance-sector cells,
relative oscillation on those cells,
centers inside the retained cells,
finite shell/core-cap geometry unchanged,
transport and CG packets on the same strip,
and a quantitative loss budget leaving positive retained mass.
```

Lusin/Egorov regularization gives a possible method for constructing the next
theorem, but it does not already provide the required finite, same-strip,
loss-budgeted selector packet.

## Result

`SourceNativeDiagonalDensityOscillation.A` is not proved from the installed
inputs.

The narrow next theorem atom is:

```text
UniformRelativeHolderScaleBudget.A:
produce a source-native, same-strip finite entrance-sector selection with
relative diagonal-density oscillation and retained positive mass, with the
finite shell/core-cap family, transport packet, exact-potential comparison, CG
gap, and selector-strain packet still synchronized.
```

This is the non-circular form of the density regularization problem. It must
not use the finite-frame cap-floor loop as a premise.

## New Live Criticism

`NS-LIVE-20260609-146`: `SourceNativeDiagonalDensityOscillation.A` is not
proved. Fixed preterminal smoothness and density-selected centers do not supply
the uniform relative Holder scale, finite entrance-sector selection, retained
same-strip mass, and downstream packet synchronization required by
`QSP.11p`/`QSP.11r`. The next atom is
`UniformRelativeHolderScaleBudget.A`.
