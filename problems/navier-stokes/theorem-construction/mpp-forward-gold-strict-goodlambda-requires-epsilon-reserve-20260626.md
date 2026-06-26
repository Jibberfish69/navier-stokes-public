# Strict good-lambda requires an epsilon reserve

Status: failed direct strict-good-lambda proof from installed inputs; missing epsilon reserve isolated.

## 1. Target

The high-ratio tail variables satisfy

```math
N_L=\sum_{\ell\ge L}\nu_\ell,
\qquad
\sum_L2^L N_L<\infty
\quad\Longleftrightarrow\quad
\sum_\ell2^\ell\nu_\ell<\infty.
```

A good-lambda proof needs

```math
N_{L+1}\le\theta N_L+B_L,
\qquad
\theta<{1\over2},
\qquad
\sum_L2^LB_L<\infty.
\tag{SGR.1}
```

The previous half-barrier note shows the threshold `1/2` is sharp.

## 2. What the installed inputs give

Raw heat, viscosity, fixed-annulus action, and fixed-collar service give the zeroth moment

```math
\sum_\ell\nu_\ell<\infty.
\tag{SGR.2}
```

Complete-frame transverse payment identifies the same-packet carrier of positive service:

```math
[p\cdot Sp]_+
\le[-\hat\xi\cdot S\hat\xi]_+ +[-n\cdot Sn]_+.
\tag{SGR.3}
```

The one-shell high-ratio model gives the scale-critical law

```math
e'=\lambda e-\nu k^2e+r,
\qquad
\lambda\lesssim\kappa=(\log k)'.
\tag{SGR.4}
```

On the branch `\lambda\gg\nu k^2`, heat damping supplies no absorbing factor in material time. The carrier relation `(SGR.3)` gives payment location, while the ratio weight `2^\ell` remains unpaid.

## 3. Strictness test

A strict recurrence `(SGR.1)` is equivalent to a spare dyadic exponent. In distribution form it says

```math
N_L\lesssim2^{-(1+\varepsilon)L}+B_L^{tail}
\tag{SGR.5}
```

with weighted legal tail. The installed scale-critical tail

```math
N_L\simeq {2^{-L}\over L+1}
\tag{SGR.6}
```

satisfies the zeroth-moment ledger and lies exactly at the good-lambda half-barrier:

```math
{N_{L+1}\over N_L}\to {1\over2}.
\tag{SGR.7}
```

Thus complete-frame payment plus raw original-data ledgers yield no coefficient margin below `1/2` and no exponent gain `\varepsilon>0`.

## 4. Equivalent missing estimates

A strict good-lambda proof must add one of the following independent estimates:

```math
\sum_{\ell\ge0}2^{(1+\varepsilon)\ell}\nu_\ell<\infty
\tag{SGR.8}
```

for some `\varepsilon>0`, or the acceleration/interface moment

```math
\sum_j\int_{\{\rho_j>\delta\}}\rho_j^2\,d\mu_j<\infty,
\tag{SGR.9}
```

or a bounded-below same-material action storage whose differential directly pays the first ratio moment.

Each one breaks the half-barrier. Each one has full-clock strength at the high-ratio edge.

## 5. Result

The direct strict-good-lambda proof is blocked at the absence of spare exponent. The next exact work unit is the material-time profile formulation:

```math
\boxed{\text{CriticalHalfTailMaterialTimeProfileLiouville.A}}
```

Statement:

Exclude any non-gauge material-time participation-law-strain profile that carries unit normalized high-ratio action with vanishing raw heat/viscous mass and critical tail `N_L\simeq2^{-L}/L`.