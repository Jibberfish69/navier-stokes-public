# TPS Pair-Defect PDE Packet

## Purpose

This note records the first fully explicit derived defect equations compatible
with the current `TPS` selector route.

The point is to give observability, backward-uniqueness, and parabolic
unique-continuation tools a mathematically proper home:

```math
\boxed{
\text{not on selector geometry directly, but on a coarse parabolic defect field built from packets.}
}
\tag{PD.0}
```

Under the object-law route this packet is an upstream parabolic supplier for the
surviving selector wall on the Law-2-survivor side, not as a
theorem surface for dead-endpoint / participation-failure exclusion.

The canonical objects are:

1. the one-point density defect `w_J`;
2. the two-point pair defect `W_J`.

The two-point defect is the sharper object for shadow-tube and pair-gap work,
while the one-point defect is its simplest marginal.

## Packet family

Fix a smooth nonnegative packet profile `\eta\in C_c^\infty(\mathbb R^3)` with

```math
\int_{\mathbb R^3}\eta(x)\,dx=1,
\tag{PD.1}
```

and define the scale-`J` packet

```math
\eta_J(x):=\ell_J^{-3}\eta(x/\ell_J).
\tag{PD.2}
```

Write

```math
v_J:=u_{\le J},
\qquad
r_J:=u-v_J=u_{>J}.
\tag{PD.3}
```

For each label `a\in\mathbb R^3`, let the actual and coarse packets solve

```math
\partial_t \psi_{J,a}+u\cdot\nabla \psi_{J,a}-\nu\Delta\psi_{J,a}=0,
\qquad
\psi_{J,a}(x,0)=\eta_J(x-a),
\tag{PD.4}
```

and

```math
\partial_t \phi_{J,a}+v_J\cdot\nabla \phi_{J,a}-\nu\Delta\phi_{J,a}=0,
\qquad
\phi_{J,a}(x,0)=\eta_J(x-a).
\tag{PD.5}
```

Let `\lambda_J(a)\ge 0` be a frozen selector weight on labels and define the
aggregated densities

```math
\rho_J(x,t):=\int \lambda_J(a)\psi_{J,a}(x,t)\,da,
\qquad
\bar\rho_J(x,t):=\int \lambda_J(a)\phi_{J,a}(x,t)\,da.
\tag{PD.6}
```

By linearity,

```math
\partial_t \rho_J+u\cdot\nabla \rho_J-\nu\Delta\rho_J=0,
\qquad
\rho_J(x,0)=\rho_{J,0}(x),
\tag{PD.7}
```

and

```math
\partial_t \bar\rho_J+v_J\cdot\nabla \bar\rho_J-\nu\Delta\bar\rho_J=0,
\qquad
\bar\rho_J(x,0)=\rho_{J,0}(x),
\tag{PD.8}
```

with the common initial density

```math
\rho_{J,0}(x):=\int \lambda_J(a)\eta_J(x-a)\,da.
\tag{PD.9}
```

## One-Point Defect Equation

Define the one-point density defect

```math
w_J:=\rho_J-\bar\rho_J.
\tag{PD.10}
```

### Proposition TPS-one-point-defect

The defect `w_J` satisfies the closed coarse-parabolic equation

```math
\partial_t w_J+v_J\cdot\nabla w_J-\nu\Delta w_J
=
-r_J\cdot\nabla \rho_J,
\qquad
w_J|_{t=0}=0.
\tag{PD.11}
```

Since both `u` and `v_J` are divergence free, the forcing also has conservative
form

```math
-r_J\cdot\nabla \rho_J
=
-\nabla\cdot(r_J\rho_J).
\tag{PD.12}
```

So the one-point defect equation may be written as

```math
\boxed{
\partial_t w_J+v_J\cdot\nabla w_J-\nu\Delta w_J
=
-\nabla\cdot(r_J\rho_J),
\qquad
w_J|_{t=0}=0.
}
\tag{PD.13}
```

This is the cleanest one-point derived defect equation for parabolic tools.

### Corollary TPS-one-point-defect-duhamel

Let `U_J(t,s)` denote the propagator of

```math
L_J:=\partial_t+v_J\cdot\nabla-\nu\Delta.
\tag{PD.14}
```

Then

```math
w_J(t)
=
-\int_0^t U_J(t,s)\,\nabla\cdot(r_J(s)\rho_J(s))\,ds.
\tag{PD.15}
```

Consequently, for any admissible `p`,

```math
\|w_J(t)\|_{L^p}
\le C_{p}
\int_0^t \|r_J(s)\|_{L^\infty}\,\|\nabla\rho_J(s)\|_{L^p}\,ds,
\tag{PD.16}
```

and in particular

```math
\|w_J(t)\|_{L^2}^2
+
2\nu\int_0^t\|\nabla w_J(s)\|_{L^2}^2\,ds
\le C_{PD}
\int_0^t \|r_J(s)\|_{L^\infty}^2\,\|\nabla\rho_J(s)\|_{L^2}^2\,ds.
\tag{PD.17}
```

These are the exact bridge estimates connecting the defect field to the
high-frequency remainder `r_J=u_{>J}`.

## Two-Point Defect Equation

For a nonnegative pair selector weight `\Lambda_J(a,b)`, define the actual and
coarse pair kernels

```math
K_J(x,y,t)
:=
\iint \Lambda_J(a,b)\,\psi_{J,a}(x,t)\psi_{J,b}(y,t)\,da\,db,
\tag{PD.18}
```

and

```math
\bar K_J(x,y,t)
:=
\iint \Lambda_J(a,b)\,\phi_{J,a}(x,t)\phi_{J,b}(y,t)\,da\,db.
\tag{PD.19}
```

Then

```math
\partial_t K_J
+
u(x,t)\cdot\nabla_x K_J
+
u(y,t)\cdot\nabla_y K_J
-\nu(\Delta_x+\Delta_y)K_J
=0,
\tag{PD.20}
```

and

```math
\partial_t \bar K_J
+
v_J(x,t)\cdot\nabla_x \bar K_J
+
v_J(y,t)\cdot\nabla_y \bar K_J
-\nu(\Delta_x+\Delta_y)\bar K_J
=0.
\tag{PD.21}
```

Define the pair defect

```math
W_J:=K_J-\bar K_J.
\tag{PD.22}
```

### Proposition TPS-pair-defect

The pair defect satisfies the closed two-point coarse-parabolic equation

```math
\partial_t W_J
+
v_J(x,t)\cdot\nabla_x W_J
+
v_J(y,t)\cdot\nabla_y W_J
-\nu(\Delta_x+\Delta_y)W_J
=
-r_J(x,t)\cdot\nabla_x K_J
-r_J(y,t)\cdot\nabla_y K_J,
\tag{PD.23}
```

with initial condition

```math
W_J|_{t=0}=0.
\tag{PD.24}
```

Equivalently, in divergence form,

```math
\boxed{
\partial_t W_J
+
v_J(x,t)\cdot\nabla_x W_J
+
v_J(y,t)\cdot\nabla_y W_J
-\nu(\Delta_x+\Delta_y)W_J
=
-\nabla_x\cdot\big(r_J(x,t)K_J\big)
-\nabla_y\cdot\big(r_J(y,t)K_J\big).
}
\tag{PD.25}
```

This is the canonical two-point defect equation for diagonal concentration,
shadow-tube observables, and pair-gap arguments.

## Diagonal Shadow Observables

Let `\chi\in C_c^\infty([0,\infty))` be a diagonal cutoff and define the
normalized shadow scale

```math
\varsigma_J(t):=\sigma_J/e_J(t).
\tag{PD.26}
```

A canonical two-point diagonal observable is then

```math
\Gamma_J^{def}(t)
:=
\iint
\chi\!\Big(\frac{|x-y|}{\varsigma_J(t)}\Big)
W_J(x,y,t)\,dx\,dy.
\tag{PD.27}
```

Differentiating under the integral and using `(PD.25)` yields an evolution law
whose forcing is linear in the high-frequency remainder through the divergence
terms `r_J K_J` and in the derivatives of the diagonal cutoff. This is the
precise place where actual/coarse deviation and high-frequency tail control
enter the defect route.

## Transported Selector Weights

If the selector weights are transported in label space, let
`\Lambda_J(a,t)` solve

```math
\partial_t \Lambda_J(a,t)=q_J(a,t),
\qquad
\Lambda_J(a,0)=\lambda_J(a).
\tag{PD.28}
```

Then the one-point defect picks up the extra source

```math
\int q_J(a,t)\big(\psi_{J,a}-\phi_{J,a}\big)\,da.
\tag{PD.29}
```

For the current `TPS` route, frozen selector weights are the clean canonical
choice because they keep the forcing entirely in the explicit high-frequency
divergence term.

## Canonical Use

The best canonical defect field for the current route is the pair defect
`W_J`, with the one-point field `w_J` as its marginal.

The reason is structural:

```math
\text{pair-gap theorem}
\Longleftrightarrow
\text{two-point geometry},
\tag{PD.30}
```

```math
\text{shadow-tube exclusion}
\Longleftrightarrow
\text{two-point concentration near the diagonal}.
\tag{PD.31}
```

