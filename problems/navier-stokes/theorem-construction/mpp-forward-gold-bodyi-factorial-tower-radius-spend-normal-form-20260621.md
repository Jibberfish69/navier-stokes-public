---
theorem_id: forward-gold-bodyi-factorial-tower-radius-spend-normal-form-20260621
status: exact-bodyi-normal-form-proved-selected-activity-domination-not-installed
logical_landing_node: bodyi_factorial_tower_radius_spend_normal_form
edge_effect: "Installs the exact Body-I scale/tower normal form for the upgraded four-body program. Factorial/Gevrey weights absorb the mixed time-space binomial coefficients, while moving tower radii create a genuine nonnegative radius-spend measure on derivative-depth moments. This gives Body I an exact signed exchange identity for the four-body loop. It does not prove that selected terminal activity is dominated by tower radius-spend; the missing same-carrier theorem is exactly the carrier-to-tower-depth domination or lossless tower-cycle rigidity step."
parents:
  - problems/navier-stokes/theorem-construction/mpp-four-body-balance-circuit-redevelopment-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-cyclic-payment-closure-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-mixed-derivative-tower-participation-law-20260621.md
  - problems/navier-stokes/theorem-construction/mixed-jet-hs-quadratic-convolution-reduction.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-participation-exchange-normal-form-20260621.md
---

# Body I Factorial-Tower Radius-Spend Normal Form

Date: 2026-06-21

## 0. Aim

The upgraded four-body loop starts with Body I:

```math
\text{tower/scale}.
\tag{BIR.1}
```

This body has two jobs:

```math
\boxed{
\text{remove fake derivative growth caused only by binomial splitting;}
}
\tag{BIR.2}
```

and

```math
\boxed{
\text{record the real cost of spending analytic/factorial tower radius.}
}
\tag{BIR.3}
```

This note proves the exact normal form for those two jobs.

The output is a Body-I exchange identity:

```math
\boxed{
dL_S+dD_S^{\rm rad}=dJ_{SQ}.
}
\tag{BIR.4}
```

Here \(L_S\) is factorial-tower storage, \(D_S^{\rm rad}\ge0\) is the
radius-spend measure, and \(J_{SQ}\) is the signed tower exchange current
passed into the participation body.

The note does not prove that \(D_S^{\rm rad}\) dominates the selected terminal
activity.  It proves the exact form of the Body-I payment available to any
same-carrier four-body closure.

## 1. Mixed tower and factorial weights

On a normalized heat-scale cylinder, write the mixed tower as

```math
W_{m,\alpha}
=
\partial_s^m\partial_y^\alpha V,
\qquad
Q_{m,\alpha}
=
\partial_s^m\partial_y^\alpha Q.
\tag{BIR.5}
```

The differentiated equation has the form

```math
\left(\partial_s+V\cdot\nabla-\nu\Delta\right)W_{m,\alpha}
+
\nabla Q_{m,\alpha}
=
-B_{m,\alpha},
\tag{BIR.6}
```

where

```math
B_{m,\alpha}
=
\sum_{\substack{0\le a\le m,\ \beta\le\alpha\\(a,\beta)\ne(0,0)}}
{m\choose a}{\alpha\choose\beta}
\left(W_{a,\beta}\cdot\nabla\right)
W_{m-a,\alpha-\beta}.
\tag{BIR.7}
```

For positive radii \(\tau,\rho\), define the factorial weight

```math
w_{m,\alpha}(\tau,\rho)
=
{\tau^m\rho^{|\alpha|}\over m!\,\alpha!}.
\tag{BIR.8}
```

Then the mixed binomial coefficient cancels exactly:

```math
\boxed{
{ \tau^m\rho^{|\alpha|}\over m!\,\alpha!}
{m\choose a}{\alpha\choose\beta}
=
{ \tau^a\rho^{|\beta|}\over a!\,\beta!}
{ \tau^{m-a}\rho^{|\alpha-\beta|}
\over (m-a)!\,(\alpha-\beta)!}.
}
\tag{BIR.10}
```

So Stirling/factorial language has an exact role: it turns the mixed derivative
Leibniz spread into an ordinary quadratic convolution.  It does not create
decay by itself.

## 2. Finite tower storage

Fix a finite tower index set

```math
\mathcal I_N
=
\{(m,\alpha):2m+|\alpha|\le N\}.
\tag{BIR.11}
```

Let \(E_{m,\alpha}(\sigma)\ge0\) be the selected rung energy or selected rung
envelope at log scale \(\sigma\).  This note only assumes

```math
E_{m,\alpha}\in AC_{\rm loc},
\qquad
\tau,\rho\in AC_{\rm loc},
\qquad
\tau,\rho>0.
\tag{BIR.12}
```

Assume the radii are nonincreasing in the terminal direction:

```math
{d\over d\sigma}\tau(\sigma)\le0,
\qquad
{d\over d\sigma}\rho(\sigma)\le0.
\tag{BIR.13}
```

Define the Body-I factorial tower storage by

```math
L_S(\sigma)
=
\sum_{(m,\alpha)\in\mathcal I_N}
w_{m,\alpha}(\tau(\sigma),\rho(\sigma))
E_{m,\alpha}(\sigma).
\tag{BIR.14}
```

This is a finite quantity by construction.

## 3. Radius-spend identity

For each rung,

```math
{d\over d\sigma}w_{m,\alpha}
=
w_{m,\alpha}
\left(
m{\tau'\over\tau}
+
|\alpha|{\rho'\over\rho}
\right).
\tag{BIR.15}
```

