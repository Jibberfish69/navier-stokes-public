# Finite-Window Material Cone And Carrier Mismatch At Shifted Anchor

## Status

Conditional theorem.

Let `t_*` be the shifted aligned anchor inside a finite window `[t0,t_*]`.

## Material cone entry

By Proposition `AS.7`, if the finite-time propagator has material singular gap `G_mat` and initial right-singular overlap `c0>0`, then the material cone defect satisfies

```math
alpha_mat(t_*) <= exp(-2G_mat) (1-c0^2)/c0^2.
```

## Carrier transfer

By Corollary `AS.7m`, the instantaneous segment-strain cone defect satisfies

```math
alpha_inst(t_*) <= 2 alpha_mat(t_*) + 2 delta_car(t_*).
```

Here `delta_car` is the mismatch between the material left singular carrier and the instantaneous top segment-strain carrier.

## Short-window carrier mismatch

By Proposition `AS.7v`, on a short regular window the carrier mismatch is bounded by the local generator and variation data divided by the square of the segment gap. Schematically,

```math
delta_car(t_*) <= short_window_error(t_*)^2 / g_seg(t_*)^2.
```

Therefore finite-window material cone entry plus carrier mismatch control gives shifted-anchor alignment:

```math
||P_al(t_*) - P_top^seg(t_*)||_F^2
lesssim
exp(-2G_mat) (1-c0^2)/c0^2
+ short_window_error(t_*)^2/g_seg(t_*)^2.
```

## Remaining rate theorem

The remaining target is the weighted rate

```math
||C_al(t_*)||_op ||P_al(t_*) - P_top^seg(t_*)||_F
= o(theta_J g_al(t_*))
```

in weighted `L^q`.