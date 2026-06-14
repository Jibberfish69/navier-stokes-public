# WeightedShell.Absorb Attempt

Status: failed as a full absorption theorem. The sharp reserve target is identified.

## Target

```math
(\Lambda_N+\Theta_N^\sharp)E_N
\le
\varepsilon\nu D_N+C_\varepsilon R_N,
\qquad
R_N\in L^1(I).
```

Let

```math
A_N(t)=\Lambda_N(t)+\Theta_N^\sharp(t).
```

## Algebraic absorption

Since shell dissipation dominates shell energy,

```math
D_N(t)\ge 2^{2N}E_N(t),
```

Young's inequality gives

```math
A_NE_N
\le
\varepsilon\nu D_N
+C_{\varepsilon,\nu}\frac{A_N^2E_N^2}{D_N}.
```

Using `D_N >= 2^{2N}E_N`,

```math
\frac{A_N^2E_N^2}{D_N}
\le
2^{-2N}A_N^2E_N.
```

Thus the natural reserve is

```math
R_N(t)=2^{-2N}(\Lambda_N+\Theta_N^\sharp)^2E_N(t).
```

So the absorbable form exists algebraically:

```math
(\Lambda_N+\Theta_N^\sharp)E_N
\le
\varepsilon\nu D_N
+C_{\varepsilon,\nu}2^{-2N}(\Lambda_N+\Theta_N^\sharp)^2E_N.
```

## Reserve obstruction

The reserve splits as

```math
R_N
\le C_{WS}
2^{-2N}\Lambda_N^2E_N
+2^{-2N}(\Theta_N^\sharp)^2E_N.
```

The current inputs do not prove

```math
2^{-2N}\Lambda_N^2E_N\in L^1(I)
```

or

```math
2^{-2N}(\Theta_N^\sharp)^2E_N\in L^1(I).
```

Separate integrability of coefficient ledgers and energy does not imply integrability of their product.

## Equivalent closure targets

The obstruction closes if one proves either the reserve summability above, or the stronger coefficient bound

```math
\Lambda_N+\Theta_N^\sharp\le c\nu2^{2N},
```

or a collar-square/tail theorem giving

```math
\int_I2^{-2N}(\Theta_N^\sharp)^2E_Ndt<\infty
```

and the corresponding low-mode product theorem for `Lambda_N`.

## Verdict

`WeightedShell.Absorb` remains open at reserve summability:

```math
R_N=2^{-2N}(\Lambda_N+\Theta_N^\sharp)^2E_N\in L^1(I).
```

This is the current exact pressure-side blocker beneath `FIRP.A0`.
