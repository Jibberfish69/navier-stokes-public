# High-Frequency Enstrophy Implies `H^1` Lemma

## Purpose

This note isolates the low-frequency completion step that turns bounded
high-frequency enstrophy `E_N` into the full Euclidean `H^1` energy norm.

It is mathematically elementary, but it is theorem-critical because the
energy-level bridge uses the full `\|\nabla u(t)\|_{L_x^2}` norm rather than
only the dyadic tail `E_N(t)`.  This note does not supply the classical
continuation norm; that requires an `H^s`, `s>5/2`, bound or another named
continuation criterion.

## Fixed Surface

Work on `[0,T) \times \mathbb R^3` with

```math
E_N(t):=\sum_{j\ge N}2^{2j}\|\Delta_j u(t)\|_{L_x^2}^2.
```

Assume the classical energy bound

```math
\sup_{0\le t<T}\|u(t)\|_{L_x^2}\le M.
```

## Lemma Statement

Fix a dyadic threshold `N`. If

```math
\sup_{0\le t<T}E_N(t)<\infty,
```

then

```math
\sup_{0\le t<T}\|\nabla u(t)\|_{L_x^2}<\infty.
```

More quantitatively,

```math
\|\nabla u(t)\|_{L_x^2}^2
\le
C_N\|u(t)\|_{L_x^2}^2 + E_N(t)
```

for every `t\in[0,T)`, where `C_N:=\sum_{j<N}2^{2j}` depends only on the fixed
threshold `N`.

## Proof

Split the `H^1` norm at frequency `N`:

```math
\|\nabla u(t)\|_{L_x^2}^2
=
\sum_{j<N}2^{2j}\|\Delta_j u(t)\|_{L_x^2}^2
+
\sum_{j\ge N}2^{2j}\|\Delta_j u(t)\|_{L_x^2}^2.
```

The high-frequency term is exactly `E_N(t)`.

For the low-frequency block, only finitely many shells contribute, so

```math
\sum_{j<N}2^{2j}\|\Delta_j u(t)\|_{L_x^2}^2
\le
\Big(\sum_{j<N}2^{2j}\Big)\|u(t)\|_{L_x^2}^2
=
C_N\|u(t)\|_{L_x^2}^2.
```

Therefore

```math
\|\nabla u(t)\|_{L_x^2}^2
\le
C_N\|u(t)\|_{L_x^2}^2 + E_N(t).
```

Taking the supremum over `t\in[0,T)` and using the energy bound
`\sup_{0\le t<T}\|u(t)\|_{L_x^2}\le M` together with
`\sup_{0\le t<T}E_N(t)<\infty` gives

```math
\sup_{0\le t<T}\|\nabla u(t)\|_{L_x^2}^2
\le
C_N M^2 + \sup_{0\le t<T}E_N(t)
<
\infty.
```

This is the desired `H^1` energy bound.

## Output

This lemma removes the soft frequency-completion step between the dyadic
gradient-transfer inequality and the full `H^1` energy norm. It does not close
classical continuation without an additional `H^s`, `s>5/2`, bridge or an
explicit alternative continuation criterion.
