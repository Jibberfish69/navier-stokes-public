# Classical Closure Warrant Carrier

Status: conditional theorem-facing closure carrier.

## Statement

On the periodic zero-force branch, assume `PCTP.hard` and `ECQ.A`. Then every smooth divergence-free zero-mean initial datum on `T^3` generates a global smooth classical solution.

Equivalently,

```math
PCTP.hard+ECQ.A
\Longrightarrow
T_* = \infty.
```

## Setting

Let

```math
u>0,
\qquad
u_0^{vel}=u_0\in C^\infty(T^3),
\qquad
\nabla\cdot u_0=0,
\qquad
\int_{T^3}u_0\,dx=0,
\qquad
f=0.
```

Let `(u,p)` be the maximal classical solution on

```math
[0,T_*).
```

## Proof

`PCTP.hard` supplies the uniform terminal-tail retained class-membership readout. The retained witness has the form

```math
CM_{N,r,Q}=Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}.
```

At route depth `N` dominating some continuation index `s>5/2`, the installed readout gives

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty.
```

The periodic `H^s`, `s>5/2`, local well-posedness/relaunch theorem gives a lifespan depending only on this bound. For any sequence `t_j\uparrow T_*`, the classical solution relaunched from `u(t_j)` exists on a common interval of length `tau>0`. For large `j`,

```math
t_j+\tau>T_*.
```

Uniqueness identifies the relaunched solution with the original solution on their overlap, extending the original solution past `T_*`. Hence a finite `T_*` is impossible.

Equivalently, `ECQ.A` states that finite `T_*` is equivalent to finite-time class exit, while `PCTP.hard` excludes finite-time class exit. Thus

```math
T_* = \infty.
```

Since the maximal classical solution is smooth on every compact interval below `T_*`, this gives a global smooth classical solution on `T^3`.

## Boundary

This warrant is the periodic zero-force classical closure. It does not alter the branch to whole-space data or nonzero forcing.
