# Active-Square Control Blocked By Square-Source Estimate

## Target

The desired active-square control is

```math
\int_I2^{-j}D_j(t)^2dt
\le
\varepsilon\nu2^{2j}|I|+C2^{-2\delta j}.
```

## Installed input

The entrance-tail reserve is installed at every regular entrance time `t_0<T` for all sufficiently high shells:

```math
E_j(t_0)^2
\le
c\varepsilon\nu^2 2^j|I|+C\nu2^{-j}2^{-2\delta j}.
```

## Missing input

The scalar response lemma also needs the square-source estimate

```math
\int_I |F_j(t)|^2dt
\le
c\varepsilon\nu^3 2^{3j}|I|+C\nu^2 2^j2^{-2\delta j}.
```

The attempted universal square-source estimate failed by fixed-shell cubic amplitude scaling.

## Result

Active-square control cannot be promoted from the current inputs. It is conditional on a valid square-source theorem for `F_j`, a signed cancellation theorem for the shell flux, or a direct active-square Carleson theorem.