So the correct placement of parabolic observability / backward uniqueness is:

```math
\boxed{
\text{selector geometry first, then the pair defect }W_J,\text{ then parabolic tools.}
}
\tag{PD.32}
```

This packet does **not** solve the selector-local lower bound burden. What it
does is close the derived-defect side completely: every high-frequency
contribution now sits as explicit divergence-form forcing under a coarse
parabolic principal operator.

Because the principal drift is the low-frequency field `v_J=u_{\le J}`, this
derived defect packet lives in a smooth-drift parabolic regime. That is exactly
why Carleman or weighted backward-uniqueness tools remain candidate tools here,
despite the recent rough-drift advection-diffusion nonuniqueness literature.

## Auxiliary Closure Lemmas

### Corollary TPS-pair-defect-duhamel

Let `U_J^{(2)}(t,s)` denote the propagator of

```math
L_J^{(2)}
:=
\partial_t
+v_J(x,t)\cdot\nabla_x
+v_J(y,t)\cdot\nabla_y
-\nu(\Delta_x+\Delta_y).
\tag{PD.33}
```

Then

```math
W_J(t)
=
-\int_0^t
U_J^{(2)}(t,s)
\Big[
\nabla_x\cdot\big(r_J(x,s)K_J(s)\big)
+\nabla_y\cdot\big(r_J(y,s)K_J(s)\big)
\Big]\,ds.
\tag{PD.34}
```

This is the exact Duhamel representation for the pair defect.

### Lemma TPS-packet-C1-envelope

Let

```math
m_J^{(1)}:=\int \lambda_J(a)\,da,
\qquad
m_J^{(2)}:=\iint \Lambda_J(a,b)\,da\,db,
\tag{PD.35}
```

and define the regular-window Lipschitz budget

```math
L_J^{pkt}(t)
:=
\int_0^t
\big(
\|\nabla u(s)\|_{L^\infty_x}
+
\|\nabla v_J(s)\|_{L^\infty_x}
\big)\,ds.
\tag{PD.36}
```

On every interval `[0,T_J]` where the actual solution is smooth, there exists a
constant `C_\eta>0`, depending only on the fixed packet profile `\eta`, such
that

```math
\|\rho_J(t)\|_{C^1_x}+\|\bar\rho_J(t)\|_{C^1_x}
\le
C_\eta\,m_J^{(1)}\,\ell_J^{-4}
\exp\!\big(C\,L_J^{pkt}(t)\big),
\tag{PD.37}
```

and

```math
\|K_J(t)\|_{C^1_{x,y}}+\|\bar K_J(t)\|_{C^1_{x,y}}
\le
C_\eta\,m_J^{(2)}\,\ell_J^{-7}
\exp\!\big(C\,L_J^{pkt}(t)\big).
\tag{PD.38}
```

Equivalently, with the explicit packet constant

```math
\mathcal C_J^{pkt}
:=
C_\eta\big(m_J^{(1)}\ell_J^{-4}+m_J^{(2)}\ell_J^{-7}\big),
\tag{PD.39}
```

one may summarize the scale budget as

```math
\|\rho_J(t)\|_{C^1_x}+\|K_J(t)\|_{C^1_{x,y}}
\le
\mathcal C_J^{pkt}\exp\!\big(C\,L_J^{pkt}(t)\big).
\tag{PD.40}
```

This turns the packet regularity entering the defect bridge into a directly
checkable dyadic quantity built from the mollifier scale and selector masses.

**Proof.**
Each packet `\psi_{J,a}` solves a linear advection-diffusion equation with
smooth divergence-free drift `u`, and each coarse packet `\phi_{J,a}` solves
the same equation with drift `v_J`. Differentiating in space yields
transport-diffusion equations for `\nabla\psi_{J,a}` and `\nabla\phi_{J,a}`
whose forcing is linear in `(\nabla u)\nabla\psi_{J,a}` and
`(\nabla v_J)\nabla\phi_{J,a}`. The maximum principle and Gronwall therefore
give

```math
\|\nabla\psi_{J,a}(t)\|_{L^\infty_x}
+\|\nabla\phi_{J,a}(t)\|_{L^\infty_x}
\le
C_\eta\,\ell_J^{-4}
\exp\!\big(C\,L_J^{pkt}(t)\big),
```

uniformly in `a`, because the initial packet profile satisfies
`\|\eta_J\|_{C^1_x}\le C_\eta \ell_J^{-4}`. Integrating against the nonnegative
selector weights gives `(PD.37)`.

For the pair kernels, each factor `\psi_{J,a}` or `\phi_{J,a}` has
`\|\cdot\|_{L^\infty_x}\le C_\eta \ell_J^{-3}` and
`\|\nabla\cdot\|_{L^\infty_x}\le C_\eta \ell_J^{-4}
\exp(C\,L_J^{pkt}(t))`. Applying Leibniz to the products
`\psi_{J,a}(x,t)\psi_{J,b}(y,t)` and
`\phi_{J,a}(x,t)\phi_{J,b}(y,t)` yields the `\ell_J^{-7}` scale in `(PD.38)`,
and summing against the pair weights `\Lambda_J(a,b)` produces the factor
`m_J^{(2)}`. The summary `(PD.40)` is then just the definition `(PD.39)` with
the larger of the one-point and two-point constants absorbed into
`\mathcal C_J^{pkt}`. ∎

### Proposition TPS-defect-to-deviation-bridge

Let `\|\cdot\|_{\mathcal X_J}` be a route-local near-diagonal seminorm and
define the defect observable

```math
\mathfrak D_J
:=
\sup_{0\le t\le T_J}\|W_J(t)\|_{\mathcal X_J}.
\tag{PD.41}
```

Assume the actual/coarse deviation modulus from the coarse-flow note is
controlled by this observable:

```math
\Delta_J
\le
C_{\mathrm{bridge}}\,\mathfrak D_J.
\tag{PD.42}
```

Then `(PD.34)` yields

```math
\mathfrak D_J
\le
\sup_{0\le t\le T_J}
\int_0^t
\Big\|
U_J^{(2)}(t,s)
\Big[
\nabla_x\cdot\big(r_J(x,s)K_J(s)\big)
+
\nabla_y\cdot\big(r_J(y,s)K_J(s)\big)
\Big]
\Big\|_{\mathcal X_J}\,ds.
\tag{PD.43}
```

If, in addition, there is a route-local source norm `\|\cdot\|_{\mathcal S_J}`
such that the seminorm `\mathcal X_J` satisfies the parabolic smoothing bound

```math
\big\|U_J^{(2)}(t,s)\nabla_{x,y}\cdot F\big\|_{\mathcal X_J}
\le
C_{\mathcal X}
\ell_J^{-1}(t-s)^{-1/2}\|F\|_{\mathcal S_J},
\tag{PD.44}
```

and the source product estimate

```math
\big\|\big(r_J(x,s)K_J(s),r_J(y,s)K_J(s)\big)\big\|_{\mathcal S_J}
\le
C_{\mathcal S}
\|u_{>J}(s)\|_{L^\infty_x}\,
\|K_J(s)\|_{C^1_{x,y}},
\tag{PD.44a}
```

then

```math
\Delta_J
\le
C_{\mathrm{bridge}}\,
\ell_J^{-1}
\sup_{0\le t\le T_J}
\int_0^t (t-s)^{-1/2}
\|u_{>J}(s)\|_{L^\infty}\,
\|K_J(s)\|_{C^1_{x,y}}
\,ds.
\tag{PD.45}
```

Combining `(PD.45)` with `(PD.40)` gives the explicit sufficient bound

```math
\Delta_J
\le
C_{\mathrm{bridge}}\,
\mathcal C_J^{pkt}\,\ell_J^{-1}
\exp\!\big(C\,L_J^{pkt}(T_J)\big)
\int_0^{T_J}(T_J-s)^{-1/2}\|u_{>J}(s)\|_{L^\infty}\,ds.
\tag{PD.46}
```

So the defect-to-deviation passage now has a fully explicit packet-scale budget.

**Proof.**
The Duhamel formula `(PD.34)` and the definition `(PD.41)` give
`(PD.43)` after taking the `\mathcal X_J` seminorm and the supremum over
`0\le t\le T_J`. Package the pair source into the six-dimensional vector field

```math
F_J^{pair}(s)
:=
\big(r_J(x,s)K_J(s),r_J(y,s)K_J(s)\big),
```

so that the bracket in `(PD.43)` is exactly `\nabla_{x,y}\cdot F_J^{pair}(s)`.
Applying the smoothing estimate `(PD.44)` and the product estimate `(PD.44a)`
gives

```math
\mathfrak D_J
\le
C_D
\ell_J^{-1}
\sup_{0\le t\le T_J}
\int_0^t (t-s)^{-1/2}
\|u_{>J}(s)\|_{L^\infty_x}\,
\|K_J(s)\|_{C^1_{x,y}}
\,ds.
```

Multiplying by `C_{\mathrm{bridge}}` and using `(PD.42)` yields `(PD.45)`.
Finally insert the packet envelope `(PD.40)` and bound
`L_J^{pkt}(s)\le L_J^{pkt}(T_J)` for `0\le s\le T_J` to obtain `(PD.46)`. ∎

