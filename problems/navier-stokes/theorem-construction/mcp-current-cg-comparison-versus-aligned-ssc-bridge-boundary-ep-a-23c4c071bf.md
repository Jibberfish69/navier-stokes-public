# Current-CG Comparison Versus Aligned SSC Bridge Boundary

## Status

Failed as an unconditional closure from current surfaces.

## Current-CG route

With the current CG reference tensor, the BridgeA comparison is exactly

```math
\frac{Err_{cmp}^{frame}}{\gamma_J}
=
\frac{
\|W_J^{coc}\Pi_{N_a}(W_J^{coc})^*-\mathcal C_J^{CG}\|_{op}
}{\gamma_J}
\to0.
```

This is the current-CG tensor comparison source theorem.

## Aligned route

If one defines

```math
\mathcal C_J^{CG}:=W_J^{coc}\Pi_{N_a}(W_J^{coc})^*,
```

then

```math
Err_{cmp}^{frame}=0.
```

That convention closes the EPF comparison.

## SSC compatibility boundary

The installed selector-strain route consumes the current CG projector

```math
P_J^{CG}.
```

The aligned route supplies

```math
P_{al}:=\Pi_{max}(W_J^{coc}\Pi_{N_a}(W_J^{coc})^*).
```

So the aligned route requires one of:

```text
direct SSC-EP.A with Pi_ref := P_al
```

or

```text
||P_al-P_J^CG||_F -> 0.
```

The second option is BridgeA again unless supplied by an independent comparison theorem.

## Boundary conclusion

The exact remaining theorem is one of:

```text
current-CG tensor comparison:
Err_cmp^frame/gamma_J -> 0
```

or

```text
direct aligned-reference selector-strain theorem:
SSC-EP.A with Pi_ref := P_al
```

## Next ordered queue item

```text
in-plane anisotropy drain
```