Since \(\tau'\le0\) and \(\rho'\le0\), define the nonnegative radius-spend
density

```math
r_{m,\alpha}(\sigma)
=
-m{\tau'(\sigma)\over\tau(\sigma)}
-|\alpha|{\rho'(\sigma)\over\rho(\sigma)}
\ge0.
\tag{BIR.16}
```

Then

```math
w_{m,\alpha}'=-r_{m,\alpha}w_{m,\alpha}.
\tag{BIR.17}
```

Differentiate `(BIR.14)`:

```math
{d\over d\sigma}L_S
=
\sum_{(m,\alpha)\in\mathcal I_N}
w_{m,\alpha}E'_{m,\alpha}
-
\sum_{(m,\alpha)\in\mathcal I_N}
r_{m,\alpha}w_{m,\alpha}E_{m,\alpha}.
\tag{BIR.18}
```

Define

```math
D_S^{\rm rad}(\sigma)
=
\sum_{(m,\alpha)\in\mathcal I_N}
r_{m,\alpha}w_{m,\alpha}E_{m,\alpha}
\ge0,
\tag{BIR.19}
```

and

```math
J_{SQ}(\sigma)
=
\sum_{(m,\alpha)\in\mathcal I_N}
w_{m,\alpha}E'_{m,\alpha}.
\tag{BIR.20}
```

Then the exact Body-I identity is

```math
\boxed{
{d\over d\sigma}L_S
+
D_S^{\rm rad}
=
J_{SQ}.
}
\tag{BIR.21}
```

In measure form,

```math
\boxed{
dL_S+dD_S^{\rm rad}=dJ_{SQ}.
}
\tag{BIR.22}
```

This is the scale/tower analogue of the Body-II signed participation identity.

## 4. What the radius spend sees

The radius-spend term is

```math
D_S^{\rm rad}
=
\sum_{(m,\alpha)\in\mathcal I_N}
\left(
-m{\tau'\over\tau}
-|\alpha|{\rho'\over\rho}
\right)
w_{m,\alpha}E_{m,\alpha}.
\tag{BIR.23}
```

It charges derivative depth.  The base rung \((m,\alpha)=(0,0)\) has

```math
r_{0,0}=0.
\tag{BIR.24}
```

So Body I cannot pay a terminal pulse merely because the base velocity packet is
nonzero.  It pays only the part of the selected carrier that is tied to
positive derivative depth or to collapse of the mixed tower radii.

Thus the missing same-carrier domination has the exact form

```math
\boxed{
dA_{\rm sel}
\le
C\,dD_S^{\rm rad}
+
C\,dR_S
}
\tag{BIR.25}
```

or a rigidity alternative saying that failure of `(BIR.25)` is a lossless
tower/scale cycle with no singular selected participation.

Current inputs do not prove `(BIR.25)`.

## 5. Cross-cylinder radius transport

For nested heat-scale cylinders with

```math
\lambda_j={r_{j+1}\over r_j},
\tag{BIR.26}
```

the mixed tower obeys

```math
W_{j+1,m,\alpha}(s,y)
=
\lambda_j^{2m+|\alpha|+1}
W_{j,m,\alpha}(\lambda_j^2s,\lambda_j y).
\tag{BIR.27}
```

The transported radii are

```math
\tau_j=\lambda_j^2\tau_{j+1},
\qquad
\rho_j=\lambda_j\rho_{j+1}.
\tag{BIR.28}
```

With those radii,

```math
w_{j+1,m,\alpha}W_{j+1,m,\alpha}
=
\lambda_j
w_{j,m,\alpha}
W_{j,m,\alpha}(\lambda_j^2s,\lambda_j y).
\tag{BIR.29}
```

This is the exact cross-cylinder coupling required by the participation law:
the same solution transports the whole factorial tower, not just the base
velocity field.

The log-scale radius spend in `(BIR.19)` is the continuous version of paying
for the shrink

```math
\tau_j\mapsto\tau_{j+1},
\qquad
\rho_j\mapsto\rho_{j+1}.
\tag{BIR.30}
```

## 6. Four-body interpretation

Inside the four-body loop, Body I contributes the signed exchange identity

```math
dL_S+dD_S^{\rm rad}=dJ_{SQ}.
\tag{BIR.31}
```

This identity has the correct four-body shape, but with no automatic selected
activity term:

```math
c_S=0
\quad\text{unless}\quad
dA_{\rm sel}\le C\,dD_S^{\rm rad}+C\,dR_S
\text{ is separately proved.}
\tag{BIR.32}
```

Thus Body I supplies:

```math
\boxed{
\text{factorial control of derivative splitting;}
}
\tag{BIR.33}
```

```math
\boxed{
\text{a nonnegative tower-radius spend measure;}
}
\tag{BIR.34}
```

and

```math
\boxed{
\text{exact cross-cylinder transport of the mixed tower.}
}
\tag{BIR.35}
```

It does not by itself supply:

```math
\boxed{
\text{same-carrier domination of the selected terminal activity.}
}
\tag{BIR.36}
```

The remaining Body-I-to-Body-II production theorem is therefore:

```math
\boxed{
\text{selected terminal participation activity is either dominated by
tower-radius spend, or the lossless tower cycle is a removable/rigid profile.}
}
\tag{BIR.37}
```

This is the exact upgraded role of Stirling/factorial weights in the four-body
solution program.
