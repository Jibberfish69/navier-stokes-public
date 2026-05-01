# DG-Line Relative Gramian Error Implication

## Status

Conditional theorem.

Let

```math
A_J=H_J^*H_J.
```

Assume the Gramian error has the form

```math
E_A=E_H^*H_J+H_J^*E_H.
```

Let the singular values of `H_J` be

```math
sigma_1 >= sigma_2 > 0.
```

Then

```math
||E_A||_op
<= 2 ||H_J||_op ||E_H||_op
= 2 sigma_1 ||E_H||_op.
```

If

```math
||E_H||_op <= (epsilon_A/2) sigma_2^2/sigma_1,
```

then

```math
||E_A||_op <= epsilon_A sigma_2^2.
```

Since

```math
lambda_2(A_J)=sigma_2^2,
```

we get

```math
||E_A||_op <= epsilon_A lambda_2(A_J).
```

This proves the DG-Line relative Gramian error implication.

## Source estimate retained

```text
prove the normalized cocycle defect bound
||E_H||_op <= (epsilon_A/2) sigma_2(H_J)^2/sigma_1(H_J)
on the retained family.
```