# MPP Forward-Gold Frequency-Weight Threshold For First-Created Reserve

Date: 2026-06-20

## Status

Direct frequency-weight coercivity test complete.  Logarithmic, polynomial, and
subcritical dyadic first-moment weights do not pay the retained first-created
square reserve.

The exact threshold is the active-height scale of the pulse.  A weighted
first-moment theorem strong enough to see the model must carry the same
unweighted square/height information already named by
`UnweightedTerminalCriticalActionReserve.A`, `SourceSquareReserve.A`, or
`ActiveWindowHeight.A`.

## 1. The weighted first-moment test

Let

```math
T_k(t):=\sum_{\ell>k+4}D_\ell(t),
\qquad
D_\ell(t)=\nu\|\nabla u_\ell(t)\|_2^2 .
\tag{FWT.1}
```

For a nonnegative shell weight \(w_{\ell,N}\), define the weighted first-moment
charge

```math
\mathcal M_N^w(W)
:=
\int_W \sum_{\ell>N+4}w_{\ell,N}D_\ell(t)\,dt .
\tag{FWT.2}
```

This includes the usual first moment with \(w_{\ell,N}=1\), the frequency
log-tail with \(w_{\ell,N}=\ell-N-4\), and any polynomial or logarithmic
frequency entropy.

The square reserve is

```math
\mathcal R_N(W)
:=
\int_W\sum_{k>N}2^kT_k(t)^2\,dt .
\tag{FWT.3}
```

## 2. Exact heat-scale one-shell pulse

Fix

```math
h_m:=2^{-2m},
\qquad
A_m:=2^{-3m/2},
\tag{FWT.4}
```

and put all high-frequency dissipation in the single shell \(\ell=m+5\):

```math
D_{m+5}(t)
=
A_mh_m^{-1}{\bf 1}_{I_m}(t),
\qquad
|I_m|=h_m,
\tag{FWT.5}
```

with all other \(D_\ell\) zero on \(I_m\).

Then the unweighted first moment is exactly

```math
\int_{I_m}\sum_{\ell>m}D_\ell(t)\,dt
=
A_m
=
2^{-3m/2}
\to0 .
\tag{FWT.6}
```

For the reserve, the \(k=m\) summand alone gives

```math
\int_{I_m}2^mT_m(t)^2\,dt
=
2^mA_m^2h_m^{-1}
=
2^m2^{-3m}2^{2m}
=1 .
\tag{FWT.7}
```

Thus

```math
\mathcal R_N(I_m)\ge1
\qquad
\text{for every }N<m .
\tag{FWT.8}
```

## 3. Exact failure of log-tail and subcritical weights

For the frequency log-tail moment

```math
\widetilde{\mathcal F}_N(W)
:=
\int_W\sum_{\ell>N+4}(\ell-N-4)D_\ell(t)\,dt,
\tag{FWT.9}
```

the one-shell pulse gives, whenever \(N\le m\),

```math
\widetilde{\mathcal F}_N(I_m)
=
(m+1-N)A_m
=
(m+1-N)2^{-3m/2}.
\tag{FWT.10}
```

In particular, for fixed \(N\), or for \(m-N\) growing at any polynomial rate,

```math
\widetilde{\mathcal F}_N(I_m)\to0
\tag{FWT.11}
```

while `(FWT.8)` remains fixed positive.

More generally, the weighted charge `(FWT.2)` equals

```math
\mathcal M_N^w(I_m)
=
w_{m+5,N}A_m
=
w_{m+5,N}2^{-3m/2}.
\tag{FWT.12}
```

Therefore every family of weights satisfying

```math
w_{m+5,N}2^{-3m/2}\to0
\tag{FWT.13}
```

misses the heat-scale reserve:

```math
\mathcal M_N^w(I_m)\to0,
\qquad
\mathcal R_N(I_m)\ge1 .
\tag{FWT.14}
```

This covers logarithmic weights, polynomial weights, and dyadic weights
\(w_{m+5,N}=2^{\beta m}\) with \(\beta<3/2\).

## 4. The first possible weight is already the missing theorem

To force a positive lower charge on the model from a weighted first moment, one
needs

```math
w_{m+5,N}A_m\ge c>0,
\tag{FWT.15}
```

so, for `(FWT.4)`,

```math
w_{m+5,N}\ge c\,2^{3m/2}.
\tag{FWT.16}
```

But the active height of the same pulse is exactly

```math
2^mT_m(t)
=
2^mA_mh_m^{-1}
=
2^{3m/2}
\qquad
\text{on }I_m .
\tag{FWT.17}
```

Thus the first weight capable of seeing the pulse is precisely the pulse's
active-height scale.  A theorem that supplies `(FWT.16)` on the actual selected
carrier is not a logarithmic or entropy refinement of the energy ledger.  It is
the missing active-height/source-square payment in weighted first-moment
language.

## 5. Proof effect

The frequency-weight branch is exhausted as a smaller coercive supplier:

```math
\boxed{
\text{logarithmic/polynomial/subcritical dyadic first-moment weights}
\not\Rightarrow
\text{first-created square-reserve payment}.
}
\tag{FWT.18}
```

The only remaining weighted first-moment route is

```math
\boxed{
\text{a weight at least }2^{3m/2}\text{ on the heat-scale pulse,}
}
\tag{FWT.19}
```

which is exactly the active-height/source-square wall already recorded.  This
does not solve the forward-gold reserve theorem.  It removes the last
log-tail/entropy-style shortcut below the active-height threshold.
