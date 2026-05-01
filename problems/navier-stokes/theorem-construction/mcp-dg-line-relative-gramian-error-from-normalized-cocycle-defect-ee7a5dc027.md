# DG-Line Relative Gramian Error From Normalized Cocycle Defect

## Status

Conditional theorem.

Let

```math
A_J=H_J^*H_J
```

and suppose the Gramian error is

```math
E_A=E_H^*H_J+H_J^*E_H.
```

If the singular values of `H_J` are `sigma_1>=sigma_2>0`, then

```math
||E_A||_op <= 2 sigma_1 ||E_H||_op.
```

Assume the normalized cocycle defect estimate

```math
||E_H||_op <= (epsilon_A/2) sigma_2^2 / sigma_1.
```

Then

```math
||E_A||_op <= epsilon_A sigma_2^2.
```

Since

```math
lambda_2(A_J)=sigma_2^2,
```

this gives

```math
||E_A||_op <= epsilon_A lambda_2(A_J).
```

So the relative Gramian error control holds.

## Absolute-defect sufficient route

If the retained family also has

```text
sigma_2 >= s_* > 0
sigma_1 <= S_* < infinity
```

then it is enough to prove

```math
||E_H||_op <= (epsilon_A/2) s_*^2 / S_*.
```

## Source estimate still required

```text
reduced cocycle defect control for E_H
at the normalized scale sigma_2^2 / sigma_1.
```