# Current-CG Tensor Comparison Source Theorem Boundary

## Status

Failed as an unconditional proof from current surfaces.

## Target

Set

```math
C_{al}:=W_J^{coc}\Pi_{N_a}(W_J^{coc})^*.
```

The current-CG tensor comparison target is

```math
\|C_{al}-\mathcal C_J^{CG}\|_{op}=o(\gamma_J).
```

Equivalently,

```math
Err_{cmp}^{frame}/\gamma_J\to0.
```

## Consequence

With shared simple-top gap floor `gamma_J`, Davis-Kahan gives

```math
\|P_{al}-P_J^{CG}\|_F
\le
C\frac{\|C_{al}-\mathcal C_J^{CG}\|_{op}}{\gamma_J}.
```

Thus the target proves BridgeA.

## Boundary

The current EPF surfaces split the work as follows:

```text
PTC-Lin + finite-frame derivative continuity
=> frame-to-aligned tensor control
```

```text
PTC-Shape + finite-frame readout
=> shape/readout normalization
```

```text
CG persistence
=> gap floor gamma_J
```

The remaining theorem is the current-CG tensor identification:

```math
\|W_J^{coc}\Pi_{N_a}(W_J^{coc})^*-\mathcal C_J^{CG}\|_{op}=o(\gamma_J).
```

A pure gap floor gives spectral stability after a comparison estimate. The comparison estimate itself carries independent content.

## Exact next alternatives

```text
1. prove the current-CG tensor comparison above;
2. prove direct SSC-EP.A with Pi_ref := P_al;
3. prove an independent projector bridge ||P_al-P_J^CG||_F -> 0.
```