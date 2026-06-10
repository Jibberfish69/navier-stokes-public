---
ns_viewer:
  theorem_id: non-circular-qsp-source-primitive-direct-attempt-20260609
  status: failed-unconditional-source-primitive-discharge
  proof_role: selector_source_cycle_break_attempt
  logical_landing_node: source-native-diagonal-density-oscillation
  edge_effect: "Tests NonCircularQSPSourcePrimitive.A after the finite shell-bump route exposed a dependency cycle. The current canonical surfaces prove the implication chain after QSP.11p/QSP.11r, shell comparability, C2 collar control, exact-potential comparison, CG gap, and same-strip synchronization are supplied. They do not prove QSP.11p/QSP.11r from source-native estimates. The narrow next atom is SourceNativeDiagonalDensityOscillation.A: prove sectorwise relative oscillation of the diagonal density, or the density-selected parent-center plus parent-cell Holder packet, on the same selector-good strip without using the cap-floor/shell-bump loop as a premise."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-finite-positive-reference-shell-bump-packet-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mcp-remaining-source-packet-closure-audit-for-qsp-11r-to-sg-4b-a99d570ec9.md
    - problems/navier-stokes/theorem-construction/mcp-source-packet-nonclosure-and-exact-primitive-boundary-2a4f79a676.md
    - problems/navier-stokes/theorem-construction/sectorwise-relative-oscillation-of-diagonal-density.md
    - problems/navier-stokes/theorem-construction/terminal-sector-center-density-and-local-holder-oscillation.md
  downstream_consequence: "The next theorem atom is SourceNativeDiagonalDensityOscillation.A: prove QSP.11p, or prove the QSP.11r parent-center/Holder sufficient packet, from source-native estimates on the same strip and independent of InitialQSPCoreCapMassFloor.A, DensityAdaptedStoppingLossBudget.A, DensityGoodSetFiniteFrameCoverage.A, RetainedDensityGoodCoreCapOccupancy.A, and FinitePositiveReferenceShellBumpPacket.A."
---

# MPP Non-Circular QSP Source Primitive Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close
`NonCircularQSPSourcePrimitive.A`, `QSP.11p`, `QSP.11r`,
`FinitePositiveReferenceShellBumpPacket.A`, `PTCShapeNormalization.A`,
`D.7mq`, Pack survival, or CMI finality.

## Target

The active target is:

```text
NonCircularQSPSourcePrimitive.A.
```

It must supply one of the non-circular entrances left by the finite shell-bump
cycle:

```text
QSP.11p from source-native estimates,
QSP.11r from source-native estimates,
or an independent selected/right-singular shell-bump mass floor.
```

The target is non-circular: it may not use
`InitialQSPCoreCapMassFloor.A`, `DensityAdaptedStoppingLossBudget.A`,
`DensityGoodSetFiniteFrameCoverage.A`, `RetainedDensityGoodCoreCapOccupancy.A`,
or `FinitePositiveReferenceShellBumpPacket.A` as premises.

## Method Pass

Proof program: Navier-Stokes CM contrapositive support route.

Target object: source-native selector primitive that breaks the finite-frame
cap-floor cycle.

Object role: supplier/bridge, not the final CM class exit.

Logical skeleton: direct proof attempt with counterexample pressure against
unproved source packets.

Mechanism: diagonal-density oscillation, parent-center lower density, Holder
control, shell equidistribution, right-singular carrier mass, and common-strip
synchronization.

## Attempt 1: Prove `QSP.11p` From The Current Diagonal Density

`QSP.11p` is sectorwise relative oscillation of the diagonal density around the
parent-cell average:

```math
\operatorname*{ess\,sup}_{a\in Q_s^{ent}}
\left|\delta_{j,Q}(a)-\bar\delta_j(Q)\right|
\le
\sigma_{\mathrm{diag}}\bar\delta_j(Q),
\qquad
0\le \sigma_{\mathrm{diag}}<1.
```

The current installed source data give a nonnegative diagonal density with a
positive parent average. That is not enough. A nonnegative `L^1` density may
have positive average on `Q` while oscillating arbitrarily on a terminal sector
or vanishing at a chosen label center. This is exactly the nonclosure model
recorded in the source-packet boundary audit.

So `QSP.11p` is not proved from the current density representation alone.

## Attempt 2: Prove `QSP.11r` By A Density-Selected Center

The parent-center lower-density half can be supplied if the selector is allowed
to choose the parent center from the set where
`\delta_{j,Q}\ge \bar\delta_j(Q)`. That gives a center with

```math
\delta_{j,Q}(a_Q)\ge \bar\delta_j(Q).
```

This does not prove `QSP.11r`. The other half is parent-cell Holder control:

```math
[\delta_{j,Q}]_{C^\alpha(Q)}\operatorname{diam}(Q)^\alpha
\le
\gamma_{\mathrm{diag}}^{par}\bar\delta_j(Q).
```

The current canonical surfaces treat that Holder estimate as a source input.
They do not derive it from Navier-Stokes smoothness before the terminal limit,
from the selector construction, or from the finite-frame branch. Using the
density-adapted stopping/cap-floor loop to get it would be the cycle already
exposed in the previous pass.

So `QSP.11r` is not proved unconditionally.

## Attempt 3: Prove Independent Right-Singular Shell-Bump Mass

The material-gap overlap theorem gives an angular tether between the entrance
direction and the oriented right-singular carrier. That tether transports a
positive shell-bump packet once such a packet exists.

It does not create positive lower bump mass for the right-singular carrier.
The source-packet audit also records finite shell comparability and shell
equidistribution as separate source inputs. A measure can concentrate away from
the selected shell while keeping positive total mass, so shell geometry alone
does not prove the selected carrier shell-bump mass floor.

Thus the independent right-singular shell-bump route is also not installed.

## Result

`NonCircularQSPSourcePrimitive.A` is not proved from the installed inputs.

The narrow next theorem atom is:

```text
SourceNativeDiagonalDensityOscillation.A:
prove sectorwise relative oscillation of the diagonal density, or prove the
density-selected parent-center plus parent-cell Holder packet, from
source-native estimates on the same selector-good strip, independent of the
cap-floor / density-retention / shell-bump loop.
```

The branch-local implication chain is already present:

```text
QSP.11p or QSP.11r
+ finite shell comparability
+ regular-window C2 collar control
+ exact-potential comparison
+ reference CG simple-top gap
+ same-strip synchronization
=> PTC-Shape + PTC-Lin
=> D.7mq.
```

The missing part is the source-native theorem that actually supplies the
diagonal-density oscillation or Holder packet on that same strip.

## New Live Criticism

`NS-LIVE-20260609-145`: `NonCircularQSPSourcePrimitive.A` is not proved. The
repo surfaces prove the chain after `QSP.11p`/`QSP.11r` and the other source
packets are supplied, but they do not prove the source-native diagonal-density
oscillation or parent-cell Holder packet. The next atom is
`SourceNativeDiagonalDensityOscillation.A`, independent of the cap-floor /
density-retention / shell-bump loop.
