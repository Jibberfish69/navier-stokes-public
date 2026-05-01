# DG-Line Lower Singular-Value Floor Reduction

## Status

Conditional reduction.

Let the singular values of the reduced cocycle `H_J` be

```math
sigma_1 >= sigma_2 > 0.
```

The drain/error packet gives

```math
sigma_2 / sigma_1 <= q < 1.
```

Assume the lower singular-value floor

```math
sigma_2 >= s_* > 0
```

on the same positive-mass retained family. Then

```math
sigma_1 >= sigma_2/q,
```

and therefore

```math
sigma_1^2 - sigma_2^2
>= (1/q^2 - 1) sigma_2^2
>= (1/q^2 - 1) s_*^2 > 0.
```

This supplies the quantitative simple-top gap needed by `DG-Line^sharp`.

## Exact source theorem

```text
prove inverse-cocycle lower control:
sigma_2(H_J) >= s_* > 0
on a positive-mass retained family.
```