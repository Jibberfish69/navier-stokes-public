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

By Proposition `AS.7v`, on a short regular window the carrier mismatch is
controlled by the normalized short-window error and the instantaneous
segment-strain gap.  Write `E_win(t_*)` for the short-window generator /
variation error at the shifted anchor and `g_seg(t_*)` for the corresponding
instantaneous segment-strain gap.  The exact hypothesis is

```math
\sqrt{\delta_{car}(t_*)}
\le
\frac{E_{win}(t_*)}{g_{seg}(t_*)}.
```

Therefore finite-window material cone entry plus carrier mismatch control gives shifted-anchor alignment:

```math
||P_al(t_*) - P_top^seg(t_*)||_F^2
\le
2\exp(-2G_{mat}){1-c_0^2\over c_0^2}
+2{E_{win}(t_*)^2\over g_{seg}(t_*)^2}.
```

The earlier placeholder `short_window_error^2/g_seg^2` is not used as a
mathematical statement; the only usable carrier-mismatch estimate is the
displayed `E_win/g_seg` inequality.

## Remaining rate theorem

The remaining target is the weighted rate

```math
||C_al(t_*)||_op ||P_al(t_*) - P_top^seg(t_*)||_F
= o(theta_J g_al(t_*))
```

in weighted `L^q`.

Equivalently, the carrier-mismatch part is the exact weighted source theorem

```math
\left\|
{\|C_{al}(t_*)\|_{op}E_{win}(t_*)
\over
\theta_J g_{al}(t_*)g_{seg}(t_*)}
\right\|_{L^q(d\nu_J)}
\to0,
```

together with the material-cone decay term weighted by
`\|C_{al}(t_*)\|_{op}/(\theta_Jg_{al}(t_*))`.  Without those weighted rates,
the shifted-anchor alignment is not proved by the gap-square estimate alone.
