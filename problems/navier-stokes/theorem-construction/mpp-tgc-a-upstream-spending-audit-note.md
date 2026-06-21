# MPP TGC.A Upstream Spending Audit Note

## Status

Theorem-facing audit for the third continuation-loop item:

```math
TGC.A.audit:
\quad
\text{verify no endpoint closure or READ.END is spent before averaged production.}
```

This note checks the legal order of the terminal-good-cover branch used in

```math
TGC.A+AACT.Global.noJump+AVG.END.A+READ.END\Longrightarrow PCTP.hard.
```

Here `upstream` means upstream of `End_NS_avg` and `READ.END` inside the
downstream `PCTP.hard` consumer route only. It does not mean upstream of the
governing CM primitive `Exit(Q):=not Member(Q)`, and it does not upgrade this
note into a witness bridge.

## Source anchors

| Surface | SHA |
|---|---|
| `mpp-tgc-a-noescape-jumpavg-hardening-note.md` | `b8cec81477bdfbaf538219bf0af567c1bab2ebb7` |
| `mpp-tgc-a-cover-positive-scale-terminal-cover-note.md` | `aeede1f67e0bae7a2692ca7a16dc222c8844adca` |
| `mcp-aact-global-nojump-finite-cover-scheduler-theorem-avg-end-a-b464d2cdf8.md` | `b464d2cdf8572332a1ae0871a682d19022db4dc4` |
| `mcp-avg-end-a-hardened-averaged-endpoint-rows-tgc-a-b13bc3ecf3.md` | `b13bc3ecf3c2f5f7d28aa1dd13dcb915b4469184` |
| `mpp-readout-endpoint-compatibility-completion-note.md` | `2deb108308c11d6ee6ffa1ed44e14fc2d24a1d4d` |

## Legal production order

The legal order is:

```math
TGC.A.noEscape+TGC.A.cover
\Longrightarrow
\text{terminal SCF-good finite cover on the no-}Jump_{avg}\text{ branch},
```

then

```math
ATD_m^{\varepsilon}+AACT.KX+AACT.Global.noJump
\Longrightarrow
DTC.A_{avg},
```

then

```math
DTC.A_{avg}
\Longrightarrow
AVG.RCV.A
\Longrightarrow
LCI.A_{avg},
```

then

```math
LCI.A_{avg}+FCI.5f
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg},
```

then

```math
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg},
```

then, and only then,

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

## Upstream object ledger

The following objects are allowed before `End_NS_avg`:

| Object | Upstream use |
|---|---|
| `SCF_base` | Defines good cylinders and bad material set. |
| `Jump_avg` | Classifies terminal bad material contact and terminal good-radius collapse. |
| `TGC.A.noEscape` | Sends bad material contact or radius collapse to `Jump_avg`. |
| `TGC.A.cover` | Produces finite positive-scale SCF-good terminal cover on the no-`Jump_avg` branch. |
| `ATD_m^epsilon` | Upgrades SCF-good cylinders to finite-depth averaged tower packets. |
| local `AACT.KX` | Supplies local averaged ACT differential inequalities. |
| `AACT.Global.noJump` | Sums finite local packets into `DTC.A_avg`. |
| `DTC.A_avg` | Feeds averaged receiver chain only. |
| `AVG.RCV.A`, `LCI.A_avg`, `CSP.A_avg`, `OFP.A_avg`, `CFI.A_avg` | Averaged production chain. |
| `AVG.END.A` | Produces `End_NS_avg`. |

The following objects are downstream-only:

| Object | Earliest legal use |
|---|---|
| `READ.COVER` | After `End_NS_avg`. |
| `Field.Read` | After `READ.COVER`. |
| `DTC.Read` | After `READ.COVER`. |
| `READ.END` | After `End_NS_avg+READ.COVER+Field.Read+DTC.Read`. |
| pointwise `Field` | Output of `Field.Read`. |
| pointwise `DTC.A` | Output of `DTC.Read`. |
| `End_NS` | Output of `READ.END`. |
| old pointwise `CFI.A` | Used only in old endpoint/class-exit closure, after pointwise readout. |

## Audit of `TGC.A.noEscape`

`TGC.A.noEscape` uses:

1. the definition of `r_good`;
2. the bad material set definition;
3. the definition of `Jump_avg` as persistent loss of positive SCF-good averaged coherence;
4. compact retained same-fluid tail geometry only in the sequence-form discussion.

It uses none of the downstream-only objects.

## Audit of `TGC.A.cover`

`TGC.A.cover` uses:

1. `\neg Jump_avg` to obtain a terminal subtail with positive lower `r_good`;
2. compactness of the retained terminal subtail to extract a finite cover;
3. bounded pack geometry to obtain finite overlap;
4. SCF-good monotonicity under cylinder restriction;
5. finite route parameter set for scheduler-ready majorants.

It uses none of the downstream-only objects.

The finite cover produced by `TGC.A.cover` is an upstream averaged cover. It is distinct from `READ.COVER`, which is a downstream consequence of `End_NS_avg` used for pointwise readout.

## Audit of `AACT.Global.noJump`

`AACT.Global.noJump` uses:

1. finite positive-scale terminal cover from `TGC.A.cover`;
2. local `ATD_m^\varepsilon` on shrunken SCF-good cylinders;
3. local `AACT.KX` inequalities;
4. finite cover size;
5. finite route parameter set;
6. common `L^1` majorants `B_*` and `F_*`;
7. absorption and Gronwall on finite scheduler cells.

It produces

```math
DTC.A_{avg}.
```

It does not use pointwise `DTC.A`, pointwise `Field`, `READ.COVER`, `READ.END`, or `End_NS`.

## Audit of `AVG.END.A`

`AVG.END.A` uses

```math
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

This is the first endpoint package in the route, and it is averaged. It removes averaged faces such as `Jump_avg` and `tower-blown_avg`. Pointwise endpoint rows are still absent at this stage.

## Readout boundary

The readout boundary is the line

```math
End_{NS,avg}\Longrightarrow READ.COVER.
```

Everything before this line is averaged production. Everything after this line is terminal pointwise compatibility. Therefore:

```math
\boxed{
TGC.A\text{ spends no }READ.COVER,READ.END,Field.Read,DTC.Read,End_{NS},Field,\text{ or }DTC.A
\text{ before }End_{NS,avg}.
}
```

## Conclusion

The upstream spending audit passes. The terminal-good-cover branch is noncircular in the required sense:

```math
TGC.A.noEscape+TGC.A.cover+ATD_m^\varepsilon+AACT.Global.noJump
\Longrightarrow
DTC.A_{avg}
```

is obtained before endpoint readout, and the readout layer enters only after

```math
AVG.END.A\Longrightarrow End_{NS,avg}.
```
