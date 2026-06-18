# Far-Separated Tail-Square Bridge Absorption

## Statement

Let

```math
E_j(t):=2^{2j}\|\Delta_j u(t)\|_2^2,
\qquad
D_j(t):=2^{4j}\|\Delta_j u(t)\|_2^2,
```

and

```math
D_N(t):=\sum_{j\ge N}D_j(t).
```

Assume the energy bound

```math
\sup_{t<T}\|u(t)\|_2^2\le C_E.
```

For fixed separation width `C_0`, define the oriented far block

```math
Far_N^+(t):=2^{-2N}\sum_{j\ge N+C_0}E_j(t)\sum_{N\le k\le j-C_0}E_k(t).
```

Then

```math
Far_N^+(t)\le C_{C_0}C_E2^{-2N}D_N(t).
```

The unoriented far-separated block satisfies the same estimate up to a factor
two. Hence for every `\varepsilon>0` and every `N` satisfying

```math
2C_{C_0}C_E2^{-2N}\le \varepsilon\nu,
```

one has

```math
Far_N(t)\le \varepsilon\nu D_N(t).
```

## Proof

For every `k`, the energy bound gives

```math
E_k(t)=2^{2k}\|\Delta_k u(t)\|_2^2
\le C_E2^{2k}.
```

Therefore, for each `j`,

```math
\sum_{N\le k\le j-C_0}E_k(t)
\le C_E\sum_{N\le k\le j-C_0}2^{2k}
\le C_{C_0}C_E2^{2j}.
```

Insert this into the oriented far block:

```math
Far_N^+(t)
\le C_{C_0}C_E2^{-2N}\sum_{j\ge N+C_0}2^{2j}E_j(t).
```

Since

```math
2^{2j}E_j(t)=D_j(t),
```

we get

```math
Far_N^+(t)
\le C_{C_0}C_E2^{-2N}\sum_{j\ge N}D_j(t)
=C_{C_0}C_E2^{-2N}D_N(t).
```

The opposite orientation is identical after swapping the shell labels, giving the full far-separated estimate.

Choose `N` so that

```math
2C_{C_0}C_E2^{-2N}\le \varepsilon\nu.
```

This proves the exact estimate

```math
Far_N(t)\le \varepsilon\nu D_N(t).
```

## Consequence

The far-separated tail-square bridge closes directly from the global energy
bound under the displayed cutoff condition. The LPAS/FCTS far-corona route
remains useful for the lifted packet, while the tail-square reserve itself no
longer needs the linear-to-active-square bridge.