### Corollary TPS-defect-bridge-local-calibration

Let

```math
D_{J,\eta}
:=
\big\{(x,y)\in\mathbb R^3\times\mathbb R^3:|x-y|\le C_\eta\ell_J\big\},
```

and define the concrete near-diagonal defect seminorm

```math
\mathfrak D_J^{loc}(t)
:=
C_\eta\ell_J^{-1}
\|\nabla_{x,y}W_J(t)\|_{L^1(D_{J,\eta})}.
\tag{PD.46a}
```

Assume

```math
\Delta_J
\le
C_{\mathrm{bridge}}
\sup_{0\le t\le T_J}\mathfrak D_J^{loc}(t),
\tag{PD.46b}
```

and that the propagator obeys the local gradient estimate

```math
\|\nabla_{x,y}U_J^{(2)}(t,s)\nabla_{x,y}\cdot F\|_{L^1(D_{J,\eta})}
\le
C(t-s)^{-1/2}\|F\|_{L^1(D_{J,\eta})}.
\tag{PD.46c}
```

Then

```math
\Delta_J
\le
C_{\mathrm{bridge}}\,
\ell_J^{-1}
\sup_{0\le t\le T_J}
\int_0^t
(t-s)^{-1/2}
\|u_{>J}(s)\|_{L^\infty_x}\,
\|K_J(s)\|_{L^1(D_{J,\eta})}
\,ds.
\tag{PD.46d}
```

**Proof.**
Differentiate the Duhamel formula `(PD.34)` and apply `(PD.46c)` on `D_{J,\eta}`
to obtain

```math
\|\nabla_{x,y}W_J(t)\|_{L^1(D_{J,\eta})}
\le
C_D'
\int_0^t
(t-s)^{-1/2}
\big\|
\big(r_J(x,s)K_J(s),r_J(y,s)K_J(s)\big)
\big\|_{L^1(D_{J,\eta})}
\,ds.
```

Since `r_J=u_{>J}` depends on one slot only and `D_{J,\eta}` has packet-scale
width at most `C_D\ell_J`, the local product bound

```math
\big\|
\big(r_J(x,s)K_J(s),r_J(y,s)K_J(s)\big)
\big\|_{L^1(D_{J,\eta})}
\le
C_{prod}
\|u_{>J}(s)\|_{L^\infty_x}\,
\|K_J(s)\|_{L^1(D_{J,\eta})}
```

follows directly from Fubini. Multiply by `C_\eta\ell_J^{-1}`, take the
supremum in time, and use `(PD.46a)`-`(PD.46b)`. This yields `(PD.46d)`. ∎

## Conditional Observability Node

Define the nonnegative near-diagonal observable

```math
\Gamma_J^{obs}(t)
:=
\iint
\chi\!\Big(\frac{|x-y|}{\varsigma_J(t)}\Big)
|W_J(x,y,t)|\,dx\,dy.
\tag{PD.47}
```

### Hypothesis PDO-Carleman

There exist a data norm `\mathcal Y_J`, a forcing norm
`\mathcal Z_J([0,T_J])`, and a constant `C_{\mathrm{obs}}>0` such that every
solution of `(PD.25)` satisfies

```math
\int_0^{T_J}\Gamma_J^{obs}(t)\,dt
\le
C_{\mathrm{obs}}
\Big(
\|W_J(0)\|_{\mathcal Y_J}
+
\big\|
\nabla_x\cdot(r_J(x,\cdot)K_J)
+
\nabla_y\cdot(r_J(y,\cdot)K_J)
\big\|_{\mathcal Z_J([0,T_J])}
\Big).
\tag{PD.48}
```

Since `W_J(0)=0`, the present frozen-selector packet reduces this to a pure
forcing estimate.

### Hypothesis PDO-BU-weighted

There exist a weight profile `\omega_J(x,y,t)>0`, a weighted trace norm
`\mathcal Y_J^{BU}`, a weighted forcing norm `\mathcal Z_J^{BU}([0,T_J])`, and
a constant `C_{\mathrm{BU}}>0` such that every solution of `(PD.25)` satisfies

```math
\int_0^{T_J}\Gamma_J^{obs}(t)\,dt
\le
C_{\mathrm{BU}}
\Big(
\|\omega_J W_J\|_{\mathcal Y_J^{BU}}
+
\big\|
\omega_J\big(
\nabla_x\cdot(r_J(x,\cdot)K_J)
+
\nabla_y\cdot(r_J(y,\cdot)K_J)
\big)
\big\|_{\mathcal Z_J^{BU}([0,T_J])}
\Big).
\tag{PD.48a}
```

This is the weighted backward-uniqueness branch suggested by the Lei--Yuan
estimate: the packet does not prove such a bound, but it isolates exactly where
that alternative parabolic input would enter.

### Corollary TPS-defect-shadow-exclusion-interface

Assume either `PDO-Carleman` or `PDO-BU-weighted`, together with the bridge
`(PD.42)`-`(PD.46)`. Then every route-local estimate that makes the right-hand
side of `(PD.48)` or `(PD.48a)` small at the normalized shadow scale provides
the parabolic input needed by the coarse-flow shadow threshold.

So the observability side is now theorem-grade as a conditional dependency:
the unresolved parabolic input is isolated by name as either
`PDO-Carleman` or `PDO-BU-weighted`, rather than being left implicit.

## Formal Closure Package

Retain the explicit forcing

```math
F_J
:=
-\nabla_x\cdot\big(r_J(x,t)K_J\big)
-\nabla_y\cdot\big(r_J(y,t)K_J\big).
\tag{PD.49}
```

### Proposition TPS-pair-defect-product-estimate

For each `t`,

```math
\|r_J(\cdot,t)K_J(\cdot,\cdot,t)\|_{L^2_{x,y}}
\le
\|r_J(t)\|_{L^\infty_x}\|K_J(t)\|_{L^2_{x,y}}.
\tag{PD.50}
```

The same estimate controls the `y`-slot source term. So the forcing factorizes
exactly at the `L^2` level with no hidden gradient dependence.

**Proof.**
By Fubini,

```math
\|r_JK_J\|_{L^2_{x,y}}^2
=
\int_{\mathbb R^3_x}\int_{\mathbb R^3_y}
|r_J(x,t)|^2|K_J(x,y,t)|^2\,dy\,dx.
```

Pull out the `L^\infty_x` norm of `r_J` and then take square roots. The same
argument applies to the `y`-slot source term because the same velocity field
appears in each slot. ∎

### Corollary TPS-pair-defect-energy-closure

The pair-defect energy identity closes as

```math
\|W_J(t)\|_{L^2_{x,y}}^2
+\nu\int_0^t\|\nabla_{x,y}W_J(s)\|_{L^2_{x,y}}^2\,ds
\le
C_E
\int_0^t
\|r_J(s)\|_{L^\infty_x}^2
\|K_J(s)\|_{L^2_{x,y}}^2\,ds.
\tag{PD.51}
```

This is the exact corrected source norm implied by `(PD.49)` and `(PD.50)`.

**Proof.**
Multiply the pair-defect equation by `W_J` and integrate over
`\mathbb R^3_x\times\mathbb R^3_y`. The transport terms vanish because `v_J` is
divergence free in each slot, and the diffusion term contributes
`\nu\|\nabla_{x,y}W_J\|_{L^2_{x,y}}^2`. Integrating by parts on the forcing gives
the two terms with `r_JK_J\cdot\nabla W_J`, and Cauchy-Schwarz plus Young then
reduce them to `(PD.50)`. ∎

### Corollary TPS-pair-defect-stripwise-`L^2`-ledger

Fix one strip `I=[t_0,t_1]`. By time translation of `(PD.51)`, the pair-defect
energy obeys

```math
\sup_{t\in I}\|W_J(t)\|_{L^2_{x,y}}^2
+
\nu\int_I\|\nabla_{x,y}W_J(s)\|_{L^2_{x,y}}^2\,ds
\le
C_I
\|W_J(t_0)\|_{L^2_{x,y}}^2
+
\int_I
\|r_J(s)\|_{L^\infty_x}^2
\|K_J(s)\|_{L^2_{x,y}}^2\,ds.
\tag{PD.51a}
```

If, on the same strip, the initial/source ledger is absorbed by the installed
observability budget:

```math
\|W_J(t_0)\|_{L^2_{x,y}}^2
+
\int_I
\|r_J(s)\|_{L^\infty_x}^2
\|K_J(s)\|_{L^2_{x,y}}^2\,ds
\le
C_{W,I}\,\mathcal E_J^{obs}(I),
\tag{PD.51b}
```

then

```math
\int_I\|W_J(t)\|_{L^2_{x,y}}^2\,dt
\le
|I|\,C_{W,I}\,\mathcal E_J^{obs}(I).
\tag{PD.51c}
```

In particular, `(PD.51c)` is the exact stripwise global defect-energy estimate
needed whenever a downstream route asks for an integral `L^2_{x,y}` control of
`W_J` on `I`.

**Proof.**
Applying `(PD.51)` to the time-shifted strip gives `(PD.51a)`. Dropping the
nonnegative dissipation term and using `(PD.51b)` yields
`\sup_{t\in I}\|W_J(t)\|_{L^2_{x,y}}^2\le C_{W,I}\mathcal E_J^{obs}(I)`. Hence

