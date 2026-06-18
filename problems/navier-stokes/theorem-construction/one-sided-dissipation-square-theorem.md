# One-Sided Dissipation Square Theorem

## Purpose

This note records the exact frontier theorem now installed above the remaining
lifted-packet chain. Conditional on `(SDS^\sharp)`, every downstream step from
the one-sided bilinear tail estimate to Proposition `6.1^\sharp` is already
reduced cleanly.

Fix `M\ge 4`, let `u` be the exact Euclidean Navier-Stokes solution on
`[0,T)\times\mathbb R^3`, and define

```math
D_j(t):=2^{4j}\|\Delta_j u(t)\|_{L_x^2}^2,
\qquad
\mathcal T_j^\sigma(t):=
\sum_{\ell\ge j}2^{-\sigma(\ell-j)}D_\ell(t).
```

## Frontier Theorem

Define

```math
\mathrm{SDS}_N^\sigma(t):=
\sum_{j>N+M+4}2^j\big(\mathcal T_j^\sigma(t)\big)^2.
```

The theorem to install is

```math
\textbf{Theorem (SDS^\sharp) Weighted one-sided tail-flux / square theorem}
\qquad
\int_0^T \mathrm{SDS}_N^\sigma(t)\,dt
=
\int_0^T
\sum_{j>N+M+4}2^j\big(\mathcal T_j^\sigma(t)\big)^2\,dt
\le
C_*2^{-2\delta N}.
```

This is the exact frontier theorem on the current route.

## First Downstream Consequence

The first theorem-level consequence is

```math
\textbf{Lemma 1.}\qquad
\text{(SDS}^\sharp\text{)}
\Longrightarrow
\text{(NE}^\sharp\text{)}.
```

Because the `\ell=j` term is present in `\mathcal T_j^\sigma(t)`, one has

```math
D_j(t)\le \mathcal T_j^\sigma(t).
```

Hence, pointwise in `t`,

```math
2^jD_j(t)\,\mathcal T_j^\sigma(t)
\le
2^j\big(\mathcal T_j^\sigma(t)\big)^2.
```

Summing over `j>N+M+4` and integrating in time yields

```math
\text{(SDS}^\sharp\text{)}
\Longrightarrow
\text{(NE}^\sharp\text{)}.
```

## Bilinear Expansion

Expanding the square gives

```math
\sum_{j>N+M+4}2^j\big(\mathcal T_j^\sigma(t)\big)^2
=
\sum_{j>N+M+4}2^j
\sum_{\ell,m\ge j}
2^{-\sigma(\ell-j)}2^{-\sigma(m-j)}D_\ell(t)D_m(t).
```

Swapping the order of summation,

```math
\sum_{j>N+M+4}2^j\big(\mathcal T_j^\sigma(t)\big)^2
=
\sum_{\ell,m>N+M+4}
D_\ell(t)D_m(t)
\sum_{N+M+4<j\le \min\{\ell,m\}}
2^j2^{-\sigma(\ell-j)}2^{-\sigma(m-j)}.
```

If `r:=\min\{\ell,m\}`, then

```math
\sum_{N+M+4<j\le r}
2^j2^{-\sigma(\ell-j)}2^{-\sigma(m-j)}
=
2^{-\sigma(\ell+m)}
\sum_{N+M+4<j\le r}2^{(1+2\sigma)j}
\le C_\sigma
2^{-\sigma(\ell+m)}2^{(1+2\sigma)r}.
```

Assume `\ell\ge m`. Then

```math
2^{-\sigma(\ell+m)}2^{(1+2\sigma)m}
=
2^{(1+\sigma)m-\sigma\ell}.
```

Define

```math
B_N^\sigma(t)
:=
\sum_{m>N+M+4}\sum_{\ell\ge m}
2^{(1+\sigma)m-\sigma\ell}D_m(t)D_\ell(t).
```

The inner geometric sum also has the lower bound obtained from its top term
`j=r`. By symmetry between `\ell` and `m`, there are constants
`0<c_\sigma\le C_\sigma<\infty` such that, pointwise in `t`,

```math
c_\sigma B_N^\sigma(t)
\le
\sum_{j>N+M+4}2^j\big(\mathcal T_j^\sigma(t)\big)^2
\le
C_\sigma B_N^\sigma(t).
```

Thus `(SDS^\sharp)` is exactly equivalent, with constants depending only on
`\sigma`, to the one-sided bilinear square form

```math
\sum_{m>N+M+4}\sum_{\ell\ge m}
2^{(1+\sigma)m-\sigma\ell}D_m(t)D_\ell(t).
```

## Square-Function Form

Set

```math
\widetilde D_\ell(t):=2^{\ell/2}D_\ell(t).
```

Then

```math
2^{j/2}D_\ell(t)
=
2^{-(\ell-j)/2}\widetilde D_\ell(t),
```

so

```math
2^j\big(\mathcal T_j^\sigma(t)\big)^2
=
\Big(
\sum_{\ell\ge j}
2^{-(\sigma+1/2)(\ell-j)}\widetilde D_\ell(t)
\Big)^2.
```

Thus `(SDS^\sharp)` is equivalently the one-sided square-function estimate

```math
\textbf{(SDS'^\sharp)}
\qquad
\int_0^T
\sum_{j>N+M+4}
\Big(
\sum_{\ell\ge j}
2^{-(\sigma+1/2)(\ell-j)}\widetilde D_\ell(t)
\Big)^2dt
\le
C_*2^{-2\delta N}.
```

## Position In The Route

The theorem chain now reads

```math
\text{weighted one-sided enstrophy-tail flux identity}
\Longrightarrow
\text{(SDS}^\sharp\text{)}
\Longrightarrow
\text{(NE}^\sharp\text{)}
\Longrightarrow
\text{(UTKD}^\sharp\text{)}
\Longrightarrow
\text{(PCI}^\sharp\text{)}
\Longrightarrow
\text{(MSI}^\sharp\text{)}
\Longrightarrow
\text{lifted remainder closure}
\Longrightarrow
\text{Proposition }6.1^\sharp.
```

The square-function packaging `(SDS'^\sharp)` is equivalent reformulation, not a
different frontier theorem.

## PDE Parent Structure Candidate

The note
`weighted-one-sided-enstrophy-tail-flux-identity.md` records the sharpest
current PDE parent route above `(SDS^\sharp)`: package the upper shells into a
weighted enstrophy tail, differentiate that tail using the shellwise
`H^1`-energy identity, and prove coercivity of the lifted forcing against the
one-sided dissipation queue.

## Honest Boundary

This note does not prove `(SDS^\sharp)`.

What it fixes is the theorem-grade conditional closure statement:

```math
\text{(SDS}^\sharp\text{)}
\Longrightarrow
\text{(NE}^\sharp\text{)}
\Longrightarrow
\text{(UTKD}^\sharp\text{)}
\Longrightarrow
\text{(PCI}^\sharp\text{)}
\Longrightarrow
\text{(MSI}^\sharp\text{)}
\Longrightarrow
\text{lifted remainder closure}
\Longrightarrow
\text{Proposition }6.1^\sharp.
```
