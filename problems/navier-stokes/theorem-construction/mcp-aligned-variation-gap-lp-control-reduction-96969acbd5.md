# Aligned Variation Gap Lp Control Reduction

## Status

Conditional theorem.

Work on the retained aligned strip where the protected gaps satisfy
`g_al(t,a)>0` and `g_seg(t,a)>0`. For this reduction, use the explicit
upper-envelope density

```math
F_{al,var}(t,a)
:=
\frac{\|\partial_t C_{al}(t,a)\|\,\|C_{al}(t,a)\|}{g_{al}(t,a)}
+
\frac{\|C_{al}(t,a)\|\,\|\partial_t S_{seg}(t,a)\|}{g_{seg}(t,a)}.
```

Define

```math
eta_al_var(a) = integral_I F_al_var(t,a) dt.
```

For `p >= 1`, Minkowski gives

```math
||eta_al_var||_Lp(dnu_J)
<= integral_I ||F_al_var(t,.)||_Lp(dnu_J) dt.
```

Therefore `Lp` control of the aligned variation / gap term follows from

```math
integral_I ||F_al_var(t,.)||_Lp(dnu_J) dt <= C.
```

So the required source estimate is `L1_t Lp(dnu_J)` control of this displayed
derivative / gap density on the retained aligned strip.

## Remaining source estimate

```text
L1_t Lp control of the aligned derivative/gap source density F_al_var.
```
