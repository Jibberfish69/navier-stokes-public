# Far-Corona Cumulative Tail Stress Theorem

## Purpose

This note records the exact cumulative-tail theorem that would suffice to close
the direct `L_x^2\times L_x^2` attack on the far-corona Carleson object, and
it pushes that theorem as far as the inherited Euclidean inputs currently
allow.

The target sufficient theorem is

```math
\textbf{(CTS)}
\qquad
\int_0^T\int_{\ell_{top}}^{\ell_{bot}}
\left(
\int_{c_1\ell}^{\ell_{hi}}
r^{-2}\|Q_r u(t)\|_{L_x^2}^2\,\frac{dr}{r}
\right)
\|\tau_\ell^{H^1}[u](t)\|_{L_x^2}^2\,
\frac{d\ell}{\ell}\,dt
\le C_{CTS}
\nu\int_0^T D_N(t)\,dt + C_*2^{-2\delta N},
\tag{CTS}
```

with `\ell_{top},\ell_{bot}` the fixed middle-band endpoints and `\ell_{hi}`
the upper end of the far-corona `r`-range.

This note proves:

1. `(CTS)` is a sufficient theorem for the direct stress theorem `FCTS`;
2. the inherited Euclidean inputs reduce `(CTS)` to a precise new dyadic
   weighted square object;
3. that new object is not discharged by the currently installed Euclidean
   theorem queue.

So `(CTS)` is the exact next theorem surface, but not presently provable from
the inherited inputs alone.

## From `FCTS` to the cumulative-tail theorem

Keep the direct far-corona setup from
`far-corona-carleson-direct-attack.md`:

```math
T_r(x,t)
:=
\int_0^{r/c_1}
\chi_{mid}(\log\ell)\,
\tau_\ell^{H^1}[u](x,t)\,\frac{d\ell}{\ell},
```

and

```math
\mathrm{FCTS}
:=
\int_0^T\int_0^\infty
r^{-2}\|Q_r u(t)\|_{L_x^2}^2\,\|T_r(t)\|_{L_x^2}^2
\frac{dr}{r}\,dt.
```

Because `\chi_{mid}` is supported on a fixed logarithmic middle band, the
`\ell`-integration range inside `T_r` has uniformly bounded logarithmic
length depending only on the partition profile and the fixed collar width.
Hence Cauchy-Schwarz in `d\ell/\ell` gives

```math
\|T_r(t)\|_{L_x^2}^2
\le C_T
\int_0^{r/c_1}
\chi_{mid}(\log\ell)\,
\|\tau_\ell^{H^1}[u](t)\|_{L_x^2}^2\,
\frac{d\ell}{\ell}.
\tag{1}
```

Substituting `(1)` into `FCTS` and swapping the `r`- and `\ell`-integrals
gives

```math
\mathrm{FCTS}
\le C_{FCTS}
\int_0^T\int_{\ell_{top}}^{\ell_{bot}}
\left(
\int_{c_1\ell}^{\ell_{hi}}
r^{-2}\|Q_r u(t)\|_{L_x^2}^2\,\frac{dr}{r}
\right)
\|\tau_\ell^{H^1}[u](t)\|_{L_x^2}^2\,
\frac{d\ell}{\ell}\,dt.
\tag{2}
```

So `(CTS)` is a genuine sufficient theorem for `FCTS`.

## Dyadic form of the cumulative tail

Dyadicize

```math
\ell\in [c_\ell2^{-j},C_\ell2^{-j}],
\qquad
r\in [c_r2^{-k},C_r2^{-k}].
```

Since `r\ge c_1\ell`, the inner `r`-tail corresponds to lower frequencies
`k\le j-C_1`. Define the `H^1`-shell energy

```math
E_k(t):=2^{2k}\|\Delta_k u(t)\|_{L_x^2}^2.
\tag{3}
```

Then the cumulative tail factor in `(CTS)` becomes

