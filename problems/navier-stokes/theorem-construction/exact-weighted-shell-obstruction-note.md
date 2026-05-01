# Exact Weighted-Shell Obstruction Note

## Obstruction

The weighted carrier route has reduced to the two product terms

```math
\int_0^T\Lambda_N(t)E_N(t)dt
```

and

```math
\int_0^T\Theta_N^\sharp(t)E_N(t)dt.
```

Here `\Lambda_N` is the strict low-mode coefficient, `\Theta_N^\sharp` is the threshold-collar coefficient, and `E_N` is the gradient tail energy.

## Why the energy layer is insufficient

Separate integrability does not imply product integrability. If

```math
a(t)=b(t)=(T-t)^{-1/2},
```

then `a,b in L^1(0,T)`, while

```math
ab=(T-t)^{-1}
```

is not integrable.

Thus any route that controls the coefficient and tail only separately leaves the product open.

## Equivalent closure targets

The weighted-shell obstruction closes if one proves any of the following.

### Product theorem

```math
\int_0^T\Lambda_NE_Ndt+
\int_0^T\Theta_N^\sharp E_Ndt<\infty.
```

### Coefficient theorem

```math
\Lambda_N\le c\nu2^{2N},
\qquad
\Theta_N^\sharp\le c\nu2^{2N}.
```

### Absorbable form

```math
(\Lambda_N+\Theta_N^\sharp)E_N
\le
\varepsilon\nu D_N+C_\varepsilon R_N
```

with `R_N` summable in the shell/tail summation.

## Status

This is the exact weighted-shell blocker. The weighted carrier is a correct coefficient interface, but it remains an open theorem until one of the displayed closure targets is proved.