# Normalized Exact-Potential Tensor Comparison Attempt

## Status

Failed as an unconditional proof from the current surfaces.

## Target

Prove

```math
Err_{cmp}^{frame}/\gamma_J\to0.
```

By definition,

```math
Err_{cmp}^{frame}
=
\left\|W_J^{coc}\Pi_{N_a}(W_J^{coc})^*-
\mathcal C_J^{CG}\right\|_{op}.
```

Set

```math
C_{al}:=W_J^{coc}\Pi_{N_a}(W_J^{coc})^*,
\qquad
C_{CG}:=\mathcal C_J^{CG}.
```

The target is exactly

```math
\|C_{al}-C_{CG}\|_{op}=o(\gamma_J).
```

## Route 1: aligned reference

If the current CG reference is defined by

```math
\mathcal C_J^{CG}:=W_J^{coc}\Pi_{N_a}(W_J^{coc})^*,
```

then

```math
Err_{cmp}^{frame}=0,
```

so the normalized comparison holds.

This route requires the same aligned reference to feed `SSC-EP.A`.

## Route 2: independent current CG reference

If `\mathcal C_J^{CG}` is fixed independently, the comparison target remains the source theorem

```math
\left\|W_J^{coc}\Pi_{N_a}(W_J^{coc})^*-
\mathcal C_J^{CG}\right\|_{op}=o(\gamma_J).
```

The current EPF surfaces separate this from the finite-frame error:

```text
PTC-Lin controls frame-to-WPiW defect.
PTC-Shape controls finite-frame readout richness.
CG persistence supplies the gap floor gamma_J.
```

Those inputs do not identify `WPiW*` with an independently fixed `C_J^CG`.

## Obstruction

A shared simple-top gap does not imply tensor closeness. For example,
\(A=\operatorname{diag}(2,1,0)\) and \(B=R_{\pi/4}AR_{\pi/4}^{T}\) both have
top gap \(1\), while their top eigendirections meet at angle \(\pi/4\). Hence
`gamma_J>0` alone cannot prove `Err_cmp^frame=o(gamma_J)`.

## Exact remaining theorem

```text
Either adopt the aligned CG reference consistently through SSC-EP.A,
or prove the independent exact-potential tensor comparison
||WPiW* - C_J^CG||_op = o(gamma_J).
```

This is the first unresolved source theorem in the ordered SG.4/TPS queue.
