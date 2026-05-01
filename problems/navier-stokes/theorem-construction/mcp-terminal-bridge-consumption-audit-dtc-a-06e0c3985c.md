# Terminal Bridge Consumption Audit

Status: conditional theorem-facing consumption audit.

## Theorem

On the active periodic terminal branch,

```math
TGC.A+AACT.Global.noJump+AVG.END.A+READ.END
\Longrightarrow
PCTP.hard.
```

Equivalently,

```math
TGC.A+AACT.Global.noJump+AVG.END.A+READ.END
\Longrightarrow
TTU.A.
```

## Consumed objects

`TGC.A` supplies the terminal-good-cover split. On a retained same-fluid terminal tail it gives either a finite positive-scale SCF-good averaged cover or the averaged endpoint face `Jump_avg` through `TGC.class`.

`AACT.Global.noJump` consumes the no-`Jump_avg` branch, the finite SCF-good cover, local `ATD_m^epsilon`, and local `AACT.KX` first-exit estimates. It produces

```math
DTC.A_{avg}.
```

The averaged receiver and consumer chain gives

```math
DTC.A_{avg}
\Longrightarrow
AVG.RCV.A
\Longrightarrow
LCI.A_{avg}
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}.
```

`AVG.END.A` consumes the averaged class witness and endpoint certificate:

```math
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

It removes `Jump_avg`, `tower-blown_avg`, `packing-detached`, and `Dead` in the averaged endpoint matrix.

`READ.END` is terminal readout:

```math
End_{NS,avg}
\Longrightarrow
READ.COVER
\Longrightarrow
Field.Read+DTC.Read
\Longrightarrow
End_{NS}.
```

## Proof

Start from original smooth periodic data and suppose there is a retained same-fluid terminal approach tail. `TGC.A` gives the averaged-good / `Jump_avg` split.

On the no-`Jump_avg` branch, `AACT.Global.noJump` globalizes the local averaged ACT estimates over the finite cover and yields `DTC.A_avg`. The averaged receiver, source, collar, one-field, and class-invariance consumers produce `CFI.A_avg`.

On the complementary `Jump_avg` branch, `AVG.END.A` removes the averaged endpoint face. On the averaged-good branch, `AVG.END.A` also removes the remaining averaged endpoint faces after `CFI.A_avg` is available. Hence the averaged endpoint package is obtained:

```math
End_{NS,avg}.
```

After `End_NS_avg`, the readout layer enters. `READ.COVER` supplies the finite positive-scale SCF-good cover. `Field.Read` converts `Field_avg` to pointwise `Field`. `DTC.Read` converts `DTC.A_avg` to pointwise `DTC.A`, including the pressure component of `K_q`. `READ.END` then recovers the old endpoint package:

```math
End_{NS}.
```

The recovered endpoint package supplies the terminal-tail retained class-membership readout required by `PCTP.hard`. Therefore

```math
PCTP.hard
```

holds on the periodic terminal branch.

## Type discipline

```text
Field_avg  --Field.Read-->  Field
DTC.A_avg  --DTC.Read---->  DTC.A
End_NS_avg --READ.END---->  End_NS
```

`READ.COVER`, `Field.Read`, and `DTC.Read` appear after `End_NS_avg`.

## Output

```math
TGC.A+AACT.Global.noJump+AVG.END.A+READ.END
\Longrightarrow
PCTP.hard.
```