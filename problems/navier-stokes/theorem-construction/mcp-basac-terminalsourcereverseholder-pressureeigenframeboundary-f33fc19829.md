# BASAC.TerminalSourceReverseHolder.PressureEigenframeBoundary

## Status

Failed direct discharge.  This note follows the failed `B_ASAC` no-incoming/no-flux attempt and tests the alternate route:

```math
TerminalSourceReverseHolder.A\quad\text{inside }B_{ASAC}.
```

It also records the pressure/eigenframe boundary.

## Reverse-Hölder target

The desired theorem is a super-`L^1` temporal estimate for the native positive source measure inside the `B_ASAC` tangent class:

```math
\left\|
\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}
\right\|_{L_s^p((-1,0))}
\le C_R,
\qquad p>1.
```

By Holder in time, this implies terminal source anti-concentration:

```math
\mu_m^{src}(B_R\times[-\varepsilon,0])
\le C_R\varepsilon^{1-1/p}+o_m(1),
```

and hence

```math
\mu_*^{src}(B_R\times\{0\})=0.
```

This removes the Zeno terminal atom branch.

## Direct test inside B_ASAC

The class `B_ASAC` supplies terminal equality/tangent organization produced by

```math
ASACDefectMeasure.A
+
TerminalNoFreeSinkEqualityClassProduction.A.
```

This structure does not impose temporal thickness.  A zero-thickness terminal source atom can remain compatible with the equality/tangent class because the class restricts the terminal source geometry, not the time marginal of the positive source measure.

Thus `B_ASAC` does not imply

```math
TerminalSourceReverseHolder.A
```

or

```math
UniformTemporalSourceIntegrability_p.A.
```

## Pressure/eigenframe boundary

The pressure/eigenframe supports are

```math
TerminalPressureHessianNoSustain.A
```

and

```math
OneSidedNearBandMaterialStrainBV.A.
```

They are useful as conditional near-band signed-current support.  They target persistence/sustain of pressure-Hessian/eigenframe strain structure.

They do not pay the full source-weighted positive carrier

```math
|w_j|^2\left[e_j\cdot S_{<j}^{loc}e_j\right]_+
```

on the selected terminal packet family after positive-part extraction.

## Result

The alternate route reduces to one of two still-open inputs:

```math
\boxed{TerminalSourceReverseHolder_{B_ASAC}.A}
```

or

```math
\boxed{B_{ASAC}^{rigid}+ZenoResidueLiouville_{B_{ASAC}^{rigid}}.A.}
```

The pressure/eigenframe route remains support for near-band signed-current control, not a discharge of the positive source-weighted angular depletion theorem.

## Verdict

The B_ASAC reverse-Hölder route remains open.  The next concrete theorem is
either temporal thickness inside B_ASAC or production of a rigid B_ASAC subclass
with a source-residue Liouville theorem.
