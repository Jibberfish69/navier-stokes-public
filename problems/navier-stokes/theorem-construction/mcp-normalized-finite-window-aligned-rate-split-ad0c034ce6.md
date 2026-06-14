# Normalized Finite-Window Aligned Rate Split

## Status

Conditional theorem.

From the shifted-anchor packet,

```math
\|P_{al}(t_*)-P_{top}^{seg}(t_*)\|_F^2
\le C_{seg} R_J(t_*),
```

where

```math
R_J=
\exp(-2G_{mat})\frac{1-c_0^2}{c_0^2}
+
\delta_{car}.
```

The normalized rate target is

```math
\left\|\frac{\|C_{al}\|_{op}\sqrt{R_J}}{\theta_J g_{al}}\right\|_{L^q(d\nu_J)}\to0.
```

Using `sqrt(a+b) <= sqrt(a)+sqrt(b)`, it is enough to prove both

```math
\left\|\frac{\|C_{al}\|_{op}}{\theta_J g_{al}}
\exp(-G_{mat})\sqrt{\frac{1-c_0^2}{c_0^2}}
\right\|_{L^q(d\nu_J)}\to0,
```

and

```math
\left\|\frac{\|C_{al}\|_{op}\sqrt{\delta_{car}}}{\theta_J g_{al}}
\right\|_{L^q(d\nu_J)}\to0.
```

The short-window carrier estimate gives

```math
\sqrt{\delta_{car}}
\le C_{win}
\frac{E_{win}}{g_{seg}},
```

where `E_win` is the short-window generator/variation error. Hence the carrier term is controlled by

```math
\left\|\frac{\|C_{al}\|_{op}E_{win}}{\theta_J g_{al}g_{seg}}
\right\|_{L^q(d\nu_J)}.
```

Therefore the shifted-anchor entrance-alignment rate follows from these two source estimates:

```text
normalized material-cone rate,
normalized short-window carrier-mismatch rate.
```

## Remaining source estimates

```text
prove normalized material-cone rate,
prove normalized short-window carrier-mismatch rate,
prove aligned off-axis forcing rate,
prove aligned variation/gap rate,
prove aligned gap floor lower bound compatible with theta_J,
prove aligned higher-integrability for alpha_J.
```
