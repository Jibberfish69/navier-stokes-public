# Explicit CM witness bridge after the source-pulse supplier route

## Status

Conditional CM witness bridge written explicitly. This note consumes the source-pulse / no-`Jump_avg` supplier route only as a Field-side readout supplier. It keeps the three CM Part/Fields separate.

## CM target

The target class-membership predicate is

```math
CM_{N,r,Q}(u,p,\Phi)
:=Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}.
```

The membership implication is

```math
CM_{N,r,Q}\Longrightarrow Member(Q;O_{NS}^{work}).
```

Thus the bridge into `Member(Q)` must provide all three rows:

```math
Pack_Q,
\qquad
Part_{N,Q},
\qquad
Field_{N,r,Q}.
```

## Row 1: Field-window support

The retained terminal-tail pack witness is supplied by the pack terminal-tail row:

```math
Pack.TTU\Longrightarrow Pack_Q.
```

This row is independent of the source-pulse proof. It is a same-fluid retained pack-gauge statement on the retained terminal tail. It must be cited separately whenever `Member(Q)` is claimed.

## Row 2: Participation witness

The retained participation witness is supplied by the shared participation no-drop row:

```math
Part.NoDrop\Longrightarrow Part_{N,Q}.
```

This row is also independent of the source-pulse proof. It is the Law-2 / participation row of the CM object and must remain explicit.

## Row 3: Field witness

The source-pulse route enters only here, through the no-jump / averaged terminal-tail readout chain.

The source-pulse supplier route gives

```math
LemmaB.SourceDrain
\Longrightarrow SOURCE.NO\text{-}PULSE.A
\Longrightarrow AWG.A
\Longrightarrow Jump_{avg}\Rightarrow\bot.
```

The averaged terminal-tail route then gives the averaged endpoint side:

```math
TGC.A+AACT.Global.noJump+SRC.Final
\Longrightarrow DTC.A_{avg}
\Longrightarrow AVG.RCV.A
\Longrightarrow LCI.A_{avg}
\Longrightarrow CSP.A_{avg}
\Longrightarrow OFP.A_{avg}
\Longrightarrow CFI.A_{avg}
\Longrightarrow End_{NS,avg}.
```

After the averaged endpoint is produced, the legal readout order is

```math
End_{NS,avg}
\Longrightarrow READ.COVER
\Longrightarrow Field.Read+DTC.Read
\Longrightarrow READ.END
\Longrightarrow End_{NS}.
```

The actual Field row is

```math
Field_{avg}+READ.COVER+ATD_m^\varepsilon
\Longrightarrow Field_{N,r,Q}.
```

Therefore the typed Field bridge is

```math
\boxed{
LemmaB.SourceDrain
+TGC.A
+AACT.Global.noJump
+SRC.Final
+AVG.END.Cert
+READ.COVER
+ATD_m^\varepsilon
+Field.Read
\Longrightarrow Field_{N,r,Q}.
}
```

## Member bridge

Combining the three rows gives

```math
\boxed{
Pack.TTU
+Part.NoDrop
+Field.Readout_{source\text{-}pulse}
\Longrightarrow
CM_{N,r,Q}.
}
```

where

```math
Field.Readout_{source\text{-}pulse}
:=
LemmaB.SourceDrain
+TGC.A
+AACT.Global.noJump
+SRC.Final
+AVG.END.Cert
+READ.COVER
+ATD_m^\varepsilon
+Field.Read.
```

Then

```math
CM_{N,r,Q}\Longrightarrow Member(Q;O_{NS}^{work}).
```

Equivalently,

```math
\boxed{
Pack.TTU
+Part.NoDrop
+LemmaB.SourceDrain
+TGC.A
+AACT.Global.noJump
+SRC.Final
+AVG.END.Cert
+READ.COVER
+ATD_m^\varepsilon
+Field.Read
\Longrightarrow Member(Q;O_{NS}^{work}).
}
```

## Non-promotion boundary

The following implications are deliberately not asserted:

```math
SOURCE.NO\text{-}PULSE.A\Longrightarrow Member(Q),
```

```math
AWG.A\Longrightarrow Member(Q),
```

```math
PCTP.hard/TTU.A\Longrightarrow Member(Q)
\quad\text{as a bare label.}
```

Those labels are branch supplier or downstream consumer labels. They become part of the CM bridge only when their exact row contribution is named.

## Relationship to the governing contrapositive

The governing primitive remains

```math
Exit(Q):=\neg Member(Q;O_{NS}^{work}),
```

witnessed by

```math
\neg CM_{N,r,Q}=\neg(Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}).
```

This bridge supplies a conditional route to `Member(Q)` after all three rows are separately present. It does not redefine `Exit(Q)` and does not turn source-pulse exclusion into the class-membership primitive.

## Claimed status

The explicit CM witness bridge is written. It is conditional on the listed row inputs, and it is the correct typed consumer of the source-pulse supplier route. Full closure still requires the row inputs to be authoritative and promoted together under the current proof-assembly/review surfaces.