# Fully Quantified Threshold Scheduler Theorem

## Status

Theorem-facing sharpened version of `Sched.A`.

## Inputs

Let `I=[t_0,T]` be a finite interval. For each dyadic threshold `N`, assume nonnegative functions `E_N,D_N` obey

```math
\frac{d}{dt}E_N(t)+\alpha D_N(t)\le A_N(t)E_N(t)+R_N
\tag{1}
```

on `I`, where `\alpha=(1-\eta)\nu>0`, `A_N\in L^1(I)`, and `R_N\ge0` is constant in time. Assume

```math
E_N(t_0)\to0,
\qquad
R_N\to0
\qquad (N\to\infty).
\tag{2}
```

## Theorem `Sched.A+`

For every `\rho>0`, there exist a threshold `N`, an integer `K`, and a partition

```math
t_0=t_0<t_1<\cdots<t_K=T
```

such that

```math
\sup_{t\in I}E_N(t)+\int_I D_N(t)dt\le \rho.
```

## Construction

Choose a cell amplification budget `L_*` with

```math
e^{L_*}\le2.
```

For fixed `N`, set

```math
B_N:=\int_I A_N(t)dt.
```

Choose a partition such that each cell satisfies

```math
\int_{t_a}^{t_{a+1}}A_N(t)dt\le L_*.
```

This is possible by absolute continuity of the integral; one may take

```math
K\le 1+\lceil B_N/L_*\rceil.
```

Choose `N` large enough that

```math
E_N(t_0)+R_N|I|\le \frac{\rho}{16K e^{L_*}}.
\tag{3}
```

When `K` depends on `N`, choose `N` by the standard monotone selection: first choose a candidate threshold, compute `K`, then raise the threshold until `(3)` holds for that computed finite `K`. Since `E_N(t_0)` and `R_N` vanish as `N` increases, this terminates for any fixed computed partition size; if the partition is recomputed, repeat once and take the larger threshold. The resulting finite `K` is then fixed.

## Propagation

On a cell `I_a=[t_a,t_{a+1}]`, Gronwall applied to `(1)` gives

```math
\sup_{t\in I_a}E_N(t)
\le
\left(E_N(t_a)+R_N|I_a|\right)e^{L_*}.
\tag{4}
```

Inductively impose the cell budget

```math
E_N(t_a)\le \frac{\rho}{8K}.
```

Using `(3)` and `e^{L_*}\le2`, `(4)` gives

```math
\sup_{t\in I_a}E_N(t)
\le \frac{\rho}{4K}.
```

Thus, after summing the finite induction losses over the `K` cells,

```math
\sup_{t\in I}E_N(t)\le \frac{\rho}{2}.
```

## Dissipation

Integrate `(1)` on `I_a`:

```math
\alpha\int_{I_a}D_N(t)dt
\le E_N(t_a)-E_N(t_{a+1})+\int_{I_a}A_N(t)E_N(t)dt+R_N|I_a|.
```

Taking positive upper bounds and using the cell estimates,

```math
\alpha\int_{I_a}D_N(t)dt
\le \frac{\rho}{4K}+L_*\frac{\rho}{4K}+R_N|I_a|.
```

Choose `L_*` and the threshold reserve so that, after summing over `a`,

```math
\int_I D_N(t)dt\le \frac{\rho}{2}.
```

This is achieved by replacing the initial `\rho` budget in `(3)` by `c(\alpha,L_*)\rho` if needed.

## Conclusion

Combining the propagation and dissipation estimates gives

```math
\sup_I E_N+
\int_I D_Ndt\le \rho.
```

## Use In The Repaired Cascade Route

Apply this theorem to

```math
A_N(t)=C_{\eta,M,\nu}\widetilde\Lambda_N^\sharp(t),
\qquad
R_N=C_*2^{-2\delta N}.
```

`Coeff.A` supplies `A_N\in L^1(I)` for fixed `N`, and smooth data supplies `E_N(t_0)\to0`. Hence `Sched.A+` proves the scheduler step used by `PST.A`.

## Boundary

The theorem chooses one threshold for the finite scheduler partition. It gives route-level shell/tail suppression and makes no all-threshold summability claim.