```math
\int_I\|W_J(t)\|_{L^2_{x,y}}^2\,dt
\le
|I|\,\sup_{t\in I}\|W_J(t)\|_{L^2_{x,y}}^2
\le
|I|\,C_{W,I}\,\mathcal E_J^{obs}(I),
```

which is `(PD.51c)`. ∎

### Proposition TPS-pair-defect-global-smoothing

Assume `v_J\in L_t^1W_x^{1,\infty}` is divergence free. Then the two-point
operator

```math
L_J^{(2)}
:=
\partial_t
+v_J(x,t)\cdot\nabla_x
+v_J(y,t)\cdot\nabla_y
-\nu(\Delta_x+\Delta_y)
```

generates a propagator satisfying the gradient estimate

```math
\|\nabla_{x,y}U_J^{(2)}(t,s)f\|_{L^2_{x,y}}
\le
C(t-s)^{-1/2}
\exp\!\Big(C\int_s^t\|\nabla v_J(\tau)\|_{L^\infty_x}\,d\tau\Big)
\|f\|_{L^2_{x,y}},
\qquad 0\le s<t\le T_J.
\tag{PD.52}
```

Then `(PD.34)` and `(PD.50)` imply

```math
\|W_J(t)\|_{L^2_{x,y}}
\le
C_W
\int_0^t
(t-s)^{-1/2}\,
\exp\!\Big(C\int_s^t\|\nabla v_J(\tau)\|_{L^\infty_x}\,d\tau\Big)
\|r_J(s)\|_{L^\infty_x}\,
\|K_J(s)\|_{L^2_{x,y}}\,ds.
\tag{PD.53}
```

This is the clean global smoothing bridge from high-frequency tail control to
defect control.

**Proof.**
The propagator estimate is the bounded-drift energy estimate: commuting
`\nabla_{x,y}` past the transport term produces the commutator
`(\nabla v_J)\nabla_{x,y}`, Gronwall gives the exponential factor involving
`\int\|\nabla v_J\|_{L^\infty}`, and the heat kernel gives the
`(t-s)^{-1/2}` smoothing factor.

Start from the exact Duhamel formula `(PD.34)` and move the divergence onto the
propagator gradient. Minkowski and `(PD.52)` give an integral against the
`L^2_{x,y}` norm of the two-component source field
`\big(r_J(x,s)K_J(s),r_J(y,s)K_J(s)\big)`. Apply `(PD.50)` to each component. ∎

### Proposition TPS-pair-defect-tube-local

Let

```math
D_\rho:=\{(x,y)\in\mathbb R^3_x\times\mathbb R^3_y:|x-y|\le \rho\}.
\tag{PD.54}
```

Assume, in addition,

```math
\|\nabla_{x,y}U_J^{(2)}(t,s)f\|_{L^\infty_{x,y}}
\le
C(t-s)^{-1/2}
\exp\!\Big(C\int_s^t\|\nabla v_J(\tau)\|_{L^\infty_x}\,d\tau\Big)
\|f\|_{L^\infty_{x,y}}.
\tag{PD.55}
```

Then for every measurable `x`-window `E\subset\mathbb R^3` of finite measure
and every `\rho>0`,

```math
\|W_J(t)\|_{L^2((E\times\mathbb R^3)\cap D_\rho)}
\le
C_\rho
|E|^{1/2}\rho^{3/2}
\int_0^t
(t-s)^{-1/2}\,
\exp\!\Big(C\int_s^t\|\nabla v_J(\tau)\|_{L^\infty_x}\,d\tau\Big)
\|r_J(s)\|_{L^\infty_x}\,
\|K_J(s)\|_{L^\infty_{x,y}}\,ds.
\tag{PD.56}
```

So the near-diagonal gain carries the expected `\rho^{3/2}` factor after
explicit localization in the `x`-window. A global `\rho^{3/2}` statement on all
of `\mathbb R^6` would be false without such localization.

**Proof.**
The `L^\infty_{x,y}` semigroup bound `(PD.55)` and the Duhamel formula `(PD.34)`
yield an `L^\infty_{x,y}` estimate for `W_J`. Restricting to
`(E\times\mathbb R^3)\cap D_\rho`, one has
`\|W_J\|_{L^2}\le |(E\times\mathbb R^3)\cap D_\rho|^{1/2}\|W_J\|_{L^\infty}`.
Since the tube has thickness `\rho` in the relative variable, its localized
volume is at most `C_{tube}|E|\rho^3`, which gives `(PD.56)`. ∎

### Definition TPS-normalized-diagonal-mass

Define

```math
\mathcal D_J(t)
:=
\varsigma_J(t)^{-3}
\iint_{|x-y|\le c\,\varsigma_J(t)}
|W_J(x,y,t)|\,dx\,dy.
\tag{PD.57}
```

Then

```math
\iint_{|x-y|\le c\,\varsigma_J(t)}
|W_J(x,y,t)|\,dx\,dy
=
\varsigma_J(t)^3\mathcal D_J(t).
\tag{PD.58}
```

So the commutator bound rewrites as

```math
|\mathcal C_J(t)|
\le
C_C
\Big(
\|\nabla v_J(t)\|_{L^\infty_x}
+|\partial_t\log\varsigma_J(t)|
\Big)
\varsigma_J(t)^3\mathcal D_J(t),
\tag{PD.59}
```

while the forcing term obeys

```math
|\mathcal F_J(t)|
\le
C_F
\varsigma_J(t)^{-1}
\|r_J(t)\|_{L^\infty_x}
\iint_{|x-y|\le c\,\varsigma_J(t)}
|K_J(x,y,t)|\,dx\,dy.
\tag{PD.60}
```

If one also has the near-diagonal envelope

```math
\sup_{|x-y|\le c\,\varsigma_J(t)}|K_J(x,y,t)|\le M_J(t),
\tag{PD.61}
```

then

```math
|\mathcal F_J(t)|
\le
C_F'
\varsigma_J(t)^2
\|r_J(t)\|_{L^\infty_x}
M_J(t)\cdot \operatorname{Vol}_x(\text{active window}),
\tag{PD.62}
```

which is the correct scale comparison between the commutator and forcing sides.

### Corollary TPS-diagonal-interface-inequality

Define

```math
A_J(t)
:=
\|\nabla v_J(t)\|_{L^\infty_x}
+
|\partial_t\log\varsigma_J(t)|.
\tag{PD.62a}
```

If `A_J(t)>0`, `(PD.61)` holds, and the forcing is to be absorbed at time `t`
by the commutator term, in the sense that

```math
|\mathcal F_J(t)|
\le
c_0|\mathcal C_J(t)|
\tag{PD.62b}
```

for some fixed `c_0>0`, then

```math
\mathcal D_J(t)
\ge
c_D
\frac{
\varsigma_J(t)^{-1}
\|r_J(t)\|_{L^\infty_x}
M_J(t)\cdot \operatorname{Vol}_x(\text{active window})
}{
A_J(t)
}.
\tag{PD.62c}
```

So, after fixing the localized active window, the explicit competition is
between the normalized diagonal defect mass `\mathcal D_J` and the
scale-normalized forcing density
`\varsigma_J^{-1}\|r_J\|_{L^\infty_x}M_J`.

**Proof.**
Combine `(PD.59)` and `(PD.62)` under the absorption hypothesis `(PD.62b)` and
rearrange. ∎

### Proposition TPS-short-segment-directional-strain

Let `e:=(x-y)/|x-y|` for `x\neq y`, and let
`\gamma_\theta:=y+\theta(x-y)` for `0\le \theta\le 1`. Then

```math
(v_J(x,t)-v_J(y,t))\cdot e
=
|x-y|
\int_0^1 e^\top\nabla v_J(\gamma_\theta,t)e\,d\theta,
\tag{PD.63}
```

and therefore

```math
(v_J(x,t)-v_J(y,t))\cdot\frac{x-y}{|x-y|}
=
|x-y|
\int_0^1
\Big(\frac{x-y}{|x-y|}\otimes\frac{x-y}{|x-y|}\Big):S_J(\gamma_\theta,t)\,d\theta,
\tag{PD.64}
```

where `S_J:=\operatorname{Sym}\nabla v_J`.

So the true geometric burden is control of short-segment directional averages of
the strain tensor, not pointwise control of `\lambda_2^+` by itself.

**Proof.**
Apply the fundamental theorem of calculus to `v_J` along the segment
`\gamma_\theta=y+\theta(x-y)`. Taking the scalar product with
`e=(x-y)/|x-y|` gives the first identity. The antisymmetric part of
`\nabla v_J` drops out because `e^\top\Omega e=0` for every skew matrix
`\Omega`, so only `S_J=\operatorname{Sym}\nabla v_J` remains. ∎

## Remaining Frontier

### Theorem Candidate TPS-directional-segment-lower-envelope

Write the active diagonal region at the normalized shadow scale as

```math
\mathcal D_J(t):=\{(x,y):|x-y|\le C_D\varsigma_J(t)\}.
\tag{PD.65}
```

