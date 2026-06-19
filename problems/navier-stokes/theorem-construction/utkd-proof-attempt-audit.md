# UTKD Proof Attempt Audit

## Purpose

This note derives every algebraically valid reduction of the upper-tail kernelized
dissipation theorem `(UTKD)` from the current Body `1` surface and isolates the
first genuinely new estimate required for the theorem.

Throughout, fix `M\ge 4`, let `u` be the exact Euclidean Navier-Stokes
solution on `[0,T)\times\mathbb R^3`, and define

```math
D_j(t):=2^{4j}\|\Delta_j u(t)\|_{L_x^2}^2,
\qquad
\mathcal D_k^\sigma(t):=\sum_{j>k+4}2^{-\sigma(j-k)}D_j(t).
```

The theorem target is

```math
\textbf{(UTKD)}
\qquad
\int_0^T
\sum_{k>N+M}
2^k\big(\mathcal D_k^\sigma(t)\big)^2\,dt
\le
C_*2^{-2\delta N}.
```

## Inherited Inputs

The current pre-`6.1` Euclidean route supplies:

```math
\textbf{(H1)}
\qquad
\int_0^T\sum_{m\ge 0}2^{2m}\|\Delta_m u(t)\|_{L_x^2}^2\,dt<\infty,
```

and the recertified scale barrier

```math
\textbf{(SB)}
\qquad
\int_0^T\sum_{m\ge N}\|\Delta_m u(t)\|_{L_x^2}^2\,dt
\le
C_*2^{-2\delta N}.
```

Because the summands are nonnegative, `(SB)` implies the shellwise tail bound

```math
\int_0^T\|\Delta_j u(t)\|_{L_x^2}^2\,dt
\le
C_*2^{-2\delta j}
\qquad (j\ge N_*).
```

The scale-side lifted packet also already carries a genuine gap kernel
`2^{-(j-k)}`, but that support-level fact enters only upstream of `(UTKD)`.

## Algebraic Reduction 1: Direct Expansion Gives A Bilinear Tail Target

Expand the square:

```math
\sum_{k>N+M}2^k\big(\mathcal D_k^\sigma(t)\big)^2
=
\sum_{k>N+M}2^k
\sum_{j,\ell>k+4}
2^{-\sigma(j-k)}2^{-\sigma(\ell-k)}D_j(t)D_\ell(t).
```

Swap the order of summation:

```math
\sum_{k>N+M}2^k\big(\mathcal D_k^\sigma(t)\big)^2
=
\sum_{j,\ell>N+M+4}
D_j(t)D_\ell(t)
\sum_{\substack{k>N+M\\k<j-4\\k<\ell-4}}
2^k2^{-\sigma(j-k)}2^{-\sigma(\ell-k)}.
```

If `m:=\min\{j,\ell\}`, then

```math
\sum_{\substack{k>N+M\\k<j-4\\k<\ell-4}}
2^k2^{-\sigma(j-k)}2^{-\sigma(\ell-k)}
=
2^{-\sigma(j+\ell)}
\sum_{N+M<k<m-4}2^{(1+2\sigma)k}
\le C_\sigma
2^{-\sigma(j+\ell)}2^{(1+2\sigma)m}.
```

Assume `j\le \ell` and symmetrize. Then

```math
2^{-\sigma(j+\ell)}2^{(1+2\sigma)j}
=
2^{(1+\sigma)j-\sigma\ell}
=
2^j\,2^{-\sigma(\ell-j)}.
```

Hence

```math
\sum_{k>N+M}2^k\big(\mathcal D_k^\sigma(t)\big)^2
\le C_\sigma
\sum_{j>N+M+4}\sum_{\ell\ge j}
2^{j-\sigma(\ell-j)}D_j(t)D_\ell(t).
```

Define

```math
\mathcal T_j^\sigma(t):=
\sum_{\ell\ge j}2^{-\sigma(\ell-j)}D_\ell(t).
```

Then the direct reduction becomes

```math
\sum_{k>N+M}2^k\big(\mathcal D_k^\sigma(t)\big)^2
\le C_\sigma
\sum_{j>N+M+4}2^jD_j(t)\,\mathcal T_j^\sigma(t).
```

So the exact first new theorem exposed by direct algebraic reduction is

