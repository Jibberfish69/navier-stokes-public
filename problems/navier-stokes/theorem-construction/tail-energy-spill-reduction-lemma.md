# Tail-Energy Spill Reduction Lemma

## Purpose

This note isolates the spill packet on the exact Euclidean tail-energy surface
used by the `4 -> 1` recertification argument.

Unlike the proposition-level scale spill note, this local `4 -> 1` lemma is
allowed to use the already-obtained exact-solution gradient bound

```math
K_T:=\sup_{0\le t<T}\|\nabla u(t)\|_{L_x^2}<\infty,
```

which is available on the same Euclidean surface once the Route B
gradient-transfer estimate has been closed.

## Fixed Surface

Work with

```math
T_N(t):=\|P_{\ge N}u(t)\|_{L_x^2}^2,
\qquad
Q_N(t):=\|\nabla P_{\ge N}u(t)\|_{L_x^2}^2.
```

The spill packet `\mathcal S_N[u]` is the portion of `P_{\ge N}(u\cdot\nabla u)`
in which at least one dyadic index lies in the fixed threshold strip
`[N-M,N+M]`, after the strict low-mode packet and the genuine high-high packet
have been removed.

## Exact Statement

Assume

```math
K_T:=\sup_{0\le t<T}\|\nabla u(t)\|_{L_x^2}<\infty.
```

Then there exist constants `C_M>0` and `N_*` such that for all `N\ge N_*`,

```math
\big|\langle \mathcal S_N[u],\,P_{\ge N}u\rangle\big|
\le
C_M K_T\,2^{-N/2}\,Q_N(t)
\le
\frac{\eta\nu}{4}\,Q_N(t).
```

In particular, the tail-energy spill packet is explicit on the local
`4 -> 1` surface. Its exact payment is the cutoff condition

```math
C_MK_T2^{-N/2}\le \frac{\eta\nu}{4},
```

which makes the spill contribution at most `(\eta\nu/4)Q_N(t)`.

## Proof

Write

```math
P_{\ge N}u=\sum_{j\ge N}\Delta_j u,
```

so

```math
\langle \mathcal S_N[u],P_{\ge N}u\rangle
=
\sum_{j\ge N}\langle \Delta_j \mathcal S_N[u],\Delta_j u\rangle.
```

Because spill is a finite-band threshold packet, only finitely many index
configurations occur. Up to symmetry, each spill contribution has the form

```math
\Delta_j(\Delta_k u\cdot \nabla \Delta_\ell u),
```

with `|j-\ell|\le C_0`, `k\le \ell+C_0`, and at least one of `k,\ell` in the
threshold strip `[N-M,N+M]`.

We repeatedly use:

```math
2^m\|\Delta_m u(t)\|_{L_x^2}\le K_T
\qquad\text{for every dyadic shell }m,
\tag{1}
```

and

```math
T_N(t)
\le
2^{-2N}Q_N(t),
\tag{2}
```

which follows from
`\sum_{j\ge N}\|\Delta_j u\|_{L_x^2}^2 \le 2^{-2N}\sum_{j\ge N}2^{2j}\|\Delta_j u\|_{L_x^2}^2`.

### Case 1. Threshold-low against high

Assume `k\in[N-M,N+M]`, `j\ge N`, and `|j-\ell|\le C_0`. Then

```math
\big|\langle \Delta_j(\Delta_k u\cdot\nabla \Delta_\ell u),\Delta_j u\rangle\big|
\le
C_{prod}
\|\Delta_k u\|_{L^\infty}\,\|\nabla \Delta_\ell u\|_{L^2}\,\|\Delta_j u\|_{L^2}.
```

Summing the finitely many threshold-strip shells and using Bernstein gives

```math
\sum_{k=N-M}^{N+M}\|\Delta_k u\|_{L^\infty}
\le
C_B
\sum_{k=N-M}^{N+M}2^{3k/2}\|\Delta_k u\|_{L^2}
\le
C_M\,2^{N/2}K_T
\tag{3}
```

by `(1)`. Since `|j-\ell|\le C_0`,
`\|\nabla \Delta_\ell u\|_{L^2}\le C_{coll}\|\nabla \Delta_j u\|_{L^2}`, so

```math
\text{Case 1}
\le
C_M\,2^{N/2}K_T
\sum_{j\ge N}\|\nabla \Delta_j u\|_{L^2}\,\|\Delta_j u\|_{L^2}.
```

By Cauchy-Schwarz and `(2)`,

```math
\sum_{j\ge N}\|\nabla \Delta_j u\|_{L^2}\,\|\Delta_j u\|_{L^2}
\le
Q_N(t)^{1/2}T_N(t)^{1/2}
\le
2^{-N}Q_N(t).
```

Therefore

```math
\text{Case 1}
\le
C_M K_T\,2^{-N/2}Q_N(t).
\tag{4}
```

