# Active-Square Carleson From Shell-Amplitude Gain

## Target

The active-square upper-tail measure is

```math
dM_k(t)=\left(\sum_{j\ge\max(N,k+C_1)}2^{-j}D_j(t)^2\right)dt.
```

The desired Carleson estimate is

```math
\int_I dM_k(t)
\le
\varepsilon\nu2^{2k}|I|+C2^{-2\delta\max(N,k)}.
```

## Conditional amplitude input

Assume an active-shell amplitude estimate strong enough that, for active shells in `I`,

```math
E_j(t)\le A_j,
```

with

```math
2^{3j}A_jE_j(t)
\le
\varepsilon\nu D_j(t)+r_j(t),
```

and a summable reserve

```math
\int_I\sum_{j\ge\max(N,k+C_1)}r_j(t)dt
\le C2^{-2\delta\max(N,k)}.
```

## Proof

Since

```math
2^{-j}D_j^2=2^{3j}E_j^2,
```

the amplitude input gives

```math
2^{-j}D_j^2
\le
\varepsilon\nu D_j+r_j.
```

Summing over `j\ge\max(N,k+C_1)` and integrating over `I` gives

```math
\int_I\sum_{j\ge\max(N,k+C_1)}2^{-j}D_j^2dt
\le
\varepsilon\nu\int_I\sum_{j\ge\max(N,k+C_1)}D_jdt
+C2^{-2\delta\max(N,k)}.
```

On heat-scale intervals with the active-shell normalization, the dissipation tail contributes the scale term

```math
\int_I\sum_{j\ge\max(N,k+C_1)}D_jdt
\le C_{AS}2^{2k}|I|.
```

Thus the active-square Carleson estimate follows.

## Boundary

The implication is valid, but the shell-amplitude gain is not installed. The previous shell-amplitude attempt showed a fixed-shell amplitude obstruction and reduced the problem back to active-shell amplitude control or direct active-square Carleson.