```math
\int_{c_1\ell}^{\ell_{hi}}
r^{-2}\|Q_r u(t)\|_{L_x^2}^2\,\frac{dr}{r}
\le C_{\mathrm{dyad}}
\sum_{k\le j-C_1} E_k(t).
\tag{4}
```

Therefore `(CTS)` is dyadically equivalent to

```math
\int_0^T
\sum_{j\ge N}
\left(
\sum_{k\le j-C_1}E_k(t)
\right)
\|\tau_j^{H^1}[u](t)\|_{L_x^2}^2
\,dt
\le C_{CTS}
\nu\int_0^T D_N(t)\,dt + C_*2^{-2\delta N}.
\tag{5}
```

This is the exact dyadic form of the cumulative-tail theorem.

## Inherited Euclidean bound on the stress square

For a `j`-band field,

```math
\tau_j^{H^1}[u](x,t)
:=
2^{2j}
\int |\eta_j(a)|\,|\delta_a u_j(x,t)|^2\,da.
```

Since `\operatorname{supp}\widehat u_j\subset\{c_02^j\le |\xi|\le C_02^j\}`,
Bernstein gives

```math
\|u_j(t)\|_{L_x^4}\le C_B2^{3j/4}\|u_j(t)\|_{L_x^2}.
```

So

```math
\|\tau_j^{H^1}[u](t)\|_{L_x^2}
\le C_\tau
2^{2j}\|u_j(t)\|_{L_x^4}^2
\le C_{\tau,B}
2^{7j/2}\|u_j(t)\|_{L_x^2}^2.
\tag{6}
```

Using

```math
D_j(t):=2^{4j}\|u_j(t)\|_{L_x^2}^2,
```

this becomes

```math
\|\tau_j^{H^1}[u](t)\|_{L_x^2}^2
\le C_{\tau,D}
2^{-j}D_j(t)^2.
\tag{7}
```

Substituting `(7)` into `(5)` yields the exact inherited Euclidean reduction

```math
\int_0^T
\sum_{j\ge N}
\left(
\sum_{k\le j-C_1}E_k(t)
\right)
2^{-j}D_j(t)^2
\,dt
\le C_{FCTS}
\nu\int_0^T D_N(t)\,dt + C_*2^{-2\delta N}.
\tag{8}
```

## Exact obstruction

The left-hand side of `(8)` is the precise new dyadic weighted square object
produced by the direct attack on `(CTS)`.

It is not controlled by the inherited Euclidean surface:

1. the prefix factor `\sum_{k\le j-C_1}E_k(t)` is only an accumulated
   lower-frequency `H^1` energy;
2. the stress square contributes `2^{-j}D_j(t)^2`, which is quartic in the
   active shell amplitude;
3. the installed one-sided tail queue (`SDS^\sharp`, `UTKD^\sharp`,
   `PCI^\sharp`) controls one-sided high-tail bilinear/square carriers, not
   this lower-prefix-times-active-square object.

So the inherited Euclidean inputs do not prove `(CTS)`.

## Honest outcome

This note proves the exact implication

```math
\text{(CTS)}\Longrightarrow \text{FCTS},
```

and it proves that the direct inherited Euclidean attack on `(CTS)` lands on
the precise weighted dyadic square `(8)`.

What it does **not** prove is `(CTS)` itself. The missing content is now
explicit:

```math
\text{a theorem controlling lower-frequency cumulative }H^1\text{ energy against}
\quad
2^{-j}D_j^2.
```

The companion note `lower-prefix-active-square-theorem.md` packages that exact
dyadic object as the theorem `(LPAS)`. So if `(CTS)` is not proved directly in
the continuum language, the route lands on one explicit dyadic target rather
than on a vague open carrier.

So the far-corona route is sharpened again:

```math
\text{moving spill theorem}
\quad+\quad
\text{either FCTS directly, or the cumulative-tail theorem (CTS),}
```

but `(CTS)` is not presently derivable from the inherited Euclidean inputs
alone.
