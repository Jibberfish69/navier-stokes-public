# Exact-Potential Comparison Dichotomy At BridgeA Frontier

## Status

Failed as an unconditional proof from the current surfaces.

## Frontier

Prove one of:

```text
independent tensor comparison for the current CG reference,
```

or

```text
aligned-reference convention consistently through SSC-EP.A.
```

## Route A: independent current CG reference

Let

```math
C_{al}:=W_J^{coc}\Pi_{N_a}(W_J^{coc})^*,
\qquad
C_{CG}:=\mathcal C_J^{CG}.
```

The needed comparison is

```math
\|C_{al}-C_{CG}\|_{op}=o(\gamma_J).
```

This is a genuine source theorem for an independently fixed `C_CG`.

The available controls separate as follows:

```text
PTC-Lin controls frame-to-WPiW error.
PTC-Shape controls finite-frame readout richness.
CG persistence supplies gamma_J.
```

These do not force `C_al` close to an independently fixed `C_CG`.

## Route B: aligned reference

If the branch defines

```math
C_{CG}:=C_{al},
```

then

```math
Err_{cmp}^{frame}=0.
```

The comparison estimate closes at this point.

However, the existing selector-strain route consumes the current CG projector `P_J^CG`. Therefore aligned-reference consistency requires one of:

```text
SSC-EP.A directly with Pi_ref := P_al,
```

or

```text
||P_al-P_J^CG||_F -> 0
```

proved without using the BridgeA comparison itself.

## Obstruction

A shared simple-top gap gives perturbative stability only after tensor closeness
is supplied. It cannot supply tensor closeness. For example,
\(A=\operatorname{diag}(2,1,0)\) and \(B=R_{\pi/4}AR_{\pi/4}^{T}\) both have
top gap \(1\), while their top eigendirections meet at angle \(\pi/4\).

## Exact remaining input

```text
prove ||W Pi_N W* - C_CG||_op = o(gamma_J),
or prove SSC-EP.A directly for the aligned projector,
or prove a non-circular aligned-to-current projector bridge.
```
