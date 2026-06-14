# Aligned Entrance Residual Lp Control Reduction

## Status

Conditional theorem.

At the shifted anchor `t_*`, write

```math
m_{al}=Q_{al}C_{al}n_{top}.
```

Because `P_al` is the top projector of `C_al`,

```math
Q_{al}C_{al}P_{al}=0.
```

Hence

```math
m_{al}=Q_{al}C_{al}(I-P_{al})n_{top}.
```

Therefore

```math
|m_{al}|
\le
\|C_{al}\|_{op}\,\|(I-P_{al})n_{top}\|.
```

The angular factor is controlled by the shifted-anchor projector mismatch:

```math
\|(I-P_{al})n_{top}\|
\le C_{P}
\|P_{al}-P_{top}^{seg}\|_F.
```

Thus

```math
|m_{al}|
\le C_m
\|C_{al}\|_{op}\,\|P_{al}-P_{top}^{seg}\|_F.
```

So `Lp` control of the aligned entrance residual follows from either sufficient route:

```text
bounded ||C_al||_op plus Lp control of the shifted-anchor projector mismatch,
```

or, by Holder,

```text
||C_al||_op in Lr and ||P_al-P_top^seg||_F in Ls with 1/p=1/r+1/s.
```

## Remaining source input

```text
Lp control of the shifted-anchor alignment product
||C_al||_op ||P_al-P_top^seg||_F.
```
