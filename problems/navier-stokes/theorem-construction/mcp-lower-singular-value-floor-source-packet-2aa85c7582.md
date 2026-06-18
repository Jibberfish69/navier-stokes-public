# Lower Singular-Value Floor Source Packet

## Status

Conditional theorem.

## Claim

Let `H_J` be the reduced cocycle on the retained two-plane. If on a positive-mass retained family

```math
\|H_J^{-1}\|_{op}\le K_{inv}<\infty,
```

then

```math
\sigma_{min}(H_J)\ge K_{inv}^{-1}>0.
```

Equivalently, for `A_J=H_J^*H_J`,

```math
\lambda_2(A_J)=\sigma_{min}(H_J)^2\ge K_{inv}^{-2}>0.
```

So the lower singular-value floor holds on positive mass.

## Proof

For an invertible matrix,

```math
\sigma_{min}(H_J)=\|H_J^{-1}\|_{op}^{-1}.
```

The stated inverse bound gives the claimed lower floor.

## Boundary

The remaining source theorem is:

```text
uniform inverse-cocycle bound on a positive-mass retained family.
```

Without inverse control, a reduced cocycle direction can collapse and the lower floor fails.

## Next queue item

```text
nu_J(B_J) -> 0 for beta_J support carrier
```
