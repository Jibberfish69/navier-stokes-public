# DG-Line Drain Source Package

## Status

Conditional theorem.

Let `S_parallel` be the symmetric reduced strain on the two-plane, with eigendirections `e_+ , e_-` and eigenvalues

```math
s_+ >= s_-.
```

Assume the reduced strain gap

```math
s_+ - s_- >= delta_0 > 0.
```

Let `u_1,u_2` be the principal directions of `A_J`. Define alignment defects

```math
a_1 = ||(I-e_+e_+^T)u_1||^2,
qquad
a_2 = ||(I-e_-e_-^T)u_2||^2.
```

Then

```math
<u_1,S_parallel u_1>-<u_2,S_parallel u_2>
>=
(s_+-s_-)(1-a_1-a_2).
```

Set

```math
r_J=(s_+-s_-)(a_1+a_2)+r_J^{comm}.
```

Then

```math
<u_1,S_parallel u_1>-<u_2,S_parallel u_2>
>=
delta_0-r_J.
```

So the DG-Line anisotropy drain holds with `delta_* = delta_0`.

## Source estimates retained

```text
reduced strain gap,
A_J / S_parallel principal-direction alignment,
commutator / transport defect below drain budget,
same retained family.
```