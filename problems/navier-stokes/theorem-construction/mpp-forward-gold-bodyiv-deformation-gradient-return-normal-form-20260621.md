---
theorem_id: forward-gold-bodyiv-deformation-gradient-return-normal-form-20260621
status: exact-bodyiv-return-form-proved-unweighted-strain-clock-not-installed
logical_landing_node: bodyiv_deformation_gradient_return_normal_form
edge_effect: "Installs the exact Body-IV deformation/gradient return-arrow normal form for the upgraded four-body program. The flow map obeys F_t=(nabla u)F, incompressibility gives det F=1, and a finite same-carrier strain/gradient clock keeps the pulled-back metric uniformly nondegenerate. Under that metric control, Body IV can recertify the Body-I scale/tower carrier. The note does not prove the required unweighted same-carrier strain/action clock from Navier-Stokes energy; heat-scale pulses still pay only the radius-discounted physical cost."
parents:
  - problems/navier-stokes/theorem-construction/mpp-four-body-balance-circuit-redevelopment-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-cyclic-payment-closure-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-lagrangian-deformation-coercion-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/modernized-four-body-schema-torus-tower-geometry.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyi-factorial-tower-radius-spend-normal-form-20260621.md
---

# Body IV Deformation-Gradient Return Normal Form

Date: 2026-06-21

## 0. Aim

Body IV in the upgraded four-body loop is:

```math
\text{gradient/geometry}
\to
\text{tower/scale}.
\tag{BDR.1}
```

The old language called this a curvature or gradient regularity body.  The
modern same-fluid version is the deformation-gradient return arrow.

The exact Body-IV claim is:

```math
\boxed{
\text{controlled same-carrier deformation geometry recertifies the Body-I
scale/tower packet.}
}
\tag{BDR.2}
```

The exact limitation is:

```math
\boxed{
\text{Navier-Stokes energy does not by itself supply the required unweighted
same-carrier deformation clock.}
}
\tag{BDR.3}
```

This note records both statements in the same normal form.

## 1. Flow-map equations

Let \(X(a,t)\) be the Lagrangian flow map:

```math
\partial_tX(a,t)=u(X(a,t),t),
\qquad
X(a,t_0)=a.
\tag{BDR.4}
```

Set

```math
F(a,t)=D_aX(a,t),
\qquad
A(a,t)=F(a,t)^{-1}.
\tag{BDR.5}
```

Along the flow,

```math
\partial_tF
=
(\nabla u)(X(a,t),t)\,F.
\tag{BDR.6}
```

Incompressibility gives

```math
\det F(a,t)=1.
\tag{BDR.7}
```

So volume cannot vanish; degeneration can only appear as shape/stretch
degeneration.

For the inverse deformation gradient,

```math
\partial_tA
=
-A\,(\nabla u)(X(a,t),t).
\tag{BDR.8}
```

Define the pulled-back diffusion metric

```math
G(a,t)=A(a,t)A(a,t)^\top.
\tag{BDR.9}
```

Then

```math
\partial_tG
=
-2A\,S(X(a,t),t)\,A^\top,
\qquad
S={1\over2}(\nabla u+\nabla u^\top).
\tag{BDR.10}
```

This is the exact deformation-geometry equation.

## 2. Same-carrier deformation clock

Define the same-carrier strain clock on a material packet \(A_0\) by

```math
\Gamma_{A_0}(t_0,t)
=
\int_{t_0}^{t}
\|S(X(\cdot,\tau),\tau)\|_{L^\infty(A_0)}
\,d\tau.
\tag{BDR.11}
```

For every material line vector \(\xi\),

```math
{d\over dt}|F(a,t)\xi|^2
=
2
\left\langle
S(X(a,t),t)F(a,t)\xi,\,
F(a,t)\xi
\right\rangle.
\tag{BDR.12}
```

Therefore

```math
e^{-2\Gamma_{A_0}(t_0,t)}|\xi|^2
\le
|F(a,t)\xi|^2
\le
e^{2\Gamma_{A_0}(t_0,t)}|\xi|^2
\tag{BDR.13}
```

for \(a\in A_0\).  Equivalently,

```math
e^{-2\Gamma_{A_0}(t_0,t)}|\zeta|^2
\le
\zeta^\top G(a,t)\zeta
\le
e^{2\Gamma_{A_0}(t_0,t)}|\zeta|^2.
\tag{BDR.14}
```

Thus finite same-carrier strain clock gives uniform ellipticity of the
pulled-back metric.

