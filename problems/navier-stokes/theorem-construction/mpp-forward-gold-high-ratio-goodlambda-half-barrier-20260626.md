# High-ratio good-lambda half-barrier

Status: failed direct good-lambda discharge; sharp threshold isolated.

## 1. Setup

Codex's ratio-tail audit isolates the active high-ratio variables

```math
d\mu_j(t)=2^{2j}e_j(t)\,dt,
\qquad
\rho_j(t)={\Theta_j^{mat}(t)\over 2^{2j}},
```

with ratio bands

```math
E_{j,\ell}=\{2^\ell\delta<\rho_j\le2^{\ell+1}\delta\},
\qquad
\nu_\ell=\sum_j\mu_j(E_{j,\ell}).
```

Installed raw ledgers give

```math
\sum_{\ell\ge0}\nu_\ell<\infty.
\tag{HGB.1}
```

The full moving same-material clock requires

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
\tag{HGB.2}
```

Let

```math
N_L=\sum_{\ell\ge L}\nu_\ell.
```

Then `(HGB.2)` is equivalent to

```math
\sum_{L\ge0}2^L N_L<\infty.
\tag{HGB.3}
```

## 2. Good-lambda threshold

A recurrence

```math
N_{L+1}\le\theta N_L+B_L
\tag{HGB.4}
```

pays `(HGB.3)` when

```math
2\theta<1,
\qquad
\sum_{L\ge0}2^LB_L<\infty.
\tag{HGB.5}
```

Indeed, multiplying `(HGB.4)` by `2^{L+1}` and summing gives

```math
\sum_{L\ge0}2^{L+1}N_{L+1}
\le
2\theta\sum_{L\ge0}2^L N_L
+
2\sum_{L\ge0}2^LB_L.
```

The left side is the same weighted tail sum up to harmless finite initial terms. Absorption needs the strict inequality `2\theta<1`.

## 3. Sharp half-barrier

The model tail

```math
\nu_\ell={2^{-\ell}\over \ell+1}
\tag{HGB.6}
```

has finite raw mass:

```math
\sum_{\ell\ge0}\nu_\ell<\infty.
```

Its full action diverges:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell
=
\sum_{\ell\ge0}{1\over \ell+1}
=
\infty.
```

The tail satisfies

```math
N_L\simeq {2^{-L}\over L+1},
\qquad
{N_{L+1}\over N_L}\to {1\over2}.
\tag{HGB.7}
```

So the critical obstruction is exactly the half-barrier. A recurrence at `\theta=1/2` still allows divergent full action. A valid Gold-route recurrence needs a strict improvement:

```math
N_{L+1}\le\theta N_L+B_L,
\qquad
\theta<{1\over2},
\qquad
\sum_{L\ge0}2^LB_L<\infty.
\tag{HGB.8}
```

Equivalently, it needs a decay gain

```math
N_L\le C2^{-(1+\varepsilon)L}+B_L^{tail},
\qquad
\sum_{L\ge0}2^L B_L^{tail}<\infty
\tag{HGB.9}
```

for some `\varepsilon>0`.

## 4. Consequence for native reserve attempts

A forward native reserve built from zeroth-moment ledgers reaches only `(HGB.1)`. Complete-frame transverse payment identifies the same-packet carrier of the high-ratio service, and the ratio-tail audit shows that the reserve must see the extra factor `2^\ell`. The half-barrier shows the exact amount of extra information required.

Thus `ForwardNativeReserveBirthPaysFullPLS.A` reduces to one of these strict forms:

```math
\boxed{N_{L+1}\le\theta N_L+B_L,
\quad \theta<{1\over2},
\quad \sum_L2^LB_L<\infty,}
\tag{HGB.10}
```

or

```math
\boxed{\text{no material-time high-ratio profile realizes the critical tail }N_L\simeq2^{-L}/L.}
\tag{HGB.11}
```

## 5. Result

This bounded unit isolates the sharp good-lambda barrier. The current installed inputs establish same-packet carrier identity and zeroth-moment raw control. The next exact hinge is strict high-ratio tail improvement:

```math
\boxed{\text{StrictHighRatioGoodLambdaHalfBarrierBreak.A}}
```

Statement:

For the original smooth Navier--Stokes material history, prove either a strict good-lambda recurrence with coefficient below `1/2` for the high-ratio tail, or a material-time Liouville/rigidity theorem excluding the critical half-tail profile with unit normalized action and vanishing raw heat mass.