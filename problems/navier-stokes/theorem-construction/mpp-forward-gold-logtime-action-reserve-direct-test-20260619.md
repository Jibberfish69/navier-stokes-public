# MPP Forward-Gold Log-Time Action Reserve Direct Test

Date: 2026-06-19

## Status

Direct test of the final heat-scale reserve in logarithmic self-similar time.

The heat-scale terminal stack becomes a sequence of unit slabs in

```math
s=-\log(T-t).
\tag{LAR.1}
```

The forward-gold reserve needed to kill the stack is an unweighted finite
action in \(s\).  The Navier-Stokes energy and local-energy ledgers supply only
discounted \(s\)-action.  The missing step is exactly discount removal or a
genuine rescaled Lyapunov/no-waste theorem.

## 1. Self-similar variables

Normalize viscosity to \(\nu=1\) first and write

```math
\tau=T-t=e^{-s},
\qquad
y={x-x_0\over\sqrt{\tau}},
\qquad
v(s,y)=\sqrt{\tau}\,u(t,x),
\qquad
q(s,y)=\tau\,p(t,x).
\tag{LAR.2}
```

Then

```math
dx\,dt
=
\tau^{3/2}\,dy\;\tau\,ds
=
\tau^{5/2}\,dy\,ds.
\tag{LAR.3}
```

The rescaled equation is

```math
\partial_s v
-\Delta_y v
+(v\cdot\nabla_y)v
+\nabla_y q
+{1\over2}y\cdot\nabla_y v
+{1\over2}v
=0,
\qquad
\nabla_y\cdot v=0.
\tag{LAR.4}
```

This is the natural equation for the heat-scale packet.

## 2. Physical cubic mass is discounted log-time action

The scale-critical velocity and pressure quantities transform as

```math
|u|^3\,dx\,dt
=
\tau^{-3/2}|v|^3\;\tau^{5/2}dy\,ds
=
e^{-s}|v|^3\,dy\,ds,
\tag{LAR.5}
```

and

```math
|p|^{3/2}\,dx\,dt
=
\tau^{-3/2}|q|^{3/2}\;\tau^{5/2}dy\,ds
=
e^{-s}|q|^{3/2}\,dy\,ds.
\tag{LAR.6}
```

Thus the physical cubic-pressure budget controls

```math
\int_{S_0}^{\infty}
e^{-s}
\int_{B_R}
\left(|v|^3+|q|^{3/2}\right)dy\,ds.
\tag{LAR.7}
```

The heat-scale anti-atom needs control of the same quantity without the
exponential weight:

```math
\int_{S_0}^{\infty}
\int_{B_R}
\left(|v|^3+|q|^{3/2}\right)dy\,ds.
\tag{LAR.8}
```

The discount is exactly the \(r^2\) factor in the physical-space statement

```math
\sum_P r_P^2\,\mathcal C(Q(P))<\infty.
\tag{LAR.9}
```

Removing it is exactly the missing unweighted normalized CKN Carleson reserve.

## 3. Physical dissipation is also discounted

The gradient transforms as

```math
\nabla_x u
=
\tau^{-1}\nabla_y v.
\tag{LAR.10}
```

Therefore

```math
|\nabla_xu|^2\,dx\,dt
=
\tau^{-2}|\nabla_yv|^2\;\tau^{5/2}dy\,ds
=
e^{-s/2}|\nabla_yv|^2\,dy\,ds.
\tag{LAR.11}
```

The finite physical dissipation budget controls only

```math
\int_{S_0}^{\infty}
e^{-s/2}
\int_{B_R}|\nabla_yv|^2dy\,ds.
\tag{LAR.12}
```

It does not control

```math
\int_{S_0}^{\infty}
\int_{B_R}|\nabla_yv|^2dy\,ds.
\tag{LAR.13}
```

A stationary nonzero rescaled profile \(v(s,y)=V(y)\) is enough to show the
logical gap:

