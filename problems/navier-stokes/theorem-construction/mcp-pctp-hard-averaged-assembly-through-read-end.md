# PCTP.hard Averaged Assembly Through READ.END

## Status

Conditional assembly note for the averaged `PCTP.hard` route after the
`AACT.Global.noJump` and `CAVG.J` sequencing audit.

This note assembles the theorem chain. It is not a release or promotion verdict.

## Target

`PCTP.hard` is the terminal-tail target

```math
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail retained class-membership readout},
```

or equivalently, no first finite classical endpoint realizes

```math
Dead\vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump.
```

This note gives a conditional assembly route to that target. It is not itself a
proof of the displayed implication from `OriginalSmoothData`.

## Installed averaged split

The averaged production layer now has the route split

```math
SGC.A_{a.e.}+ATD_m^\varepsilon+CAVG.J+TGC.A
\Longrightarrow
DTC.A_{avg}\ \vee\ Jump_{avg}.
```

On the no-`Jump_avg` branch, `AACT.Global.noJump` supplies the averaged
transported-center packet:

```math
SGC.A_{a.e.}+ATD_m^\varepsilon+\neg Jump_{avg}
\Longrightarrow
DTC.A_{avg}.
```

The `Jump_avg` branch is not removed at this stage. It is carried only as an
averaged endpoint face label; removing it still requires either a later
averaged endpoint package with `CFI.A_avg`, or a separate branch eliminator.

## Averaged receiver and class chain

From `DTC.A_avg`, the averaged receiver theorem gives

```math
DTC.A_{avg}\Longrightarrow AVG.RCV.A\Longrightarrow LCI.A_{avg}.
```

The averaged consumer chain gives

```math
LCI.A_{avg}+FCI.5f
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}.
```

Thus the no-`Jump_avg` branch supplies `CFI.A_avg`. The `Jump_avg` branch is
already an averaged endpoint face and remains separate until it is eliminated or
consumed by a licensed CM-exit argument.

## Averaged endpoint closure

The averaged endpoint theorem is

```math
AVG.END.A:
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

Inside `AVG.END.Cert`, the averaged faces are typed as

```math
Dead,
\qquad response\text{-}margin\text{-}collapse,
\qquad packing\text{-}detached,
\qquad tower\text{-}blown_{avg},
\qquad Jump_{avg}.
```

The `CAVG.J` audit ensures that bad-set and terminal scale-collapse alternatives enter only through the `Jump_avg` face. `AVG.END.A` removes that face only after `CFI.A_avg` / `Field_avg` has been produced. Therefore the positive downstream route still needs a lawful `Jump_avg` branch eliminator if the branch has entered `Jump_avg` before averaged production.

On the branch where averaged production reaches `CFI.A_avg`, the averaged route gives

```math
End_{NS,avg}.
```

## Terminal readout to repaired endpoint closure

Only after `End_NS_avg`, the readout layer is invoked:

```math
End_{NS,avg}\Longrightarrow READ.COVER.
```

Then

```math
Field.Read+DTC.Read+READ.END
\Longrightarrow End_{NS}.
```

Equivalently,

```math
AVG.MAIN.A+READ.COVER+READ.END
\Longrightarrow End_{NS}.
```

This is the first point where the repaired pointwise endpoint package is
recovered:

```math
End_{NS}
:=
END.Pack
\wedge END.PartMargin
\wedge END.Field
\wedge END.TowerBound
\wedge END.Cross
\wedge END.Exh.
```

No pointwise retained native forcing, pointwise `DTC.A`, pointwise `Field`,
pointwise `CFI.A`, `READ.COVER`, or `End_NS` is used upstream of the averaged
endpoint closure.

## Continuation conclusion

The terminal continuation bridge gives

```math
CFI.A+End_{NS}
\Longrightarrow
\text{absence of finite-time class exit}.
```

The final classical continuation step is separate. It requires a same-branch
Sobolev readout

```math
M_s:=\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty,
\qquad s>5/2.
```

With this readout, periodic `H^s` local well-posedness gives

```math
\tau=\tau(\nu,s,M_s)>0,
```

and restarting at `t_j\uparrow T_*` extends the same classical branch past
`T_*`. Thus the relaunch conclusion is

```math
M_s<\infty
\Longrightarrow
T_*=\infty.
```

## Conditional theorem

Assuming the installed averaged production surfaces, `AACT.Global.noJump`,
`CAVG.J` sequencing, a lawful `Jump_avg` branch eliminator or CM-exit
consumption, the averaged receiver/consumer chain, averaged endpoint theorem,
terminal readout theorem, repaired `END.PartMargin` input, and the separate
same-branch `H^s` readout above, the averaged route proves the conditional
terminal-tail implication

```math
\mathrm{AvgProd}
+\mathrm{Jump}_{avg}\text{-handled}
+READ.END
+END.PartMargin
+(M_s<\infty)
\Longrightarrow
\text{periodic relaunch contradiction}.
```

Equivalently,

On the endpoint side this means

```math
End_{NS}
\Longrightarrow
\neg Dead
\wedge
\neg response\text{-}margin\text{-}collapse
\wedge
\neg packing\text{-}detached
\wedge
\neg tower\text{-}blown
\wedge
\neg Jump
```

at the first finite classical endpoint.

## Dependency order audit

Valid order:

```math
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon+CAVG.J+TGC.A
\Longrightarrow
DTC.A_{avg}\vee Jump_{avg}
```

```math
DTC.A_{avg}\Longrightarrow LCI.A_{avg}\Longrightarrow OFP.A_{avg}\Longrightarrow CFI.A_{avg}
```

```math
CFI.A_{avg}+AVG.END.Cert\Longrightarrow End_{NS,avg}
```

```math
End_{NS,avg}\Longrightarrow READ.COVER\Longrightarrow READ.END\Longrightarrow End_{NS}
```

```math
CFI.A+End_{NS}\Longrightarrow\text{no finite class exit}.
```

```math
M_s<\infty\Longrightarrow T_*=\infty.
```

Forbidden order:

```math
READ.COVER\text{ or }End_{NS}\text{ before }End_{NS,avg}.
```

## Boundary

This assembly reduces the current theorem-work loop only after the `Jump_avg`
branch is separately eliminated or consumed, the repaired `END.PartMargin` input
is present, and the same-branch `H^s` continuation readout is supplied. It does
not by itself update the proof-obligation matrix, review verdict, release
decision, or Clay-level promotion state. Those surfaces must be regenerated and
audited before any release claim.
