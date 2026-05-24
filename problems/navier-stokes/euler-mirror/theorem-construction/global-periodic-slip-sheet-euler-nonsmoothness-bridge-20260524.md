# Global Periodic Slip-Sheet Euler Nonsmoothness Bridge

## Status

Theorem-facing local-to-global bridge for the Euler mirror nonsmooth boundary.

Role: promote the installed tangential slip-sheet witness from a local
`Member_E` counterexample into a concrete global base-Euler nonsmoothness
theorem on a periodic domain. This closes one exact global consequence of
`ESM.N1`. It does not claim finite-time singularity from one smooth datum.

This note reads back through
[referee-audit-ledger.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/referee-audit-ledger.yaml)
and the `ESM.N1` nonsmooth-control row.

## Theorem

Let `I=[0,T]` with `T>0`, let `d=2` or `d=3`, and let the spatial domain be the
flat torus

```math
\mathbb T^d=\mathbb R^d/\mathbb Z^d.
```

Choose constants `a\ne b` and define the periodic slab profile

```math
U(y)=
\begin{cases}
a,&0<y<1/2,\\
b,&1/2<y<1,
\end{cases}
\tag{GPS.1}
```

extended periodically in `y`. In two dimensions set

```math
u(t,x,y)=(U(y),0),
\qquad p(t,x,y)=p_0,
\tag{GPS.2}
```

and in three dimensions set

```math
u(t,x,y,z)=(U(y),0,0),
\qquad p(t,x,y,z)=p_0.
\tag{GPS.3}
```

Then `(u,p)` is a global finite-energy weak incompressible Euler member on
`I x T^d` in the branch's base sense

```math
Member_E(I\times\mathbb T^d)
=
EVol_{I\times\mathbb T^d}(u)
\wedge
EMom_{I\times\mathbb T^d}(u,p).
\tag{GPS.4}
```

The same global member is not classical and not globally smooth, because `u`
has tangential jumps on the global sheets `y=0` and `y=1/2`.

## Proof

The field is bounded, so `u in L^\infty(I x T^d)` and `u\otimes u in
L^\infty(I x T^d)`. Since the domain has finite measure, the velocity has
finite kinetic energy on every time slice.

For incompressibility, the only nonzero component of `u` is the tangential
component, and it depends only on `y`. Therefore

```math
\nabla\cdot u=\partial_x U(y)=0
\tag{GPS.5}
```

distributionally. The jumps are tangential to the sheets, so no normal-flux
delta is produced. This gives `EVol`.

For momentum, `u` is stationary and

```math
u\otimes u
=
\begin{pmatrix}
U(y)^2&0\\
0&0
\end{pmatrix}
\tag{GPS.6}
```

in two dimensions, with the analogous first-entry-only tensor in three
dimensions. Taking the distributional divergence differentiates the only
possibly discontinuous entry in the tangential `x` direction:

```math
\nabla\cdot(u\otimes u)
=
(\partial_x U(y)^2,0)
=0
\tag{GPS.7}
```

and in three dimensions the third component is also zero. Since `p=p_0` is
constant,

```math
\partial_t u+\nabla\cdot(u\otimes u)+\nabla p=0
\tag{GPS.8}
```

on distributions. This gives `EMom`.

The velocity has two global jump sheets. Because `a\ne b`, the trace from one
side of either sheet differs from the trace on the other side. Thus the global
velocity is not continuous, hence not classical and not globally smooth.

On any small chart crossing one sheet, the restriction is exactly the local
tangential slip-sheet witness from
[mpp-euler-pressure-nonparticipation-vortex-sheet-witness-20260517.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-euler-pressure-nonparticipation-vortex-sheet-witness-20260517.md).
So the local nonsmooth event is literally part of the global Euler member.

## Consequence

This proves the exact bridge:

```math
\exists\ (u,p)\ \text{global on }I\times\mathbb T^d:
Member_E(u,p)
\wedge
\neg C^0(u).
\tag{GPS.9}
```

Therefore base global Euler membership does not imply global classical
smoothness on the periodic weak-Euler surface.

The theorem is a global nonsmoothness theorem for base `Member_E` with
nonsmooth initial data. It is not a smooth-data finite-time blowup theorem, and
it is not an admissibility-selected uniqueness theorem.

## Route Readback

This closes one local-to-global bridge for the Euler nonsmooth boundary:

```text
local tangential slip-sheet Member_E witness
-> periodic slab globalization
-> global finite-energy weak Euler Member_E
-> global nonsmoothness of that member.
```

Other `ESM.N*` rows keep their own typed status:

- `ESM.N2` is a false-base-implication witness for ledger/smoothness promotion;
- `ESM.N3` is a singular-limit bridge, not a fixed-datum singularity;
- `ESM.N4` is a weak-branch same-datum route subject to its chosen admissibility
  layer;
- `ESM.N5` is the boundary/axisymmetric classical blowup comparison;
- `ESM.N6` is a non-one-field participation split.

The periodic bridge is the branch-local exact answer to the question:
a local nonsmooth event gives a global nonsmooth argument precisely when the
constructed global Euler member contains that event. Here it does.
