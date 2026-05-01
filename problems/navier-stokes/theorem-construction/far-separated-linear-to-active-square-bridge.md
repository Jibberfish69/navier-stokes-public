# Far-Separated Linear-To-Active-Square Bridge

## Statement

Let

```math
E_j(t)=2^{2j}\|\Delta_j u(t)\|_2^2,
\qquad
D_j(t)=2^{4j}\|\Delta_j u(t)\|_2^2=2^{2j}E_j(t).
```

Fix a separation width `C_0` and set

```math
P_j(t):=\sum_{N\le k\le j-C_0}E_k(t).
```

Define the far-separated tail-square half

```math
Far_N^+(t):=2^{-2N}\sum_{j\ge N+C_0}P_j(t)E_j(t),
```

and the active-square packet

```math
LPAS_N(t):=\sum_{j\ge N+C_0}P_j(t)2^{-j}D_j(t)^2
=\sum_{j\ge N+C_0}P_j(t)2^{3j}E_j(t)^2.
```

Then for every `eta>0`,

```math
Far_N^+(t)
\le
\eta LPAS_N(t)
+C_\eta 2^{-4N}\sum_{j\ge N+C_0}2^{-3j}P_j(t).
```

Consequently,

```math
\int_0^TFar_N^+(t)dt
\le
\eta\int_0^TLPAS_N(t)dt
+C_{\eta,C_0}2^{-7N}\int_0^TE_N(t)dt.
```

In particular, using the energy inequality,

```math
\int_0^TFar_N^+(t)dt
\le
\eta\int_0^TLPAS_N(t)dt
+C_{\eta,C_0,E}2^{-7N}.
```

This gives the desired bridge from the far-separated linear tail-square block to the active-square far-corona packet plus a summable reserve.

## Proof

For each `j`, apply Young's inequality to the nonnegative variables `P_j` and `E_j`:

```math
2^{-2N}P_jE_j
\le
\eta P_j2^{3j}E_j^2
+C_\eta 2^{-4N}2^{-3j}P_j.
```

Summing over `j\ge N+C_0` gives

```math
Far_N^+(t)
\le
\eta LPAS_N(t)
+C_\eta 2^{-4N}\sum_{j\ge N+C_0}2^{-3j}P_j(t).
```

Now expand the lower prefix:

```math
\sum_{j\ge N+C_0}2^{-3j}P_j
=
\sum_{j\ge N+C_0}2^{-3j}\sum_{N\le k\le j-C_0}E_k.
```

Swap the order of summation:

```math
\sum_{j\ge N+C_0}2^{-3j}P_j
=
\sum_{k\ge N}E_k\sum_{j\ge k+C_0}2^{-3j}.
```

The inner geometric sum satisfies

```math
\sum_{j\ge k+C_0}2^{-3j}
\le C_{C_0}2^{-3k}.
```

Therefore

```math
\sum_{j\ge N+C_0}2^{-3j}P_j
\le C_{C_0}\sum_{k\ge N}2^{-3k}E_k
\le C_{C_0}2^{-3N}E_N.
```

Substituting this into the Young estimate yields

```math
Far_N^+(t)
\le
\eta LPAS_N(t)+C_{\eta,C_0}2^{-7N}E_N(t).
```

Integrating in time and using `\int_0^T E_N(t)dt<\infty` proves the theorem.

## Consequence

Together with the symmetric half of the far-separated sum and the near-diagonal absorption theorem, the full tail-square reserve closes once `LPAS` or the equivalent far-corona closure is installed.