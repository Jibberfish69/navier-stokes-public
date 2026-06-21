# MPP DensityPointClosure.A Direct Attempt

Date: 2026-06-11

Status: failed direct closure; exact density-only missing primitive isolated.

## Target

Use density-only bookkeeping. Let

```math
\rho(x,t)=\rho_0>0,
\qquad
k(x,t)=\frac12\rho_0 |u(x,t)|^2.
```

The algebraic velocity closure is:

```math
k(x_0,T)<\infty
\Longrightarrow
|u(x_0,T)|^2=\frac{2k(x_0,T)}{\rho_0}<\infty.
```

The desired density-point closure is the missing premise:

```math
DensityPointClosure.A:
\quad
\text{same-fluid finite participating density budget near }(x_0,T)
\Longrightarrow
k(x_0,T)<\infty.
```

## Direct Attempt

The available finite local kinetic-density budget is

```math
\int_{B_R(x_0)} k(x,T)\,dx<\infty.
```

To get pointwise velocity control, this must be upgraded to a pointwise or Morrey-type density bound. A sufficient density-only form is

```math
\sup_{0<r<r_0}
\frac{1}{|B_r|}
\int_{B_r(x_0)} k(x,T)\,dx <\infty.
```

If this holds and the terminal point is reached through the same ordinary field, then the kinetic density at the point is finite in the density-point sense, and the algebraic formula above gives finite velocity.

## Failure Of The Direct Energy Step

Finite local integral control alone is weaker than the required density-point bound. The density counterexample

```math
k_\alpha(x):=|x-x_0|^{-\alpha},
\qquad 0<\alpha<3,
```

has finite local integral in three dimensions:

```math
\int_{B_R(x_0)} k(x)\,dx<\infty,
```

while its point value at `x_0` is unbounded in the limiting density sense.

This example is a density bookkeeping obstruction only. It is not a Navier-Stokes solution. It shows that the direct implication

```math
\int_{B_R} k<\infty
\Longrightarrow
k(x_0)<\infty
```

needs Navier-Stokes structure beyond finite energy.

## Required Navier-Stokes Primitive

The density-only proof closes only from one of the following positive-forward primitives:

```math
KineticDensityMorreyFromParticipation.A:
\quad
\int_{B_r(x_0)} k(x,T)\,dx \le C |B_r|\quad\text{for all small }r.
```

or the parabolic funnel version:

```math
ParabolicFunnelScaleCriticalBudget.A:
\quad
\int_{S_0}^{\infty}\int_{B_\lambda}
\left(|v|^3+|q|^{3/2}\right)\,dy\,ds<\infty,
```

with late-slab smallness giving CKN regularity and hence bounded kinetic density.

## Verdict

Density-only algebra closes velocity once pointwise kinetic density is finite. The repo surfaces do not yet contain a direct proof of the density-point premise from finite local kinetic-density budget alone. The exact forward-positive child is therefore

```math
KineticDensityMorreyFromParticipation.A
```

or, in the cone frame,

```math
ParabolicFunnelScaleCriticalBudget.A.
```

No CM Part/Field closure is claimed in this note.
