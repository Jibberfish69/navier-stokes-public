# DG-Line Drain Source Packet From Reduced Strain Gap And Alignment Budget

## Status

Conditional theorem.

Let `S_parallel` be symmetric on the reduced two-plane, with eigenvectors `e_+`, `e_-` and eigenvalues

```math
s_+ >= s_-.
```

Assume the reduced strain gap

```math
s_+ - s_- >= delta_0 > 0.
```

Let `u_1,u_2` be the principal directions of `A_J`. Define the alignment defects

```math
a_1=||(I-e_+e_+^T)u_1||^2,
qquad
a_2=||(I-e_-e_-^T)u_2||^2.
```

The Rayleigh estimates are

```math
<u_1,S_parallel u_1> >= s_+ - (s_+-s_-)a_1,
```

and

```math
<u_2,S_parallel u_2> <= s_- + (s_+-s_-)a_2.
```

Therefore

```math
<u_1,S_parallel u_1>-<u_2,S_parallel u_2>
>=
delta_0-(s_+-s_-)(a_1+a_2).
```

Including the commutator / transport defect `r_J^comm`, set

```math
r_J=(s_+-s_-)(a_1+a_2)+r_J^comm.
```

Then

```math
<u_1,S_parallel u_1>-<u_2,S_parallel u_2>
>= delta_0-r_J.
```

Thus the DG-Line anisotropy drain holds with `delta_*=delta_0` whenever the residual budget is below the retained drain margin.

## Source estimates retained

```text
reduced strain gap,
A_J/S_parallel principal-direction alignment,
commutator/transport residual budget,
same retained strip and family.
```