# In-Plane Anisotropy Drain Source Boundary

## Status

Failed as an unconditional proof from current canonical surfaces.

## Target

For Gramian eigenvectors `u_1,u_2` of `A_J=H_J^*H_J`, the drain needed by `DG-Line^sharp` is

```math
\langle u_1,S_{\parallel,J}u_1\rangle
-
\langle u_2,S_{\parallel,J}u_2\rangle
\ge
\delta_*-r_J.
```

## Sufficient spectral theorem

Let `s_+>=s_-` be the eigenvalues of the symmetric in-plane strain `S_parallel`. If

```math
s_+-s_-\ge 2\delta_*
```

on a positive-mass retained family, and if `u_1,u_2` are aligned with the top/bottom eigendirections of `S_parallel` up to angular error `theta_J`, then Rayleigh quotient perturbation gives

```math
\langle u_1,S_{\parallel,J}u_1\rangle
-
\langle u_2,S_{\parallel,J}u_2\rangle
\ge
(s_+-s_-)(1-C\theta_J^2).
```

So the drain follows with

```math
r_J:=C(s_+-s_-)\theta_J^2.
```

## Boundary

The drain is therefore reduced to:

```text
positive-mass in-plane strain spectral separation,
Gramian-to-strain eigendirection alignment.
```

These are genuine source theorems. If `S_parallel` is conformal on the two-plane, or if the Gramian top direction aligns with the lower strain eigendirection, the drain inequality fails.

## Next queue item

```text
relative Gramian error control
```