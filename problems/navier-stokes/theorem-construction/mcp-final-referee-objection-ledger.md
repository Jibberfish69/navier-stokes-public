# Final Referee Objection Ledger

## Status

Closed objection ledger for the final periodic proof surface.

## Objection 1: circular `READ.COVER`

Resolution: `READ.COVER` appears only after

```math
CFI.A_{avg}+AVG.END.Cert\Longrightarrow End_{NS,avg}.
```

It is used only in the terminal readout layer

```math
End_{NS,avg}\Longrightarrow READ.COVER\Longrightarrow Field.Read+DTC.Read\Longrightarrow End_{NS}.
```

## Objection 2: averaged/pointwise type leak

Resolution: the averaged branch produces `Field_avg`, `DTC.A_avg`, `CFI.A_avg`, and `End_NS_avg`. The old pointwise objects `Field`, `DTC.A`, and `End_NS` appear only after `READ.END`.

## Objection 3: source branch ambiguity

Resolution: the final proof uses

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```

The source hypothesis includes `FCC.C1a`. The stricter same-depth branch is
auxiliary and is not part of the final dependency spine.

## Objection 4: endpoint-face definition trick

Resolution: `Field_avg` and `Jump_avg` are complementary theorem objects:

```math
Field_{avg}\Longleftrightarrow\text{terminal positive-scale SCF-good cover},
```

```math
Jump_{avg}\Longleftrightarrow\text{terminal loss of that cover}.
```

The endpoint matrix uses this object-law dichotomy and does not create a fifth face.

## Objection 5: pressure-gauge mismatch

Resolution: the pressure gauge has zero spatial derivatives. The affine frame pressure potential contributes controlled frame-ledger terms. The fixed-cover Poisson readout recovers the original derivatives in

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q,
\qquad q\le N.
```

## Objection 6: target-surface ambiguity

Resolution: the final theorem is explicitly periodic on `T^3`. A whole-space `R^3` statement is a separate export theorem.

## Verdict

The referee objections are resolved by named surfaces and the final dependency order.
