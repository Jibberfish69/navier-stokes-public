# Coefficient-Bearing HFG Variant Conditional

## Conditional input

Assume the weighted carrier product is controlled:

```math
\int_0^T\widetilde\Lambda_N^\sharp(t)E_N(t)dt<\infty
```

or pointwise

```math
\widetilde\Lambda_N^\sharp E_N\le \varepsilon\nu D_N+C_\varepsilon R_N
```

with `0<\varepsilon<c` for the dissipative coefficient in the dyadic
inequality and with `R_N` summable in the final shell summation. Assume the
lifted high-side packet is also controlled by the same coefficient-margin form
or is summable as a declared remainder.

## Dyadic inequality

The repaired gradient/vorticity leakage inequality has the coefficient-bearing form

```math
{d\over dt}E_N(t)+c\nu D_N(t)
\le C\widetilde\Lambda_N^\sharp(t)E_N(t)+R_N(t).
```

By Gronwall,

```math
E_N(t)
\le
\left(E_N(0)+\int_0^tR_N(s)ds\right)
\exp\left(C\int_0^t\widetilde\Lambda_N^\sharp(s)ds\right)
```

for finite-threshold tail energy. For the integrated HFG gain, the pointwise absorbable form is stronger: it gives

```math
{d\over dt}E_N(t)+c'\nu D_N(t)
\le C_\varepsilon R_N(t).
```

The usual damped-shell argument then yields the high-frequency gain

```math
\sum_{j\ge N}2^{3j/2}\|\Delta_j\omega\|_{L_t^1L_x^2}<\infty.
```

Adding the finite low-shell block gives `HFG`.

## Boundary

This is a conditional HFG branch. The current weighted carrier result did not prove the needed product control. Therefore this branch is available only after one proves

```math
\int_0^T\Lambda_NE_Ndt<\infty,
\qquad
\int_0^T\Theta_N^\sharp E_Ndt<\infty,
```

or the corresponding absorbable coefficient bounds.
