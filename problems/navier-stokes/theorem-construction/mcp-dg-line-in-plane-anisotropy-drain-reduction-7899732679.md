# DG-Line In-Plane Anisotropy Drain Reduction

## Status

Conditional reduction.

Let `H_J` be the reduced cocycle and set

```math
A_J:=H_J^*H_J.
```

Let `u_1,u_2` be the top two eigenvectors of `A_J`, and let `S_parallel` be the symmetric reduced strain on the same transported two-plane.

The in-plane drain target is

```math
\langle u_1,S_{parallel}u_1\rangle
-
\langle u_2,S_{parallel}u_2\rangle
\ge
\delta_*-r_J.
```

The reduced Gramian calculation gives

```math
\frac{d}{dt}\log(\lambda_2/\lambda_1)
=
2(\langle u_2,S_{parallel}u_2\rangle-
\langle u_1,S_{parallel}u_1\rangle)+error.
```

Substituting the drain gives

```math
\frac{d}{dt}\log(\lambda_2/\lambda_1)
\le
-2\delta_*+2r_J+error.
```

Thus the drain supplies the negative part of the `DG-Line^sharp` log-ratio estimate.

## Exact source theorem

```text
prove positive Rayleigh separation of S_parallel on the A_J principal directions,
with defect r_J integrable below the drain budget,
on the same retained positive-mass family.
```