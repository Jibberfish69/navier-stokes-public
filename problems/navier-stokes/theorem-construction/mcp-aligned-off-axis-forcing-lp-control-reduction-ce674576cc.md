# Aligned Off-Axis Forcing Lp Control Reduction

## Status

Conditional theorem.

Let `F_al_off` be the aligned off-axis source density in the derivative of

```math
m_al = Q_al C_al n_top.
```

Define

```math
eta_al_off(a) = integral_I F_al_off(t,a) dt.
```

For `p >= 1`, Minkowski gives

```math
||eta_al_off||_Lp(dnu_J)
<= integral_I ||F_al_off(t,.)||_Lp(dnu_J) dt.
```

Thus uniform `Lp` control of `eta_al_off` follows from

```math
integral_I ||F_al_off(t,.)||_Lp(dnu_J) dt <= C.
```

The stronger normalized rate follows from

```math
|| integral_I F_al_off(t,.) dt / (theta_J g_al) ||_Lp(dnu_J) -> 0.
```

## Remaining source estimate

```text
L1_t Lp(dnu_J) control of the aligned off-axis source density F_al_off,
or its normalized decay relative to theta_J g_al.
```