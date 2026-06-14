# BridgeA Comparison Expansion Against EPF Components

## Status

Conditional source-estimate pass.

## EPF decomposition

The exact-potential balanced-frame closure separates the tensor comparison into two layers.

The finite-frame layer gives a frame-to-aligned-tensor defect of the form

```math
d\bigl(2|W_J^{coc}|_{op}\rho_{J,lin}+\rho_{J,lin}^2\bigr).
```

The exact-potential layer is

```math
Err_{cmp}^{frame}
:=
\bigl\|W_J^{coc}\Pi_{N_a}(W_J^{coc})^*-
\mathcal C_J^{CG}\bigr\|_{op}.
```

So the full EPF comparison entering `D.7mq` is controlled by

```math
d\bigl(2|W_J^{coc}|_{op}\rho_{J,lin}+\rho_{J,lin}^2\bigr)
+
Err_{cmp}^{frame}.
```

## Component controls

```text
PTC-Lin / segment-collar derivative continuity
=> rho_J,lin -> 0
=> frame-to-WPiW defect -> 0
```

```text
PTC-Shape / quadratic sign separation
=> finite-frame readout and shape normalization needed by D.7mq
```

```text
CG gap persistence
=> retained simple-top gap floor gamma_J
```

These control the finite-frame and denominator parts of the EPF/Davis-Kahan estimate.

## Remaining BridgeA source theorem

After those controls, BridgeA still needs the normalized exact-potential tensor comparison

```math
Err_{cmp}^{frame}/\gamma_J\to0.
```

Then Davis-Kahan gives

```math
\|P_{al}-P_J^{CG}\|_F
\le C_{DK}Err_{cmp}^{frame}/\gamma_J\to0.
```

## Conclusion

The next live target remains exactly:

```text
prove Err_cmp^frame / gamma_J -> 0
```

After this, the ordered queue moves to:

```text
in-plane anisotropy drain
```