The exact remaining burden is to construct a selector-good subset and a
localized directional lower envelope `m_J(x,y,t)` on `\mathcal D_J(t)` such that

```math
\int_{t_0}^{t_1}
\inf_{(x,y)\in\mathcal D_J(t)}m_J(x,y,t)\,dt
\ge
c_m
\log\frac{\varsigma_J(t_0)}{\varsigma_J(t_1)},
\tag{PD.66}
```

where `m_J` is derived from the short-segment averages in `(PD.64)`, ideally
through an alignment or bundle reduction involving `\lambda_2^+`.

On the strong-route factorization, this is the geometric content that would
have to realize the still-open recurrence-loss / additive-renewal slot `SG.4`;
the defect packet closes the analytic side, while `SG.4` remains the bundle-side
theorem obstacle.

Equivalently,

```math
\boxed{
\text{construct a selector-good set and prove a lower envelope for short-segment directional averages of }S_J
\text{ along the active bundle.}
}
\tag{PD.67}
```

## Selector-Adapted One-Sided Defect Route

The short-segment strain identity `(PD.64)` shows that the geometric obstruction
is one-sided: the strong route needs a lower envelope for directional strain,
not merely a small norm for the pair defect `W_J`. The correct defect variable is
therefore not `\|W_J\|_{L^2_{x,y}}` alone, but the negative part of the
directional-strain gap against a chosen reference rate.

### Proposition TPS-one-sided-defect-identity

Fix an admissible strip `I=[t_0,t_1]`, a selector-good active family
`G_J^{pair}`, and a reference rate `\lambda_J(t)`. For `(a,b)\in G_J^{pair}`,
define

```math
\mathfrak d_J^-(a,b,t)
:=
\big[\lambda_J(t)-\mathfrak s_J(a,b,t)\big]_+,
\tag{PD.68}
```

```math
Z_{ab}^I(t)
:=
\log d_{ab}^{coarse}(t)
-
\log d_{ab}^{coarse}(t_0)
-
\int_{t_0}^t\lambda_J(s)\,ds.
\tag{PD.68a}
```

Then for a.e. `t\in I`,

```math
\partial_t Z_{ab}^I(t)
=
\mathfrak s_J(a,b,t)-\lambda_J(t),
\qquad
\big[-\partial_t Z_{ab}^I(t)\big]_+
=
\mathfrak d_J^-(a,b,t).
\tag{PD.68b}
```

Consequently the strip budget

```math
B_J^-(a,b;I)
:=
\int_I\mathfrak d_J^-(a,b,t)\,dt
\tag{PD.68c}
```

satisfies

```math
\log\frac{d_{ab}^{coarse}(t_1)}{d_{ab}^{coarse}(t_0)}
\ge
\int_I\lambda_J(s)\,ds
-
B_J^-(a,b;I).
\tag{PD.68d}
```

**Proof.**
Identity `(PD.68b)` is `(PD.64)` after substituting the exact logarithmic
pair-gap identity already used in `SG.4C`. Since
`\mathfrak s_J-\lambda_J\ge-[\lambda_J-\mathfrak s_J]_+`, integrating gives
`(PD.68d)`. ∎

### Corollary TPS-one-sided-defect-extraction

Let `\mu_J^{pair}` be a finite measure on `G_J^{pair}`. If

```math
\int_{G_J^{pair}}\big(B_J^-(a,b;I)\big)^2\,d\mu_J^{pair}(a,b)
\le
\mathcal E_J^-(I),
\tag{PD.69}
```

then for every `\eta>0` the exceptional set

```math
\mathfrak B_J(\eta;I)
:=
\big\{(a,b)\in G_J^{pair}:B_J^-(a,b;I)>\eta\big\}
\tag{PD.69a}
```

obeys

```math
\mu_J^{pair}\big(\mathfrak B_J(\eta;I)\big)
\le
\eta^{-2}\mathcal E_J^-(I).
\tag{PD.69b}
```

Hence on the complement of `\mathfrak B_J(\eta;I)`, every pair satisfies the
strip-gain lower bound

```math
\log\frac{d_{ab}^{coarse}(t_1)}{d_{ab}^{coarse}(t_0)}
\ge
\int_I\lambda_J(s)\,ds-\eta.
\tag{PD.69c}
```

In particular, if `\int_I\lambda_J(s)\,ds\ge m_J+\eta`, then the `SG.4B`
per-visit gain hypothesis holds on `G_J^{pair}\setminus\mathfrak B_J(\eta;I)`.

**Proof.**
Chebyshev applied to `(PD.69)` gives `(PD.69b)`, and `(PD.69c)` is then
`(PD.68d)` on the complement. ∎

### Definition TPS-selector-directional-deficit

For a reference rate `\lambda_J(t)` and active pair `(a,b)`, define the
selector-adapted directional-strain deficit

```math
\eta_J(a,b,t)
:=
\big[\lambda_J(t)-\mathfrak s_J(a,b,t)\big]_+
=
\mathfrak d_J^-(a,b,t).
\tag{PD.69d}
```

This is the one-sided defect variable attached to `SG.4`. It preserves the
sign, the selector localization, and the directional nature of the short-segment
strain burden.

### Definition TPS-selector-defect-energy

For a strip `I=[t_0,t_1]`, define the selector-weighted one-sided defect energy

```math
\mathfrak E_{J,2}^{SG}(I)
:=
\int_I\int_{G_J^{pair}}
\big(\eta_J(a,b,t)\big)^2\,d\mu_J^{pair}(a,b)\,dt.
\tag{PD.69e}
```

### Theorem Candidate TPS-selector-one-sided-defect-bridge

The exact missing bridge from the pair-defect PDE to `SG.4` is now the
residual selector-calibration theorem on the torus-first branch. The upstream
spectral floor, bundle-angle loss, and large-good-family extraction are already
peeled off in the companion notes; what remains here is the pairwise
observability closure.

```math
\boxed{
\mathfrak E_{J,2}^{SG}(I)
\le
\mathfrak F_J^{def}(I),
}
\tag{PD.70}
```

with `\mathfrak F_J^{def}(I)` controlled by the pair-defect forcing and
dissipation, after the upstream spectral/bundle losses have been removed. This
is the minimal source-aligned `PD.70` target on the current branch.

The sharp observability-to-envelope version is:

```math
\int_I\mathfrak d_J^-(a,b,t)\,dt
\le
C_{obs}
\int_I\Gamma_J^{obs}(t)\,dt
\tag{PD.70b}
```

for each selector-good active pair, followed by

```math
\int_I\Gamma_J^{obs}(t)\,dt
\le
C_\Gamma
\sup_{s\in I}\|W_J(s)\|_{L^2_{x,y}}^2
+
\int_I
\|u_{>J}(s)\|_{L^\infty_x}^2
\|K_J(s)\|_{L^2_{x,y}}^2\,ds,
\tag{PD.70c}
```

or a weighted `PDO-BU` analogue. This is the point where the signless defect
energy is converted into the one-sided selector ledger. The unresolved part is
not the large-good-family extraction, which is already formal, but the residual
pairwise closure

```math
\mathcal E_J^{dir}(I)+\mathcal E_J^{loop}(I)
\le
C_{PD}
\mathcal E_J^{obs}(I).
```

Indeed, Cauchy-Schwarz in time yields

```math
\int_{G_J^{pair}}\big(B_J^-(a,b;I)\big)^2\,d\mu_J^{pair}(a,b)
\le
|I|
\int_I\int_{G_J^{pair}}
\big(\mathfrak d_J^-(a,b,t)\big)^2
\,
d\mu_J^{pair}(a,b)\,dt.
\tag{PD.70a}
```

### Corollary TPS-transverse-ledger-reduction

Assume the hypotheses of Theorem Candidate `spectral transversality / bundle-angle coherence`
from
[spectral-transversality-cocycle-bridge-to-sg4.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/spectral-transversality-cocycle-bridge-to-sg4.md)
hold on one refined selector-good pair family `G_J^{pair,\angle}` over the strip
`I=[t_0,t_1]`.

Define the four explicit transverse-loss ledgers

```math
\mathcal E_J^{spec}(I)
:=
\int_I\int_{G_J^{pair,\angle}}
\big(\varepsilon_J^{spec}(t,a)\big)^2
\,d\mu_J^{pair}(a,b)\,dt,
\tag{PD.70h}
```

```math
\mathcal E_J^{bundle}(I)
:=
\int_I\int_{G_J^{pair,\angle}}
M_J(t)^2\theta_J(a,t)^4
\,d\mu_J^{pair}(a,b)\,dt,
\tag{PD.70i}
```

```math
\mathcal E_J^{dir}(I)
:=
\int_I\int_{G_J^{pair,\angle}}
M_J(t)^2\Xi_J(a,b,t)^2
\,d\mu_J^{pair}(a,b)\,dt,
\tag{PD.70j}
```

and

```math
\mathcal E_J^{loop}(I)
:=
\int_I\int_{G_J^{pair,\angle}}
\big|\operatorname{Err}_J^{loop}(a,b,t)\big|^2
\,d\mu_J^{pair}(a,b)\,dt.
\tag{PD.70k}
```