### Case 2. Threshold derivative factor against high mode

Assume the derivative lands on the threshold-shell factor:

```math
\big|\langle \Delta_j(\Delta_\ell u\cdot\nabla \Delta_k u),\Delta_j u\rangle\big|,
\qquad
N-M \le k \le N+M,
\qquad
|j-\ell|\le C_0.
```

Then

```math
\big|\langle \Delta_j(\Delta_\ell u\cdot\nabla \Delta_k u),\Delta_j u\rangle\big|
\le
C_{prod}
\|\Delta_\ell u\|_{L^2}\,\|\nabla \Delta_k u\|_{L^\infty}\,\|\Delta_j u\|_{L^2}.
```

Bernstein gives

```math
\|\nabla \Delta_k u\|_{L^\infty}
\le
C_B
2^{5k/2}\|\Delta_k u\|_{L^2}
\le
C_M\,2^{3N/2}K_T
\tag{5}
```

by `(1)`. Since `j` and `\ell` lie in a fixed collar,

```math
\|\Delta_\ell u\|_{L^2}\,\|\Delta_j u\|_{L^2}
\le
C_{coll}
2^{-2N}
\big(2^\ell\|\Delta_\ell u\|_{L^2}\big)
\big(2^j\|\Delta_j u\|_{L^2}\big).
```

Using `2ab\le a^2+b^2` and summing over the finite collar gives

```math
\text{Case 2}
\le
C_M K_T\,2^{-N/2}Q_N(t).
\tag{6}
```

### Case 3. Threshold-threshold interactions

Now both nonlinear inputs lie in the threshold strip:

```math
N-M\le k,\ell\le N+M.
```

Then at most `C_M` output shells `j` occur. Estimate

```math
\big|\langle \Delta_j(\Delta_k u\cdot\nabla \Delta_\ell u),\Delta_j u\rangle\big|
\le
C_{prod}
\|\Delta_k u\|_{L^\infty}\,\|\nabla \Delta_\ell u\|_{L^2}\,\|\Delta_j u\|_{L^2}.
```

Bernstein and `(1)` give

```math
\|\Delta_k u\|_{L^\infty}\,\|\nabla \Delta_\ell u\|_{L^2}
\le
C_B
2^{3N/2}\|\Delta_k u\|_{L^2}\cdot 2^N\|\Delta_\ell u\|_{L^2}
\le
C_M\,2^{-N/2}K_T\big(2^\ell\|\Delta_\ell u\|_{L^2}\big).
```

Since `j,\ell` are confined to a fixed collar around `N`, another
`2ab\le a^2+b^2` step yields

```math
\text{Case 3}
\le
C_M K_T\,2^{-N/2}Q_N(t).
\tag{7}
```

### Conclusion

Summing `(4)`, `(6)`, and `(7)` across the finitely many spill configurations,

```math
\big|\langle \mathcal S_N[u],P_{\ge N}u\rangle\big|
\le
C_M K_T\,2^{-N/2}Q_N(t).
\tag{8}
```

Choose `N_*` so that

```math
C_M K_T\,2^{-N/2}\le \frac{\eta\nu}{4}
\qquad (N\ge N_*).
\tag{9}
```

Then `(8)` gives

```math
\big|\langle \mathcal S_N[u],P_{\ge N}u\rangle\big|
\le
\frac{\eta\nu}{4}\,Q_N(t),
\qquad
N\ge N_*.
\tag{10}
```

This proves the lemma.

## Consequence

On the local `4 -> 1` surface, the spill packet is no longer an unresolved
threshold-strip coefficient problem. It is controlled by `(9)` and hence
contributes no more than `(\eta\nu/4)Q_N(t)` once the exact-solution gradient
bound is available and `N\ge N_*`.

## Honest Boundary

This lemma closes the spill packet on the local `4 -> 1` tail-energy surface.

It does **not** by itself discharge the proposition-level spill reductions in
Proposition 4.1. Those still need theorem-grade alignment on the scale-side
bridge. The present note is narrower: it closes the spill packet only inside
the exact-solution tail-energy recertification argument.

It also must not be replaced by the manuscript shorthand

```math
\sum_{m=N-M}^{N+M}2^{3m/2}\|\Delta_m u\|_{L_x^2}\le C_M\,L_N(t),
```

because the fixed coefficient surface

```math
L_N(t)=1+\sum_{k\le N-4}2^{3k/2}\|\Delta_k u(t)\|_{L_x^2}
```

stops at the strict low cutoff `N-4` and therefore does not include the
threshold strip `[N-M,N+M]`. On the local `4 -> 1` surface the spill packet is
paid by the exact-solution gradient bound `K_T` and the large-cutoff condition
`C_MK_T2^{-N/2}\le\eta\nu/4`, not by identifying the threshold strip with the
declared low-mode coefficient.
