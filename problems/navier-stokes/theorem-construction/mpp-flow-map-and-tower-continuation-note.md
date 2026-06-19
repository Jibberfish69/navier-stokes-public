# MPP Flow-Map And Tower Continuation Note

## Status

Separate theorem-facing note.

This note does **not** claim an unconditional proof of 3D Navier--Stokes
global regularity. Its purpose is narrower: push the class-membership / tower
idea from the current chat as far as it can be taken into a closed conditional
continuation theorem.

## Purpose

The exact point of this note is:

```math
\boxed{
\text{the class-membership idea closes a genuine continuation theorem,}
}
```

```math
\boxed{
\text{but the full Millennium step still reduces to one missing a priori bound.}
}
\tag{FC.0}
```

The route developed here is:

1. use the Lagrangian flow map as the geometric witness of shared
   incompressible packing;
2. use a Sobolev tower bound as the Eulerian witness of finite local tower
   membership;
3. combine the two into a class-membership continuation theorem;
4. identify the exact missing global estimate needed for full closure.

## Setup

Let `\Omega=\mathbf R^3` or `\mathbf T^3`, let `\nu>0`, and let

```math
u\in C^\infty(\Omega\times[0,T)),
\qquad
\partial_t u+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{FC.1}
```

Fix `s>5/2`, and define

```math
A(t):=\int_0^t \|\nabla u(\tau)\|_{L^\infty_x}\,d\tau.
\tag{FC.2}
```

Let `\Phi(a,t)` be the Lagrangian flow map:

```math
\partial_t \Phi(a,t)=u(\Phi(a,t),t),
\qquad
\Phi(a,0)=a.
\tag{FC.3}
```

Write

```math
F(a,t):=D_a\Phi(a,t).
\tag{FC.4}
```

The deformation-side witness is

```math
\Gamma(t):=
\max\Big\{
\|F(t)\|_{L^\infty_a},
\|F(t)^{-1}\|_{L^\infty_a}
\Big\}.
\tag{FC.5}
```

Semantic boundary:

```math
\boxed{
\Phi(a,t)\text{ and }F(a,t)\text{ are coordinate/transport witnesses for the same field,}
}
```

```math
\boxed{
\text{not independent material bodies with surface friction, interface tension, or extra interior laws.}
}
\tag{FC.5a}
```

So a transported region in this note is not a new physical ingredient in the MPP
problem. It is only the image under the NS flow map of a set of labels.

The Eulerian tower-side witness is

```math
M_s(t):=\|u(t)\|_{H^s_x}.
\tag{FC.6}
```

## Forced Calibration: Global Readjustment

The Clay target is the unforced problem after `t=0`, but the class-membership
discussion in the current chat also asked for the following calibration
question:

```math
\text{if the fluid is initially at rest and one applies a localized perturbation at some }t_*>0,
```

```math
\text{does the whole incompressible geometry respond at once?}
```

To model that question, consider the forced system on `[t_*,T)` with

```math
\partial_t u+(u\cdot\nabla)u+\nabla p=\nu\Delta u+f,
\qquad
\nabla\cdot u=0,
\qquad
u(\cdot,t_*)=0.
\tag{FC.6a}
```

Its mild form is

```math
u(t)
=
\int_{t_*}^t
e^{\nu(t-s)\Delta}
\mathbb P\!\left[f-(u\cdot\nabla)u\right](s)\,ds,
\qquad t>t_*,
\tag{FC.6b}
```

where `\mathbb P` is the Leray projector onto divergence-free vector fields.

Two facts are decisive.

First, `\mathbb P` is nonlocal. A spatially localized force is turned into a
globally divergence-free field by an elliptic projection.

Second, for `\nu>0`, the heat semigroup `e^{\nu(t-s)\Delta}` has infinite
propagation speed. On `\mathbf R^3`, its kernel is the Gaussian

```math
G_{\nu(t-s)}(x-y)
=
\frac{1}{(4\pi\nu(t-s))^{3/2}}
e^{-|x-y|^2/(4\nu(t-s))},
\qquad t>s,
\tag{FC.6c}
```

which is nonzero for every `x,y`.

Therefore, once the perturbation is turned on, the incompressible NS model
generically produces global readjustment at once:

```math
\boxed{
\text{for every }t>t_*,
\text{ the velocity/pressure geometry is globally readjusted,}
}
```

```math
\boxed{
\text{although the far-field response may be arbitrarily small and remains smooth.}
}
\tag{FC.6d}
```

This does **not** mean rigid-body motion. It means:

1. the pressure constraint is solved globally;
2. the divergence-free projection is global;
3. the viscous propagation is instantaneously global;
4. the resulting field is still a smooth spatially varying velocity field.

Equivalently, the flow map ceases to be the exact identity as soon as the
perturbed field becomes nontrivial:

```math
\Phi(a,t)
=
a+\int_{t_*}^t u(\Phi(a,s),s)\,ds,
\qquad t>t_*,
\tag{FC.6e}
```