Then for a.e. `(a,b,t)\in G_J^{pair,\angle}\times I`,

```math
\mathfrak d_J^-(a,b,t)
\le
\varepsilon_J^{spec}(t,a)
+
2M_J(t)\theta_J(a,t)^2
+
C\,M_J(t)\Xi_J(a,b,t)
+
\operatorname{Err}_J^{loop}(a,b,t),
\tag{PD.70l}
```

and consequently

```math
\mathfrak E_{J,2}^{SG}(I)
\le
C_{SG}
\mathcal E_J^{spec}(I)
+
\mathcal E_J^{bundle}(I)
+
\mathcal E_J^{dir}(I)
+
\mathcal E_J^{loop}(I).
\tag{PD.70m}
```

In particular, `(PD.70)` holds with

```math
\mathfrak F_J^{def}(I)
\le
C_F
\mathcal E_J^{spec}(I)
+
\mathcal E_J^{bundle}(I)
+
\mathcal E_J^{dir}(I)
+
\mathcal E_J^{loop}(I).
\tag{PD.70n}
```

**Proof.**
The cited spectral-transversality theorem gives the pointwise lower-envelope
form
`\mathfrak s_J\ge \lambda_J-\varepsilon_J^{spec}-2M_J\theta_J^2
-C\,M_J\Xi_J-\operatorname{Err}_J^{loop}`.
Taking positive parts yields `(PD.70l)`. Squaring, using
`(x_1+x_2+x_3+x_4)^2\le 4(x_1^2+x_2^2+x_3^2+x_4^2)`, and integrating over
`I\times G_J^{pair,\angle}` gives `(PD.70m)`. Statement `(PD.70n)` is just the
definition of the defect budget in `(PD.70)`. ∎

So the selector-adapted one-sided bridge now splits into two layers:

```math
\text{upstream coarse spectral floor / bundle coherence}
\qquad+\qquad
\text{residual pair-direction and loop-control ledgers.}
\tag{PD.70o}
```

The first layer is already supplied by `CF-bundle-coercive` and the
spectral-transversality packet. The genuinely pair-defect-facing residual is
the sum

```math
\mathcal E_J^{dir}(I)+\mathcal E_J^{loop}(I).
\tag{PD.70p}
```

### Corollary TPS-residual-pairwise-closure-for-PD70

Assume, in addition to the previous corollary, that the pair-defect PDE branch
plus either `PDO-Carleman` or `PDO-BU-weighted` closes the residual pairwise
ledger:

```math
\mathcal E_J^{dir}(I)+\mathcal E_J^{loop}(I)
\le
\mathcal E_J^{obs}(I).
\tag{PD.70q}
```

Then `(PD.70)` follows with the sharper budget

```math
\mathfrak F_J^{def}(I)
\le
C_F'
\mathcal E_J^{spec}(I)
+
\mathcal E_J^{bundle}(I)
+
\mathcal E_J^{obs}(I).
\tag{PD.70r}
```

So the exact unresolved theorem is no longer a monolithic observability bound
for `\mathfrak d_J^-`. It is the residual pairwise control `(PD.70q)` after the
coarse spectral floor and bundle-angle losses have already been peeled off.

**Proof.**
Combine `(PD.70n)` with `(PD.70q)`. ∎

### Corollary TPS-selector-defect-budget

If `(PD.70)` holds, then the cumulative strip-defect budget obeys

```math
\int_{G_J^{pair}}\big(B_J^-(a,b;I)\big)^2\,d\mu_J^{pair}(a,b)
\le
\mathfrak B_J^{SG}(I),
\qquad
\mathfrak B_J^{SG}(I):=|I|\,\mathfrak F_J^{def}(I).
\tag{PD.70aa}
```

So the pair-defect PDE feeds `SG.4-production` through a selector-adapted
one-sided defect energy rather than through a raw norm on `W_J` alone.

**Proof.**
Combine `(PD.70a)` with `(PD.70)`. ∎

So `(PD.70)` implies `(PD.69)`, and the renewal branch of
`SG.4-production` is exactly the package `SG.4P` in the strong-bridge note:
once the reference gain `\int_I\lambda_J` dominates the extracted defect
budget, the large-good-family extraction and the finite-window renewal lemma
close the renewal ledger on that same pair family.

### Corollary TPS-selector-defect-bridge-to-SG4B

Assume `(PD.70)` holds on a strip `I=[t_0,t_1]`. Then for every `\eta>0` there
exists a refined selector-good pair family

```math
G_{J,\eta}^{pair}(I)
:=
G_J^{pair}\setminus \mathfrak B_J(\eta;I)
\tag{PD.70d}
```

such that

```math
\mu_J^{pair}\!\big(G_J^{pair}\setminus G_{J,\eta}^{pair}(I)\big)
\le
\eta^{-2}|I|\,\mathfrak F_J^{def}(I),
\tag{PD.70e}
```

and every pair `(a,b)\in G_{J,\eta}^{pair}(I)` satisfies

```math
\log\frac{d_{ab}^{coarse}(t_1)}{d_{ab}^{coarse}(t_0)}
\ge
\int_I\lambda_J(s)\,ds-\eta.
\tag{PD.70f}
```

In particular, if

```math
\int_I\lambda_J(s)\,ds\ge m_J+\eta,
\tag{PD.70g}
```

then the `SG.4B` per-visit gain hypothesis holds on `G_{J,\eta}^{pair}(I)`.

**Proof.**
Combine `TPS-selector-defect-budget` with `TPS-one-sided-defect-extraction`,
which gives `(PD.70e)` and `(PD.70f)`.
Condition `(PD.70g)` then upgrades `(PD.70f)` to the `SG.4B` gain statement. ∎

This is the corrected defect route:

```math
\text{pair-defect PDE}
\Longrightarrow
\text{selector-adapted one-sided defect bound}
\Longrightarrow
\text{stripwise gain on a large good family}
\Longrightarrow
SG.4B.
```

On the theorem stack, this is exactly the defect-ledger half of `SG.4P`.

The remaining original theorem burden is therefore sharper than before: not a
raw `L^2` bound on `W_J`, but a mechanism that converts the parabolic defect
equation into the one-sided directional defect estimate `(PD.70)`.

The strongest theorem-safe factorization currently on disk is now the
combination of the transverse split `(PD.70l)`-`(PD.70r)` with the formal
observability bridge in
[tps-selector-observability-to-sg4-bridge-proof-attempt.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md).
That combination shows:

```math
\text{coarse spectral floor}
+
\text{bundle-angle coherence}
\Longrightarrow
\text{explicit upstream losses }\mathcal E_J^{spec}+\mathcal E_J^{bundle},
```

while the genuinely unresolved pair-defect-side input is only

```math
\boxed{
\mathcal E_J^{dir}(I)+\mathcal E_J^{loop}(I)
\le
C_{PD}
\mathcal E_J^{obs}(I),
}
\tag{PD.70s}
```

namely, control of the pair-direction and loop/cocycle residual by the same
pair-defect PDE / observability branch.

After the segment-spectral floor is installed by
[tps-alignment-to-strain-production-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-alignment-to-strain-production-lemma.md),
the one-sided defect

```math
\big[\lambda_J-\mathfrak s_J\big]_+
```

is dominated on the same selector-good active-pair family by the spectral-floor
error plus the misalignment energy

```math
\Gamma_J^{seg}(a,b,t)
\big\|
\big(I-P_{J,\top}^{seg}(a,b,t)\big)e_{ab}(t)
\big\|^2.
```

So the residual pairwise theorem `PD.70s` may be read as the exact route-local
closure required to dominate that integrated misalignment ledger, not merely as
an abstract defect estimate.

After the angular-forcing transport inequality `AS.5`, the same statement may
be read even more sharply: on the simple-top cone with aspect-ratio control,
`PD.70s` is exactly the route-local closure required to dominate

```math
\int_I \frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}\,dt,
```

and, on the adiabatic branch, the derived budgets

```math
\int_I \frac{|K_J^{seg}n_J|^2}{g_J}\,dt,
\qquad
\int_I \frac{|\partial_t A_J^{seg}|^2}{g_J^3}\,dt.
```

On the exact-potential branch, however, the loop term is not genuinely
independent: if the active pair-gap cocycle is cycle-exact in the sense of
`(SC.2)` from
[transported-phase-space-selector-theorem-candidate.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/transported-phase-space-selector-theorem-candidate.md),
then the graph-Hodge harmonic part vanishes and the residual theorem collapses
to a directional estimate only.

Away from the exact-potential branch, the residual pairwise theorem splits into
three exact inputs.

First, a direction-reconstruction theorem on the refined selector-good family:

```math
\mathcal E_J^{dir}(I)
\le
C_{\mathrm{dir}}\,
\mathcal E_J^{dir,rec}(I),
\tag{PD.70t}
```

where `\mathcal E_J^{dir,rec}(I)` is the route-local reconstruction energy for
the pair-direction defect `\Xi_J`, built from the same pair-defect packet rather
than from a new geometric object.

Second, a loop-reconstruction theorem for the harmonic/circulation error:

```math
\mathcal E_J^{loop}(I)
\le
C_{\mathrm{loop}}\,
\mathcal E_J^{loop,rec}(I),
\tag{PD.70u}
```

