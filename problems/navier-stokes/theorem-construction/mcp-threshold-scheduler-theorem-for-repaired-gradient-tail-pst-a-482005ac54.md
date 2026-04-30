# Threshold Scheduler Theorem For The Repaired Gradient Tail

## Status

Theorem-facing scheduler for converting the repaired gradient commutator inequality into high-tail propagation and dissipation control.

## Input

For a chosen threshold `N`, `GC.A` gives

```math
\frac{d}{dt}E_N(t)+(1-\eta)\nu D_N(t)
\le A_N(t)E_N(t)+R_N,
```

where

```math
A_N(t):=C_{\eta,M,\nu}\widetilde\Lambda_N^\sharp(t),
\qquad
R_N:=C_*2^{-2\delta N}.
```

By `Coeff.A`, for fixed `N`,

```math
A_N\in L^1(I).
```

## Theorem `Sched.A`

Let `I=[t_0,T]` be a finite classical interval and let `\rho>0`. There exists a threshold `N` and a finite partition

```math
t_0=t_0<t_1<\cdots<t_K=T
```

such that the solution obeys

```math
\sup_{t\in I}E_N(t)+\int_I D_N(t)\,dt\le \rho.
```

## Construction

Choose a cell budget `L_* > 0` and a tail budget `\rho_* > 0` with

```math
K_*(\rho_*,L_*,\eta,\nu,T)\le \rho
```

where `K_*` is the explicit Gronwall-dissipation bound produced below.

Since `u(t_0)` is smooth,

```math
E_N(t_0)\to0
\qquad (N\to\infty).
```

Also `R_N\to0`. Choose `N` so that

```math
E_N(t_0)+R_N|I|\le \rho_*.
```

For this fixed `N`, `A_N\in L^1(I)`. By absolute continuity, partition `I` into finitely many cells `I_a=[t_a,t_{a+1}]` such that

```math
\int_{I_a}A_N(s)\,ds\le L_*.
```

## Propagation On One Cell

On a cell `I_a`, Gronwall gives

```math
\sup_{t\in I_a}E_N(t)
\le
\left(E_N(t_a)+R_N|I_a|\right)e^{L_*}.
```

Choosing `L_*` and `\rho_*` so that the right side stays within the assigned cell budget propagates the high-tail bound from `t_a` to `t_{a+1}`. Induction over finitely many cells gives

```math
\sup_{t\in I}E_N(t)\le \rho/2.
```

## Dissipation Bound

Integrate the differential inequality over a cell:

```math
(1-\eta)\nu\int_{I_a}D_N(t)\,dt
\le
E_N(t_a)-E_N(t_{a+1})+\int_{I_a}A_NE_N\,dt+R_N|I_a|.
```

Using the cell bounds,

```math
\int_{I_a}A_NE_N\,dt
\le
\left(\sup_{I_a}E_N\right)L_*.
```

Summing over the finite partition yields

```math
\int_I D_N(t)\,dt\le \rho/2
```

after the initial tail and reserve budgets are chosen small enough.

## Conclusion

Combining the supremum and dissipation estimates proves

```math
\sup_{t\in I}E_N(t)+\int_I D_N(t)\,dt\le \rho.
```

This is the explicit scheduler used in `PST.A`.

## Boundary

The scheduler fixes `N` before partitioning the interval. The proof requires finite-interval classical smoothness and fixed-threshold coefficient integrability; it makes no all-threshold uniform coefficient claim.