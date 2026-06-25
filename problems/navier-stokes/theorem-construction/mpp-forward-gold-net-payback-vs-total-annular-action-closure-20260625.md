---
theorem_id: forward-gold-net-payback-vs-total-annular-action-closure-20260625
status: exact-net-total-distinction-installed; bounded-record-oscillation-branch-closed
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Installs the exact net-versus-total correction for the physical annular
  payback picture. The transported annular stress/strain return may have zero
  net storage change while carrying large total force-action. The gold route
  therefore measures rectified same-annulus action, not net payback. On the
  original smooth material history, the stress-work identity and the
  singular-value participation identity show that both the center storage
  change and the spike thinning/compression record are same-fluid events. The
  bounded-material-record theorem then closes the bounded-record oscillation
  branch: infinite total annular action before a finite terminal time cannot
  occur while the continuation-depth material record stays bounded. The only
  remaining same-object failure is positive growth of that material record.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-payback-physical-frame-completion-boundary-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-incompressible-singular-value-participation-identity-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-material-record-excludes-infinite-action-cycles-20260625.md
---

# Net Payback Versus Total Annular Action

Date: 2026-06-25

## 0. Same material object

Let `u` be the original smooth incompressible Navier--Stokes solution before a
candidate terminal time, and let `phi` be a transported annular cutoff:

```math
(\partial_t+u\cdot\nabla)\phi=0.
\tag{NTA.1}
```

Define the localized energy storage

```math
M_\phi(t)
=
\int {1\over2}|u(x,t)|^2\phi(x,t)\,dx,
\tag{NTA.2}
```

and the annular stress-work flux

```math
F_\phi(t)
=
\int u\cdot T\nabla\phi\,dx,
\qquad
T=-pI+2\nu S,
\qquad
S={\nabla u+\nabla u^T\over2}.
\tag{NTA.3}
```

The transported local stress identity is

```math
{d\over dt}M_\phi(t)
+
2\nu\int\phi|S|^2\,dx
=
-F_\phi(t).
\tag{NTA.4}
```

This is one same-fluid annular transaction.  The center storage, surrounding
annulus, pressure, viscosity, incompressibility, and strain are not separate
objects.

## 1. Net payback is not total action

The net storage change on a time interval `I=[a,b]` is

```math
M_\phi(b)-M_\phi(a)
=
-\int_a^b F_\phi(t)\,dt
-2\nu\int_a^b\int\phi|S|^2\,dx\,dt.
\tag{NTA.5}
```

This quantity can be small or zero because inward and outward stress-work can
cancel in sign.

The rectified annular action is different:

```math
\operatorname{Act}_I(\phi)
:=
\operatorname{Var}_I F_\phi
=
\int_I |dF_\phi|.
\tag{NTA.6}
```

This is the total amount of annular force-action history.  It is the right
object for oscillations.  A zero net payback statement does not control
`(NTA.6)`.

## 2. Shape participation has the same net-versus-total structure

Let `F=D_aX` be the deformation gradient and let

```math
\ell_i=\log s_i(F)
\tag{NTA.7}
```

be the logarithmic singular values.  Incompressibility gives

```math
\sum_i\ell_i=0,
\qquad
\sum_i\dot\ell_i=0
\quad\text{a.e.}
\tag{NTA.8}
```

The exact same-material participation identity is

```math
\sum_i[\dot\ell_i]_+
=
\sum_i[-\dot\ell_i]_+
=
{1\over2}\sum_i|\dot\ell_i|.
\tag{NTA.9}
```

So the spike's height-direction stretch and transverse thinning/compression
are paired inside the same material packet.  But `(NTA.8)` is a net balance,
while `(NTA.9)` is rectified action.  Large total strain history is compatible
with zero net volume change.

This is why the proof must use rectified annular force-action and rectified
material-record variation, not a net ledger.

## 3. Bounded material record closes bounded oscillation

Let `P_N^{mat}` be the continuation-depth material record.  The installed
bounded-record theorem gives

```math
\sup_{t\in I}\mathcal P_N^{mat}(t)\le K
\quad\Longrightarrow\quad
\mathcal A_N^\sharp(t)\le C_N(K)
\tag{NTA.10}
```

for the full gauge-reduced annular pressure-stress-velocity action density on
the transported annular collar.

Therefore a unit amount of rectified annular action,

```math
\int_J\mathcal A_N^\sharp(t)\,dt\ge\eta,
\tag{NTA.11}
```

requires

```math
|J|\ge{\eta\over C_N(K)}
\tag{NTA.12}
```

as long as the same material record stays bounded by `K`.  A bounded-overlap
family of such intervals cannot accumulate infinitely many times before a
finite `T_*`.

Thus the bounded-record oscillation branch is closed:

```math
\sup_{t<T_*}\mathcal P_N^{mat}(t)<\infty
\quad\Longrightarrow\quad
\int_0^{T_*}\mathcal A_N^\sharp(t)\,dt<\infty.
\tag{NTA.13}
```

## 4. Remaining form of the problem

The physical annular payback picture now has no detached or net-only loophole.
The exact chain is:

```math
\text{center storage change}
\to
\text{same-fluid annular stress/strain transaction}
\to
\text{rectified total annular action}.
\tag{NTA.14}
```

The exact shape companion is:

```math
\text{spike-direction stretch}
\to
\text{same-material transverse compression}
\to
\text{rectified strain variation}.
\tag{NTA.15}
```

Both total quantities are controlled once the same material record stays
bounded.  Hence any remaining failure before a finite terminal time must be:

```math
\int_0^{T_*}d[\log(1+\mathcal P_N^{mat})]_+=\infty.
\tag{NTA.16}
```

That is positive growth of the original material record itself, not an
oscillatory annular signal with zero net payback.

## 5. Result

The net-versus-total issue is resolved inside the same physical object:

```math
\boxed{
\text{zero net annular payback does not hide total action, because the route
uses rectified same-annulus action.}
}
\tag{NTA.17}
```

and

```math
\boxed{
\text{infinite rectified action with bounded material record is impossible
before finite }T_*.
}
\tag{NTA.18}
```

The remaining MPP-facing statement is the finite positive variation of the
same continuation-depth pressure-viscosity-incompressibility-velocity material
record.