```math
\textbf{(NE) One-sided weighted bilinear dissipation-tail theorem}
\qquad
\int_0^T
\sum_{j>N+M+4}2^jD_j(t)\,\mathcal T_j^\sigma(t)\,dt
\le
C_*2^{-2\delta N}.
```

This is the first sharp reduction, and it is already enough to imply `(UTKD)`.

## Algebraic Reduction 1A: NE Reduces Further To A Cleaner Square Theorem

Because the `\ell=j` term is present in `\mathcal T_j^\sigma(t)`, one has

```math
D_j(t)\le \mathcal T_j^\sigma(t).
```

Hence

```math
2^jD_j(t)\,\mathcal T_j^\sigma(t)
\le
2^j\big(\mathcal T_j^\sigma(t)\big)^2.
```

So the stronger square theorem

```math
\textbf{(SDS)}
\qquad
\int_0^T
\sum_{j>N+M+4}2^j\big(\mathcal T_j^\sigma(t)\big)^2\,dt
\le
C_*2^{-2\delta N}
```

implies `(NE)`.

Equivalently, if `\widetilde D_\ell(t):=2^{\ell/2}D_\ell(t)`, then `(SDS)` may
be written as the one-sided square-function estimate

```math
\textbf{(SDS')}
\qquad
\int_0^T
\sum_{j>N+M+4}
\Big(
\sum_{\ell\ge j}2^{-(\sigma+1/2)(\ell-j)}\widetilde D_\ell(t)
\Big)^2dt
\le
C_*2^{-2\delta N}.
```

So there is now a cleaner square theorem sitting above the direct bilinear
theorem:

- `(SDS') \Rightarrow (SDS) \Rightarrow (NE)`.

## Formal Reduction 2: UTKD Also Reduces To WDS

Define

```math
x_j(t):=2^{j/2}D_j(t).
```

Then for `k\in\mathbb Z`,

```math
2^{k/2}\mathcal D_k^\sigma(t)
=
\sum_{j>k+4}2^{-\sigma(j-k)}2^{k/2}D_j(t)
=
\sum_{r>4}2^{-(\sigma+1/2)r}x_{k+r}(t),
\qquad r=j-k.
```

So `2^{k/2}\mathcal D_k^\sigma` is the one-sided discrete convolution of
`x_j` with the summable kernel `\mu_r:=2^{-(\sigma+1/2)r}\mathbf 1_{r>4}`.
Hence Young on `\ell^1*\ell^2\to\ell^2` gives, for each fixed `t`,

```math
\sum_{k>N+M}2^k\big(\mathcal D_k^\sigma(t)\big)^2
\le \|\mu\|_{\ell^1(\mathbb Z)}^2
\sum_{j>N+M+4}2^j D_j(t)^2.
```

Therefore `(UTKD)` also follows from the stronger weighted dissipation square
estimate

```math
\textbf{(WDS)}
\qquad
\int_0^T\sum_{j>N+M+4}2^j D_j(t)^2\,dt
\le
C_*2^{-2\delta N}.
```

So there are now three algebraically valid downstream routes from the current
reduction stack:

- the cleaner one-sided square route `(SDS) \Rightarrow (NE) \Rightarrow (UTKD)`,
- the sharp direct reduction `(NE) \Rightarrow (UTKD)`,
- the cleaner stronger square route `(WDS) \Rightarrow (UTKD)`.

## Algebraic Reduction 3: WDS Is A Weighted Quartic Tail Theorem

Expanding `D_j`,

```math
2^jD_j(t)^2
=
2^j\big(2^{4j}\|\Delta_j u(t)\|_{L_x^2}^2\big)^2
=
2^{9j}\|\Delta_j u(t)\|_{L_x^2}^4.
```

So `(WDS)` is exactly

```math
\int_0^T\sum_{j>N+M+4}2^{9j}\|\Delta_j u(t)\|_{L_x^2}^4\,dt
\le
C_*2^{-2\delta N}.
```

This shows that `(WDS)` is stronger than the direct bilinear target `(NE)`.

## Why The Current Inputs Stop Here

### Attempt A: the current inputs do not control `(NE)`

The inherited route controls

```math
\int_0^T\sum_{j\ge 0}2^{-2j}D_j(t)\,dt<\infty
\qquad\text{and}\qquad
\int_0^T\sum_{j\ge N}2^{-4j}D_j(t)\,dt\le C_*2^{-2\delta N},
```

but `(NE)` asks for

