# Normalized EPF Comparison Boundary For BridgeA

## Status

Failed as an unconditional proof from current EPF definitions.

## Target

```math
Err_{cmp}^{frame}/\gamma_J\to0.
```

EPF identifies

```math
Err_{cmp}^{frame}
\ge
\left\|
W_J^{coc}\Pi_{N_a}(W_J^{coc})^*-
\mathcal C_J^{CG}
\right\|_{op}.
```

With a shared simple-top gap floor `gamma_J`, Davis-Kahan gives

```math
\|P_{al}-P_J^{CG}\|_F
\le C_{DK}
Err_{cmp}^{frame}/\gamma_J.
```

So the target proves BridgeA.

## Source boundary

`PTC-Lin` controls the finite-frame linearization and the frame-to-aligned-tensor defect. `PTC-Shape` controls the finite-frame readout and shape normalization. CG persistence supplies the gap floor. These packets do not identify the current CG tensor with the aligned tensor.

Thus the current-CG route still needs the source theorem

```math
\left\|
W_J^{coc}\Pi_{N_a}(W_J^{coc})^*-
\mathcal C_J^{CG}
\right\|_{op}
=o(\gamma_J).
```

## Exact sufficient routes

Route A:

```text
define C_CG := W_J^coc Pi_Na (W_J^coc)^*
=> Err_cmp^frame = 0
```

This route then needs the aligned-reference-to-SSC bridge.

Route B:

```text
keep current C_CG
prove ||W Pi W* - C_CG||_op = o(gamma_J)
```

This is the current BridgeA source theorem.

## Next queue item

```text
in-plane anisotropy drain
```
