# Averaged-to-Pointwise Typed Transition Ledger

Status: conditional type ledger.

## Rule

Averaged objects do not enter the old pointwise endpoint matrix until the named readout bridge has been applied.

## Transitions

### Field

```math
Field_{avg}+READ.COVER+ATD_m^\varepsilon
\Longrightarrow
Field.
```

This is `Field.Read`. Before this bridge, `Field_avg` is an averaged coherence object only.

### Transported-center / tower packet

```math
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon
\Longrightarrow
DTC.A.
```

This is `DTC.Read`. It includes velocity tower readout, viscous `U_{q+2}` readout, and pressure local Poisson readout for

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q.
```

Before this bridge, `DTC.A_avg` is an averaged receiver object only.

### Endpoint package

```math
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read
\Longrightarrow
End_{NS}.
```

This is `READ.END`. Before this bridge, `End_NS_avg` is the averaged endpoint package only.

## Placement

`READ.COVER` is downstream of the averaged endpoint conclusion:

```math
End_{NS,avg}\Longrightarrow READ.COVER.
```

It is not an input to the construction of `AVG.MAIN.A`.

## Ledger table

```text
Field_avg  --Field.Read-->  Field
DTC.A_avg  --DTC.Read---->  DTC.A
End_NS_avg --READ.END---->  End_NS
```

## Boundary

Any proof step that consumes old `Field`, old `DTC.A`, or old `End_NS` must cite the corresponding transition above. This prevents averaged/pointwise type collapse.