# MPP Forward-Gold Weighted-Carrier Product Direct Test

Date: 2026-06-20

## Status

Direct weighted-carrier product test complete.  The weighted-carrier term is a
correct interface for threshold spill and near-corona moving spill, but the
current Navier-Stokes inputs do not close its integral estimate.

The exact target is

```math
\int_I
\widetilde\Lambda_N^\sharp(t)E_N(t)\,dt
\le
\varepsilon\nu\int_I D_N(t)\,dt
+
C_\varepsilon 2^{-2\delta N},
\tag{WC}
```

where

```math
\widetilde\Lambda_N^\sharp
=
\Lambda_N+\Theta_N^\sharp.
```

The test below separates what is actually paid from what still requires the
active-square/source-square reserve.

## 1. Finite low modes pay

Split the low-mode coefficient at a fixed \(K<N\):

```math
\Lambda_N
=
\Lambda_{\le K}
+
\Lambda_{K<N}.
```

The finite part satisfies, by Bernstein and the energy bound,

```math
\Lambda_{\le K}(t)
\le C_K\|u(t)\|_2
\le C_{K,E}.
```

Using the tail relation \(E_N\le 2^{-2N}D_N\),

```math
\int_I\Lambda_{\le K}(t)E_N(t)\,dt
\le
C_{K,E}2^{-2N}\int_I D_N(t)\,dt.
```

For \(N\) large relative to the fixed \(K\), this is absorbed into
\(\varepsilon\nu\int_I D_N\).  Thus the finite low-mode part is not the
obstruction.

## 2. The terminal low tail is the real low-mode product

The remaining low coefficient is

```math
\Lambda_{K<N}(t)
\lesssim
\sum_{K<k<N}2^{5k/2}\|\Delta_k u(t)\|_2.
```

Equivalently, in the \(H^1\)-shell notation
\(E_k=2^{2k}\|\Delta_k u\|_2^2\), this is a weighted lower-prefix amplitude.
Multiplying by the active tail gives

```math
\Lambda_{K<N}(t)E_N(t)
\lesssim
\left(
\sum_{K<k<N}2^{3k/2}E_k(t)^{1/2}
\right)
\left(
\sum_{j\ge N}E_j(t)
\right).
\tag{1}
```

The inherited energy-dissipation ledger gives first moments of these factors,
not a same-time product estimate.  Pointwise absorption would require the
viscous-scale coefficient bound

```math
\Lambda_{K<N}(t)\le c\nu 2^{2N}
```

on the terminal windows where the active tail survives.  That bound is not
installed, and the energy surface does not imply it uniformly near the terminal
face.

So the low-tail product is not closed by finite-mode control.  It needs a
lower-prefix active-square theorem, a selected source-square theorem, or a
pressure-corrected no-waste theorem that supplies the same product control.

## 3. The collar product is also an active amplitude term

The threshold collar coefficient has the form

```math
\Theta_N^\sharp(t)
\simeq
\sum_{|m-N|\le M}2^{3m}\|\Delta_m u(t)\|_2^2.
```

Therefore

```math
\Theta_N^\sharp(t)E_N(t)
\simeq
\left(
\sum_{|m-N|\le M}2^{3m}\|\Delta_m u(t)\|_2^2
\right)
\left(
\sum_{j\ge N}2^{2j}\|\Delta_j u(t)\|_2^2
\right).
\tag{2}
```

This is a same-time collar-amplitude times active-tail product.  The baseline
ledger gives \(L_t^1\) control of dissipation-type first moments.  It does not
give \(L_t^1\) control of the product in `(2)`.

Equivalently, pointwise absorption of the collar term would require

```math
\Theta_N^\sharp(t)\le c\nu2^{2N}
```

on the active terminal support.  That is a threshold-collar amplitude theorem,
not a consequence of energy alone.

## 4. Heat-scale pulse countercheck

The obstruction is the same time-face product defect seen in the source-square
branch.  A nonnegative scalar pair can have controlled first moments while its
same-time product concentrates on a shrinking terminal interval.

For example, on \(I_m=(T-h_m,T]\), set

```math
a_m(t)=A_mh_m^{-1}\mathbf 1_{I_m}(t),
\qquad
b_m(t)=B_mh_m^{-1}\mathbf 1_{I_m}(t).
```

Then

```math
\int a_m=A_m,
\qquad
\int b_m=B_m,
```

but

```math
\int a_m b_m=A_mB_mh_m^{-1}.
```

At heat scale \(h_m\simeq 2^{-2m}\), this product can stay order-one even
when the first moments tend to zero with \(m\).  This scalar model is not
asserted as a Navier-Stokes solution.  It shows exactly why a weighted-carrier
product estimate cannot be derived from the first-moment ledger alone.

## 5. Exact reduction

The direct weighted-carrier route closes only with one of the following
additional inputs:

```math
\Lambda_N(t)\le c\nu2^{2N}
\quad\text{and}\quad
\Theta_N^\sharp(t)\le c\nu2^{2N}
```

on the selected active support, or the integrated product estimate `(WC)`
itself.

The installed route for proving `(WC)` remains:

```math
\text{tail-square / LPAS / CTS / SourceSquareReserve / strict no-waste}
\Longrightarrow
\text{weighted-carrier closure}.
```

Thus weighted-carrier control is not a new independent gold route.  It is
another expression of the same active-square/source-square wall exposed by the
far-corona and terminal heat-scale branches.

## Boundary

This note proves a negative direct-test result: finite low modes are paid, but
the terminal low-tail and collar products are not controlled by the current
first-moment Navier-Stokes ledger.  The weighted-carrier term can be safely
spent only after an active-square/source-square/no-waste reserve is installed,
or after the selected reserve failure is admitted into the CM Pack/Part/Field
face readout.
