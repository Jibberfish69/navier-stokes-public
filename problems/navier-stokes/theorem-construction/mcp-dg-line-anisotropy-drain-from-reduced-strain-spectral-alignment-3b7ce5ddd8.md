# DG-Line Anisotropy Drain From Reduced Strain Spectral Alignment

## Status

Conditional theorem.

Let `S_parallel` be the symmetric reduced strain on the two-plane. Let `e_+ , e_-` be an orthonormal eigenbasis with eigenvalues

```math
s_+ >= s_-.
```

Assume a reduced strain gap

```math
s_+ - s_- >= delta_0 > 0.
```

Let `u_1,u_2` be the principal directions of the reduced Gramian `A_J`. Define alignment defects

```math
a_1 = ||(I-e_+e_+^T)u_1||^2,
qquad
a_2 = ||(I-e_-e_-^T)u_2||^2.
```

Then the Rayleigh quotient estimates give

```math
<u_1,S_parallel u_1> >= s_+ - (s_+-s_-)a_1,
```

and

```math
<u_2,S_parallel u_2> <= s_- + (s_+-s_-)a_2.
```

Subtracting yields

```math
<u_1,S_parallel u_1> - <u_2,S_parallel u_2>
>=
(s_+-s_-)(1-a_1-a_2).
```

Thus, with

```math
r_J := (s_+-s_-)(a_1+a_2) + r_J^{comm},
```

where `r_J^{comm}` collects any transport or commutator defect, the drain estimate becomes

```math
<u_1,S_parallel u_1> - <u_2,S_parallel u_2>
>= delta_0 - r_J.
```

So the DG-Line anisotropy drain holds with `delta_* = delta_0`.

## Source hypotheses still required

```text
positive reduced strain gap on the retained family,
alignment of A_J principal directions with S_parallel eigendirections,
commutator/transport defect below the drain budget.
```