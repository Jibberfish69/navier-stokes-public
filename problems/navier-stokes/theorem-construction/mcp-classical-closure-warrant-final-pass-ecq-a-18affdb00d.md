# Classical Closure Warrant Final Pass

Status: conditional classical-closure warrant for the periodic zero-force branch.

## Statement

```math
PCTP.hard+ECQ.A
\Longrightarrow
T_* = \infty.
```

Thus, once `PCTP.hard` has been supplied for the periodic zero-force branch,
smooth divergence-free zero-mean initial data on `T^3` with zero force generate a
global smooth classical solution.

## Target branch

```math
T^3,
\qquad
f=0,
\qquad
u>0,
\qquad
u_0^{vel}=u_0\in C^\infty(T^3),
\qquad
\nabla\cdot u_0=0,
\qquad
\int_{T^3}u_0=0.
```

Let `(u,p)` be the maximal classical solution on `[0,T_*)`.

## Proof

`PCTP.hard` supplies the uniform terminal-tail retained class-membership readout. The retained witness is

```math
CM_{N,r,Q}=Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}.
```

For route depth `N` above a classical continuation index `s>5/2`, the readout gives

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty.
```

The periodic Navier-Stokes local theory in `H^s(T^3)`, `s>5/2`, gives a
lifespan depending only on this bound. Relaunching at times `t_j\uparrow T_*`
extends the solution past any finite `T_*`, and uniqueness identifies the
relaunched solution with the original one on the overlap.

Therefore finite `T_*` is impossible. Equivalently, `ECQ.A` identifies finite maximal time with finite class exit, and `PCTP.hard` excludes that exit.

Thus

```math
T_* = \infty.
```

## Branch boundary

The conclusion is the periodic zero-force global smooth solution statement under
the displayed `PCTP.hard+ECQ.A` hypothesis.
