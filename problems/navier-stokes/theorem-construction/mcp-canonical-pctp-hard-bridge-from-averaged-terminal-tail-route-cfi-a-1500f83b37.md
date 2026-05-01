# Canonical PCTP.hard Bridge From The Averaged Terminal-Tail Route

## Status

Canonical theorem-facing bridge surface for the live edge `PCTP.hard`.

## Theorem `PCTP.Bridge`

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

## Proof

Start with original smooth periodic data on a same-fluid terminal approach tail. The averaged-good split gives

```math
Jump_{avg}\vee \neg Jump_{avg}.
```

`TGC.A` and `TGC.class` identify terminal loss of positive SCF-good material radius as `Jump_avg`. Hence, on the no-`Jump_avg` branch, the terminal tail admits a finite positive-scale SCF-good same-fluid cover with bounded overlap and common scheduler majorants.

On that no-`Jump_avg` branch, `AACT.Global.noJump` applies to the finite cover, the local `ATD_m^\varepsilon` packets, and the local `AACT.KX` first-exit estimates. It gives

```math
DTC.A_{avg}.
```

The averaged receiver and consumer chain then gives

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

Now `AVG.END.A` consumes the averaged endpoint faces in the legal order:

```math
CFI.A_{avg}+AVG.END.Cert\Longrightarrow End_{NS,avg}.
```

This step removes `Jump_avg`, `tower-blown_avg`, `packing-detached`, and `Dead` through the averaged endpoint rows.

After `End_NS_avg`, the readout layer enters:

```math
End_{NS,avg}
\Longrightarrow
READ.COVER
\Longrightarrow
Field.Read+DTC.Read
\Longrightarrow
READ.END
\Longrightarrow
End_{NS}.
```

Thus the terminal-tail retained/readout cover required by `PCTP.hard` is produced in the legal order: averaged production first, averaged endpoint closure second, pointwise readout last.

Therefore

```math
PCTP.hard
```

is discharged by the averaged terminal-tail route.

## Noncircularity

The upstream production branch uses only `SGC.A_a.e`, `TGC.A`, `TGC.class`, `ATD_m^\varepsilon`, local `AACT.KX`, and finite-cover scheduler summation.

It does not use

```math
READ.COVER,
\quad Field.Read,
\quad DTC.Read,
\quad End_{NS},
\quad DTC.A,
\quad Field,
\quad CFI.A
```

before `End_NS_avg` is obtained.

## Matrix Effect

The proof-obligation matrix should use this surface as the canonical source for the live edge:

```math
pctp\text{-}hard\text{-}terminal\text{-}tail\text{-}uniformization
\leadsto
\text{grounded by }PCTP.Bridge.
```

## Boundary

This bridge acts on the local theorem-packet target on the periodic terminal branch. It does not claim a whole-space export theorem.