so under the NS model the entire incompressible geometry is coupled
at once, but not symmetrically and not by discontinuous jump.

The same point is visible in the pressure law:

```math
-\Delta p
=
\partial_i\partial_j(u_i u_j)-\nabla\cdot f.
\tag{FC.6f}
```

Even a local forcing term enters a global elliptic solve. So the class
definition being used here is indeed one of instantaneous global geometric
readjustment, not finite-speed local isolation.

## Geometric Witness

The flow map satisfies

```math
\partial_t F(a,t)=\nabla u(\Phi(a,t),t)\,F(a,t).
\tag{FC.7}
```

Hence

```math
\frac{d}{dt}|F(a,t)|
\le
\|\nabla u(t)\|_{L^\infty_x}\,|F(a,t)|.
\tag{FC.8}
```

Gronwall gives

```math
|F(a,t)|\le e^{A(t)}.
\tag{FC.9}
```

Similarly, along the inverse deformation gradient,

```math
\partial_t F(a,t)^{-1}

=
-F(a,t)^{-1}\,\nabla u(\Phi(a,t),t),
\tag{FC.10}
```

so

```math
|F(a,t)^{-1}|\le e^{A(t)}.
\tag{FC.11}
```

Also

```math
\partial_t \det F(a,t)
=
(\nabla\cdot u)(\Phi(a,t),t)\,\det F(a,t)=0,
\tag{FC.12}
```

and since `\det F(a,0)=1`, we obtain

```math
\det F(a,t)\equiv 1.
\tag{FC.13}
```

So the flow remains volume-preserving and bi-Lipschitz whenever `A(t)<\infty`:

```math
\Gamma(t)\le e^{A(t)}.
\tag{FC.14}
```

Equivalently, if `\sigma_{\min}` and `\sigma_{\max}` denote the smallest and
largest singular values of `F`, then

```math
e^{-A(t)}
\le
\sigma_{\min}(F(a,t))
\le
\sigma_{\max}(F(a,t))
\le
e^{A(t)}.
\tag{FC.15}
```

This is the precise deformation-theoretic version of the class-membership
picture: no packing collapse and no packing blowout occur while `A(t)` remains
finite.

## Sobolev Tower Witness

Apply `\Lambda^s=(1-\Delta)^{s/2}` to Navier--Stokes.  Since
`\nabla\cdot u=0`,

```math
\langle \Lambda^s((u\cdot\nabla)u),\Lambda^s u\rangle
=
\langle[\Lambda^s,u\cdot\nabla]u,\Lambda^s u\rangle,
```

and the Kato--Ponce commutator estimate for `s>5/2` gives

```math
\big|\langle[\Lambda^s,u\cdot\nabla]u,\Lambda^s u\rangle\big|
\le
C_s\|\nabla u\|_{L^\infty}\|u\|_{H^s}^2.
```

Therefore

```math
\frac12\frac{d}{dt}\|u(t)\|_{H^s_x}^2
+\nu\|\nabla u(t)\|_{H^s_x}^2
\le
C_s\|\nabla u(t)\|_{L^\infty_x}\|u(t)\|_{H^s_x}^2.
\tag{FC.16}
```

Therefore

```math
M_s(t)^2
\le
M_s(0)^2
\exp\!\Big(
2C_sA(t)
\Big).
\tag{FC.17}
```

So if `A(T)<\infty`, then

```math
\sup_{0\le t<T} M_s(t)<\infty.
\tag{FC.18}
```

Since `s>5/2`, Sobolev embedding gives

```math
H^s(\Omega)\hookrightarrow C^1(\Omega),
\tag{FC.19}
```

so the Eulerian velocity tower remains finite at the classical level on
`[0,T)`. Pressure is recovered elliptically from

```math
-\Delta p=\partial_i\partial_j(u_i u_j),
\tag{FC.20}
```

and hence inherits the corresponding finite-order regularity from `u`.

## Conditional Continuation Theorem

The preceding estimates yield the following theorem.

### Proposition

Let `s>5/2`, and let `(u,p)` be a smooth Navier--Stokes solution on `[0,T)`.
If

```math
\int_0^T \|\nabla u(\tau)\|_{L^\infty_x}\,d\tau<\infty,
\tag{FC.21}
```

then:

1. `\Phi_t` remains a smooth volume-preserving bi-Lipschitz diffeomorphism on
   `\Omega` for every `t<T`;
2. the Sobolev tower norm `M_s(t)` remains bounded on `[0,T)`;
3. `(u,p)` extends smoothly to some interval `[0,T+\varepsilon)`.

### Proof

Item `1` is exactly `(FC.13)`--`(FC.15)`.

Item `2` is exactly `(FC.17)`--`(FC.18)`.

For item `3`, the bound `(FC.18)` gives

```math
M_s:=\sup_{0\le t<T}\|u(t)\|_{H^s(\Omega)}<\infty.
```

