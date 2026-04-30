# DG-Line Sharp Reduced Cocycle Packet

## Status

Conditional theorem.

Let `H_J` be the fixed-frame reduced cocycle on the retained two-plane and let `A_J=H_J^*H_J`. From

```math
\partial_t H_J=K_{\parallel,J}H_J+E_{H,J}
```

one gets

```math
\partial_t A_J=H_J^*(K_{\parallel,J}^*+K_{\parallel,J})H_J+E_{A,J}.
```

For eigenvalues `lambda_1>=lambda_2>0`, the anisotropy drain plus relative error gives

```math
\frac{d}{dt}\log(\lambda_2/\lambda_1)
\le -2\delta_*+2r_J+C\varepsilon_{A,J}.
```

If

```math
\int_I(2r_J+C\varepsilon_{A,J})dt\le \delta_*|I|,
```

then the singular-value ratio contracts:

```math
\sigma_2(H_J)/\sigma_1(H_J)\le q<1
```

on a positive-mass subfamily after threshold extraction. This proves `DG-Line^sharp` from the drain packet.

## Remaining obligations

```text
in-plane anisotropy drain,
relative Gramian error control,
lower singular-value floor on positive mass.
```