where `\mathcal E_J^{loop,rec}(I)` is the route-local reconstruction energy for
`\operatorname{Err}_J^{loop}` coming from the active pair-gap cocycle / Hodge
packet.

Third, an augmented parabolic domination theorem:

```math
\mathcal E_J^{dir,rec}(I)+\mathcal E_J^{loop,rec}(I)
\le
C_{\mathrm{pair}}\,
\mathcal E_J^{obs}(I).
\tag{PD.70v}
```

Combining `(PD.70t)`-`(PD.70v)` recovers `(PD.70s)`.

### Corollary TPS-cycle-exact-collapse-of-PD70s

Assume the hypotheses of `TPS-transverse-ledger-reduction`, and suppose in
addition that the active pair-gap cocycle is cycle-exact on each refined active
connected component, so that `SC.2`-`SC.4` furnish a derived scalar potential
`\alpha_J` with

```math
D_J=\nabla_{\!graph}\alpha_J.
\tag{PD.70w}
```

Then the harmonic circulation part vanishes:

```math
h_J=0,
\qquad
\operatorname{Err}_J^{loop}(a,b,t)=0
\quad\text{for a.e. }(a,b,t),
\tag{PD.70x}
```

hence

```math
\mathcal E_J^{loop}(I)=0.
\tag{PD.70y}
```

Consequently the residual pairwise closure `(PD.70s)` reduces to the purely
directional theorem

```math
\boxed{
\mathcal E_J^{dir}(I)
\le
C_{PD}
\mathcal E_J^{obs}(I),
}
\tag{PD.70z}
```

and `(PD.70)` follows with the same upstream budget `(PD.70r)`.

**Proof.**
Cycle-exactness gives the exact-potential representation `(PD.70w)`, so the
graph-Hodge harmonic term is zero. By Theorem Candidate B in
[spectral-transversality-cocycle-bridge-to-sg4.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/spectral-transversality-cocycle-bridge-to-sg4.md),
`\operatorname{Err}_J^{loop}` is precisely the observable loss induced by that
harmonic circulation component or an equivalent chart-transport defect. On the
exact-potential branch there is therefore no independent loop ledger, giving
`(PD.70x)`-`(PD.70y)`. Substituting `(PD.70y)` into `(PD.70s)` yields `(PD.70z)`,
and then `(PD.70r)` follows from `TPS-residual-pairwise-closure-for-PD70`. ∎

### Corollary TPS-cycle-exact-polarization-implies-PD70z

Assume the hypotheses of `TPS-cycle-exact-collapse-of-PD70s`, so that
`\mathcal E_J^{loop}(I)=0`. Let the coarse strain tensor be

```math
S_J(t,x):=\frac{\nabla u_{\le J}(t,x)+\nabla u_{\le J}(t,x)^\top}{2},
```

with ordered eigenvalues
`\lambda_1(S_J)\ge \lambda_2(S_J)\ge \lambda_3(S_J)` and corresponding
orthonormal eigenvectors `e_1,e_2,e_3`. Suppose there exist

1. a measurable polarity map `\sigma_J(a,b,t)\in\{\pm1\}`;
2. a measurable transported unit pair direction
   `\omega_J(a,b,t)\in S^2`;
3. an expanding-direction readout `\Pi_J^{\mathrm{exp}}[\sigma_JW_J](a,b,t)`,
   interpreted as the projection of the polarized observed pair-defect packet
   onto the top eigendirection `e_1`;

such that for almost every active pair and time one has

```math
\Xi_J(a,b,t)
\le
C_{\mathrm{pol}}\,
\big|\Pi_J^{\mathrm{exp}}[\sigma_JW_J](a,b,t)\big|
+
\operatorname{Err}_J^{\mathrm{cal}}(a,b,t),
\tag{PD.70za}
```

and

```math
\int_I\!\!\int_{G_J^{pair}}
\big|\Pi_J^{\mathrm{exp}}[\sigma_JW_J](a,b,t)\big|^2
\,d\mu_J^{pair}(a,b)\,dt
\le
C_{\mathrm{obs}}^{\mathrm{exp}}\,
\mathcal E_J^{obs}(I),
\tag{PD.70zb}
```

```math
\int_I\!\!\int_{G_J^{pair}}
\big|\operatorname{Err}_J^{\mathrm{cal}}(a,b,t)\big|^2
\,d\mu_J^{pair}(a,b)\,dt
\le
C_{\mathrm{err}}^{\mathrm{cal}}\,
\mathcal E_J^{obs}(I).
\tag{PD.70zc}
```

Then the exact-potential branch closes through the directional estimate

```math
\mathcal E_J^{dir}(I)
\le
2\Big((C_{\mathrm{pol}})^2C_{\mathrm{obs}}^{\mathrm{exp}}
+
C_{\mathrm{err}}^{\mathrm{cal}}\Big)\,
\mathcal E_J^{obs}(I),
\tag{PD.70zd}
```

hence `(PD.70z)` holds.

**Proof.**
Square `(PD.70za)`, use `2(x+y)^2\le 2x^2+2y^2`, integrate over
`I\times G_J^{pair}`, and apply `(PD.70zb)`-`(PD.70zc)`. This gives
`(PD.70zd)`, which is exactly `(PD.70z)` after absorbing the displayed
constant into `C_{PD}`. ∎

### Corollary TPS-Hodge-harmonic-reduction-of-PD70s

Assume instead the graph-Hodge splitting

```math
D_J=\nabla_{\!graph}\alpha_J+h_J
\tag{PD.70z1}
```

from `(3.4)` in
[spectral-transversality-cocycle-bridge-to-sg4.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/spectral-transversality-cocycle-bridge-to-sg4.md),
and define the harmonic circulation ledger

```math
\mathcal E_J^{harm}(I)
:=
\int_I\int_{G_J^{pair,\angle}}
|h_J(a,b,t)|^2\,d\mu_J^{pair}(a,b)\,dt.
\tag{PD.70z2}
```

If the loop observable satisfies

```math
\mathcal E_J^{loop}(I)
\le
C_{\mathrm{harm}}\,
\mathcal E_J^{harm}(I),
\tag{PD.70z3}
```

then `(PD.70s)` is implied by the pair of explicit estimates

```math
\mathcal E_J^{dir}(I)
\le
C_{\mathrm{dir}}\,
\mathcal E_J^{obs}(I),
\tag{PD.70z4}
```

and

```math
\mathcal E_J^{harm}(I)
\le
C_{\mathrm{obs,harm}}\,
\mathcal E_J^{obs}(I).
\tag{PD.70z5}
```

So outside the exact-potential branch, the exact remaining burden is no longer
an undifferentiated loop term; it is directional observability plus harmonic
circulation observability.

**Proof.**
Combine `(PD.70z3)` with `(PD.70z5)` to control `\mathcal E_J^{loop}(I)` by the
same observability budget, then add `(PD.70z4)`. This gives `(PD.70s)`. ∎

### Corollary TPS-vanishing-error-split-of-PD70s

Assume the hypotheses of `TPS-Hodge-harmonic-reduction-of-PD70s`. Suppose in
addition that the direction, harmonic, and loop legs obey

```math
\mathcal E_J^{dir}(I)
\le
C_{\mathrm{dir}}^\star\,
\mathcal E_J^{obs}(I)
+\varepsilon_J^{dir}(I),
\tag{PD.70z6}
```

```math
\mathcal E_J^{harm}(I)
\le
C_{\mathrm{harm}}^\star\,
\mathcal E_J^{obs}(I)
+\varepsilon_J^{harm}(I),
\tag{PD.70z7}
```

```math
\mathcal E_J^{loop}(I)
\le
C_{\mathrm{loop}}^\star\,
\mathcal E_J^{harm}(I)
+\varepsilon_J^{loop}(I),
\tag{PD.70z8}
```

with a vanishing split ledger

```math
\varepsilon_J^{dir}(I)
+\varepsilon_J^{harm}(I)
+\varepsilon_J^{loop}(I)
=
o_J(1).
\tag{PD.70z9}
```

Then the residual pairwise closure obeys

```math
\mathcal E_J^{dir}(I)+\mathcal E_J^{loop}(I)
\le
\big(
C_{\mathrm{dir}}^\star
+
C_{\mathrm{loop}}^\star C_{\mathrm{harm}}^\star
\big)\mathcal E_J^{obs}(I)
+o_J(1).
\tag{PD.70z10}
```

On the cycle-exact branch, where `\mathcal E_J^{loop}(I)=0`, the remaining wall
reduces to the single direction estimate

```math
\mathcal E_J^{dir}(I)
\le
C_{\mathrm{dir}}^\star\,
\mathcal E_J^{obs}(I)
+o_J(1).
\tag{PD.70z11}
```

**Proof.**
Substitute `(PD.70z7)` into `(PD.70z8)` and then add `(PD.70z6)`. The error sum
is exactly `(PD.70z9)`, which yields `(PD.70z10)`. The cycle-exact claim
`(PD.70z11)` is the specialization `\mathcal E_J^{loop}(I)=0`. ∎

### Corollary TPS-Hodge-core-reduction-of-PD70s

