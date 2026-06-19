# TTU Facewise Alternatives Analysis

## Status

Failed facewise discharge; survivor faces identified.

## Target

The facewise equivalent of `TTU.A` is

```math
TTU.Face:
OriginalSmoothData
\Longrightarrow
\neg Dead\wedge
\neg packing\text{-}detached\wedge
\neg tower\text{-}blown\wedge
\neg Jump.
```

## Face Analysis

### `Dead`

`Dead` is the participation face:

```math
\neg Part\Longrightarrow Dead.
```

On compact classical intervals, participation persists by the same-fluid construction. On the terminal tail, a first participation failure is typed as `Dead` by the endpoint grammar. Excluding it before endpoint closure requires a terminal participation theorem from original data.

So the participation face is formal but still part of `TTU.Face`.

### `packing-detached`

`packing-detached` is live without terminal pack control. The needed estimate is

```math
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)),
```

which follows conditionally from a pack-native strain budget:

```math
\int_{t_0}^{T_*}S_{pack,Q}(t)\,dt<\infty.
```

Original smooth data supplies this only on compact subintervals. Thus `packing-detached` remains a live face without `TTU.A`.

### `tower-blown`

`tower-blown` is live without terminal tower amplitude control. The needed estimate is

```math
\mathfrak A_{N,Q}\in L^\infty([t_0,T_*)).
```

The conditional route supplies this after `DTC.A` / `DTC.Read` on a terminal cover. The missing part is the same uniform terminal-tail readout cover from original data.

Thus `tower-blown` remains live without `TTU.A`.

### `Jump`

`Jump` is live without a positive terminal field or SCF-good scale. On the averaged branch, a tail meeting the bad material set is typed as

```math
Jump_{avg}.
```

Terminal readout can convert `Field_{avg}` to pointwise `Field` only after `READ.COVER`. Without upstream terminal cover, a terminal loss of positive field scale remains possible in the grammar.

Thus `Jump` remains live without `TTU.A`.

## Survivor Summary

Without `TTU.A`, the live continuation-grade faces are

```math
packing\text{-}detached,
\qquad
tower\text{-}blown,
\qquad
Jump.
```

`Dead` is the participation-failure row and remains included in the exact facewise target.

The first hard analytic face is `packing-detached`, because pack gauge control is needed to stabilize the same-fluid terminal cover. The corresponding target is

```math
Pack.TTU:
OriginalSmoothData
\Longrightarrow
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)).
```

or the pack-native budget

```math
OriginalSmoothData
\Longrightarrow
\int_{t_0}^{T_*}S_{pack,Q}(t)\,dt<\infty.
```

## Verdict

`TTU.Face` remains open. The first live analytic subtarget is `Pack.TTU`, followed by terminal tower and field-scale control.
