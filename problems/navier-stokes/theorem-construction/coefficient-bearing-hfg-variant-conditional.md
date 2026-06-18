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

This aggregate inequality gives the tail energy/dissipation bound

```math
\sup_{0\le t\le T}E_N(t)+\int_0^T D_N(t)dt<\infty.
```

It does not by itself give the Besov-summable HFG tail.  The exact shellwise
upgrade needed for HFG is the following.  Set

```math
e_j(t):=\|\Delta_j\omega(t)\|_2^2.
```

Assume that, for every `j>=N`,

```math
{d\over dt}e_j(t)+\alpha\nu2^{2j}e_j(t)\le r_j(t),
\qquad r_j(t)\ge0,
```

and assume the HFG-weighted shell reserve

```math
\sum_{j\ge N}2^{j/2}
\left(e_j(0)+\int_0^T r_j(t)dt\right)^{1/2}<\infty.
```

Integrating the shell inequality gives

```math
\int_0^T e_j(t)dt
\le
{1\over \alpha\nu2^{2j}}
\left(e_j(0)+\int_0^T r_j(t)dt\right).
```

Therefore Cauchy--Schwarz in time yields

```math
2^{3j/2}\|\Delta_j\omega\|_{L_t^1L_x^2}
\le
{T^{1/2}\over(\alpha\nu)^{1/2}}2^{j/2}
\left(e_j(0)+\int_0^T r_j(t)dt\right)^{1/2}.
```

Summing over `j>=N` gives the high-frequency gain

```math
\sum_{j\ge N}2^{3j/2}\|\Delta_j\omega\|_{L_t^1L_x^2}<\infty.
```

The finite low-shell block is paid separately by the energy bound:

```math
\sum_{j<N}2^{3j/2}\|\Delta_j\omega\|_{L_t^1L_x^2}
\le
C T\|u\|_{L_t^\infty L_x^2}\sum_{j<N}2^{5j/2}<\infty.
```

Thus this branch gives full `HFG` only after the coefficient-margin estimate is
available in this shellwise HFG-weighted form, not merely in the aggregate
`E_N,D_N` form.

## Boundary

This is a conditional HFG branch. The current weighted carrier result did not prove the needed product control. Therefore this branch is available only after one proves

```math
\int_0^T\Lambda_NE_Ndt<\infty,
\qquad
\int_0^T\Theta_N^\sharp E_Ndt<\infty,
```

or the corresponding absorbable coefficient bounds.
