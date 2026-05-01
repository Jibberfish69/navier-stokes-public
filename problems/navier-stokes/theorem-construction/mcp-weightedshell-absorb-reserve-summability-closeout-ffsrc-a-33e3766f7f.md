# WeightedShell.Absorb Reserve-Summability Closeout

Status: failed as a full absorption theorem. The exact remaining reserve theorem is isolated.

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
A_N=\Lambda_N+\Theta_N^\sharp.
```

## Algebraic absorption

The shell coercivity relation is

```math
D_N\ge 2^{2N}E_N.
```

Young's inequality gives

```math
A_NE_N
\le
\varepsilon\nu D_N
+C_{\varepsilon,\nu}\frac{A_N^2E_N^2}{D_N}.
```

Using shell coercivity,

```math
\frac{A_N^2E_N^2}{D_N}
\le
2^{-2N}A_N^2E_N.
```

Thus the sharp reserve is

```math
R_N=2^{-2N}(\Lambda_N+\Theta_N^\sharp)^2E_N.
```

The absorbable form therefore exists algebraically:

```math
(\Lambda_N+\Theta_N^\sharp)E_N
\le
\varepsilon\nu D_N
+C_{\varepsilon,\nu}2^{-2N}(\Lambda_N+\Theta_N^\sharp)^2E_N.
```

## Reserve split

The reserve requires both product controls:

```math
2^{-2N}\Lambda_N^2E_N\in L^1(I),
```

and

```math
2^{-2N}(\Theta_N^\sharp)^2E_N\in L^1(I).
```

The first is the low-mode coefficient / tail-energy product theorem. The second is the collar-square / tail-energy product theorem.

## Verdict

`WeightedShell.Absorb` remains open exactly at

```math
WeightedShell.Reserve:
2^{-2N}(\Lambda_N+\Theta_N^\sharp)^2E_N\in L^1(I).
```

Equivalent closure routes are:

```math
\Lambda_N+\Theta_N^\sharp\le c\nu2^{2N},
```

or a direct product theorem

```math
\int_I(\Lambda_N+\Theta_N^\sharp)E_Ndt<\infty.
```

## Boundary

This blocker belongs to the exact same-depth pressure branch beneath `FIRP.A0`. The strengthened source route through `FFSRC.A` remains the closed sufficient source route for the periodic averaged theorem program.