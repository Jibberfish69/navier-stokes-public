# MPP Derivative Tower Cone Closure Race Attempt

Date: 2026-06-11

Status: forward-positive mathematical attempt on the derivative-tower version of
the shrinking-cone transfer-versus-drain idea.

## Target

The question is whether the shrinking cone, represented through the derivative
tower, proves that a local packet cannot accumulate singular strength faster
than the same participating field drains, dissipates, or pays return debt.

Let `r(t)` be the shrinking radius.  On `B_{r(t)}(x0)`, define the tower rung:

```math
E_q(r,t)
:=
\int_{B_{r(t)}(x0)}
|\nabla^q u(x,t)|^2\,dx.
```

Use the scale-critical tower normalization:

```math
S_q(r,t)
:=
{r^{2q-1}\over\nu^2}
\int_{B_r(x0)}|\nabla^q u(x,t)|^2\,dx.
```

A retained critical rung means that there are constants `0<c_q\le C_q<\infty`
with:

```math
c_q\le S_q(r,t)\le C_q
```

on the selected cone slabs.  Equivalently:

```math
c_q\nu^2r^{1-2q}
\le
E_q(r,t)
\le
C_q\nu^2r^{1-2q}.
```

Thus a retained base packet can hide in physical energy:

```math
E_0(r,t)\le C_0\nu^2 r\to0,
```

while a retained derivative rung cannot hide in the same way:

```math
E_q(r,t)\ge c_q\nu^2r^{1-2q}\to\infty
\qquad(q\ge1).
```

This is the correct place for the derivative tower in Thomas's cone picture.

## Heat-Time Currency

The natural clock at scale `r` is:

```math
\tau_r:= {r^2\over\nu}.
```

Equivalently, define normalized heat time:

```math
d\sigma={\nu\,dt\over r(t)^2}.
```

The same normalized tower load is:

```math
S_q(r,t)
:=
{r^{2q-1}\over\nu^2}
\int_{B_r}|\nabla^q u|^2\,dx.
```

On a heat-scale interval `I_r`, the selection means:

```math
c_h\tau_r\le |I_r|\le C_h\tau_r.
```

At each relevant rung, a critical retained packet means the two-sided bound
`c_q\le S_q(r,t)\le C_q`, not an asymptotic scale phrase.

The desired tower-cone theorem would be a finite heat-time bill:

```math
\int S_q(r(t),t)\,d\sigma(t)<\infty
```

or a stronger statement forcing:

```math
S_q(r(t),t)\to0
```

on late terminal heat slabs.

If the packet stayed critical on a disjoint or bounded-overlap family of
infinitely many heat slabs with positive normalized thickness, this integral
would diverge. Without that charging/separation condition, this is only the
per-slab criterion.

## What The Tower Proves

The tower proves exact lower bounds for localized contrast and non-affine
defect.

A pure through-flow is not enough.  It can have positive inward wall rate while
carrying no derivative-tower cost inside the receiver.

So the receiver must be quotiented by translations:

```math
A_r(t)
=
{1\over\nu^2 r}
\inf_{c\in\mathbb R^3}
\int_{B_r}|u-c|^2\,dx.
```

If:

```math
A_r(t)\ge a0>0,
```

then Poincare gives a constant `c_P>0`:

```math
\int_{B_r}|\nabla u|^2\,dx
\ge
c_P\,{a0\nu^2\over r}.
```

So `A_r(t)>=a0` gives the displayed slice lower bound for
`\int_{B_r}|\nabla u|^2`. This is not a time-integrated feed theorem until a
time-set or receiver-accounting hypothesis is supplied.

If the first derivative field is non-affine, define:

```math
B_r(t)
=
{r\over\nu^2}
\inf_A
\int_{B_r}|\nabla u-A|^2\,dx.
```

If:

```math
B_r(t)\ge b0>0
```

on a positive fraction of a heat-scale slab, second-order Poincare gives:

```math
\nu
\int_{I_r}\int_{B_r}|\nabla^2u|^2\,dxdt
\ge
c_{P,2}\,\theta\,b0\,{\nu^2\over r}.
```

The constant depends only on the local chart and Poincare constants; the
positive fraction of the slab is `\theta`.  This lower bound is not summable
down dyadic scales only after the charged slabs are selected disjointly or with
bounded overlap. Hence a scale-charged persistent non-affine critical cone
branch cannot be paid by any finite second-derivative tower budget.

If the branch is affine in the core, the cost moves into the collar only
after a separate affine-collar mismatch hypothesis is proved.  The exact
critical affine-core hypothesis is:

```math
\inf_{b,A}
\int_{B_{\theta r}(x0)}
|u(x,t)-b-A(x-x0)|^2\,dx
\le \eta^2\nu^2r,
\qquad
c_A{\nu\over r^2}\le |A(t)|\le C_A{\nu\over r^2}.
```

The collar theorem that would price this branch is:

```math
\nu\int_G\int_{B_R}|\nabla^2u|^2\,dxdt
\ge
c_{\mathrm{aff}}(\nu,\eta,\theta,E_R,c_A,C_A)>0.
```

on each natural slab where the affine core persists and must be reconciled
with a finite-energy parent ball.  That collar theorem is a required input,
not something supplied by tower normalization alone.

The exact split is:

```text
through-flow: not retained packet load;
localized non-affine packet: per-scale tower bill under B_r>=b0 on a positive
  heat-time subset; non-summable only after scale-separated or bounded-overlap
  charging;
localized affine packet: parent-collar bill only after affine-collar mismatch is proved.
```

