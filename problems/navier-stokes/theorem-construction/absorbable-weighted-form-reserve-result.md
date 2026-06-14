# Absorbable Weighted Form Reserve Result

## Target

Let

```math
A_N(t):=\Lambda_N(t)+\Theta_N^\sharp(t).
```

The target was

```math
A_N(t)E_N(t)\le \varepsilon\nu D_N(t)+C_\varepsilon R_N(t)
```

with `R_N` summable in the HFG route.

## Algebraic reserve

Since

```math
D_N(t)\ge 2^{2N}E_N(t),
```

Young gives

```math
A_NE_N
\le \varepsilon\nu D_N
+C_{\varepsilon,\nu}{A_N^2E_N^2\over D_N}.
```

Using `D_N\ge2^{2N}E_N`,

```math
{A_N^2E_N^2\over D_N}\le 2^{-2N}A_N^2E_N.
```

Thus the sharp natural reserve is

```math
R_N(t):=2^{-2N}A_N(t)^2E_N(t).
```

So

```math
(\Lambda_N+\Theta_N^\sharp)E_N
\le
\varepsilon\nu D_N+C_{\varepsilon,\nu}2^{-2N}(\Lambda_N+\Theta_N^\sharp)^2E_N.
```

## Reserve decomposition

The reserve splits as

```math
R_N
\le
2\,2^{-2N}\Lambda_N^2E_N
+2\,2^{-2N}(\Theta_N^\sharp)^2E_N.
```

The first term needs product control between `\Lambda_N^2` and `E_N`. The current low-mode estimate gives `\Lambda_N\in L^2_t` at fixed `N`, so `\Lambda_N^2\in L^1_t`; the energy layer gives `E_N\in L^1_t`. Product integrability does not follow.

The second term needs product control between `(\Theta_N^\sharp)^2` and `E_N`. Finite collar structure gives a finite-band expression for `\Theta_N^\sharp`, but not a time-uniform bound. Product integrability again requires a collar-square/tail theorem.

## Result

The absorbable weighted form exists algebraically, with reserve

```math
R_N=2^{-2N}(\Lambda_N+\Theta_N^\sharp)^2E_N.
```

The reserve is not known to be summable from current inputs. Closing this path requires one of:

```math
\int_0^T2^{-2N}\Lambda_N^2E_Ndt<\infty,
```

```math
\int_0^T2^{-2N}(\Theta_N^\sharp)^2E_Ndt<\infty,
```

or the stronger coefficient bounds

```math
\Lambda_N+\Theta_N^\sharp\le c\nu2^{2N}.
```

## Boundary

The reserve reduction sharpens the blocker. It does not close HFG until the reserve is controlled.
