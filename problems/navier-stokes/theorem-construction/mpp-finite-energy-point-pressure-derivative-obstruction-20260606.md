# Finite Energy Point-Pressure Derivative Obstruction

## Status

Installed obstruction proof for the retained-window receiver route.

This note proves the narrow claim used by the retained-route audits:

```math
\text{finite energy}
+
-\Delta p=\partial_i\partial_j(u_i u_j)
\quad\not\Longrightarrow\quad
\text{point-center pressure derivative bounds.}
```

It is not a statement about every possible Navier-Stokes upgrade. It only rules
out the estimate whose only inputs are finite kinetic energy and the pressure
Poisson equation.

## Theorem

There is no function `F` such that every smooth, divergence-free, mean-zero
vector field `u` on `T^3`, with mean-zero pressure `p` solving

```math
-\Delta p=\partial_i\partial_j(u_i u_j),
```

satisfies

```math
|\nabla p(0)|\le F(\|u\|_{L^2(T^3)}).
```

Consequently finite energy plus pressure Poisson response alone cannot supply
the point-center pressure derivatives required by `NKF.Point` / `NKF.Native`.

## Proof

Work on `T^3=(\mathbb R/2\pi\mathbb Z)^3`. For each integer `N>=1`, set

```math
u_N(x_1,x_2,x_3)
=
(\cos(Nx_2),\ \sin(Nx_1),\ 0).
```

This field is smooth, mean-zero, and divergence-free:

```math
\nabla\cdot u_N
=
\partial_{x_1}\cos(Nx_2)+\partial_{x_2}\sin(Nx_1)
=0.
```

Its kinetic energy is independent of `N`:

```math
\|u_N\|_{L^2(T^3)}^2
=
\int_{T^3}\cos^2(Nx_2)+\sin^2(Nx_1)\,dx
=
(2\pi)^3.
```

Now compute the pressure source. Since `u_{N,1}^2` depends only on `x_2` and
`u_{N,2}^2` depends only on `x_1`, the diagonal second-derivative terms vanish:

```math
\partial_{x_1}^2(u_{N,1}^2)=0,
\qquad
\partial_{x_2}^2(u_{N,2}^2)=0.
```

The only nonzero contribution is the mixed term:

```math
\partial_i\partial_j(u_{N,i}u_{N,j})
=
2\partial_{x_1}\partial_{x_2}
\big(\cos(Nx_2)\sin(Nx_1)\big)
=
-2N^2\cos(Nx_1)\sin(Nx_2).
```

The mean-zero pressure solving the Poisson equation is therefore

```math
p_N(x_1,x_2,x_3)
=
-\cos(Nx_1)\sin(Nx_2),
```

because

```math
-\Delta p_N
=
-2N^2\cos(Nx_1)\sin(Nx_2)
=
\partial_i\partial_j(u_{N,i}u_{N,j}).
```

At the fixed point `0`,

```math
\partial_{x_2}p_N(0)
=
-N.
```

Thus `\|u_N\|_{L^2}` stays fixed while `|\nabla p_N(0)|` tends to infinity.
No estimate of point pressure derivatives can follow from finite energy and the
pressure Poisson equation alone.

## Route Consequence

The retained-window route

```math
RSCB.NKF
\Longrightarrow
NKF.Moll
\Longrightarrow
NKF.Point
\Longrightarrow
NKF.Native
\Longrightarrow
ACT.KX
```

can be used only after retained local smooth center-ball control has already
been supplied. It cannot be promoted to an original-data finite-energy route by
appealing only to pressure Poisson recovery.

This is the obstruction behind the switch from the point-center retained route
to the averaged finite-energy route:

```math
SCF_base+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
SCF_{avg}^m
\Longrightarrow
AACT.KX.
```
