# Affine Material Readout To Fixed Hs Reduction

## Target

Study:

```text
AffineMaterialReadoutToFixedHs.A
```

Desired statement:

```text
An affine or material-frame readout on the terminal atlas gives a bounded fixed-coordinate Hs(T3) readout for the original solution.
```

## Main observation

Affine/material packet estimates live in moving ellipsoidal coordinates. The public readout is a fixed-coordinate Sobolev norm.

To transfer from moving affine coordinates to fixed coordinates, one needs a
bounded pullback operator. For a linear affine chart
`x=F(t)y+b(t)` and `g(y)=u(F(t)y+b(t),t)`, the exact integer-Sobolev estimate is

```math
\|u(\cdot,t)\|_{H_x^s}
\le
C_s |\det F(t)|^{1/2}
\max_{0\le k\le s}\|F(t)^{-1}\|^k
\|g(\cdot,t)\|_{H_y^s}.
\tag{AMR.1}
```

When `det F(t)=1`, the volume factor disappears, but the inverse-stretch factor
remains. Thus the fixed-coordinate readout follows from the affine/material
readout only under a uniform ellipticity bound for `F(t)` through depth `s`.
For a genuinely material nonlinear chart `x=\Phi_t(y)`, the corresponding input
is the pullback theorem under explicit chart hypotheses:

```math
0<c_J\le |\det D\Phi_t(y)|\le C_J,
\qquad
\|D\Phi_t\|_{W^{s-1,\infty}}
+
\|D\Phi_t^{-1}\|_{W^{s-1,\infty}}
\le M_J.
\tag{AMR.2}
```

Under `(AMR.2)`,

```math
\|u(\cdot,t)\|_{H_x^s}
\le
C_s(c_J,C_J,M_J)\,
\|u\circ\Phi_t\|_{H_y^s}.
\tag{AMR.3}
```

So the metric-comparability factor is not a scale estimate. It is the operator
norm of the affine or material pullback, controlled by determinant bounds,
condition number, and finite-depth derivatives of the chart and inverse chart.

## Obstruction

Incompressibility gives volume preservation:

```text
det F = 1.
```

Volume preservation does not control anisotropic distortion. The model family

```text
F_lambda = diag(lambda, lambda^{-1}, 1),  lambda -> infinity
```

has determinant one and unbounded condition number.

So same-fluid ancestry plus volume preservation do not imply fixed-coordinate Sobolev comparability.

## Reduction

The target theorem reduces to one of the following precise inputs:

```text
UniformAffineMetricEllipticity.A:
the affine/material metric has uniformly bounded condition number on the terminal atlas.
```

or:

```text
TerminalCollarStrainIntegrability.A:
the relevant terminal collar strain is integrable in time, giving finite deformation comparability by Gronwall.
```

or the class-exit alternative:

```text
AffineMaterialFieldExit.A:
a moving-frame readout without fixed-coordinate Hs transfer is a `Field_{N,r,Q}` exit for the target class.
```

## Verdict

The affine/material readout theorem is not obtained from the current structural inputs alone.

The useful result is the sharp reduction:

```text
affine/material readout
=> fixed Hs readout
```

requires either uniform metric ellipticity, terminal collar strain integrability, or a `Field_{N,r,Q}` exit rule for non-transferable moving-frame readouts.

## Route consequence

This non-strip Pack-illegal family remains open until one of those exact inputs is installed.
