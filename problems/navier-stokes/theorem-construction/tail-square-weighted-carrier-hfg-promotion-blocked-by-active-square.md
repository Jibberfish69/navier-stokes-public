# Tail-Square Weighted-Carrier HFG Promotion Check

The dependency chain is

```math
\text{active-square Carleson}\Rightarrow LPAS
\Rightarrow \text{tail-square reserve}
\Rightarrow \text{weighted carrier closure}
\Rightarrow HFG.
```

The active-square theorem remains open:

```math
\int_I
\sum_{j\ge\max(N,k+C_1)}2^{-j}D_j(t)^2dt
\le
\varepsilon\nu2^{2k}|I|+C2^{-2\delta\max(N,k)}.
```

Therefore LPAS remains open:

```math
\int_0^T
\sum_{j\ge N}
\left(\sum_{k\le j-C_1}E_k(t)\right)
2^{-j}D_j(t)^2dt
\le
\varepsilon\nu\int_0^TD_Ndt+C2^{-2\delta N}.
```

The tail-square reserve, weighted carrier closure, and HFG rerun inherit this dependency.

The exact live target is active-square upper-tail Carleson or a direct LPAS theorem. Once that theorem is installed, the existing chain promotes in order:

```math
LPAS\Rightarrow 2^{-2N}E_N^2\text{ reserve}
\Rightarrow (\Lambda_N+\Theta_N^\sharp)E_N\text{ closure}
\Rightarrow HFG.
```