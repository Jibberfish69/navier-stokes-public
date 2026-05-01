# Full Tail-Square Reserve Discharge

## Statement

Let

```math
E_N(t)=\sum_{j\ge N}E_j(t),
\qquad
D_N(t)=\sum_{j\ge N}D_j(t),
```

with

```math
E_j=2^{2j}\|\Delta_j u\|_2^2,
\qquad
D_j=2^{4j}\|\Delta_j u\|_2^2.
```

Then for every `\varepsilon>0`, all sufficiently large `N` satisfy

```math
2^{-2N}E_N(t)^2\le \varepsilon\nu D_N(t)
```

for every time in the classical interval. Consequently,

```math
\int_0^T2^{-2N}E_N(t)^2dt
\le \varepsilon\nu\int_0^TD_N(t)dt.
```

## Proof

Split the full square into near and far pieces:

```math
2^{-2N}E_N^2=Diag_N+Far_N.
```

The near-diagonal theorem gives, for large `N`,

```math
Diag_N(t)\le {\varepsilon\nu\over2}D_N(t).
```

The far-separated bridge gives, for large `N`,

```math
Far_N(t)\le {\varepsilon\nu\over2}D_N(t).
```

Adding the two estimates yields

```math
2^{-2N}E_N(t)^2\le \varepsilon\nu D_N(t).
```

Integrating in time gives the displayed reserve.

## Consequence

The tail-square reserve required by the threshold-collar product is now discharged using only the global energy bound and dyadic near/far splitting.