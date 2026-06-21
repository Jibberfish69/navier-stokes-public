# Source-pulse supplier versus CM primitive separation rule

## Status

Governance / typing rule installed as a theorem-construction guardrail.

This note records the separation required after the source-pulse supplier route and the explicit CM witness bridge.

## Governing CM primitive

The governing class-membership primitive is

```math
Exit(Q):=\neg Member(Q;O_{NS}^{work}),
```

witnessed by

```math
\neg CM_{N,r,Q}
=
\neg(Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}).
```

The only direct CM witness rows are:

```math
Pack_Q,
\qquad
Part_{N,Q},
\qquad
Field_{N,r,Q}.
```

## Source-pulse supplier status

The source-pulse route proves a branch supplier chain:

```math
LemmaB.SourceDrain
\Longrightarrow SOURCE.NO\text{-}PULSE.A
\Longrightarrow AWG.A
\Longrightarrow Jump_{avg}\Rightarrow\bot
\Longrightarrow PCTP.hard/TTU.A.
```

This route is a supplier for the Field / no-jump terminal-tail branch. It is not the governing CM primitive.

## Forbidden promotions

The following promotions are invalid unless a separate witness bridge is cited:

```math
SOURCE.NO\text{-}PULSE.A\Longrightarrow Member(Q),
```

```math
AWG.A\Longrightarrow Member(Q),
```

```math
Jump_{avg}\Rightarrow\bot\Longrightarrow Member(Q),
```

```math
PCTP.hard/TTU.A\Longrightarrow Member(Q)
\quad\text{as a bare label.}
```

Also invalid:

```math
SOURCE.NO\text{-}PULSE.A\equiv Exit(Q),
```

```math
AWG.A\equiv \neg Member(Q),
```

```math
PCTP.hard/TTU.A\equiv CM_{N,r,Q}.
```

## Valid spending rule

The source-pulse route may be spent only through the typed witness bridge:

```math
LemmaB.SourceDrain
+TGC.A
+AACT.Global.noJump
+SRC.Final
+AVG.END.Cert
+READ.COVER
+ATD_m^\varepsilon
+Field.Read
\Longrightarrow Field_{N,r,Q}.
```

Then, and only then, it may participate in the CM conjunction:

```math
Pack.TTU
+Part.NoDrop
+Field_{N,r,Q}
\Longrightarrow CM_{N,r,Q}
\Longrightarrow Member(Q;O_{NS}^{work}).
```

Thus the lawful spending order is

```math
\text{source-pulse supplier}
\Longrightarrow
\text{Field row}
\Longrightarrow
\text{Pack+Part+Field CM row conjunction}
\Longrightarrow
Member(Q).
```

## Review / proof-assembly rule

Any proof-assembly or review surface should classify the objects as follows:

| Object | Type | CM role |
|---|---|---|
| `SOURCE.NO-PULSE.A` | branch supplier | feeds Field/no-jump route only |
| `AWG.A` | averaged no-jump supplier | feeds `Jump_avg` exclusion |
| `Jump_avg => bot` | branch exclusion | removes averaged jump face |
| `PCTP.hard / TTU.A` | downstream terminal-tail consumer/readout | requires readout bridge before CM use |
| `Field.Read` | witness bridge | lands in `Field_{N,r,Q}` |
| `Pack.TTU` | witness bridge | lands in `Pack_Q` |
| `Part.NoDrop` | witness bridge | lands in `Part_{N,Q}` |
| `CM_{N,r,Q}` | class-membership witness | conjunction of Part and Field |
| `Member(Q)` | governing membership conclusion | follows from `CM` |

## Consequence

The source-pulse supplier route can now be recorded as solved at the branch-supplier level while the CM primitive remains typed correctly.

The correct current status is:

```math
\boxed{
SOURCE.NO\text{-}PULSE.A/AWG.A/PCTP.hard
\text{ supplier route: definition-aligned branch route assembled.}
}
```

and

```math
\boxed{
CM\text{ primitive closure: conditional on explicit Part and Field witness rows.}
}
```

## Claimed status

Separation rule installed. This closes the remaining loop item: source-pulse supplier status is explicitly fenced from governing CM primitive closure.