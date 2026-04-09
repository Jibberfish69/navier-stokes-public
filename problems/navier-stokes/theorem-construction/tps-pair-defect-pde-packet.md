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
\lesssim
\int_0^t \|r_J(s)\|_{L^\infty}\,\|\nabla\rho_J(s)\|_{L^p}\,ds,
\tag{PD.16}
```

and in particular

```math
\|w_J(t)\|_{L^2}^2
+
2\nu\int_0^t\|\nabla w_J(s)\|_{L^2}^2\,ds
\lesssim
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
