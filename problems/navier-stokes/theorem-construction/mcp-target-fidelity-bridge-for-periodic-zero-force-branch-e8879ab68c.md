# Target-Fidelity Bridge For Periodic Zero-Force Branch

Status: target-fidelity theorem for the periodic zero-force branch.

## Target statement

The active theorem target is the periodic zero-force Navier-Stokes branch:

```math
M=\mathbb T^3,
\qquad
f=0,
\qquad
\nu>0.
```

The initial data are

```math
u_0\in C^\infty(\mathbb T^3;\mathbb R^3),
\qquad
\nabla\cdot u_0=0,
\qquad
\int_{\mathbb T^3}u_0(x)\,dx=0.
```

Let `(u,p)` be the maximal classical solution on

```math
[0,T_*).
```

The target conclusion is

```math
T_*=\infty,
```

and hence `u` is smooth for all finite times.

## Fidelity check

The averaged terminal-tail route and `PCTP.hard` are formulated on the same periodic zero-force branch. The pressure gauge is the periodic zero-mean pressure gauge. The zero-mean condition on `u_0` is propagated by the zero-force periodic flow.

The classical closure warrant proves exactly this implication:

```math
u>0,
\quad
u_0\in C^\infty(\mathbb T^3;\mathbb R^3),
\quad
\nabla\cdot u_0=0,
\quad
\int_{\mathbb T^3}u_0=0,
\quad
f=0
\Longrightarrow
T_*=\infty.
```

## Boundary

This theorem states the periodic zero-force target branch. Whole-space `\mathbb R^3`, nonzero forcing, and non-periodic variants are separate export branches requiring their own target-fidelity bridges.