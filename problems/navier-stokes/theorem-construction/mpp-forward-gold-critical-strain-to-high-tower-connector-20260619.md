# MPP Forward-Gold Critical Strain To High-Tower Connector

Date: 2026-06-19

## Status

Connector note between the new heat-scale critical strain threshold and the
older cone/tower affine-collar pricing results.

The purpose is to prevent two different-looking branches from being treated as
independent:

```math
L^{5/2}_{t,x}\text{ critical strain}
\quad\text{and}\quad
\text{high-tower / collar summability}
\tag{CSHT.1}
```

are two ways of seeing the same heat-scale organization problem.

The first is the scale-critical feed currency.  The second is the geometric
price of organizing that feed as a retained spatial packet inside the same
fluid.

## 1. Critical strain is cheap at the energy rung

On a heat-scale feed packet

```math
Q_r=B_r\times I_r,
\qquad
\alpha_t{r^2\over\nu}\le |I_r|\le A_t{r^2\over\nu},
\qquad
\alpha_S{\nu\over r^2}\le |S|\le A_S{\nu\over r^2}
\quad\text{on the selected active subset,}
\tag{CSHT.2}
```

the energy-rung strain cost is

```math
\int_{Q_r}|S|^2\,dxdt
\le
C_2\nu r.
\tag{CSHT.3}
```

This can sum over a dyadic Zeno cascade.

The critical strain cost is

```math
\int_{Q_r}|S|^{5/2}\,dxdt
\ge
c_{5/2}\nu^{3/2}.
\tag{CSHT.4}
```

This would charge each critical event at order one.

## 2. Non-affine critical strain is expensive one derivative higher

The cone/tower notes quantify the non-affine branch by

```math
B_r(t)
=
{r\over\nu^2}
\inf_A
\int_{B_r}
|\nabla u-A|^2\,dx.
\tag{CSHT.5}
```

Second-order Poincare gives

```math
B_r(t)\ge b_0
\Longrightarrow
\int_{B_r}|\nabla^2u|^2\,dx
\ge
c b_0{\nu^2\over r^3}.
\tag{CSHT.6}
```

If this non-affine defect persists on a subset \(G_r\subset I_r\) with

```math
|G_r|\ge\theta r^2/\nu,
\tag{CSHT.7}
```

then

```math
\nu\int_{G_r}\int_{B_r}
|\nabla^2u|^2\,dxdt
\ge
c\theta b_0{\nu^2\over r}.
\tag{CSHT.8}
```

This is not merely order one.  It grows as \(r\downarrow0\).  A
scale-separated non-affine Zeno cascade would therefore be impossible under a
finite high-tower budget.

## 3. Affine critical strain is priced in the collar

An affine comparator can avoid interior \(\nabla^2u\), but only as a
comparator.  The actual finite-energy fluid must either match that affine core
to the surrounding parent region or extend the affine field outward.

The affine-collar note gives the parent-region cost:

```math
\nu\int_G\int_{B_R}
|\nabla^2u|^2\,dxdt
\ge
c\theta\eta^2{\nu^4\over E_R}.
\tag{CSHT.9}
```

This catches the apparent affine escape.  The affine core is not private; its
exterior matching belongs to the same fluid and pays a second-derivative bill
unless the core disappears too quickly to sustain the terminal packet.

## 4. Why this still does not close gold

The lower prices `(CSHT.8)` and `(CSHT.9)` are real.  The missing piece is the
upper budget:

```math
\int_0^{T_\ast}\int|\nabla^2u|^2\,dxdt<\infty
\tag{CSHT.10}
```

or a localized substitute that dominates the same bills.

The enstrophy identity has the desired good term,

```math
{1\over2}{d\over dt}\|\omega\|_2^2
+\nu\|\nabla\omega\|_2^2
=
\int(S\omega)\cdot\omega\,dx,
\tag{CSHT.11}
```

and \(\|\nabla\omega\|_2^2\) is equivalent to the second derivative tower under
the usual divergence-free boundary class.  But the right side is vortex
stretching.  The standard estimate gives

```math
{d\over dt}\|\nabla u\|_2^2
+\nu\|\nabla^2u\|_2^2
\le
C\nu^{-3}\|\nabla u\|_2^6.
\tag{CSHT.12}
```

The comparison ODE permits finite-time growth.  Thus enstrophy exposes the
channel through which the high-tower bill can grow; it does not cap the total
bill.

## 5. Consolidated branch logic

The heat-scale terminal feed now has three equivalent-looking ways to close:

```math
\boxed{
\text{selected }L^{5/2}_{t,x}\text{ strain Carleson}
}
\tag{CSHT.13}
```

```math
\boxed{
\text{selected }L^5_{t,x}\text{ velocity / CKN cubic reserve}
}
\tag{CSHT.14}
```

```math
\boxed{
\text{finite high-tower budget summing non-affine and affine-collar bills}
}
\tag{CSHT.15}
```

The current inputs do not prove any of these.  The high-tower route is not a
new independent escape from the half-power gap; it is the derivative-rung form
of the same missing scale-critical coercivity.

## Verdict

The spatial geometry is priced.  A retained critical packet cannot freely hide
as a point object, a non-affine core, or a private affine core without producing
critical strain, CKN, or high-tower/collar currency.

The open forward-gold question is the upper-budget side:

```math
\boxed{
\text{Can Navier--Stokes cap the total selected critical-strain / CKN /
high-tower currency below the source wall?}
}
\tag{CSHT.16}
```

Current energy and enstrophy identities do not provide that cap.  They leave
the vortex-stretching / native trilinear source as the exact live wall.
