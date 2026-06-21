# Final CM conjunction and Member row

## Status

Theorem-grade conjunction row. This note combines the three separately typed CM witnesses after the source-pulse supplier route has been spent through the Field row.

## Target

Prove

```math
Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}
\Longrightarrow CM_{N,r,Q}
\Longrightarrow Member(Q;O_{NS}^{work}).
```

## Definition

The class-membership witness is the triadic predicate

```math
CM_{N,r,Q}(u,p,\Phi)
:=Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}.
```

The membership relation is read through the exact class-membership witness theorem:

```math
CM_{N,r,Q}\Longrightarrow Member(Q;O_{NS}^{work}).
```

## Inputs

Use the row theorems:

```math
PackRow.A\Longrightarrow Pack_Q,
```

```math
PartRow.A\Longrightarrow Part_{N,Q},
```

and

```math
FieldRow.A\Longrightarrow Field_{N,r,Q}.
```

In the current source-pulse route, the Field row is supplied by

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

## Proof

From the Pack row, obtain `Pack_Q`. From the Part row, obtain `Part_{N,Q}`. From the Field row, obtain `Field_{N,r,Q}`. By conjunction introduction,

```math
Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}.
```

By the definition of the exact CM witness,

```math
Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}
\Longrightarrow CM_{N,r,Q}(u,p,\Phi).
```

By the exact class-membership witness theorem,

```math
CM_{N,r,Q}(u,p,\Phi)\Longrightarrow Member(Q;O_{NS}^{work}).
```

Therefore

```math
\boxed{
Pack_Q+Part_{N,Q}+Field_{N,r,Q}
\Longrightarrow Member(Q;O_{NS}^{work}).
}
```

## Fully expanded route

The current branch-expanded form is

```math
PackRow.A
+PartRow.A
+LemmaB.SourceDrain
+TGC.A
+AACT.Global.noJump
+SRC.Final
+AVG.END.Cert
+READ.COVER
+ATD_m^\varepsilon
+Field.Read
\Longrightarrow Member(Q;O_{NS}^{work}).
```

where `PackRow.A` includes the finite-selector Pack row, and `PartRow.A` includes the terminal participation closedness row.

## Boundary

This theorem is a conjunction and witness theorem. It does not upgrade conditional row inputs into unconditional row inputs. In particular:

- general continuum-label Pack still needs `EndpointSelector.TTU` or `UniformStrainTail.TTU`;
- the Part row uses Field and tower controls;
- the Field row uses `READ.COVER` and same-carrier `ATD_m^\varepsilon`.

## Claimed status

Final CM conjunction complete conditional on the row theorems. The remaining theorem-level blockers are exactly the conditional row-input gaps named above, not the conjunction itself.