## 3. Pulled-back Navier-Stokes equation

Let

```math
v(a,t)=u(X(a,t),t),
\qquad
q(a,t)=p(X(a,t),t).
\tag{BDR.15}
```

The pulled-back equation is

```math
\partial_tv
+
A^\top\nabla_aq
=
\nu\,\operatorname{div}_a(G\nabla_av).
\tag{BDR.16}
```

The incompressibility constraint becomes

```math
\nabla_a\cdot(Av)=0.
\tag{BDR.17}
```

At base energy level, this gives

```math
{1\over2}{d\over dt}\int |v|^2\,da
+
\nu\int G\nabla_av:\nabla_av\,da
=0
\tag{BDR.18}
```

on a material packet without boundary leakage, or with boundary/cutoff leakage
recorded as the legal collar term.

So Body IV has a real return path: when \(G\) remains uniformly elliptic and
its coefficient derivatives stay controlled on the same carrier, the pulled-back
equation is a uniformly parabolic coefficient equation for the tower.

## 4. Return arrow to Body I

Let \(\mathcal T_N[v,G]\) denote a finite pulled-back tower packet through
parabolic depth \(N\), with coefficient metric \(G\).  The Body-IV return arrow
has the conditional form:

```math
\boxed{
\Gamma_{A_0}(t_0,t_1)<\infty
+
\text{finite coefficient-geometry control of }G
\Longrightarrow
\mathcal T_N[v,G]\text{ remains a valid Body-I tower packet on }[t_0,t_1].
}
\tag{BDR.19}
```

In the original variables, this says:

```math
\boxed{
\text{controlled deformation geometry prevents the same material packet from
creating a new untracked scale/tower escape.}
}
\tag{BDR.20}
```

This is the intended four-body return:

```math
\text{Body IV geometry}
\Longrightarrow
\text{Body I scale/tower recertification}.
\tag{BDR.21}
```

## 5. Why this is not a gold payment by itself

The same heat-scale arithmetic remains.

Under Navier-Stokes scaling,

```math
u_r(t,x)
=
r^{-1}U(r^{-2}t,r^{-1}x),
\qquad
S_r(t,x)
=
r^{-2}S_U(r^{-2}t,r^{-1}x).
\tag{BDR.22}
```

On a heat window of length \(r^2\),

```math
\int_{I_r}\|S_r(t)\|_{L^\infty(B_r)}\,dt
\sim
1
\tag{BDR.23}
```

for an order-one normalized profile.

But the physical dissipation on that same packet is

```math
\int_{I_r}\int_{B_r}|\nabla u_r|^2\,dx\,dt
=
r
\int_{-1}^{0}\int_{B_1}|\nabla U|^2\,dy\,ds.
\tag{BDR.24}
```

So a Zeno sequence of heat-scale pulses can have order-one deformation clock at
each normalized scale while the physical dissipation is only radius-discounted:

```math
\sum_j r_j<\infty.
\tag{BDR.25}
```

Therefore Body IV reads the pulse as deformation/gradient activity, but it does
not forbid the pulse from energy alone.

## 6. Exact Body-IV production theorem still missing

The missing theorem is not "use geometry" in general.  The exact missing theorem
is same-carrier unweighted geometry production:

```math
\boxed{
\text{persistent selected terminal participation forces either a finite
same-carrier strain clock, an unweighted strain/action payment, or a charged
Body-IV geometry defect.}
}
\tag{BDR.26}
```

Equivalently, the Body-IV branch closes if one proves

```math
\boxed{
\int_{\sigma_0}^{\infty}
A_{\rm strain}(\sigma)\,d\sigma
<\infty
}
\tag{BDR.27}
```

on the same selected carrier, where \(A_{\rm strain}\) is the normalized
strain/deformation activity that controls `(BDR.11)` after heat-scale
normalization.

Current inputs do not prove `(BDR.27)`.

## 7. Four-body conclusion

Body IV supplies an exact return-arrow normal form:

```math
\boxed{
\text{finite same-carrier deformation geometry}
\Longrightarrow
\text{Body-I scale/tower recertification.}
}
\tag{BDR.28}
```

It also exposes the exact unresolved production step:

```math
\boxed{
\text{the selected terminal heat-scale pulse must pay an unweighted
strain/deformation action, or become a charged geometry defect.}
}
\tag{BDR.29}
```

Thus the upgraded four-body loop now has the Body-IV role in exact language.
It is a return arrow, not an independent magic coercivity supplier.
