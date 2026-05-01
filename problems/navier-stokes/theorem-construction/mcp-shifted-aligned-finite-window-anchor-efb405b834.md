# Shifted Aligned Finite-Window Anchor

## Status

Conditional theorem.

## Shifted anchor

Choose a finite window

```math
I_J=[t_0,t_*]
```

inside the retained aligned family. Define

```math
C_{al}(t_*):=W_J^{coc}(t_*)\Pi_{N_a}W_J^{coc}(t_*)^*.
```

Assume the aligned top gap at the shifted anchor satisfies

```math
g_{al}(t_*)
:=\lambda_1(C_{al}(t_*))-\lambda_2(C_{al}(t_*))
\ge \kappa_{al}>0
```

on a positive-mass retained subfamily. Then the top projector

```math
P_{al}(t_*):=\Pi_{max}(C_{al}(t_*))
```

is a canonical rank-one measurable projector on that subfamily.

## Replacement

Use `P_al(t_*)` as the aligned reference anchor in place of the degenerate entrance object `P_al(t0)`. The aligned entrance residual estimate becomes anchored at `t_*`:

```math
|m_{al}(t_*)|
\le
\|C_{al}(t_*)\|_{op}
\|P_{al}(t_*)-P_{top}^{seg}(t_*)\|_F.
```

Thus the shifted-anchor target is

```math
\|C_{al}(t_*)\|_{op}
\|P_{al}(t_*)-P_{top}^{seg}(t_*)\|_F
=o(\theta_J g_{al}(t_*))
```

in the weighted `L^q` sense on the same retained family.

## Remaining source work

```text
finite-window material cone entry and carrier mismatch at t_*,
weighted Lq entrance-alignment rate relative to theta_J g_al.
```