# PCTP.hard Terminal-Tail Current Obstruction

## Status

Failed discharge / current theorem edge.

This note records the exact remaining mathematical obstruction after the periodic terminal-promotion bridge. It is a theorem-work artifact, not a Clay-level proof promotion.

## Target

`PCTP.hard` is the noncircular terminal-tail theorem

```math
OriginalSmoothData \Longrightarrow \text{uniform terminal-tail retained class-membership readout}.
```

Equivalently, for the maximal smooth periodic solution on `T^3`, no first finite classical endpoint may realize

```math
Dead \vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached \vee tower\text{-}blown \vee Jump.
```

The required readout is strong enough to yield a classical continuation bound, for example

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty,\qquad s>5/2.
```

## What is closed

The endpoint grammar is closed conditionally:

```math
END.Exh+END.Cross+END.Pack+END.Field+END.TowerBound\Rightarrow End_{NS}.
```

The periodic terminal bridge is also closed conditionally:

```math
\text{uniform terminal-tail retained readout}\Rightarrow \text{no finite classical endpoint}.
```

The readout bridge `READ.COVER.noncirc` is noncircular only after `End_NS_avg`; it is a downstream averaged-to-pointwise bridge.

## Where the proof still fails

The missing theorem is the production of the terminal-tail inputs from the original periodic Navier-Stokes dynamics.

### `Dead`

A first finite participation failure is excluded only if `Part_{N,Q}` propagates on every terminal same-fluid approach tail from the original dynamics. Current surfaces give the endpoint grammar and persistence under finite ledgers; they do not give a direct terminal propagation theorem from `OriginalSmoothData`.

### `packing-detached`

Pack-gauge persistence requires a terminal bound of the form

```math
\int_0^{T_*}\|\nabla u(t)\|_{L^\infty}\,dt<\infty
```

or a pack-native substitute. This is continuation-grade information. It is not derived noncircularly from the original data in the current packet.

### `tower-blown`

Tower exclusion requires

```math
\mathfrak A_{N,Q}\in L^\infty(0,T_*),
```

including the pressure/viscous tower readout. The local architecture exists through finite transported-center cover plus `DTC.Read`, but the global terminal-tail uniform cover and averaged endpoint inputs are exactly the missing production theorem.

### `Jump`

Jump exclusion requires a terminal positive one-field coherence scale. `Field.Read` can convert averaged field data to pointwise field data only through the terminal readout layer; it cannot be used as an upstream supplier for the averaged endpoint package.

## Circularity test

The invalid shortcut is

```math
End_{NS}\Rightarrow \text{finite terminal-tail ledgers}\Rightarrow End_{NS}.
```

That loop is not a proof of `PCTP.hard`.

## Exact next theorem

The remaining theorem to prove is either

```math
OriginalSmoothData\Rightarrow\text{uniform terminal-tail retained Part/Field/tower data},
```

or the equivalent facewise theorem

```math
OriginalSmoothData\Rightarrow\neg Dead\wedge\neg packing\text{-}detached\wedge\neg tower\text{-}blown\wedge\neg Jump
```

for the first finite classical endpoint.

## Verdict

The class-membership endpoint mechanism is ready as a conditional contradiction engine. `PCTP.hard` remains the mathematical blocker to an unconditional periodic Clay promotion.