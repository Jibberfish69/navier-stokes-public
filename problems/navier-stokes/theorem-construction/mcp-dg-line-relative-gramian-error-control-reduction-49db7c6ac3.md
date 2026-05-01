# DG-Line Relative Gramian Error Control Reduction

## Status

Conditional reduction.

Let

```math
A_J=H_J^*H_J,
```

and assume the reduced cocycle equation has the form

```math
\partial_t H_J=K_{parallel}H_J+E_H.
```

Differentiating the Gramian gives

```math
\partial_t A_J
=H_J^*(K_{parallel}^*+K_{parallel})H_J+E_A,
```

where

```math
E_A=E_H^*H_J+H_J^*E_H.
```

Therefore

```math
\|E_A\|_{op}
\le
2\|H_J\|_{op}\|E_H\|_{op}.
```

Write the singular values of `H_J` as `sigma_1>=sigma_2>0`. Then

```math
\lambda_2(A_J)=sigma_2^2.
```

So the required relative Gramian error estimate

```math
\|E_A\|_{op}\le \varepsilon_A\lambda_2(A_J)
```

follows from

```math
2 sigma_1\|E_H\|_{op}
\le
\varepsilon_A sigma_2^2.
```

Equivalently,

```math
\|E_H\|_{op}
\le
(\varepsilon_A/2) sigma_2^2/sigma_1.
```

## Exact source theorem

```text
prove the reduced cocycle error bound
||E_H||_op <= (epsilon_A/2) sigma_2(H_J)^2 / sigma_1(H_J)
on the same retained family.
```

This is the relative Gramian error source estimate needed by `DG-Line^sharp`.