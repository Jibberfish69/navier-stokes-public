# Upper-Tail Kernelized Dissipation Theorem

## Purpose

This note records the minimal upper-tail square theorem on the lifted-band
route, now understood as a downstream consequence of `(SDS^\sharp)` rather than
as the live frontier theorem itself.

Fix `M\ge 4`, let `u` be the exact Euclidean Navier-Stokes solution on
`[0,T)\times\mathbb R^3`, and define

```math
D_j(t):=2^{4j}\|\Delta_j u(t)\|_{L_x^2}^2.
```

For `\sigma>0`, define the upper-tail kernelized dissipation convolution

```math
\mathcal D_k^\sigma(t):=
\sum_{j>k+4}2^{-\sigma(j-k)}D_j(t),
\qquad
k\in\mathbb Z.
```

Define the swapped lifted-band carrier

```math
\mathcal C_N^\sigma(t):=
\sum_{k>N+M}
2^{3k/2}\|\Delta_k u(t)\|_{L_x^2}\,\mathcal D_k^\sigma(t).
```

## Minimal Upper-Tail Square Theorem

The upper-tail square theorem is

```math
\textbf{(UTKD}^\sharp\text{)}
\qquad
\int_0^T
\sum_{k>N+M}
2^{k}\big(\mathcal D_k^\sigma(t)\big)^2\,dt
\le
C_*2^{-2\delta N}.
```

This remains the minimal square theorem on the upper-tail dissipation
convolution, but it is no longer the installed frontier theorem.

## Sharp Direct Reduction

Define

```math
\mathcal T_j^\sigma(t):=
\sum_{\ell\ge j}2^{-\sigma(\ell-j)}D_\ell(t).
```

Then a direct expansion of the `k`-square gives

```math
\sum_{k>N+M}2^k\big(\mathcal D_k^\sigma(t)\big)^2
\le C_\sigma
\sum_{j>N+M+4}2^jD_j(t)\,\mathcal T_j^\sigma(t).
```

So the one-sided bilinear theorem

```math
\textbf{(NE}^\sharp\text{)}
\qquad
\int_0^T
\sum_{j>N+M+4}2^jD_j(t)\,\mathcal T_j^\sigma(t)\,dt
\le
C_*2^{-2\delta N}
```

already implies `(UTKD^\sharp)`, and `(SDS^\sharp)` implies `(NE^\sharp)`.

## Why UTKD-Sharp Is Enough

Assume in addition the inherited energy/enstrophy surface

```math
\int_0^T \sum_{k\ge 0}2^{2k}\|\Delta_k u(t)\|_{L_x^2}^2\,dt<\infty.
```

Then by Cauchy-Schwarz in `k`, for each `t`,

```math
\mathcal C_N^\sigma(t)
\le
\Big(\sum_{k>N+M}2^{2k}\|\Delta_k u(t)\|_{L_x^2}^2\Big)^{1/2}
\Big(\sum_{k>N+M}2^{k}\big(\mathcal D_k^\sigma(t)\big)^2\Big)^{1/2}.
```

Integrating in time and applying Cauchy-Schwarz in `t` gives

```math
\int_0^T \mathcal C_N^\sigma(t)\,dt
\le
\Big(
\int_0^T\sum_{k>N+M}2^{2k}\|\Delta_k u(t)\|_{L_x^2}^2\,dt
\Big)^{1/2}
\Big(
\int_0^T\sum_{k>N+M}2^{k}\big(\mathcal D_k^\sigma(t)\big)^2\,dt
\Big)^{1/2}.
```

So the inherited `L_t^2H_x^1` surface together with `(UTKD^\sharp)` implies

```math
\textbf{(PCI}^\sharp\text{)}
\qquad
\int_0^T \mathcal C_N^\sigma(t)\,dt
\le
C_*2^{-2\delta N}.
```

## Exact Position In The Route

The swapped kernelized lifted-band quantity is

```math
\mathcal M_N^\sigma(t):=
\sum_{j\ge N}\sum_{N+M<k<j-4}
2^{-\sigma(j-k)}\,2^{3k/2}\|\Delta_k u(t)\|_{L_x^2}\,D_j(t).
```

Swapping the order of summation gives

```math
\mathcal M_N^\sigma(t)=\mathcal C_N^\sigma(t).
```

Hence the downstream chain is

```math
\text{(SDS}^\sharp\text{)}
\Longrightarrow
\text{(NE}^\sharp\text{)}
\Longrightarrow
\text{(UTKD}^\sharp\text{)} + L_t^2H_x^1
\Longrightarrow
\text{(PCI}^\sharp\text{)}
\Longrightarrow
\text{(MSI}^\sharp\text{)}
\Longrightarrow
\text{lifted high-side remainder closure}.
```

## Honest Boundary

This note does not prove `(UTKD^\sharp)` independently.

What it isolates is the exact remaining theorem on the minimal square route,
with the `N`-decay entirely carried by `(UTKD^\sharp)` once `(SDS^\sharp)` is
installed above it.
