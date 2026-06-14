# Flux-Source To Active-Square Carleson Result

## Target

The desired implication was

```math
\int_I |F_j(t)|dt
\le
\varepsilon\nu\int_I D_j(t)dt+C2^{-2\delta j}
```

implying

```math
\int_I2^{-j}D_j(t)^2dt
\le
\varepsilon\nu2^{2j}|I|+C2^{-2\delta j}.
```

## Shell equation

The shell energy has the scalar form

```math
dE_j+c\nu D_jdt\le F_jdt,
\qquad
D_j=2^{2j}E_j.
```

The active-square integrand is

```math
2^{-j}D_j^2=2^{3j}E_j^2.
```

Thus active-square Carleson requires a shell-amplitude gain of size

```math
E_j^2\le C_E\nu2^{-j}
```

on average over heat-scale intervals.

## Steady-state obstruction

Consider the scalar damped model

```math
E'(t)+c\nu2^{2j}E(t)=F(t).
```

Take a steady state `E(t)=A`. Then

```math
F(t)=c\nu2^{2j}A,
\qquad
D(t)=2^{2j}A.
```

The source estimate has the same scale as the dissipation term and permits fixed amplitude `A` inside the small coefficient budget.

But the active-square term is

```math
\int_I2^{-j}D(t)^2dt
=2^{3j}A^2|I|.
```

The desired active-square bound is

```math
\varepsilon\nu2^{2j}|I|.
```

Therefore one also needs

```math
A^2\le C\varepsilon\nu2^{-j}.
```

The source Carleson estimate supplies interval source mass control. It supplies no such shell-amplitude gain.

## Result

Flux-source Carleson alone is insufficient for active-square Carleson. The missing theorem is one of:

```math
E_j\le C_E^{1/2}\nu^{1/2}2^{-j/2}
```

on active intervals,

```math
\int_I |F_j(t)|^2dt\text{ with heat-scale gain},
```

or the direct active-square Carleson theorem.

## Consequence

The positive-carrier route remains blocked at the active-square level. LPAS requires a genuine active-square theorem rather than a pure source-mass theorem.