```math
\int_{S_0}^{\infty}e^{-s/2}ds<\infty,
\qquad
\int_{S_0}^{\infty}1\,ds=\infty.
\tag{LAR.14}
```

This is not a claim that \(V\) solves Navier-Stokes.  It isolates the missing
mechanism: the physical energy ledger is discounted in log time.

## 4. Critical strain is the unweighted action

For strain,

```math
|S_x(u)|^{5/2}\,dx\,dt
=
\tau^{-5/2}|S_y(v)|^{5/2}\;\tau^{5/2}dy\,ds
=
|S_y(v)|^{5/2}dy\,ds.
\tag{LAR.15}
```

So selected \(L^{5/2}_{t,x}\) strain control is exactly an unweighted log-time
action control:

```math
\int |S_x(u)|^{5/2}dxdt
=
\int |S_y(v)|^{5/2}dy\,ds.
\tag{LAR.16}
```

This explains why the \(5/2\) strain exponent is the correct supplier.  It is
the first strain exponent that counts one unit per heat-scale log-time slab.

Current energy gives only the discounted \(L^2\)-gradient action `(LAR.12)`.
It does not give `(LAR.16)`.

## 5. Rescaled energy does not give the missing action by itself

Let

```math
A_R(s)=\int_{B_R}|v(s,y)|^2dy.
\tag{LAR.17}
```

Multiplying the rescaled equation by \(v\) on \(B_R\) gives the same structure
as the earlier funnel audit:

```math
{1\over2}A_R'(s)
+\int_{B_R}|\nabla v|^2dy
=
{1\over4}A_R(s)
-Boundary_R(s),
\tag{LAR.18}
```

where \(Boundary_R(s)\) contains viscous boundary flux, cubic convection flux,
pressure flux, and the self-similar drift boundary term.

The right side has no fixed sign.  The term \(A_R(s)/4\) is growth-side, and
the pressure/convection boundary terms are the same sign-indefinite flux
obstruction already exposed by the pressure-corrected monotonicity attempts.

Thus the rescaled equation does not automatically supply

```math
\int_{S_0}^{\infty}\int_{B_R}|\nabla v|^2dy\,ds<\infty
\tag{LAR.19}
```

or unweighted CKN action.

## 6. Exact theorem that would close this lane

The log-time action version of the missing gold supplier is:

```math
\boxed{
\int_{S_0}^{\infty}
\int_{B_R}
\left(
|v|^3+|q|^{3/2}+|S(v)|^{5/2}
\right)dy\,ds
<\infty
}
\tag{LAR.20}
```

on the selected terminal moving packet family, with terminal-tail decay after
legal exits.

Equivalently, for dyadic unit slabs \(J_j=[j,j+1]\),

```math
\sum_j
\int_{J_j}\int_{B_R}
\left(
|v|^3+|q|^{3/2}+|S(v)|^{5/2}
\right)dy\,ds
<\infty.
\tag{LAR.21}
```

Each source-balanced heat-scale packet has an order-one contribution to this
sum.  Therefore `(LAR.20)` would exclude an infinite terminal stack.

But `(LAR.20)` is precisely the unweighted normalized critical reserve, not a
consequence of the discounted physical energy inequality.

## Verdict

The logarithmic-time representation sharpens the obstruction:

```math
\boxed{
\text{physical energy/local energy}
\Longrightarrow
\text{discounted }s\text{-action};
}
\tag{LAR.22}
```

while the gold anti-atom requires

```math
\boxed{
\text{unweighted }s\text{-action}.
}
\tag{LAR.23}
```

The missing step is discount removal.  It is equivalent at this route resolution
to selected \(L^{5/2}\) strain Carleson, unweighted normalized CKN Carleson,
source-square/ScaleCriticalTreeCarleson, or a genuine rescaled no-waste
Lyapunov theorem that absorbs the pressure/convection flux.
