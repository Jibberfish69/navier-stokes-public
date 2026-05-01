# Target-Fidelity Bridge For Periodic Zero-Force Branch

Status: conditional target-fidelity theorem.

## Target statement

The active theorem target is the periodic zero-force Navier-Stokes branch:

```math
T^3,
\qquad
f=0,
\qquad
u>0,
```

with initial data

```math
u_0^{vel}=u_0\in C^\infty(T^3),
\qquad
\nabla\cdot u_0=0,
\qquad
\int_{T^3}u_0(x)\,dx=0.
```

Let `(u,p)` be the maximal classical solution on

```math
[0,T_*).
```

The target conclusion is

```math
T_* = \infty,
```

and hence `u` is smooth for all finite times.

## Fidelity check

The averaged terminal-tail route and `PCTP.hard` are formulated on the same periodic zero-force branch. The pressure gauge is the periodic zero-mean pressure gauge. The zero-mean condition on `u_0` is propagated by the zero-force periodic flow.

The classical closure warrant proves exactly this implication:

```math
u_0^{vel}\in C^\infty(T^3),
\quad
\nabla\cdot u_0=0,
\quad
\int_{T^3}u_0=0,
\quad
f=0
\Longrightarrow
T_* = \infty.
```

## Boundary

This theorem does not state a whole-space result on `R^3`, and it does not include nonzero forcing. Those are separate target branches.