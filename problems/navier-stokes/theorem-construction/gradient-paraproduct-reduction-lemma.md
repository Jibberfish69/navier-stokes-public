# Gradient Paraproduct Reduction Lemma

## Status

Repaired theorem-facing strict low-mode packet for the gradient cascade route.

The earlier weaker target using only `\mathcal L_N` is replaced by the stronger coefficient interface actually produced by the shell algebra:

```math
\Lambda_N(t):=\|\nabla S_{N-4}u(t)\|_{L^\infty}.
```

This is the strict low-mode component of the repaired augmented coefficient

```math
\widetilde\Lambda_N^\sharp(t)=\Lambda_N(t)+\Theta_N^\sharp(t).
```

## Setting

Let `u` be a classical divergence-free solution on the active theorem surface. For `j\ge N`, set

```math
u_j:=\Delta_j u,
\qquad
E_N(t):=\sum_{j\ge N}2^{2j}\|u_j(t)\|_2^2,
\qquad
D_N(t):=\sum_{j\ge N}2^{4j}\|u_j(t)\|_2^2.
```

Let

```math
a_N:=S_{N-4}u,
\qquad
\Lambda_N(t):=\|\nabla a_N(t)\|_\infty.
```

Let `u_{[j]}` denote a fixed finite shell collar around `j`.

## Strict Low-Mode Packets

The strict low-high packet is

```math
LH_j:=\left\langle [\Delta_j,a_N\cdot\nabla]u_{[j]},-\Delta u_j\right\rangle.
```

The strict high-low packet is

```math
HL_j:=\left\langle \Delta_j(u_{[j]}\cdot\nabla a_N),-\Delta u_j\right\rangle.
```

The uncommuted transport contribution cancels because `\nabla\cdot a_N=0`:

```math
\left\langle a_N\cdot\nabla u_j,-\Delta u_j\right\rangle=0.
```

## Theorem `LowMode.A`

The strict low-mode packets obey

```math
\sum_{j\ge N}|LH_j|+\sum_{j\ge N}|HL_j|
\le
C\Lambda_N(t)E_N(t).
```

Consequently, for every `\eta>0`,

```math
\sum_{j\ge N}|LH_j|
\le
C\Lambda_N(t)E_N(t)+\frac{\eta\nu}{8}D_N(t),
```

and

```math
\sum_{j\ge N}|HL_j|
\le
C\Lambda_N(t)E_N(t)+\frac{\eta\nu}{8}D_N(t).
```

## Proof

The dyadic commutator estimate gives

```math
\|[\Delta_j,a_N\cdot\nabla]u_{[j]}\|_2
\le
C2^{-j}\|\nabla a_N\|_\infty\|\nabla u_{[j]}\|_2.
```

By Bernstein on the high shell collar,

```math
\|\nabla u_{[j]}\|_2\le C_B2^j\|u_{[j]}\|_2,
\qquad
c_\Delta2^{2j}\|u_j\|_2\le\|\Delta u_j\|_2\le C_\Delta2^{2j}\|u_j\|_2.
```

Thus

```math
|LH_j|
\le
C\Lambda_N(t)2^{2j}\|u_{[j]}\|_2\|u_j\|_2.
```

Finite overlap gives

```math
\sum_{j\ge N}|LH_j|
\le C\Lambda_N(t)E_N(t).
```

For the high-low term,

```math
\|\Delta_j(u_{[j]}\cdot\nabla a_N)\|_2
\le C\|u_{[j]}\|_2\|\nabla a_N\|_\infty.
```

Pairing with `-\Delta u_j` and summing by finite overlap gives

```math
\sum_{j\ge N}|HL_j|
\le C\Lambda_N(t)E_N(t).
```

This proves `LowMode.A`.

## Coefficient Admissibility

For fixed scheduler threshold `N`, Bernstein gives

```math
\Lambda_N(t)\le C_N\|u(t)\|_2,
```

so `\Lambda_N\in L^1` on each scheduler interval under the energy component of `Q(t)`. The fixed-threshold admissibility is recorded in `mcp-augmented-coefficient-admissibility-for-lambda_n-sharp-92fdd9321d.md`.

## Boundary

This file no longer claims the weaker `\mathcal L_N` target. The repaired route works on the stronger but admissible fixed-threshold coefficient `\Lambda_N`, then combines it with the spill coefficient `\Theta_N^\sharp` inside `\widetilde\Lambda_N^\sharp`.
