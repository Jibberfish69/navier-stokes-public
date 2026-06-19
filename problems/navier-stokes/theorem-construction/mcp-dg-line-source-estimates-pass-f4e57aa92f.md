# DG-Line Source Estimates Pass

## Status

Conditional source-estimate packet.

## Conditional implication from the displayed source estimates

For the fixed-frame reduced cocycle `H_J`, set

```math
A_J=H_J^*H_J.
```

The reduced Gramian calculation gives

```math
\frac{d}{dt}\log(\lambda_2/\lambda_1)
\le -2\delta_*+2r_J+C\varepsilon_A.
```

Therefore the following three source estimates imply `DG-Line^sharp`:

```text
in-plane anisotropy drain,
relative Gramian error control,
lower singular-value floor on positive mass.
```

More explicitly, the drain gives the negative term, the relative error term is absorbed by the integrated smallness condition, and the lower singular-value floor converts ratio contraction into

```math
\sigma_2(H_J)/\sigma_1(H_J)\le q<1.
```

## Remaining source estimates

```text
prove in-plane anisotropy drain,
prove relative Gramian error control,
prove lower singular-value floor on positive mass.
```
