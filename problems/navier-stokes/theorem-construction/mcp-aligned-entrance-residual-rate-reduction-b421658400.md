# Aligned Entrance Residual Rate Reduction

## Status

Failed as an unconditional proof from current surfaces.

## Entrance residual

For the aligned tensor

```math
C_{al}:=W_J^{coc}\Pi_{N_a}(W_J^{coc})^*,
```

let `P_al` be its top projector and `Q_al=I-P_al`. Let `n_top(t0)` be a unit true top-strain direction at entrance. The aligned entrance residual is

```math
|m_{al}(t_0)|=|Q_{al}C_{al}n_{top}(t_0)|.
```

Since

```math
Q_{al}C_{al}P_{al}=0,
```

we have

```math
|m_{al}(t_0)|
=|Q_{al}C_{al}(I-P_{al})n_{top}(t_0)|
\le
\|C_{al}\|_{op}\|(I-P_{al})n_{top}(t_0)\|.
```

The angle factor is controlled by the entrance projector mismatch:

```math
\|(I-P_{al})n_{top}(t_0)\|
\le C_P
\|P_{al}(t_0)-P_{top}^{seg}(t_0)\|_F.
```

## Sufficient rate theorem

If, for some `q>0`,

```math
\|\|C_{al}\|_{op}\,\|P_{al}(t_0)-P_{top}^{seg}(t_0)\|_F\|_{L^q(d\nu_J)}
=o(\theta_J g_{al}),
```

then the aligned entrance residual has the required `theta_J`-scale rate.

## Source boundary

The remaining source theorem is entrance alignment of `P_al` with the true top-strain direction at the moving threshold scale. The installed current-CG residual packet does not supply this for `P_al` without an additional bridge.

## Next frontier

```text
prove aligned off-axis forcing rate
```
