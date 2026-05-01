# In-Plane Anisotropy Drain Reduction

## Status

Conditional theorem.

Let `H_J` be the reduced cocycle and set

```math
A_J=H_J^*H_J.
```

Let `lambda_1 >= lambda_2` be the eigenvalues of `A_J`, with unit eigenvectors `u_1,u_2`. Let `S_parallel` be the symmetric part of the reduced in-plane generator.

Assume the retained in-plane anisotropy inequality

```math
<u_1,S_parallel u_1> - <u_2,S_parallel u_2> >= delta_* - r_J(t).
```

The symmetric-generator contribution to the log-ratio evolution is

```math
2(<u_2,S_parallel u_2> - <u_1,S_parallel u_1>).
```

Hence the drain contribution satisfies

```math
d/dt log(lambda_2/lambda_1) <= -2 delta_* + 2 r_J(t)
```

up to the separate relative Gramian error term.

Thus the in-plane anisotropy drain follows from the retained positive anisotropy of `S_parallel` along the evolving Gramian eigendirections.

## Exact source condition

```text
<u_1,S_parallel u_1> - <u_2,S_parallel u_2> >= delta_* - r_J(t)
```

with an integrated defect `r_J` small enough for the DG-Line log-ratio contraction.