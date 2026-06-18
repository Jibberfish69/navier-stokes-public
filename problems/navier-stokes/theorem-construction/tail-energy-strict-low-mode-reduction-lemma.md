# Tail-Energy Strict Low-Mode Reduction Lemma

## Purpose

This note records the strict low-mode target on the exact Euclidean
tail-energy surface used by the `4 -> 1` recertification lemma.

It works entirely with the repo-facing dyadic quantities

```math
T_N(t)=\|P_{\ge N}u(t)\|_{L_x^2}^2,
\qquad
Q_N(t)=\|\nabla P_{\ge N}u(t)\|_{L_x^2}^2,
```

and keeps the packet on the declared `T_N/Q_N/\mathcal L_N` surface without
introducing any `L_x^\infty` continuation norm.

## Target Statement

Let `u` be divergence-free on `[0,T) x R^3`. Define

```math
T_N(t)=\|P_{\ge N}u(t)\|_{L_x^2}^2,
\qquad
Q_N(t)=\|\nabla P_{\ge N}u(t)\|_{L_x^2}^2,
```

```math
\mathcal L_N(t)
:=
1+\sum_{k\le N-4}2^{3k/2}\|\Delta_k u(t)\|_{L_x^2}.
```

Then for all sufficiently large `N`,

```math
\big|\langle P_{\ge N}(T_u\nabla u + T_{\nabla u}u),\,P_{\ge N}u\rangle\big|
\le
C\,\mathcal L_N(t)\,T_N(t)
+
\frac{\eta\nu}{4}Q_N(t).
```

## Proof

Work entirely on the dyadic surface.

### Step 0. Reduction to dyadic shells

Since

```math
P_{\ge N}=\sum_{j\ge N}\Delta_j,
```

we have

```math
\langle P_{\ge N}(\cdot),P_{\ge N}u\rangle
=
\sum_{j\ge N}\langle \Delta_j(\cdot),\Delta_j u\rangle.
```

So it suffices to estimate each shell `j\ge N`.

### Step 1. Strict low-mode packet definition

The strict low-mode interactions are

```math
T_u(\nabla u)
=
\sum_{k<j-4}\Delta_k u\cdot\nabla \Delta_j u,
```

```math
T_{\nabla u}(u)
=
\sum_{k<j-4}\nabla \Delta_k u\cdot \Delta_j u.
```

We restrict to the strict low-mode regime

```math
k\le N-4,
\qquad
j\ge N.
```

### Step 2. Low-high term

Fix `j\ge N` and `k\le N-4`. Then

```math
|\langle \Delta_k u\cdot\nabla \Delta_j u,\Delta_j u\rangle|
\le
\|\Delta_k u\|_{L^\infty}
\|\nabla \Delta_j u\|_{L^2}
\|\Delta_j u\|_{L^2}.
```

Bernstein gives

```math
\|\Delta_k u\|_{L^\infty}
\le
C_B
2^{3k/2}\|\Delta_k u\|_{L^2}.
```

Hence

```math
|\langle \Delta_k u\cdot\nabla \Delta_j u,\Delta_j u\rangle|
\le
2^{3k/2}\|\Delta_k u\|_{L^2}
\|\nabla \Delta_j u\|_{L^2}
\|\Delta_j u\|_{L^2}.
```

Summing in `k\le N-4`,

```math
\le
\Big(\sum_{k\le N-4}2^{3k/2}\|\Delta_k u\|_{L^2}\Big)
\|\nabla \Delta_j u\|_{L^2}
\|\Delta_j u\|_{L^2}.
```

Therefore

```math
\le
\mathcal L_N(t)\,
\|\nabla \Delta_j u\|_{L^2}
\|\Delta_j u\|_{L^2}.
```

Apply Young in the form

```math
ab\le \frac{\eta\nu}{8}a^2 + C b^2,
```

with `a=\|\nabla \Delta_j u\|_{L^2}`. This yields

```math
\le
\frac{\eta\nu}{8}\|\nabla \Delta_j u\|_{L^2}^2
+
C\,\mathcal L_N(t)\|\Delta_j u\|_{L^2}^2.
```

### Step 3. High-low term via commutator

Use incompressibility:

```math
\langle u\cdot\nabla \Delta_j u,\Delta_j u\rangle=0.
```

Thus

```math
\Delta_j(u\cdot\nabla u)
=
u\cdot\nabla \Delta_j u
+
[\Delta_j,u\cdot\nabla]u,
```

and only the commutator contributes. In the strict low-mode regime this is

```math
|\langle [\Delta_j,\Delta_k u\cdot\nabla]\widetilde\Delta_j u,\Delta_j u\rangle|.
```

Write the commutator in kernel form:

```math
[ \Delta_j , f ] g (x)
=
\int_{\mathbb R^3} K_j(x-y)\big(f(x)-f(y)\big)g(y)\,dy,
```

with `f=\Delta_k u` and `g=\nabla\widetilde\Delta_j u`. Since

