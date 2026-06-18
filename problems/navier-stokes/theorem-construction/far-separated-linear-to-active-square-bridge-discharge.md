# Far-Separated Linear-To-Active-Square Bridge Discharge

## Statement

Let

```math
E_j(t):=2^{2j}\|\Delta_ju(t)\|_2^2,
\qquad
D_j(t):=2^{4j}\|\Delta_ju(t)\|_2^2,
```

and let

```math
D_N(t):=\sum_{j\ge N}D_j(t).
```

For fixed separation width `C_0`, define the far-separated lower-prefix block

```math
Far_N^+(t):=
2^{-2N}
\sum_{j\ge N+C_0}
E_j(t)
\sum_{N\le k\le j-C_0}E_k(t).
```

Assume the global energy bound

```math
\sup_{t<T}\|u(t)\|_2^2\le C_E.
```

Then

```math
Far_N^+(t)
\le C_{C_0}C_E2^{-2N}D_N(t).
```

Consequently, for every `\varepsilon>0` and every `N` satisfying

```math
2C_{C_0}C_E2^{-2N}\le \varepsilon\nu,
```

one has

```math
Far_N^+(t)\le \varepsilon\nu D_N(t).
```

By symmetry, the full far-separated block obeys the same bound with the fixed
factor `2`.

## Proof

For the lower prefix at fixed `j`, use the energy bound shell by shell:

```math
E_k(t)=2^{2k}\|\Delta_ku(t)\|_2^2
\le 2^{2k}\|u(t)\|_2^2
\le C_E2^{2k}.
```

Therefore

```math
\sum_{N\le k\le j-C_0}E_k(t)
\le C_E\sum_{N\le k\le j-C_0}2^{2k}
\le C_{C_0}C_E2^{2j}.
```

Insert this into `Far_N^+`:

```math
Far_N^+(t)
\le
C_{C_0}C_E2^{-2N}
\sum_{j\ge N+C_0}2^{2j}E_j(t).
```

Since

```math
2^{2j}E_j(t)=D_j(t),
```

we get

```math
Far_N^+(t)
\le C_{C_0}C_E2^{-2N}D_N(t).
```

Choose `N` such that

```math
2C_{C_0}C_E2^{-2N}\le \varepsilon\nu
```

and include the symmetric upper-prefix half. This proves the full
far-separated estimate.

## Consequence

The far-separated tail-square block does not require LPAS for this reserve.
Together with the corresponding near-diagonal estimate, the full tail-square
reserve is paid by global energy under the displayed cutoff condition:

```math
2^{-2N}E_N(t)^2\le \varepsilon\nu D_N(t)
```

for every `N` satisfying `2C_{C_0}C_E2^{-2N}\le \varepsilon\nu`.
