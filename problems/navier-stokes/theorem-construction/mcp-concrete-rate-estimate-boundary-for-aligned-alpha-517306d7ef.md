# Concrete Rate Estimate Boundary For Aligned Alpha

## Status

Failed as an unconditional proof from current surfaces.

## Target

Prove a rate estimate for

```math
\alpha_J:=\eta_{al}/g_{al}
```

at the moving threshold `theta_J`.

## Component reduction

The aligned residual has the D.7mb-style split

```math
\eta_{al}
\le
\eta_{al}^{init}+\eta_{al}^{off}+\eta_{al}^{var}.
```

If the aligned gap satisfies

```math
g_{al}\ge g_*>0,
```

then

```math
\alpha_J
\le
 g_*^{-1}(\eta_{al}^{init}+\eta_{al}^{off}+\eta_{al}^{var}).
```

Thus, for any `q>0`, the rate estimate

```math
\|\eta_{al}^{init}+\eta_{al}^{off}+\eta_{al}^{var}\|_{L^q(d\nu_J)}^q
=o(\theta_J^q g_*^q)
```

implies

```math
\|\alpha_J\|_{L^q(d\nu_J)}^q=o(\theta_J^q).
```

By Markov,

```math
\nu_J(\{\alpha_J>\theta_J\})
\le
\theta_J^{-q}\|\alpha_J\|_{L^q(d\nu_J)}^q
\to0.
```

## Source boundary

The current installed `eta_mb` packet controls the current-CG residual. It does not supply the aligned component rates above.

The concrete remaining source estimates are:

```text
aligned entrance residual rate,
aligned off-axis forcing rate,
aligned variation/gap rate,
aligned gap floor compatible with theta_J.
```

## Next frontier

```text
prove direct L2 square-budget smallness strong enough for theta_J
```