# BridgeA Equals Exact-Potential Comparison Ledger

## Status

Conditional theorem. BridgeA is exactly the normalized tensor comparison packet already named in the balanced-frame `D.7mq` route.

## Tensor expansion

Define

```math
C_{al}:=W_J^{coc}\Pi_{N_a}(W_J^{coc})^*,
\qquad
C_{CG}:=\mathcal C_J^{CG}.
```

Then

```math
C_{al}-C_{CG}
=
W_J^{coc}\Pi_{N_a}(W_J^{coc})^*-
\mathcal C_J^{CG}.
```

This is exactly the tensor in the exact-potential comparison packet `(EPF.1)`.

## Ledger bound

The balanced-frame route assumes

```math
\|C_{al}-C_{CG}\|_{op}
\le
\operatorname{Err}_{J,cmp}^{frame}.
```

Therefore

```math
\delta_J:=\|C_{al}-C_{CG}\|_{op}
\le
\operatorname{Err}_{J,cmp}^{frame}.
```

## Projector comparison

Assume both tensors carry a shared simple-top gap floor `gamma_J`. Davis-Kahan gives

```math
\|P_{al}-P_J^{CG}\|_F
\le
C\frac{\operatorname{Err}_{J,cmp}^{frame}}{\gamma_J}.
```

Hence

```math
\operatorname{Err}_{J,cmp}^{frame}/\gamma_J\to0
\Longrightarrow
BridgeA.
```

## Remaining obligation

```text
Prove Err_cmp^frame / gamma_J -> 0 on the retained exact-potential family.
```