## Why This Still Does Not Close The Full Problem

The missing upper budget is exactly the high-tower problem.

The global energy identity supplies:

```math
\nu\int_0^T\int|\nabla u|^2\,dxdt<\infty.
```

It does not supply:

```math
\nu\int_0^T\int|\nabla^2u|^2\,dxdt<\infty.
```

The enstrophy identity is:

```math
{1\over2}{d\over dt}\|\omega\|_2^2
+\nu\|\nabla\omega\|_2^2
=
\int(\omega\cdot\nabla u)\cdot\omega\,dx.
```

The right-hand side is vortex stretching.  Sobolev, Gagliardo--Nirenberg, and
Young give:

```math
\left|\int(\omega\cdot\nabla u)\cdot\omega\,dx\right|
\le
C\|\nabla u\|_2^{3/2}\|\nabla\omega\|_2^{3/2}
\le
{\nu\over2}\|\nabla\omega\|_2^2
C\nu^{-3}\|\nabla u\|_2^6.
```

Therefore

```math
Y'(t)\le C\nu^{-3}Y(t)^3,
\qquad
Y(t)=\|\nabla u(t)\|_2^2.
```

That comparison permits finite-time high-tower growth.  Thus the derivative
tower turns the cone problem into the classical vortex-stretching wall; it does
not by itself remove the wall.

## Countermodel-First Accounting

A scale cascade can be cheap in base energy.

Let:

```math
r_j=2^{-j}r_0,
\qquad
U_j={\nu\over r_j},
\qquad
c_h{r_j^2\over\nu}\le |I_j|\le C_h{r_j^2\over\nu}.
```

Assume the normalized base packet satisfies `0<c_0\le S_0(r_j,t)\le C_0`.
Then its base load obeys:

```math
c_0\nu^2r_j\le E_0(r_j)\le C_0\nu^2r_j,
```

and its benchmark base heat-time payment lies between constants times
`\nu^2r_j`:

```math
c_h\nu^2r_j
\le
{\nu^3\over r_j}\,|I_j|
\le
C_h\nu^2r_j.
```

Hence:

```math
\sum_j\nu^2r_j<\infty.
```

This proves that raw field drain cannot be the closure currency.

At the first derivative rung:

```math
E_1(r_j)\ge c_1{\nu^2\over r_j},
```

and the non-affine second-derivative heat-slab bill obeys:

```math
\nu\int_{I_j}\int_{B_{r_j}}|\nabla^2u|^2\,dxdt
\ge
c_{P,2}\theta b0{\nu^2\over r_j}.
```

Thus:

```math
\sum_j{\nu^2\over r_j}=\infty.
```

The derivative tower catches a scale-charged non-affine cascade, but only if a
finite higher-tower budget and the scale-charging ledger are available. Since
the standard equations provide vortex stretching as the high-tower source, that
finite budget is exactly part of the unsolved work.

## Full-Tower Generating Functional Test

One can try to sum the tower with a parabolic analytic weight:

```math
\mathcal A_\lambda(t)
=
\sum_{q\ge0}
{\lambda^{2q}\over(q!)^2}
\|\nabla^q u(t)\|_2^2.
```

The viscous term controls the shifted tower:

```math
\mathcal B_\lambda(t)
=
\sum_{q\ge0}
{\lambda^{2q}\over(q!)^2}
\|\nabla^{q+1}u(t)\|_2^2.
```

The product rule and pressure elliptic recovery give an analytic-tower
inequality with a constant `C_{\mathrm{an}}`:

```math
{d\over dt}\mathcal A_\lambda
+\nu\mathcal B_\lambda
\le
{C_{\mathrm{an}}\over\lambda}
\mathcal A_\lambda^{1/2}\mathcal B_\lambda.
```

So absorption works only under a strict margin:

```math
{C_{\mathrm{an}}\over\lambda}\mathcal A_\lambda^{1/2}
\le
(1-\delta)\nu.
```

At the selected cone scale `\lambda=r(t)`, a critical packet is exactly the
case where this strict margin is not automatically available.  The full tower
therefore closes subcritical packets, not the critical terminal branch by
itself.

## Exact Closure Theorem Still Needed

The derivative-tower cone problem is now reduced to precise theorem options.

A proof must supply one of the following strict mechanisms:

```math
\boxed{
\text{CriticalTowerStrictDampingMargin.A:}
\quad
\mathcal A_{r(t)}^{1/2}
\le
(1-\delta)\nu r(t)
}
```

on late terminal slabs;

or:

```math
\boxed{
\text{VortexStretchingCancellation.A:}
\quad
\int(\omega\cdot\nabla u)\cdot\omega
\text{ is absorbed by viscous tower drain on the cone-selected family;}
}
```

or:

```math
\boxed{
\text{TerminalTowerTimeThickness.A:}
\quad
\text{critical tower/source activity cannot concentrate on zero-thickness
terminal layers;}
}
```

or:

```math
\boxed{
\text{RigidCriticalConeProfileLiouville.A:}
\quad
\text{every exact rescaled critical branch saturating the tower balance is a removable
through-flow/affine mode or violates finite-energy same-fluid compatibility.}
}
```

## Verdict

The derivative tower honors the main mathematical content of the cone idea:
base energy can hide, but a scale-charged non-affine branch cannot hide from
the displayed tower bill.

It does not close Navier-Stokes on its own.  It reduces the problem to the
critical tower equality case where transport and viscosity balance.  Closing
that equality case requires a strict damping margin, a vortex-stretching
cancellation, a terminal time-thickness theorem, or a rigid critical-profile
Liouville theorem.
