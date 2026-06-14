# Aligned Variation Gap Lp Control Reduction

## Status

Conditional theorem.

Let `F_al_var` denote the aligned derivative / gap source density from the variation reduction. Define

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

In the explicit derivative / gap form, `F_al_var` is controlled by terms of the following type

```math
(||partial_t C_al|| ||C_al|| / g_al)
+
(||C_al|| ||partial_t S_seg|| / g_seg).
```

So the required source estimate is `L1_t Lp(dnu_J)` control of that derivative / gap density on the retained aligned strip.

## Remaining source estimate

```text
L1_t Lp control of the aligned derivative/gap source density F_al_var.
```
