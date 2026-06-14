# Independent Tensor Comparison Reread Decision

## Status

Failed as an unconditional proof from current surfaces.

## Target

```math
\|W_J^{coc}\Pi_{N_a}(W_J^{coc})^*-\mathcal C_J^{CG}\|_{op}=o(\gamma_J).
```

Equivalently,

```math
Err_{cmp}^{frame}/\gamma_J\to0.
```

## Reread result

The current-CG tensor comparison boundary surface records this target as the remaining source theorem after the EPF split:

```text
PTC-Lin controls frame-to-aligned tensor error.
PTC-Shape controls finite-frame readout normalization.
CG persistence supplies gamma_J.
```

The independent-current-CG obstruction surface gives a finite-dimensional model showing that two uniformly gapped symmetric tensors can have separated top projectors. Thus the gap floor supplies perturbative stability only after tensor closeness is already available.

## Consequence

Davis-Kahan gives BridgeA once the target estimate is supplied:

```math
\|P_{al}-P_J^{CG}\|_F
\le C_{DK}
\frac{\|C_{al}-C_{CG}\|_{op}}{\gamma_J}.
```

The current surfaces supply this implication. They do not supply the independent tensor comparison theorem itself.

## Continuation

Move to the aligned-reference continuation:

```text
prove aligned residual square budget for eta_al/g_al,
```

or

```text
prove non-circular Err_sync^al -> 0.
```
