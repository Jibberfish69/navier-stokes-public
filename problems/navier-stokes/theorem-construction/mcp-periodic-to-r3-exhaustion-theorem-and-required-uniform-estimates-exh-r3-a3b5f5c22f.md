# Periodic-To-R3 Exhaustion Theorem And Required Uniform Estimates

## Status

Conditional export theorem. It states the exact uniform estimates needed to pass from expanding periodic boxes to a whole-space `R^3` solution.

## Setup

Let `u^0` be smooth, divergence-free, and rapidly decaying on `R^3`. For box sizes `L_n\to\infty`, let `u_n^0` be divergence-free periodic data on `T^3_{L_n}` agreeing with `u^0` on larger and larger interior balls up to a small correction. Let `u_n,p_n` be the corresponding global smooth periodic solutions.

## Export Hypotheses

For every finite `T` and every fixed ball `B_R\subset R^3`, assume:

```math
\sup_n\sup_{t\le T}\|u_n(t)\|_{H^s(B_R)}\le C_{T,R,s},
\qquad s>5/2.
```

Assume exterior energy tightness:

```math
\lim_{R\to\infty}\sup_n\sup_{t\le T}\int_{|x|>R}|u_n(x,t)|^2dx=0.
```

Assume pressure-tail compatibility. With whole-space normalization

```math
p_n=\mathcal R_i\mathcal R_j(u_{n,i}u_{n,j})+h_{n,L},
```

require local convergence of the pressure tails:

```math
\nabla p_n\to \nabla p
\quad\text{in }C^k([0,T]\times B_R)
```

for every fixed `k,R,T` after extraction.

## Theorem `EXH.R3`

Under the export hypotheses, a subsequence of `u_n` converges on compact subsets to a smooth whole-space solution `u,p` of Navier-Stokes on `R^3\times[0,\infty)` with initial datum `u^0` and finite energy for all time.

## Proof

The uniform local `H^s` bound with `s>5/2` gives compactness in lower local smooth topologies by Rellich and parabolic bootstrapping. A diagonal extraction over `T,R,k` gives

```math
u_n\to u
\quad\text{in }C^k([0,T]\times B_R)
```

for every fixed `T,R,k` after taking a subsequence.

The pressure-tail hypothesis gives convergence of the pressure gradients on the same compact sets. Passing to the limit in

```math
\partial_tu_n+(u_n\cdot\nabla)u_n+\nabla p_n=\nu\Delta u_n,
\qquad
\nabla\cdot u_n=0
```

yields the exact whole-space Navier-Stokes equation.

The initial convergence follows from construction of `u_n^0`. Exterior tightness and local convergence imply global finite energy:

```math
\int_{R^3}|u(x,t)|^2dx<\infty
\qquad(t\le T).
```

Since `T` is arbitrary, the solution is global.

## Pressure Tail Requirement

The pressure convergence is the genuine export issue. On `R^3`, pressure is fixed by

```math
p=\mathcal R_i\mathcal R_j(u_i u_j)
```

up to an additive function of time. Periodic pressures use box-dependent zero-mean normalization. The harmonic/far-field correction must vanish locally as `L_n\to\infty`; this is precisely the pressure-tail compatibility hypothesis.

## Boundary

The periodic theorem supplies global smooth `u_n` for each box. Whole-space export requires the three uniform families above. This note proves the export theorem once those families are supplied.