# Fixed-Collar Shell-Shift Lemma

## Purpose

This note isolates the finite-collar bookkeeping that compares shifted dyadic
tails such as `E_{N-M}` and `D_{N-M}` to the unshifted tails `E_N` and `D_N`.

It is not a substitute for any packet reduction. Its job is only to make the
`N-M \rightsquigarrow N` reindexing explicit once a fixed collar width `M` has
already appeared from the dyadic support geometry.

## Fixed Surface

Fix a collar width `M\in\mathbb N`. Define

```math
E_N(t):=\sum_{j\ge N}2^{2j}\|\Delta_j u(t)\|_{L_x^2}^2,
\qquad
D_N(t):=\sum_{j\ge N}2^{4j}\|\Delta_j u(t)\|_{L_x^2}^2.
```

## Lemma Statement

For every `N` and every `t`,

```math
E_{N-M}(t)
\le
E_N(t)+\sum_{N-M\le j<N}2^{2j}\|\Delta_j u(t)\|_{L_x^2}^2,
```

and

```math
D_{N-M}(t)
\le
D_N(t)+\sum_{N-M\le j<N}2^{4j}\|\Delta_j u(t)\|_{L_x^2}^2.
```

In particular, a shift by the fixed collar `M` changes the dyadic tail only by
the finite strip `[N-M,N)`.

## Proof

This is the definition of the shifted tails:

```math
E_{N-M}(t)
=
\sum_{j\ge N-M}2^{2j}\|\Delta_j u(t)\|_{L_x^2}^2
=
\sum_{N-M\le j<N}2^{2j}\|\Delta_j u(t)\|_{L_x^2}^2 + E_N(t),
```

and similarly

```math
D_{N-M}(t)
=
\sum_{j\ge N-M}2^{4j}\|\Delta_j u(t)\|_{L_x^2}^2
=
\sum_{N-M\le j<N}2^{4j}\|\Delta_j u(t)\|_{L_x^2}^2 + D_N(t).
```

No further estimate is needed.

## Honest Boundary

This lemma only isolates the shell-shift bookkeeping. It does not control the
finite strip itself. Any absorption of the strip into a threshold budget must
come from the surrounding packet argument on the specific theorem surface where
the collar arises.

In particular, one must not silently strengthen the statement to

```math
E_{N-M}(t)\le E_N(t)+C_M\|u(t)\|_{L_x^2}^2,
\qquad
D_{N-M}(t)\le D_N(t)+C_M\|\nabla u(t)\|_{L_x^2}^2
```

with constants independent of `N`. The finite strip still carries dyadic
weights `2^{2j}` or `2^{4j}` for `j\in[N-M,N)`, so those remainders live at the
threshold scale and cannot be collapsed to an `N`-uniform low-order error
without an additional argument on the surrounding packet surface.
