# READ.END Object Recovery Audit

## Status

Conditional object-recovery audit for the terminal readout layer.

## Target

Verify that

```math
End_{NS,avg}\Longrightarrow READ.COVER\Longrightarrow Field.Read+DTC.Read\Longrightarrow End_{NS}
```

recovers exactly the pointwise objects required by the old endpoint matrix.

## Step 1: readout cover

`End_NS_avg` removes the averaged jump face. Applying the strict-threshold readout-cover theorem gives

```math
End_{NS,avg}\Longrightarrow READ.COVER.
```

Thus there is a finite same-fluid cover

```math
Q^\Phi(I,A_\sharp)\subset \bigcup_{i=1}^{M}Q_{r_i}^{\Phi}(a_i,t_i),
\qquad r_*:=\min_i r_i>0,
```

with

```math
SCF_{base}(Q_{r_i}^{\Phi})\le\varepsilon_m.
```

The positive lower radius gives uniform constants for terminal readout.

## Step 2: field recovery

The readout theorem supplies

```math
Field_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow Field.
```

The finite lower-radius cover and local `ATD_m^\varepsilon` give Morrey/Sobolev readout on each cover element. Finite overlap gives uniform pointwise neighboring coherence. Therefore the old endpoint row

```math
END.Field
```

receives the pointwise object it requires.

## Step 3: transported-center recovery

The readout theorem supplies

```math
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow DTC.A.
```

At endpoint depth `m\ge N+2`, this recovers the pointwise velocity tower and forcing rungs. The forcing rung is

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q.
```

The pressure term is recovered by the fixed-cover local Poisson split, and the viscous term is recovered from the `U_{q+2}` readout. Hence

```math
DTC.Read\Longrightarrow DTC\text{-}to\text{-}TowerBound\Longrightarrow END.TowerBound.
```

Thus the old tower endpoint row receives the pointwise object it requires.

## Step 4: pack and participation rows

The pack and participation predicates are shared primitive rows:

```math
Pack\Longrightarrow\neg packing\text{-}detached,
\qquad
Part\Longrightarrow\neg Dead.
```

They are components of the class witness and do not require terminal readout conversion from averaged field data.

## Step 5: old endpoint matrix

After `Field.Read` and `DTC.Read`, the old pointwise class witness is available:

```math
CM=Pack\wedge Part\wedge Field.
```

The old endpoint exhaustion and cross rows apply:

```math
END.Exh+END.Cross+END.Pack+END.Field+END.TowerBound\Longrightarrow End_{NS}.
```

Therefore

```math
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read\Longrightarrow End_{NS}.
```

## Dependency order

The valid order is

```math
End_{NS,avg}\Longrightarrow READ.COVER\Longrightarrow Field.Read+DTC.Read\Longrightarrow READ.END\Longrightarrow End_{NS}.
```

No part of `READ.END` is used to build `End_NS_avg`, `CFI.A_avg`, `AACT.KX`, `DTC.A_avg`, `Field_avg`, or `TGC.A`.

## Verdict

`READ.END` recovers exactly the old endpoint-matrix objects:

1. pointwise `Field` for `END.Field`;
2. pointwise `DTC.A` and `K_q` readout for `END.TowerBound`;
3. shared `Pack` and `Part` for `packing-detached` and `Dead` rows;
4. old `CM=Pack wedge Part wedge Field` for `END.Exh` and `END.Cross`.

The readout layer is terminal and type-correct.