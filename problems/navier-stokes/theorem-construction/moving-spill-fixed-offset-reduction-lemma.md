# Moving-Spill Fixed-Offset Reduction Lemma

## Purpose

This note sharpens the near-corona part of
`middle-band-flux-gap-kernel-theorem.md`.

It does **not** prove the quantitative moving-spill barrier theorem. What it
does prove is the exact reduction that avoids the naive Bernstein loss:

1. the moving near corona decomposes into a finite family of fixed relative
   offsets;
2. each fixed-offset piece is a divergence-free annular multiplier at the
   active scale;
3. in the scalarized pairing, each such piece reduces to a fixed-offset
   same-scale edge packet modulo admissible collar errors.

So the moving-spill theorem is reduced to a finite-offset stability extension
of the same-scale spill technology.

## Setup

Work on the near-corona band from
`middle-band-flux-gap-kernel-theorem.md`:

```math
b_\ell^{near,L}
:=
\int_{c_0\ell}^{c_1\ell} Q_r u\,\frac{dr}{r},
\qquad
1<c_0<c_1<\infty.
```

Choose a smooth partition of unity on the bounded ratio interval
`[c_0,c_1]`:

```math
\sum_{|m|\le M_L}\beta_m(\rho)=1,
\qquad
\rho\in[c_0,c_1],
```

where each `\beta_m` is supported in
`c_\beta2^m\le\rho\le C_\beta2^m`, and `M_L<\infty` depends only on the
logarithmic width `L`.

Define

```math
b_\ell^{near,L}
=
\sum_{|m|\le M_L} b_{\ell,m},
\qquad
b_{\ell,m}
:=
\int_0^\infty \beta_m(r/\ell)\,Q_r u\,\frac{dr}{r}.
\tag{1}
```

## Lemma A: finite relative-offset multiplier decomposition

For each fixed `m` with `|m|\le M_L`, there exists an order-zero Fourier
multiplier family `T_m(\ell D)` whose symbol is supported in a fixed annulus
depending only on `m`, such that

```math
b_{\ell,m}=T_m(\ell D)u.
\tag{2}
```

Moreover, `b_{\ell,m}` is divergence-free and localized in a frequency annulus
`c_m\ell^{-1}\le|\xi|\le C_m\ell^{-1}`, with constants uniform up to the
finite `L`-dependent family `|m|\le M_L`.

### Proof

By definition of `Q_r`,

```math
\widehat{b_{\ell,m}}(\xi)
=
\int_0^\infty
\beta_m(r/\ell)\,\widehat Q_r(\xi)\,\frac{dr}{r}\,\widehat u(\xi).
```

Set `\rho:=r/\ell`. Then

```math
\widehat{b_{\ell,m}}(\xi)
=
\left(
\int_0^\infty
\beta_m(\rho)\,\widehat Q_{\rho\ell}(\xi)\,\frac{d\rho}{\rho}
\right)\widehat u(\xi).
```

The bracket defines a smooth symbol `a_m(\ell\xi)` supported where
`|\ell\xi|` stays in a fixed annulus determined by the support of `Q_r` and
the bounded ratio support of `\beta_m`. Therefore

```math
b_{\ell,m}=T_m(\ell D)u
```

for an order-zero annular multiplier family `T_m`. Since each `Q_r u` is
divergence-free, so is every `b_{\ell,m}`.

## Lemma B: scalarized edge reduction for each fixed offset

Let `\Pi_{N,m}^{mov}` denote the scalarized pairing contribution of
`b_{\ell,m}` inside the moving-spill channel. Then

```math
\Pi_{N,m}^{mov}
=
\Pi_{N,m}^{edge}
+ \mathcal E_{N,m}^{collar},
\qquad
\mathcal E_{N,m}^{collar}\in\mathscr A_{collar},
\tag{3}
```

where `\Pi_{N,m}^{edge}` is a fixed-offset same-scale edge packet.

### Proof

Because `b_{\ell,m}` is divergence-free, integration by parts in the
coarse-grained energy flux leaves only the commutator stress in the scalarized
pairing channel:

```math
\left\langle
[P_{\le \ell},b_{\ell,m}\!\cdot\nabla]u,\,
P_{\le \ell}u
\right\rangle
=
-\int_{\mathbb R^3}
\tau_\ell(b_{\ell,m},u):\nabla u_{\le \ell}\,dx.
\tag{4}
```

Here
`\tau_\ell(b_{\ell,m},u):=(b_{\ell,m}u)_{\le\ell}-b_{\ell,m}u_{\le\ell}`.
Since `b_{\ell,m}` is supported in
`c_m\ell^{-1}\le|\xi|\le C_m\ell^{-1}`, only the edge-band part of
`\nabla u_{\le \ell}` contributes inside the scalarized pairing. As in
`lifted-band-collar-class-reduction-lemma.md`, replace the low-pass test
factor by its edge-band projection. The discarded part is a bounded-gap
same-scale perturbation and therefore lies in `\mathscr A_{collar}`.

The resulting packet is same-scale, with a fixed annular offset determined by
`m`. This is exactly `\Pi_{N,m}^{edge}`, proving `(3)`.

## Corollary: finite-offset reduction of the moving spill family

Summing `(3)` over `|m|\le M_L` gives

```math
\Pi_N^{mov\text{-}spill,L}
=
\sum_{|m|\le M_L}\Pi_{N,m}^{edge}
+ \mathcal E_N^{collar},
\qquad
\mathcal E_N^{collar}\in\mathscr A_{collar}.
\tag{5}
```

So the moving-spill theorem is reduced to a finite family of fixed-offset
same-scale edge packets.

## Exact remaining stability theorem

A sufficient quantitative theorem is:

for every fixed `m` with `|m|\le M_L`,

```math
\int_0^T \Pi_{N,m}^{edge}(t)\,dt
\le
\frac{\eta\nu}{32(2M_L+1)}
\int_0^T D_N(t)\,dt
+ C_{m,*}2^{-2\delta N}.
\tag{6}
```

Then summing `(6)` over `|m|\le M_L` and absorbing the collar error from `(5)`
would yield

```math
\int_0^T \Pi_N^{mov\text{-}spill,L}(t)\,dt
\le
\frac{\eta\nu}{16}\int_0^T D_N(t)\,dt
+ C_{L,*}2^{-2\delta N}.
\tag{7}
```

This is the desired moving-spill barrier theorem.

## Honest boundary

This note proves the finite-offset reduction `(5)`. It does **not** prove the
stability theorem `(6)`.

That remaining step is exactly the point where the current spill technology
must be checked for invariance under replacing the canonical edge operator by
a finite family of annular order-zero multiplier families `T_m(\ell D)`.

So the correct theorem-level verdict is:

```math
\text{moving spill theorem}
\Longleftarrow
\text{finite-offset same-scale stability theorem}.
```

The reduction is now explicit; the quantitative stability theorem remains
open.
