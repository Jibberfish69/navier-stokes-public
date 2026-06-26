---
theorem_id: forward-gold-local-affine-material-jet-insufficiency-20260626
status: proof-audit-local-material-jet-constraints-do-not-force-finite-full-action
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-dyadic-reduced-identities-insufficiency-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-strain-local-normal-form-full-participation-sign-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-action-superheat-compactness-nobypass-20260626.md
---

# Local Affine Material Jet Insufficiency

This note tests the next possible structural shortcut for the finite full
same-material action theorem.

The reduced dyadic burst model is not a Navier--Stokes solution, so the next
question is whether the missing estimate is already forced by the local
Navier--Stokes material jet:

```math
D_tB=-B^2-\nabla^2p+\nu\Delta B,
\qquad
\operatorname{tr}B=0,
\qquad
B=\nabla u .
\tag{LAJ.1}
```

It is not.

## 1. Exact local affine Navier--Stokes packets

Let \(A(t)\) be any smooth symmetric trace-free matrix on a time interval.
Set, locally in space,

```math
u(t,x)=A(t)x .
\tag{LAJ.2}
```

Then

```math
\nabla u=A(t),
\qquad
\nabla\cdot u=\operatorname{tr}A(t)=0,
\qquad
\Delta u=0 .
\tag{LAJ.3}
```

Also

```math
\partial_tu+(u\cdot\nabla)u
=
\left(\dot A(t)+A(t)^2\right)x .
\tag{LAJ.4}
```

Since \(\dot A(t)+A(t)^2\) is symmetric, choose

```math
p(t,x)
=
-{1\over2}x\cdot\left(\dot A(t)+A(t)^2\right)x .
\tag{LAJ.5}
```

Then

```math
\nabla p
=
-\left(\dot A(t)+A(t)^2\right)x ,
\tag{LAJ.6}
```

and therefore

```math
\partial_tu+(u\cdot\nabla)u+\nabla p-\nu\Delta u=0,
\qquad
\nabla\cdot u=0 .
\tag{LAJ.7}
```

This is an exact local smooth Navier--Stokes packet.  It is pressure-balanced,
incompressible, and viscosity-compatible.

The pressure Poisson equation is also consistent:

```math
-\Delta p
=
\operatorname{tr}A(t)^2
=
\partial_i u_j\,\partial_j u_i .
\tag{LAJ.8}
```

## 2. Arbitrary local strain-time profiles are allowed at the jet level

Choose an eigenbasis with

```math
A(t)=\operatorname{diag}(\lambda(t),-\lambda(t),0).
\tag{LAJ.9}
```

The material metric along the expanding eigenline satisfies

```math
{d\over dt}\log|F(t)e_1|
=
\lambda(t).
\tag{LAJ.10}
```

Thus the positive material strain/action readout contains

```math
\int [\lambda(t)]_+\,dt .
\tag{LAJ.11}
```

The function \(\lambda(t)\) is arbitrary at this local-jet level.  In
particular, one may choose terminal bursts

```math
\lambda_k(t)=a_k\mathbf 1_{I_k}(t)
\tag{LAJ.12}
```

after smooth endpoint rounding, with \(I_k\to T_*\).  The pressure simply
absorbs the required acceleration through the Hessian term in `(LAJ.5)`.

The local pressure-Hessian partner is exact:

```math
-e_1\cdot\nabla^2p\,e_1
=
\lambda'(t)+\lambda(t)^2 .
\tag{LAJ.13}
```

This is precisely the strain-eigenvalue equation in local affine form.  It
places the pressure Hessian inside the same participation-law--strain packet,
but it does not by itself give a bounded-below depletion functional for
\(\int[\lambda]_+dt\).

## 3. What this rules out

The local affine packet satisfies the full local pressure--viscosity--
incompressibility--velocity law.  It also satisfies the complete-frame
trace-free orientation identity:

```math
\lambda(t)+(-\lambda(t))+0=0 .
\tag{LAJ.14}
```

So local pressure ellipticity, the material gradient equation, trace-free
strain, complete-frame orientation, and the pressure-Hessian strain partner do
not alone force finite total positive action.

They prove attachment and admission:

```math
\text{positive local strain service belongs to the same NS packet.}
\tag{LAJ.15}
```

They do not prove the finite total estimate:

```math
\int_0^{T_*}d\Omega_N^{PLS,full}<\infty .
\tag{LAJ.16}
```

Here \(d\Omega_N^{PLS,full}\) is only the legacy notation for the finite full
same-material action measure.

## 4. What a successful proof must use

The obstruction in this note is local.  It does not construct a global
periodic finite-energy Navier--Stokes solution with infinite full action.

Its proof role is narrower and useful: the missing Gold theorem cannot be a
pure local material-jet theorem.  It must use the global original solution
and the transported annular history, including at least one of the following
global mechanisms:

- finite energy and periodic/global boundary compatibility;
- localized collar matching of the affine packet to the surrounding fluid;
- nonlocal pressure/Hodge coupling across the transported annulus;
- finite-overlap all-scale material action packing;
- a bounded-below same-material storage whose lower bound is not the already
  desired continuation-depth record.

This is exactly the user's physical object: the spike cannot be treated as a
free center jet.  Its affine strain-time profile must be supplied and matched
by the surrounding same-fluid annular stress/strain history.

## 5. Result

The local Navier--Stokes material equations do not close
`GlobalSamePacketFullClockFromOriginalData.A`.

They attach the pressure-Hessian and strain motion to one same material packet,
but finite full same-material action still requires a global finite-energy /
annular matching / no-free-upward-transfer theorem on the original transported
material history.
