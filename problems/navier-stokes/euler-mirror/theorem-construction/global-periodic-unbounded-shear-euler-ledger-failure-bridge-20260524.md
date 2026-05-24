# Global Periodic Unbounded-Shear Euler Ledger-Failure Bridge

## Status

Theorem-facing local-to-global bridge for the `ESM.N2` false-base-implication
row.

Role: promote the stationary unbounded shear witness from a local
`Member_E -> smoothness / ELCI ledger` counterexample into a concrete global
periodic base-Euler member. This proves a second exact global nonsmoothness
consequence for base `Member_E`: finite-energy weak Euler membership can hold
globally while classical smoothness and the receiver ledger fail.

This note reads back through
[referee-audit-ledger.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/referee-audit-ledger.yaml)
and the `ESM.N2` false-base-implication row.

## Theorem

Let `I=[0,T]` with `T>0`, let `d=2` or `d=3`, and let the spatial domain be
`\mathbb T^d`. Let

```math
d_{\mathbb T}(y,0)=\min_{k\in\mathbb Z}|y-k|
```

be the periodic distance to the sheet `y=0`. Fix

```math
0<\alpha<1/2
```

and define, away from the sheet,

```math
U(y)=d_{\mathbb T}(y,0)^{-\alpha}.
\tag{GPUS.1}
```

In two dimensions set

```math
u(t,x,y)=(U(y),0),
\qquad p(t,x,y)=0,
\tag{GPUS.2}
```

and in three dimensions set

```math
u(t,x,y,z)=(U(y),0,0),
\qquad p(t,x,y,z)=0.
\tag{GPUS.3}
```

The value of `u` on the sheet itself may be chosen arbitrarily. Then `(u,p)` is
a global finite-energy weak incompressible Euler member on `I x T^d` in the
branch's base sense:

```math
Member_E(I\times\mathbb T^d)
=
EVol_{I\times\mathbb T^d}(u)
\wedge
EMom_{I\times\mathbb T^d}(u,p).
\tag{GPUS.4}
```

The same global member is not classical and does not satisfy the branch receiver
ledger on any collar crossing the singular sheet.

## Proof

Near the sheet, the one-dimensional singularity is `|y|^{-\alpha}`. Since
`2\alpha<1`,

```math
\int_{-r}^{r}|y|^{-2\alpha}\,dy<\infty.
\tag{GPUS.5}
```

Thus `u in L^2(T^d)` on each time slice, and `u\otimes u in L^1(T^d)`. The
weak Euler fluxes are meaningful and the kinetic energy is finite.

For incompressibility, the only nonzero component of `u` is tangential and
depends only on `y`. Hence

```math
\nabla\cdot u=\partial_x U(y)=0
\tag{GPUS.6}
```

distributionally. No normal-flux delta is present because the normal component
of the velocity is identically zero. This gives `EVol`.

For momentum, the field is stationary and the only nonzero tensor entry is the
tangential component `U(y)^2`. Therefore

```math
\nabla\cdot(u\otimes u)
=
(\partial_x U(y)^2,0)
=0
\tag{GPUS.7}
```

in two dimensions, with the same first-component calculation in three
dimensions. Since `p=0`,

```math
\partial_t u+\nabla\cdot(u\otimes u)+\nabla p=0
\tag{GPUS.8}
```

on distributions. This gives `EMom`.

The velocity is unbounded on every neighborhood of the global sheet `y=0`, so
it has no continuous or classical representative there. Any center,
oscillation, or positive-radius receiver readout that requires bounded velocity
on a collar crossing that sheet fails. This is the global version of the
stationary unbounded shear used in the terminal closure note.

## Consequence

This proves:

```math
\exists\ (u,p)\ \text{global on }I\times\mathbb T^d:
Member_E(u,p)
\wedge
u\notin L^\infty_{\mathrm{loc}}
\wedge
\neg ELCI.CP.A\ \text{on collars crossing }y=0.
\tag{GPUS.9}
```

So base global `Member_E` does not imply global classical smoothness and does
not imply the Euler receiver ledger.

The theorem uses nonsmooth initial data. It is not a smooth-data finite-time
singularity theorem.

## Route Readback

This closes the periodic global version of `ESM.N2`:

```text
local stationary unbounded-shear Member_E witness
-> periodic singular-sheet globalization
-> global finite-energy weak Euler Member_E
-> global smoothness and receiver-ledger failure.
```

Together with the periodic slip-sheet bridge for `ESM.N1`, the branch now has
two exact global base-`Member_E` nonsmoothness theorems with nonsmooth initial
data: bounded jump discontinuity and unbounded finite-energy shear.
