# Aligned D7mb Residual Recompution Attempt

## Status

Conditional theorem. The aligned residual can be defined, and it controls the aligned projector. The existing `eta_mb` controls the current CG projector, so an extra theorem is still required for the aligned route.

## Direct aligned residual

Set

```math
C_{al}:=W_J^{coc}\Pi_{N_a}(W_J^{coc})^*,
\qquad
P_{al}:=\Pi_{max}(C_{al}),
\qquad
Q_{al}:=I-P_{al}.
```

Let `n_top` be a unit vector for the true top-strain projector. Define

```math
m_{al}(t):=Q_{al}(t)C_{al}(t)n_{top}(t).
```

Define `eta_al` as the D.7mb-style strip residual obtained from

```math
|m_{al}(t)|
\le
|m_{al}(t_0)|
+
\int_{t_0}^t |\partial_s(Q_{al}C_{al}n_{top})|ds.
```

Using

```math
\partial_t C_{al}=A C_{al}+C_{al}A^*,
```

this residual has the same structure as D.7mb: entrance residual, off-axis forcing, and top-projector variation terms, now computed for `C_al` and `P_al`.

## Aligned selector-strain estimate

If `C_al` has simple-top gap `g_al`, the spectral residual estimate gives

```math
\|P_{al}-P_{top}^{seg}\|_F^2
\le C_{al}
\eta_{al}^2/g_{al}^2.
```

So direct aligned `SSC-EP.A` holds if the new aligned residual satisfies

```math
\eta_{al}/g_{al}\to0.
```

## Relation to existing eta_mb

The installed residual `eta_mb` controls

```math
\|P_J^{CG}-P_{top}^{seg}\|_F.
```

It controls `P_al` only after an independent bridge

```math
\|P_{al}-P_J^{CG}\|_F\to0.
```

Using BridgeA for this bridge would be circular in the present comparison problem.

## Remaining aligned-route theorem

The aligned route therefore requires one of:

```text
prove eta_al/g_al -> 0 directly,
```

or

```text
prove Err_sync^al -> 0 without using BridgeA.
```

If either theorem is supplied, the aligned reference route closes the BridgeA comparison because `Err_cmp^frame=0` under the aligned convention.
