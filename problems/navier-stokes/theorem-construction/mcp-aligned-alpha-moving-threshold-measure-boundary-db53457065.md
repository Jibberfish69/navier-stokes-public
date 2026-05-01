# Aligned Alpha Moving-Threshold Measure Boundary

## Status

Failed as an unconditional proof from current surfaces.

## Target

For the selected schedule `theta_J`, prove

```math
\nu_J(\{\alpha_J>\theta_J\})\to0.
```

This is convergence in weighted measure at the moving threshold `theta_J`.

## Fixed-threshold convergence is insufficient

Let `E` have fixed positive weighted measure and set

```math
\alpha_J=2\theta_J
\quad\text{on }E.
```

Since `theta_J -> 0`, `alpha_J` tends to zero at every fixed positive threshold. Yet

```math
\{\alpha_J>\theta_J\}=E
```

for every `J`, so the thresholded weighted mass stays positive.

Thus the needed estimate is rate-level convergence at the selected threshold.

## Sufficient theorem

Chebyshev gives

```math
\nu_J(\{\alpha_J>\theta_J\})
\le
\theta_J^{-2}\int \alpha_J^2d\nu_J.
```

Therefore

```math
\int \alpha_J^2d\nu_J=o(\theta_J^2)
```

implies

```math
\nu_J(\{\alpha_J>\theta_J\})\to0.
```

## Exact remaining source theorem

```text
prove rate-level weighted convergence of alpha_J at theta_J,
```

or

```text
prove direct L2 square-budget decay stronger than theta_J^2.
```