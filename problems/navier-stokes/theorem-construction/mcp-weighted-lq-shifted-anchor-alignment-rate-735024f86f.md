# Weighted Lq Shifted-Anchor Alignment Rate

## Status

Conditional theorem.

Let `t_*` be the shifted aligned anchor. The finite-window material-cone and carrier-mismatch packet gives

```math
\|P_{al}(t_*)-P_{top}^{seg}(t_*)\|_F^2
\le C_{seg}R_J(t_*),
```

where

```math
R_J(t_*)
:=
\exp(-2G_{mat})\frac{1-c_0^2}{c_0^2}
+
\delta_{car}(t_*).
```

Here `G_mat` is the finite-time material singular gap, `c0` is the initial right-singular overlap, and `delta_car` is the carrier-mismatch term controlled by the short-window estimate.

The desired weighted `Lq` entrance-alignment rate is

```math
\|C_{al}(t_*)\|_{op}\,
\|P_{al}(t_*)-P_{top}^{seg}(t_*)\|_F
=o(\theta_J g_{al}(t_*)).
```

This follows if

```math
\left\|
\frac{\|C_{al}(t_*)\|_{op}\sqrt{R_J(t_*)}}
{\theta_J g_{al}(t_*)}
\right\|_{L^q(d\nu_J)}
\to0.
```

So the shifted-anchor entrance-alignment rate is reduced to the normalized finite-window estimate above.

## Remaining source theorem

```text
prove the normalized Lq bound for
||C_al|| sqrt(R_J) / (theta_J g_al)
on the retained shifted-anchor family.
```
