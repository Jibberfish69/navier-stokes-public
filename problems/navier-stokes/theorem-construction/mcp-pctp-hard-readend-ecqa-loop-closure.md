# PCTP.hard READ.END / ECQ.A Loop Closure

Status: conditional readout/continuation bridge.  The previous loop-discharge
claim is not valid as an unconditional `OriginalSmoothData => PCTP.hard`
statement.

## Target

Promote supplied terminal-tail production inputs through the readout layer and
the continuation bridge:

```math
SCFBaseLocalModulus_N+TGC.A+AACT.Global.noJump+SRC.Final+AVG.END.Cert
\Longrightarrow PCTP.hard\Longrightarrow T_*=\infty.
```

## Inputs consumed in this bridge

The bridge-license audit into the class-membership object is persisted at

```text
problems/navier-stokes/theorem-construction/mcp-bridge-license-audit-into-cm-main-proof.md
```

The averaged ACT repair is persisted at

```text
problems/navier-stokes/theorem-construction/mcp-aact-kx-absorption-repair-loop-closure.md
```

The averaged jump endpoint-face closure is persisted at

```text
problems/navier-stokes/theorem-construction/mcp-jump-avg-endpoint-face-elimination-loop-closure.md
```

The route-selected source closure is persisted at

```text
problems/navier-stokes/theorem-construction/mcp-pressure-source-srcfinal-loop-closure.md
```

## Averaged production to averaged endpoint

The conditional production chain is

```math
SCFBaseLocalModulus_N+TGC.A+AACT.Global.noJump+SRC.Final
\Longrightarrow
DTC.A_{avg}.
```

Then

```math
DTC.A_{avg}\Longrightarrow AVG.RCV.A\Longrightarrow LCI.A_{avg}
\Longrightarrow CSP.A_{avg}\Longrightarrow OFP.A_{avg}\Longrightarrow CFI.A_{avg}.
```

The averaged endpoint theorem gives

```math
CFI.A_{avg}+AVG.END.Cert\Longrightarrow End_{NS,avg}.
```

Inside `AVG.END.Cert`, the `Jump_avg` face is discharged by `END.Field_avg`; the tower face is discharged by `END.TowerBound_avg`; the pack and participation rows discharge their native faces; mixed faces reduce through `END.Cross_avg`.

## Pointwise readout order

After `End_NS_avg`, the readout layer enters in the legal order:

```math
End_{NS,avg}\Longrightarrow READ.COVER
\Longrightarrow Field.Read+DTC.Read
\Longrightarrow READ.END
\Longrightarrow End_{NS}.
```

`Field.Read` supplies the pointwise `Field` row. `DTC.Read` supplies pointwise `DTC.A`, then tower readout supplies `END.TowerAmp` and `END.TowerBound`.

The canonical bridge is therefore

```math
SCFBaseLocalModulus_N+TGC.A+AACT.Global.noJump+AVG.END.A+READ.END
\Longrightarrow PCTP.hard.
```

## Continuation

`PCTP.hard` supplies the uniform terminal-tail retained class-membership readout

```math
CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q}.
```

Choose `N` above a classical continuation index `s>5/2`. The readout gives

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty.
```

Set

```math
M_s:=\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}.
```

Classical periodic `H^s` local theory supplies a lifespan
`\tau=\tau(\nu,s,M_s)>0` for all data with norm at most `M_s`. Choose
`t_j\uparrow T_*` with `T_*-t_j<\tau/2`. The relaunch from `u(t_j)` exists past
`T_*` and, by uniqueness, is the original solution on the common interval.
Hence

```math
T_*=\infty.
```

## Loop decision

The readout/continuation bridge is closed only conditionally:

```math
\boxed{
SCFBaseLocalModulus_N+TGC.A+AACT.Global.noJump+SRC.Final+AVG.END.Cert+READ.END
\Longrightarrow PCTP.hard\Longrightarrow T_*=\infty.
}
```

This artifact does not close the original-data production theorem.  The missing
upstream step remains the noncircular production of the terminal-tail inputs from
`OriginalSmoothData`, including the same-tail modulus / Field-admission input,
without using the endpoint readout layer as an upstream supplier.
