# Square-Source Shell Flux Estimate Result

## Target

The requested square-source estimate was

```math
\int_I |F_j(t)|^2dt
\le
c\varepsilon\nu^3 2^{3j}|I|
+C\nu^2 2^j2^{-2\delta j}.
```

This estimate is intended to feed the damped scalar response and produce active-square control.

## Fixed-shell amplitude test

At shell `j`, the nonlinear source is represented by the H1 shell form

```math
F_j(t)=2^{2j}\langle \Delta_j(u\cdot\nabla u),\Delta_j u\rangle.
```

Choose smooth divergence-free data with finitely many Fourier modes arranged so that this trilinear form is nonzero at time `t=0`. Scale the data by amplitude `A`:

```math
u_0^A=A u_0.
```

Then, at `t=0`,

```math
F_j(0;u_0^A)=A^3F_j(0;u_0).
```

By local smooth dependence, on a short interval `I=[0,h]`,

```math
\int_I |F_j(t;u_0^A)|^2dt
\ge c h A^6 |F_j(0;u_0)|^2
```

for `h` chosen small relative to the smooth local existence scale.

The right side of the proposed theorem at fixed `j` is

```math
c\varepsilon\nu^3 2^{3j}h+C\nu^2 2^j2^{-2\delta j},
```

which is independent of `A`. Taking `A` large violates the estimate.

## Result

The square-source estimate fails as a universal fixed-shell theorem from original smooth data. Finite shell localization and smoothness supply regularity, while they supply no amplitude normalization.

## Valid conditional replacement

The square-source route can still be used under an active interval amplitude hypothesis, for example if

```math
|F_j(t)|^2
\le
c\varepsilon\nu^3 2^{3j}
+C\nu^2 2^j2^{-2\delta j}|I|^{-1}
```

on the active interval, or after proving a structural cancellation theorem that replaces the cubic amplitude scaling.

Equivalently, the needed input is one of:

```math
\text{active-shell amplitude normalization,}
```

```math
\text{signed trilinear cancellation in }F_j,
```

or

```math
\text{direct active-square Carleson control.}
```

## Consequence

The square-source path returns to the same live obstruction: active-square Carleson or direct LPAS must be proved by a mechanism that controls active shell amplitude, rather than by smoothness or finite-shell localization alone.
