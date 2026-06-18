# WeightedShell.Absorb Reserve-Summability Audit

Status: failed as a full absorption theorem. The exact reserve target is isolated.

## Target

The target is

```math
(\Lambda_N+\Theta_N^\sharp)E_N
\le
\varepsilon\nu D_N+C_\varepsilon R_N,
\qquad
R_N\in L^1(I).
```

Set

```math
A_N=\Lambda_N+\Theta_N^\sharp.
```

## Algebraic absorption

The shell coercivity relation is

```math
D_N\ge 2^{2N}E_N.
```

The Young-margin split gives

```math
A_NE_N
\le
\varepsilon\nu D_N
+C_{\varepsilon,\nu}\frac{A_N^2E_N^2}{D_N}.
```

Using the shell coercivity relation,

```math
\frac{A_N^2E_N^2}{D_N}
\le
2^{-2N}A_N^2E_N.
```

Thus the sharp reserve is

```math
R_N=2^{-2N}(\Lambda_N+\Theta_N^\sharp)^2E_N.
```

The algebraic form is therefore

```math
(\Lambda_N+\Theta_N^\sharp)E_N
\le
\varepsilon\nu D_N
+C_{\varepsilon,\nu}2^{-2N}(\Lambda_N+\Theta_N^\sharp)^2E_N.
```

## Reserve decomposition

The reserve splits into the two product targets

```math
2^{-2N}\Lambda_N^2E_N\in L^1(I),
```

and

```math
2^{-2N}(\Theta_N^\sharp)^2E_N\in L^1(I).
```

The first is the low-mode coefficient / tail-energy product target. The second is the threshold-collar square / tail-energy product target.

## Closure alternatives

The absorption theorem closes from any one of the following:

```math
2^{-2N}(\Lambda_N+\Theta_N^\sharp)^2E_N\in L^1(I),
```

or

```math
\Lambda_N+\Theta_N^\sharp\le c\nu 2^{2N},
```

or a direct product theorem

```math
\int_I(\Lambda_N+\Theta_N^\sharp)E_Ndt<\infty.
```

## Verdict

`WeightedShell.Absorb` remains open at reserve summability:

```math
WeightedShell.Reserve:
2^{-2N}(\Lambda_N+\Theta_N^\sharp)^2E_N\in L^1(I).
```

This is the exact pressure-side blocker beneath `FIRP.A0` for the same-depth source branch.

The strengthened source route through `FFSRC.A` remains the closed sufficient route for the periodic averaged theorem program.
