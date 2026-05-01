# Rate-Level Weighted Convergence Boundary For alpha_J

## Status

Failed as an unconditional proof from current surfaces.

## Target

The thresholded mass collapse is the tail estimate

```math
\nu_J(\{\alpha_J>\theta_J\})\to0.
```

This is a rate-level statement at the moving threshold `theta_J`.

## Sufficient route 1: pointwise amplitude rate

If there is a scalar `c_J` with

```math
\alpha_J\le c_J
\quad\text{and}\quad
c_J/\theta_J\to0,
```

then for large `J`,

```math
\{\alpha_J>\theta_J\}=\varnothing.
```

So the thresholded mass collapse follows.

## Sufficient route 2: Lq rate

If for some `q>0`,

```math
\|\alpha_J\|_{L^q(d\nu_J)}^q=o(\theta_J^q),
```

then Markov gives

```math
\nu_J(\{\alpha_J>\theta_J\})
\le
\theta_J^{-q}\|\alpha_J\|_{L^q(d\nu_J)}^q
\to0.
```

The case `q=2` is the direct L2 route:

```math
\int \alpha_J^2d\nu_J=o(\theta_J^2).
```

## Source boundary

The current branch surfaces supply the implication from such a rate estimate to the aligned square budget. A concrete rate estimate for the aligned residual remains a source theorem.

## Next frontier

```text
prove direct L2 square-budget smallness strong enough for theta_J
```