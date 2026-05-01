# Aligned Gap Floor Criterion

## Status

Conditional theorem.

At the shifted anchor, write the singular values of the reduced cocycle on `N_a` as

```math
\sigma_1\ge \sigma_2.
```

Since

```math
C_{al}=W_J^{coc}\Pi_{N_a}(W_J^{coc})^*,
```

the nonzero eigenvalues of `C_al` are

```math
\sigma_1^2,
\sigma_2^2.
```

Therefore

```math
g_{al}=\sigma_1^2-\sigma_2^2.
```

If on a positive retained family

```math
\sigma_2/\sigma_1\le q<1,
\qquad
\sigma_1\ge s_*>0,
```

then

```math
g_{al}\ge (1-q^2)s_*^2=:g_*>0.
```

This gives a theta-compatible aligned gap floor, since `theta_J -> 0` and `g_*` is fixed on the retained family.

## Remaining source theorem

```text
prove singular-value separation sigma_2/sigma_1 <= q < 1
and lower top singular-value floor sigma_1 >= s_* > 0
on positive retained mass.
```