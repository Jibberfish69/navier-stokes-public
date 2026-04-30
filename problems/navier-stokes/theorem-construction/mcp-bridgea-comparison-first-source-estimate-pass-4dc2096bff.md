# BridgeA Comparison First Source-Estimate Pass

## Status

Conditional source-estimate pass.

## Defect identification

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

This is the EPF comparison tensor.

## Ledger bound

The exact-potential balanced-frame packet gives

```math
\|C_{al}-C_{CG}\|_{op}
\le
Err_{cmp}^{frame}.
```

With shared simple-top gap floor `gamma_J`, Davis-Kahan gives

```math
\|P_{al}-P_J^{CG}\|_F
\le
C\,Err_{cmp}^{frame}/gamma_J.
```

Therefore

```math
Err_{cmp}^{frame}/gamma_J\to0
\Longrightarrow
BridgeA.
```

## Remaining source estimate

```text
prove Err_cmp^frame / gamma_J -> 0
```

## Next queue item

```text
in-plane anisotropy drain
```