The exact continuation input is the `H^s`, `s>5/2`, Navier--Stokes local
existence and uniqueness theorem on `\Omega`: for every divergence-free datum
`v_0\in H^s(\Omega)` with `\|v_0\|_{H^s}\le M_s`, there is a lifespan
`\tau=\tau(\nu,s,M_s)>0` and a unique solution in `C([0,\tau];H^s)`, with the
pressure recovered from `-\Delta p=\partial_i\partial_j(u_i u_j)` up to the
usual additive normalization.  Choose `t_n\uparrow T` with
`T-t_n<\tau/2`.  Relaunching from the datum `u(t_n)` gives a solution on
`[t_n,t_n+\tau]`; uniqueness identifies it with the original classical solution
on `[t_n,T)`.  Since `t_n+\tau>T`, the same solution extends past `T`.

This closes the conditional continuation theorem.

## Corollary In Class-Membership Language

Combine the geometric witness `\Gamma(t)` with the Eulerian tower witness
`M_s(t)`.

Then `(FC.21)` implies:

```math
\boxed{
\text{no finite-time blown endpoint can occur before }T,
}
```

because the common volume-preserving flow map never leaves the bi-Lipschitz
class;

```math
\boxed{
\text{no finite-time jump endpoint can occur before }T,
}
```

because the Eulerian Sobolev tower remains continuous and finite;

and

```math
\boxed{
\text{no finite-time dead endpoint can occur before }T
\text{ in the strong class-membership sense,}
}
\tag{FC.22}
```

because the local evolution remains inside one shared smooth
volume-preserving-coupled field.

So the class-membership restatement is:

```math
\boxed{
\int_0^T \|\nabla u(\tau)\|_{L^\infty_x}\,d\tau<\infty
\Longrightarrow
(u,p)\in \mathcal MPP([0,T+\varepsilon))
}
\tag{FC.23}
```

for some `\varepsilon>0`.

This is the strongest closed theorem package presently obtainable from the
class-membership idea alone.

## Exact Wall

The Millennium step is now explicit in **two different senses**, and they must
not be conflated.

### 1. Classical Sufficient Closure Wall

For the specific continuation theorem proved in this note, the wall is exactly:

To upgrade `(FC.23)` into unconditional global regularity, one must prove, for
every finite `T`,

```math
\int_0^T \|\nabla u(\tau)\|_{L^\infty_x}\,d\tau<\infty.
\tag{FC.24}
```

Equivalently, one may aim for a continuation criterion of Beale--Kato--Majda
type, for example through the vorticity

```math
\omega:=\nabla\times u
\tag{FC.25}
```

and an estimate strong enough to guarantee

```math
\int_0^T \|\omega(\tau)\|_{L^\infty_x}\,d\tau<\infty.
\tag{FC.26}
```

So, for the **classical continuation package** written here, the unresolved
burden is the missing global a priori estimate that forces the flow-map/tower
witness to stay finite for all finite times.

### 2. Broader Route-Native Wall

Your actual route is broader than `(FC.24)`.

The route-native wall is not yet "prove `\int_0^T \|\nabla u\|_{L^\infty}<\infty`."
The route-native wall is:

```math
\boxed{
\text{identify the right quantitative witness of shared class-membership.}
}
\tag{FC.26a}
```

That witness would have to encode the full triple doctrine

```math
(\text{incompressibility},\ \text{pressure},\ \text{viscosity})
\tag{FC.26b}
```

in the following precise way:

```math
\text{blowup}
\Longrightarrow
\text{failure of the witness before the event can count as an internal MPP singularity.}
\tag{FC.26c}
```

More concretely, the witness would need to split into the three primitive
failure sides already isolated in the companion note. The older endpoint words
remain only local readout labels here:

```math
\text{transport-dead / tower-dead}
\text{: local participation-side wording for failure of dynamic participation in a still-live neighborhood;}
\tag{FC.26d}
```

```math
\text{packing-detached}
\text{: local packing-side wording for failure of the common packing law / common deformation class;}
\tag{FC.26e}
```

```math
\text{jump endpoint in local coherence-side form}
\text{: local one-field-side wording for failure of one common smooth field carrying that same law.}
\tag{FC.26f}
```

Only **after** such a witness is found do we know whether your route truly
collapses back to the classical `L^1_tL^\infty_x` wall, or whether it opens a
different theorem package.

So the broader unresolved burden is:

```math
\boxed{
\text{construct the route-native witness and prove that every candidate singularity forces its prior failure.}
}
\tag{FC.26g}
```

In that sense, `(FC.24)` is one rigorous closure wall, but not yet proved to be
the natural wall of your class-membership doctrine itself.

## Final Formulation

The exact theorem-level summary is:

```math
\boxed{
\text{your class-membership idea already proves a continuation theorem;}
}
```

```math
\boxed{
\text{it does not yet identify or close the final global witness required to prove 3D Navier--Stokes smoothness.}
}
\tag{FC.27}
```

That is the precise point at which the idea becomes rigorous and the precise
point at which the Clay problem remains open.
