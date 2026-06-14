# Strict Low-Mode Gradient Packet Estimate

## Status

Theorem-facing discharge for the strict low-high and strict high-low packets in the gradient cascade split.

## Definitions

Let

```math
a_N(t):=S_{N-4}u(t),
\qquad
\Lambda_N(t):=\|\nabla a_N(t)\|_{L^\infty}.
```

For high shells set

```math
u_j:=\Delta_j u,
\qquad
E_N(t):=\sum_{j\ge N}2^{2j}\|u_j(t)\|_2^2,
\qquad
D_N(t):=\sum_{j\ge N}2^{4j}\|u_j(t)\|_2^2.
```

Define the strict low-high packet by

```math
LH_j:=\left\langle [\Delta_j,a_N\cdot\nabla]u_{\sim j},-\Delta u_j\right\rangle,
```

where `u_{\sim j}` denotes the finite shell collar around `j`. Define the strict high-low packet by

```math
HL_j:=\left\langle \Delta_j(u_{\sim j}\cdot\nabla a_N),-\Delta u_j\right\rangle.
```

## Theorem

For every `N`,

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

## Proof: strict low-high packet

The exact transport term cancels before the commutator is formed. Since `\nabla\cdot a_N=0`,

```math
\left\langle a_N\cdot\nabla u_j,-\Delta u_j\right\rangle=0.
```

Thus the strict low-high contribution is the commutator term. The standard dyadic commutator estimate gives

```math
\|[\Delta_j,a_N\cdot\nabla]u_{\sim j}\|_2
\le
C2^{-j}\|\nabla a_N\|_\infty\|\nabla u_{\sim j}\|_2.
```

Using Bernstein on the finite shell collar,

```math
\|\nabla u_{\sim j}\|_2\le C_B2^j\|u_{\sim j}\|_2,
\qquad
c_\Delta2^{2j}\|u_j\|_2\le \|\Delta u_j\|_2\le C_\Delta2^{2j}\|u_j\|_2.
```

Therefore

```math
|LH_j|
\le
C\Lambda_N(t)\,2^{2j}\|u_{\sim j}\|_2\|u_j\|_2.
```

Finite overlap yields

```math
\sum_{j\ge N}|LH_j|
\le
C\Lambda_N(t)E_N(t).
```

## Proof: strict high-low packet

For the high-low term,

```math
\|\Delta_j(u_{\sim j}\cdot\nabla a_N)\|_2
\le
C\|u_{\sim j}\|_2\|\nabla a_N\|_\infty
=
C\Lambda_N(t)\|u_{\sim j}\|_2.
```

Pairing with `-\Delta u_j` gives

```math
|HL_j|
\le
C\Lambda_N(t)2^{2j}\|u_{\sim j}\|_2\|u_j\|_2.
```

Again, finite overlap gives

```math
\sum_{j\ge N}|HL_j|
\le
C\Lambda_N(t)E_N(t).
```

## Consequence

The strict low-mode portion of the gradient cascade is controlled entirely by `\Lambda_N(t)E_N(t)`. The dissipative fractions displayed in the target estimates are available as reserve terms.

## Boundary

This note discharges the strict low-mode packets `LH_j` and `HL_j`. The threshold-spill collar and genuine high-high packet remain separate slots in the reassembled commutator theorem.
