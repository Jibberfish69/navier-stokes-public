# PCTP.hard Averaged Assembly Through READ.END

## Status

Conditional assembly note for the averaged `PCTP.hard` route after the new `AACT.Global.noJump` discharge and `CAVG.J` sequencing audit.

This note assembles the theorem chain. It is not a release or promotion verdict.

## Target

`PCTP.hard` is the terminal-tail theorem

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

## Installed averaged split

The averaged production layer now has the route split

```math
SGC.A_{a.e.}+ATD_m^\varepsilon+CAVG.J+TGC.A
\Longrightarrow
DTC.A_{avg}\ \vee\ Jump_{avg}.
```

The no-`Jump_avg` branch is discharged by `AACT.Global.noJump`:

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

Thus the no-`Jump_avg` branch supplies `CFI.A_avg`. The `Jump_avg` branch is already an averaged endpoint face.

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
\qquad packing\text{-}detached,
\qquad tower\text{-}blown_{avg},
\qquad Jump_{avg}.
```

The `CAVG.J` audit ensures that bad-set and terminal scale-collapse alternatives enter only through the `Jump_avg` face. `AVG.END.A` removes that face only after `CFI.A_avg` / `Field_avg` has been produced. Therefore the positive downstream route still needs a lawful `Jump_avg` branch eliminator if the branch has entered `Jump_avg` before averaged production.

On the branch where averaged production reaches `CFI.A_avg`, the averaged route gives

```math
End_{NS,avg}.
```

## Terminal readout to old endpoint closure

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

This is the first point where old pointwise endpoint closure is recovered. No pointwise retained native forcing, old `DTC.A`, old `Field`, old `CFI.A`, `READ.COVER`, or `End_NS` is used upstream of the averaged endpoint closure.

## Continuation conclusion

The terminal continuation bridge gives

```math
CFI.A+End_{NS}
\Longrightarrow
\text{absence of finite-time class exit}.
```

`ECQ.A` states

```math
\text{absence of finite-time class exit}
\Longrightarrow
T_*=\infty.
```

At route depth `N` dominating some `s>5/2`, the pointwise class witness gives

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty,
```

and the `H^s`, `s>5/2`, local well-posedness/relaunch theorem gives a common
preterminal lifespan, so uniqueness on overlaps extends the same solution past
any alleged finite `T_*`.

## Conditional theorem

Assuming the installed averaged production surfaces, `AACT.Global.noJump`,
`CAVG.J` sequencing, a lawful `Jump_avg` branch eliminator, the averaged
receiver/consumer chain, averaged endpoint theorem, terminal readout theorem,
and `ECQ.A`, the averaged route proves the terminal-tail implication

```math
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail retained class-membership readout}.
```

Equivalently,

```math
OriginalSmoothData
\Longrightarrow
\neg Dead\wedge\neg packing\text{-}detached\wedge\neg tower\text{-}blown\wedge\neg Jump
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
CFI.A+End_{NS}\Longrightarrow\text{no finite class exit}\Longrightarrow T_*=\infty.
```

Forbidden order:

```math
READ.COVER\text{ or }End_{NS}\text{ before }End_{NS,avg}.
```

## Boundary

This assembly closes the current theorem-work loop only after the `Jump_avg`
branch is separately eliminated or consumed. It does not by itself update the
proof-obligation matrix, review verdict, release decision, or Clay-level
promotion state. Those surfaces must be regenerated and audited before any
release claim.
