# R3 Exterior L2 Tightness And No Energy-Tail Face

## Status

Discharged theorem for the `L^2` exterior-energy component of the whole-space tail problem.

The remaining whole-space branch item is the higher-order `H^s` tail needed for global continuation.

## Theorem `Tail.L2_R3`

Let `(u,p)` be a smooth finite-energy solution of the unforced incompressible Navier--Stokes equation on `R^3 x [0,T_*)`, with `T_*<infty`, divergence-free data `u_0 in L^2(R^3)`, and pressure

```math
p=\mathcal R_i\mathcal R_j(u_i u_j)
```

up to an additive function of time. Then

```math
\lim_{R\to\infty}\sup_{0\le t<T_*}\int_{|x|>R}|u(x,t)|^2\,dx=0.
```

Consequently the endpoint face

```math
TailFace_{R^3}^{L^2}:
\text{finite-energy mass escapes to spatial infinity at }T_*
```

is eliminated.

## Proof

Choose a smooth radial cutoff `chi_R` such that

```math
chi_R=0\quad |x|\le R,
\qquad
chi_R=1\quad |x|\ge 2R,
```

and

```math
|\nabla chi_R|\le C/R,
\qquad
|\Delta chi_R|\le C/R^2.
```

For smooth solutions, the localized energy identity gives

```math
\frac{d}{dt}\int chi_R |u|^2
+2\nu\int chi_R |\nabla u|^2
=
\nu\int \Delta chi_R |u|^2
+
\int (|u|^2+2p)u\cdot\nabla chi_R .
```

Integrating from `0` to `t<T_*` yields

```math
\int chi_R |u(t)|^2
\le
\int chi_R |u_0|^2
+
C R^{-2}\int_0^{T_*}\int_{A_R}|u|^2
+C R^{-1}\int_0^{T_*}\int_{A_R}|u|^3
+C R^{-1}\int_0^{T_*}\int_{A_R}|p||u|,
```

where `A_R={R<|x|<2R}`.

The initial term tends to zero because `u_0 in L^2(R^3)`. The first error term is bounded by

```math
C T_* R^{-2}\|u_0\|_{L^2}^2,
```

using the energy identity.

The velocity flux term tends to zero. Indeed,

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x}
```

imply

```math
u\in L^3((0,T_*)\times R^3),
```

so the exterior annular integral of `|u|^3` tends to zero as `R->infty`, and the extra factor `R^{-1}` preserves convergence to zero.

For the pressure flux, Calderon--Zygmund gives

```math
p\in L^{5/3}_{t,x},
```

because `u in L^{10/3}_{t,x}`. Hence on the annulus-time slab,

```math
\int_0^{T_*}\int_{A_R}|p||u|
\le
|A_R\times(0,T_*)|^{1/10}
\|p\|_{L^{5/3}_{t,x}}
\|u\|_{L^{10/3}_{t,x}}.
```

Since `|A_R\times(0,T_*)|^{1/10}\le C_A^{1/10}T_*^{1/10}R^{3/10}`,
multiplying by `R^{-1}` gives
`C_A^{1/10}T_*^{1/10}R^{-7/10}`, which tends to zero.

Therefore

```math
\sup_{0\le t<T_*}\int chi_R |u(t)|^2\to0.
```

Since `chi_R=1` on `{|x|>=2R}`,

```math
\sup_{0\le t<T_*}\int_{|x|>2R}|u(x,t)|^2\,dx\to0.
```

This proves uniform exterior `L^2` tightness.

## Consequence for the R3 branch

The whole-space branch has no finite-energy mass escape face at spatial infinity. Pressure tails on compact readout balls can use this exterior tightness together with local tower bounds, as recorded in the pressure-tail convergence theorem.

## Remaining item

The continuation theorem on `R^3` needs more than exterior `L^2` tightness. It needs uniform exterior `H^s` tail control, or a replacement theorem converting local tower/readout control plus energy tightness into a global `H^s` bound. That is the next whole-space branch frontier.