```math
\int_0^T\sum_{j>N+M+4}2^jD_j(t)\,\mathcal T_j^\sigma(t)\,dt.
```

Neither the inherited `L_t^2H_x^1` surface nor the shellwise consequence of
the coarse tail barrier controls that one-sided bilinear dissipation-tail
interaction. This is the first genuinely new estimate exposed by the direct
route.

### Attempt B: factor against `L_t^2H_x^1` to prove the stronger theorem `(WDS)`

Write

```math
2^{9j}\|\Delta_j u\|_{L_x^2}^4
=
\big(2^{2j}\|\Delta_j u\|_{L_x^2}^2\big)
\big(2^{7j}\|\Delta_j u\|_{L_x^2}^2\big).
```

The inherited surface `(H1)` controls the first factor after summation and time
integration, but there is no current theorem controlling

```math
\int_0^T\sum_{j>N}2^{7j}\|\Delta_j u(t)\|_{L_x^2}^2\,dt.
```

So `(H1)` alone does not reach `(WDS)`.

### Attempt C: factor against the shellwise tail barrier

Using the shellwise consequence of `(SB)`,

```math
\int_0^T\|\Delta_j u(t)\|_{L_x^2}^2\,dt
\le
C_*2^{-2\delta j},
```

one still has

```math
2^{9j}\|\Delta_j u\|_{L_x^2}^4
=
\|\Delta_j u\|_{L_x^2}^2
\cdot
2^{9j}\|\Delta_j u\|_{L_x^2}^2.
```

The current route does not control the second factor either pointwise in time
or after time integration. So the coarse tail barrier does not imply `(WDS)`.

### Attempt D: factor against `L_t^\infty L_x^2`

Using only the global energy bound gives

```math
\|\Delta_j u(t)\|_{L_x^2}^2\le \|u(t)\|_{L_x^2}^2,
```

but then `(WDS)` would require control of

```math
\int_0^T\sum_{j>N}2^{9j}\|\Delta_j u(t)\|_{L_x^2}^2\,dt,
```

which is far beyond the inherited `H^1` surface.

So neither the global energy bound nor the shellwise tail barrier repairs the
loss left by Attempt A.

## Direct Algebraic Endpoint And Installed Frontier Theorem

The first direct algebraic endpoint exposed by direct algebraic reduction is
the one-sided weighted bilinear dissipation-tail theorem `(NE)`.

But the installed frontier theorem is now `(SDS^\sharp)`, because once
`(SDS^\sharp)` lands the entire downstream stack is already derived cleanly.

Equivalently:

- proving `(SDS^\sharp)` would already imply `(NE^\sharp)` and therefore close
  `(UTKD^\sharp)`;
- proving `(NE^\sharp)` would already close `(UTKD^\sharp)`;
- proving `(UTKD)` directly would close the minimal route;
- proving `(WDS)` would also close `(UTKD)` by the cleaner stronger square
  route;
- but the inherited Body `1` surface does not presently imply any of these
  theorems.

## Route Consequence

The current route therefore factors as

```math
\text{current Body `1` inputs}
\Longrightarrow
\text{displayed algebraic reductions}
\Longrightarrow
\text{(SDS}^\sharp\text{) as the installed frontier theorem}
\Longrightarrow
\text{(NE}^\sharp\text{) as the first direct bilinear endpoint}
\Longrightarrow
\text{(UTKD}^\sharp\text{)}
\Longrightarrow
\text{(PCI}^\sharp\text{)}
\Longrightarrow
\text{(MSI}^\sharp\text{)}
\Longrightarrow
\text{lifted remainder closure},
```

with the parallel stronger sufficient route

```math
\text{(WDS)}
\Longrightarrow
\text{(UTKD)}
\Longrightarrow
\text{(PC)}
\Longrightarrow
\text{(MSI)}
\Longrightarrow
\text{lifted remainder closure}.
```

## Honest Boundary

This note does not prove `(SDS^\sharp)`, `(UTKD)`, or `(WDS)`.

What it proves is narrower and useful:

- every currently valid reduction from `(UTKD)` has now been spelled out;
- `(SDS^\sharp)` is now recorded as the installed frontier theorem above
  `(NE^\sharp)`;
- the first direct bilinear endpoint is `(NE^\sharp)`;
- the weighted quartic dissipation tail `(WDS)` remains a stronger clean
  sufficient package rather than the first sharp obstruction.
