# Gate 3 — StableChannelTailControl.A + PressureTailHardyTransportedShells.A

Date: 2026-05-17

## Status

Failed from installed `B_ASAC` inputs.

## Target

Prove the spatial component of transported-cylinder no-flux through

```math
StableChannelTailControl.A
+
PressureTailHardyTransportedShells.A.
```

The transported-boundary package gives transported-boundary tightness only together with terminal time-face anti-atom control; that combined statement is the condition needed to close `ZenoResidueLiouville_{B_ASAC}.A`.

## Stable-channel tail test

Frozen-strain transported geometry splits boundary flux into unstable outgoing, stable incoming, and mixed sectors. The unstable sector has favorable outward behavior. The stable sector is the obstruction: contracting transported directions can bring ancient far-field mass into the terminal region.

Fixed-cylinder compactness controls compact subsets only. Original finite global energy rescales as

```math
\|u^{(m)}(s)\|_{L^2_y}^2=r_m^{-1}\|u(t_m+r_m^2s)\|_{L^2_x}^2,
```

so it does not produce a uniform ancient tail bound in tangent variables. Selected no-parent ancestry controls the selected source graph, while boundary flux includes kinetic energy, pressure work, and nonselected packet flow.

## Pressure-tail Hardy test

Pressure work on transported shells is

```math
\int_{\partial \mathcal C_R^{tr}}p\,u\cdot n_{tr}.
```

Spherical Hardy cancellation does not transfer directly to anisotropic transported shells. The transported normals, measures, and weights introduce strain-geometry errors. Mean subtraction removes scalar pressure averages while leaving pressure oscillation coupled to velocity flux.

No installed shell-summation theorem controls these pressure-tail terms.

## Terminal time-face residue

Even if the spatial flux package were available, a compact terminal layer

```math
\rho(y)m1_{(-1/m,0]}(s)dy ds
```

can sit inside all large transported cylinders with zero lateral flux and a nonzero terminal time-face atom. Thus the spatial package requires the separate anti-atom theorem.

## Verdict

Gate 3 fails from installed inputs. The gate reduces to three uninstalled theorems:

```math
StableChannelTailControl.A,
\qquad
PressureTailHardyTransportedShells.A,
\qquad
BASACTimeFaceAntiAtom.A.
```

Proceed to Gate 4: `PressureSourceAC.A / PurePressureSustainResidueLiouville.A`.
