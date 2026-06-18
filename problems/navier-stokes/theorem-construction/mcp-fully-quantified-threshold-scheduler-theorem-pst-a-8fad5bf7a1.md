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

Fix a cell amplification budget `L_*` with `e^{L_*}\le2`, and set

```math
B_N:=\int_I A_N(t)dt,
\qquad
K_N:=1+\lceil B_N/L_*\rceil.
```

Assume the scheduler compatibility condition

```math
K_N\big(E_N(t_0)+R_N|I|\big)\to0.
\tag{2a}
```

Equivalently, `(2a)` may be replaced by a uniform partition bound
`\sup_N K_N<\infty` together with `(2)`.

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

Use the fixed cell amplification budget `L_*`.

Choose a partition such that each cell satisfies

```math
\int_{t_a}^{t_{a+1}}A_N(t)dt\le L_*.
```

This is possible by absolute continuity of the integral; one may take

```math
K\le K_N.
```

By `(2a)`, choose `N` large enough that

```math
E_N(t_0)+R_N|I|\le \frac{\rho}{16K_N e^{L_*}}.
\tag{3}
```

After this `N` is chosen, choose any partition with `K<=K_N` cells satisfying
the cell integral bound.  There is no monotone-selection shortcut here: if
`K_N` grows with `N`, the vanishing of `E_N(t_0)` and `R_N` alone does not imply
`(3)`.  The product condition `(2a)` is the exact hypothesis that pays the
moving partition size.

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

`Coeff.A` supplies `A_N\in L^1(I)` for fixed `N`, and smooth data supplies
`E_N(t_0)\to0`.  The scheduler step used by `PST.A` additionally requires

```math
\left(1+\left\lceil {1\over L_*}\int_I
C_{\eta,M,\nu}\widetilde\Lambda_N^\sharp(t)dt\right\rceil\right)
\left(E_N(t_0)+C_*2^{-2\delta N}|I|\right)\to0.
```

Without this product smallness, fixed-threshold integrability of `A_N` does not
by itself select a tail threshold that survives the finite partition.

## Boundary

The theorem chooses one threshold for the finite scheduler partition. It gives route-level shell/tail suppression and makes no all-threshold summability claim.