Assume the hypotheses of `TPS-Hodge-harmonic-reduction-of-PD70s`, so the
loop-from-harmonic export `(PD.70z3)` is available on the same strip. Let
`\mathcal L_J^{sel}(I)\ge 0` be a nonnegative selector ledger and suppose

```math
\mathcal E_J^{dir}(I)
\le
C_{\mathrm{dir}}^\star\,
\mathcal E_J^{obs}(I)
+\varepsilon_J^{dir}(I),
\tag{PD.70z12}
```

```math
\mathcal E_J^{harm}(I)
\le
C_{\mathrm{harm}}^\star\,
\mathcal E_J^{obs}(I)
+\varepsilon_J^{harm}(I),
\tag{PD.70z13}
```

```math
\mathcal L_J^{sel}(I)\le \varepsilon_J^{sel}(I),
\qquad
\varepsilon_J^{dir}(I)
+C_{\mathrm{harm}}\varepsilon_J^{harm}(I)
+\varepsilon_J^{sel}(I)
=
o_J(1).
\tag{PD.70z14}
```

Then

```math
\mathcal E_J^{dir}(I)+\mathcal E_J^{loop}(I)+\mathcal L_J^{sel}(I)
\le
\big(
C_{\mathrm{dir}}^\star
+
C_{\mathrm{harm}}C_{\mathrm{harm}}^\star
\big)\mathcal E_J^{obs}(I)
+o_J(1).
\tag{PD.70z15}
```

Consequently, once the export step `(PD.70z3)` is granted, the genuinely new
Hodge core is reduced to direction observability, harmonic observability, and
selector-ledger vanishing.

**Proof.**
Combine `(PD.70z3)` with `(PD.70z12)`-`(PD.70z14)` and collect the error terms. ∎

### Remark exact three-slot compression of the Hodge branch

The compressed slogan

```math
\text{general Hodge frontier}=(PD.70z12)+(PD.70z13)+(PD.70z14)
```

is correct only after the loop-from-harmonic export `(PD.70z3)` is treated as
installed downstream infrastructure on the same strip family. Under that
convention, the loop term is no longer counted as an independent new theorem
slot: combining `(PD.70z3)` with `(PD.70z12)`-`(PD.70z14)` gives `(PD.70z15)`,
and dropping the nonnegative selector ledger yields

```math
\mathcal E_J^{dir}(I)+\mathcal E_J^{loop}(I)
\le
\big(
C_{\mathrm{dir}}^\star
+
C_{\mathrm{harm}}C_{\mathrm{harm}}^\star
\big)\mathcal E_J^{obs}(I)
+o_J(1).
\tag{PD.70z15a}
```

After the usual route-local normalization / absorption step for sufficiently
large `J`, this is exactly the residual pairwise closure `(PD.70q)`.

If one instead writes a separate explicit loop-error ledger
`\mathcal E_J^{loop}\le C\mathcal E_J^{harm}+\varepsilon_J^{loop}` with
`\varepsilon_J^{loop}\to 0`, then one has reverted to the expanded bookkeeping
form `(PD.70z6)`-`(PD.70z10)` rather than the sharper three-slot Hodge core.
So the exact distinction is:

- sharp Hodge core: `(PD.70z3)` installed, then the new burden is precisely
  `(PD.70z12)`-`(PD.70z14)`;
- expanded bookkeeping: keep an explicit loop error and work with
  `(PD.70z6)`-`(PD.70z10)`.

### Corollary TPS-Hodge-core-plus-normalization-yields-PD70q

Assume the hypotheses of `TPS-Hodge-core-reduction-of-PD70s`, so
`(PD.70z15)` holds on the active strip family. Assume in addition that the
route has been normalized so that any stripwise estimate of the form

```math
\mathcal E_J^{dir}(I)+\mathcal E_J^{loop}(I)
\le
C_\star\,\mathcal E_J^{obs}(I)+o_J(1),
\tag{PD.70z15b}
```

with fixed `C_\star<\infty`, is absorbed into the normalized observability
budget for all sufficiently large `J`, yielding exactly the closure `(PD.70q)`.

Then

```math
(PD.70z3)+(PD.70z12)+(PD.70z13)+(PD.70z14)
\Longrightarrow
(PD.70q)
\qquad
\text{for all sufficiently large }J.
\tag{PD.70z15c}
```

**Proof.**
By `TPS-Hodge-core-reduction-of-PD70s`, one has `(PD.70z15)`. Dropping the
nonnegative selector ledger gives `(PD.70z15a)`, which is an instance of
`(PD.70z15b)` with
`C_\star=C_{\mathrm{dir}}^\star+C_{\mathrm{harm}}C_{\mathrm{harm}}^\star`.
Apply the route-normalization hypothesis. ∎

### Corollary TPS-branch-sensitive-irreducible-cut-of-PD70

Assume the standing hypotheses through
`TPS-residual-pairwise-closure-for-PD70`, so the only unresolved task is to
certify the residual pairwise closure `(PD.70q)` on the active strip family.
Then the open theorem cut is exactly branch-sensitive:

1. If the active pair-gap cocycle is cycle-exact and the vanishing-error
   directional estimate `(PD.70z11)` holds, then `(PD.70q)` follows after
   absorbing the route-local constants and vanishing error for sufficiently
   large `J`. Hence `(PD.70)` closes with the budget `(PD.70r)`.
2. If the loop-from-harmonic export `(PD.70z3)` and the three-slot core
   `(PD.70z12)`-`(PD.70z14)` hold, then `(PD.70q)` follows after the same
   absorption step. Hence `(PD.70)` again closes with the budget `(PD.70r)`.

Therefore the honest frontier on the Law-2-survivor side is:

- cycle-exact branch: prove `(PD.70z11)` or any stronger directional theorem,
  including the lossless exact-potential specialization `(PD.70z)`;
- general Hodge branch: once `(PD.70z3)` is available, prove exactly the
  three-slot core `(PD.70z12)`-`(PD.70z14)`.

No additional independent loop theorem remains on the general Hodge branch
beyond the export step `(PD.70z3)` and the harmonic observability slot
`(PD.70z13)`.

**Proof.**
On the cycle-exact branch,
`TPS-cycle-exact-collapse-of-PD70s` gives `\mathcal E_J^{loop}(I)=0`, so the
residual pairwise closure reduces to the single directional estimate
`(PD.70z11)`. For sufficiently large `J`, the route-local constants and
vanishing error are absorbed into the normalized observability budget, which is
exactly the closure `(PD.70q)` required by
`TPS-residual-pairwise-closure-for-PD70`; therefore `(PD.70r)` follows.

On the general Hodge branch, `TPS-Hodge-core-reduction-of-PD70s` yields
`(PD.70z15)`. Since `\mathcal L_J^{sel}(I)\ge 0`, dropping that nonnegative
term gives
`\mathcal E_J^{dir}(I)+\mathcal E_J^{loop}(I)\le C_{PD}\mathcal E_J^{obs}(I)+o_J(1)`.
Again, for sufficiently large `J`, the route-local constants and vanishing
ledger are absorbed into the normalized observability budget, yielding
`(PD.70q)`. Applying `TPS-residual-pairwise-closure-for-PD70` then gives
`(PD.70r)`. ∎

The preceding corollary shows that the irreducible new mathematics is now
strictly smaller than “prove
`PD.70` from scratch”: the `SG.4B` extraction is already formal, the spectral
and bundle-angle losses are already peeled off, and the exact remaining burden
is branch-sensitive:

```text
cycle-exact branch: vanishing-error directional estimate (PD.70z11),
with the lossless exact-potential specialization (PD.70z); on the simple-top
subbranch the same wall may be read more sharply as control of the angular
forcing budget `\int_I \beta_J^2/g_J` or, under the adiabatic reduction
`(AS.6e)`, the explicit forcing pair
`\int_I |K_J^{seg}n_J|^2/g_J` and
`\int_I \|\partial_t A_J^{seg}\|_{\mathrm{op}}^2/g_J^3`; on the material-gap
simple-top subbranch, cone entry itself reduces to a finite-time singular-gap
bound, a uniform initial right-singular overlap, and a carrier-comparison bound
between the material left singular direction and the top eigendirection of
`A_J^{seg}`; on the predecessor-window version of that branch, the strip
boundary term is further replaced by explicit singular-gap and
carrier-comparison data at the strip entrance time;
general Hodge branch: once loop-from-harmonic export (PD.70z3) is granted,
the genuine core is direction observability + harmonic observability
+ selector-ledger vanishing, while the exact expanded packet is the
vanishing-error split ((PD.70z6)-(PD.70z10)) and its lossless
specialization ((PD.70z4)-(PD.70z5)).
```

No primary source currently on the lane proves that residual
pair-direction/loop-control estimate in this selector-adapted form. The
source-backed literature supports the surrounding ingredients:
regular-Lagrangian-flow backbone, sign-sensitive strain criteria such as
`\lambda_2^+`, anisotropic partial-strain control, weighted backward
uniqueness, and weak-strong continuation. The residual pairwise calibration
theorem family `(PD.70q)` / `(PD.70s)` / `(PD.70t)`-`(PD.70z15)` remains new
mathematics.