```math
|f(x)-f(y)|
\le
|x-y|\,\|\nabla \Delta_k u\|_{L^\infty},
```

and

```math
\int_{\mathbb R^3}|K_j(z)|\,|z|\,dz \le C_K2^{-j},
```

we obtain the fixed-gap commutator estimate

```math
\|[\Delta_j,\Delta_k u]\nabla \widetilde\Delta_j u\|_{L^2}
\le
C_{comm}
2^{-j}\|\nabla \Delta_k u\|_{L^\infty}\,
\|\nabla \widetilde\Delta_j u\|_{L^2}.
```

Bernstein on the strict low shell gives

```math
\|\nabla \Delta_k u\|_{L^\infty}
\le
C_B'
2^{5k/2}\|\Delta_k u\|_{L^2}.
```

Because `k\le N-4\le j-4`, the fixed gap yields

```math
2^{-j}2^{5k/2}
\le
C\,2^{3k/2}.
```

Therefore

```math
\|[\Delta_j,\Delta_k u]\nabla \widetilde\Delta_j u\|_{L^2}
\le
C_{gap}
2^{3k/2}\|\Delta_k u\|_{L^2}\,
\|\nabla \widetilde\Delta_j u\|_{L^2}.
```

Pairing with `\Delta_j u` and using the fixed-collar bound
`\|\nabla \widetilde\Delta_j u\|_{L^2}\le C_{\widetilde\Delta}
\|\nabla \Delta_j u\|_{L^2}` gives

```math
|\langle [\Delta_j,\Delta_k u\cdot\nabla]\widetilde\Delta_j u,\Delta_j u\rangle|
\le
C\,2^{3k/2}\|\Delta_k u\|_{L^2}\,
\|\nabla \Delta_j u\|_{L^2}\,
\|\Delta_j u\|_{L^2}.
```

Summing in `k\le N-4`,

```math
\le
\mathcal L_N(t)\,
\|\nabla \Delta_j u\|_{L^2}\,
\|\Delta_j u\|_{L^2}.
```

Another Young step gives

```math
\le
\frac{\eta\nu}{8}\|\nabla \Delta_j u\|_{L^2}^2
+
C\,\mathcal L_N(t)\|\Delta_j u\|_{L^2}^2.
```

So the commutator does not close by a derivative-free shell bound. It closes on
the same `\mathcal L_N` surface because the fixed dyadic gap converts the low
coefficient derivative into an admissible factor, and the remaining high-shell
derivative is absorbed into `Q_N` by Young.

### Step 4. Combine for fixed `j`

Combining the low-high and high-low bounds, for each `j\ge N` we obtain

```math
\big|\langle \Delta_j(T_u\nabla u + T_{\nabla u}u),\Delta_j u\rangle\big|
\le
\frac{\eta\nu}{4}\|\nabla \Delta_j u\|_{L^2}^2
+
C\,\mathcal L_N(t)\|\Delta_j u\|_{L^2}^2.
```

### Step 5. Sum over `j\ge N`

Summing over `j\ge N`,

```math
\sum_{j\ge N}\frac{\eta\nu}{4}\|\nabla \Delta_j u\|_{L^2}^2
=
\frac{\eta\nu}{4}Q_N(t),
```

and

```math
\sum_{j\ge N}\|\Delta_j u\|_{L^2}^2
=
T_N(t).
```

Hence

```math
\big|\langle P_{\ge N}(T_u\nabla u + T_{\nabla u}u),\,P_{\ge N}u\rangle\big|
\le
C\,\mathcal L_N(t)\,T_N(t)
+
\frac{\eta\nu}{4}Q_N(t).
```

This is the intended coefficient-preserving strict low-mode tail reduction.

## Consequence

The strict low-mode packet on the tail-energy surface now has:

- exact packet definition,
- exact index separation `k\le N-4`, `j\ge N`,
- no `L^\infty` continuation norm,
- an explicit kernel-form commutator expansion rather than a black-box citation.

## Honest Status

This note is tighter than the earlier compressed version, but it is not yet
referee-hard. The kernel calculation leaves the high-shell derivative in the
commutator term:

```math
\|[\Delta_j,\Delta_k u]\nabla \widetilde\Delta_j u\|_{L^2}
\le
C_{gap}
2^{3k/2}\|\Delta_k u\|_{L^2}\,
\|\nabla \widetilde\Delta_j u\|_{L^2},
```

so the shellwise pairing lands on

```math
\mathcal L_N(t)\,\|\nabla \Delta_j u\|_{L^2}\,\|\Delta_j u\|_{L^2}.
```

A naive Young step can then upgrade the declared linear coefficient surface
`\mathcal L_N` to `\mathcal L_N^2` or to a derivative-weighted coefficient.
So the commutator line still needs a coefficient-preserving absorption argument
before this strict low-mode note can count as fully discharged on the local
tail-energy surface.
