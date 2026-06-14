# Aligned-Reference Rewrite Of SSC-EP.A

## Status

Conditional rewrite.

The general synchronized-reference theorem `RPTS.A` accepts a reference projector `Pi_ref`. Set

```math
\Pi_J^{ref}:=P_{al},
\qquad
P_{al}:=\Pi_{max}\!\left(W_J^{coc}\Pi_{N_a}(W_J^{coc})^*\right).
```

Define the aligned synchronization error by

```math
Err_{sync}^{al}(a,b,t)
:=
\|P_{al}(t,a)-P_{J,t_0}^{CG}(a)\|_F^2.
```

Then `RPTS.A` gives

```math
\|P_{al}(t,a)-P_{J,top}^{seg}(a,b,t)
\|_F^2
\le C_{sync}
Err_{sync}^{al}(a,b,t)
+
\frac{(E_{J,t_0}^{CG}(t,a))^2}{g_0^2}
+
\frac{(\eta_J^{mb}(t,a,b))^2}{g_0^2}.
```

So `SSC-EP.A` can be rewritten with `Pi_ref := P_al` in either of two ways:

```text
Route 1: prove Err_sync^al -> 0 without using BridgeA.
```

```text
Route 2: recompute the D.7mb residual packet directly for P_al, replacing the current CG residual ledger.
```

## Consequence for BridgeA

If Route 2 succeeds, the aligned convention gives

```math
Err_{cmp}^{frame}=0,
```

and BridgeA closes automatically.

## Next item

```text
recompute the D.7mb residual packet for P_al
```
