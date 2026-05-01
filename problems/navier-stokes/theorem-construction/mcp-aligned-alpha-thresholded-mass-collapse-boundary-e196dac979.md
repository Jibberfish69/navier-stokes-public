# Aligned Alpha Thresholded Mass Collapse Boundary

## Status

Failed as an unconditional proof from the current data.

## Target

For the selected threshold schedule `theta_J`, prove

```math
\nu_J(\{\alpha_J>\theta_J\})\to0.
```

This is weighted convergence in measure of `alpha_J` to zero at the selected threshold scale.

## Sufficient stronger theorem

If

```math
\int \alpha_J^2d\nu_J=o(\theta_J^2),
```

then Chebyshev gives

```math
\nu_J(\{\alpha_J>\theta_J\})
\le
\theta_J^{-2}\int \alpha_J^2d\nu_J
\to0.
```

So direct aligned L2 decay stronger than `theta_J^2` implies thresholded mass collapse.

## Obstruction

Finite weighted mass plus the threshold schedule gives no collapse by itself. For example, if `alpha_J=1` on a fixed set of positive weighted measure and `theta_J -> 0`, then the threshold set contains that fixed set for all large `J`. Its weighted mass stays positive.

## Exact source theorem

One needs one of:

```text
alpha_J -> 0 in weighted measure at threshold theta_J,
```

```text
int alpha_J^2 dnu_J = o(theta_J^2),
```

or a sharper aligned residual decay theorem implying either statement.

## Next frontier

```text
prove Lp control for alpha_J with p > 2
```