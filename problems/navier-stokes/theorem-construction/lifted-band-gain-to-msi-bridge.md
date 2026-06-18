# Lifted-Band Gain to MSI Bridge

## Purpose

This note records the sharpest current reduction chain for the last open packet
in the Euclidean four-body route.

The architecture is no longer missing a general theorem framework. The exact
frontier is a single square theorem above the lifted band

```math
N+M<k<j-4.
```

The route now factors cleanly as

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
\text{lifted high-side remainder closure}.
```

## Current Support-Level Input

The scale-side shell algebra already yields the displayed summable factor
`2^{-(j-k)}` on the lifted-band scale-side carrier:

```math
\sum_{j\ge N}\sum_{N+M<k<j-4}
2^{-(j-k)}\,2^{3k/2}\|\Delta_k u^{(n)}\|_{L^2_x}\,
\|\nabla \Delta_j u^{(n)}\|_{L^2_x}\,
\|\Delta_j u^{(n)}\|_{L^2_x}.
```

This is recorded in `scale-kernelized-lifted-band-reduction-lemma.md`. So the
missing content is no longer "find any off-diagonal decay." The missing content
is the theorem that turns that support-level carrier into the exact spacetime
remainder needed by the lifted packet.

## Installed Frontier Theorem

The installed frontier theorem is

```math
\textbf{(SDS}^\sharp\textbf{) Weighted one-sided tail-flux / square theorem}
```

with statement

```math
\int_0^T
\sum_{j>N+M+4}2^j\big(\mathcal T_j^\sigma(t)\big)^2\,dt
\le
C_*2^{-2\delta N},
\qquad
\mathcal T_j^\sigma(t):=\sum_{\ell\ge j}2^{-\sigma(\ell-j)}D_\ell(t).
```

The direct bilinear endpoint below it is

```math
\textbf{(NE}^\sharp\textbf{)}
\qquad
\int_0^T
\sum_{j>N+M+4}2^jD_j(t)\,\mathcal T_j^\sigma(t)\,dt
\le
C_*2^{-2\delta N}.
```

## Downstream Theorem Stack

The downstream notes now split the remaining route into

```math
\text{(SDS}^\sharp\text{)}
\Longrightarrow
\text{(NE}^\sharp\text{)}
\Longrightarrow
\text{(UTKD}^\sharp\text{)}
\Longrightarrow
\text{(PCI}^\sharp\text{)}
\Longrightarrow
\text{(MSI}^\sharp\text{)}.
```

Here

- `(SDS^\sharp)` is the installed frontier theorem;
- `(NE^\sharp)` is the first direct bilinear endpoint;
- `(UTKD^\sharp)` is the upper-tail weighted square estimate;
- `(PCI^\sharp)` is the paired carrier bound obtained from
  `(UTKD^\sharp)+L_t^2H_x^1`;
- `(MSI^\sharp)` is the swapped lifted-band remainder theorem.

## Consequence For The Gradient Packet

If `(MSI^\sharp)` holds, then the last open lifted packet closes in the
theorem-grade integrated form

```math
\int_0^T |\mathcal N^{\mathrm{lift}}_{N,\mathrm{grad}}(t)|\,dt
\le
\varepsilon \nu \int_0^T D_N(t)\,dt
+
C_*2^{-2\delta N}.
```

So the proposition-level chain becomes

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
\text{lifted high-side remainder closure}
\Longrightarrow
\text{Proposition }6.1^\sharp.
```

## Current Status

This bridge is not yet proved.

- The gap kernel is already real on the scale-side lifted band.
- The direct algebraic endpoint `(NE^\sharp)` is explicit.
- The installed frontier theorem is `(SDS^\sharp)`.
- The sharpest current proof mechanism candidate above `(SDS^\sharp)` is the
  weighted one-sided enstrophy-tail flux identity.

In that sense, the route is now fully reduced: one theorem, namely
`(SDS^\sharp)`, is missing between the existing support-level kernel and the
desired `(MSI^\sharp)` remainder.
