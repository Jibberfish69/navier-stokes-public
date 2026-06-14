# Normalized Exact-Potential Comparison Attempt For BridgeA

## Status

Conditional theorem.

## Aligned-reference convention

Define

```math
C_{al}:=W_J^{coc}\Pi_{N_a}(W_J^{coc})^*.
```

If the branch also sets

```math
C_{CG}:=C_{al},
```

then

```math
Err_{cmp}^{frame}=\|C_{al}-C_{CG}\|_{op}=0.
```

Thus

```math
Err_{cmp}^{frame}/\gamma_J=0
```

whenever `gamma_J>0`. BridgeA closes in this convention.

## Current-CG convention

If `C_CG` is the current Cauchy-Green reference tensor consumed by `SSC-EP.A`, then the exact-potential balanced-frame packet gives

```math
\|C_{al}-C_{CG}\|_{op}\le Err_{cmp}^{frame}.
```

With shared simple-top gap floor `gamma_J`, Davis-Kahan gives

```math
\|P_{al}-P_J^{CG}\|_F
\le C_{DK}
Err_{cmp}^{frame}/\gamma_J.
```

So BridgeA follows from

```math
Err_{cmp}^{frame}/\gamma_J\to0.
```

## Source boundary

The aligned-reference route has zero comparison defect. The current-CG route has one remaining source theorem:

```text
prove Err_cmp^frame/gamma_J -> 0 for the current CG reference tensor.
```

## Next queue item

```text
in-plane anisotropy drain
```
