# WitnessFaceBridge.A audit for `PCTP.hard / TTU.A`

## Status

Direct standalone bridge: failed.

Conditional readout bridge: valid when the full `READ.END` / `Field.Read` / `DTC.Read` package and the `Pack` and `Part` witness rows are explicitly included.

This note resolves the precise next item after the source-pulse supplier route:

```math
PCTP.hard / TTU.A
\stackrel{?}{\Longrightarrow}
Field_{N,r,Q}\quad\text{or}\quad Member(Q).
```

## Governing CM object

The class-membership object is

```math
CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q}.
```

Thus

```math
Member(Q)
```

requires all three witnesses, not only terminal-tail or tower readout data.

## What `PCTP.hard / TTU.A` provides

The averaged terminal-tail route supplies a downstream terminal-tail consumer/readout. In its legal production order, the route is

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

Only after this averaged endpoint is reached does the readout layer enter:

```math
End_{NS,avg}
\Longrightarrow READ.COVER
\Longrightarrow Field.Read+DTC.Read
\Longrightarrow READ.END
\Longrightarrow End_{NS}.
```

The hardened readout theorem states the relevant witness bridge:

```math
Field_{avg}+READ.COVER+ATD_m^\varepsilon
\Longrightarrow Field_{N,r,Q}.
```

Similarly,

```math
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon
\Longrightarrow DTC.A
\Longrightarrow END.TowerBound.
```

The tower bound is an endpoint/readout companion. It is not a fourth primitive component of `CM`.

## Standalone implication test

As a standalone object, `PCTP.hard / TTU.A` is a terminal-tail consumer/readout label. It does not by itself declare:

1. the `Field_avg` object,
2. the finite positive-scale `READ.COVER`,
3. the local regularity input `ATD_m^\varepsilon`,
4. the `Pack_Q` witness row,
5. the `Part_{N,Q}` witness row.

Therefore the direct implication

```math
PCTP.hard/TTU.A\Longrightarrow Field_{N,r,Q}
```

is not licensed unless `PCTP.hard / TTU.A` is explicitly unpacked as the full `End_NS_avg + READ.COVER + Field.Read` package.

The direct implication

```math
PCTP.hard/TTU.A\Longrightarrow Member(Q)
```

is also not licensed unless the `Pack` and `Part` witness rows are explicitly supplied.

## Conditional bridge theorem

The valid bridge is:

```math
\boxed{
PCTP.hard/TTU.A
+ READ.END
+ Field.Read
\Longrightarrow Field_{N,r,Q}.
}
```

More explicitly,

```math
End_{NS,avg}
+READ.COVER
+ATD_m^\varepsilon
+Field_{avg}
\Longrightarrow Field_{N,r,Q}.
```

The valid member bridge is:

```math
\boxed{
Pack.TTU
+ Part.NoDrop
+ Field.Read
+ READ.COVER
+ ATD_m^\varepsilon
\Longrightarrow CM_{N,r,Q}
\Longrightarrow Member(Q).
}
```

Here `Pack.TTU` supplies `Pack_Q`, the shared participation no-drop row supplies `Part_{N,Q}`, and `Field.Read` supplies `Field_{N,r,Q}`.

## Reconciliation with older loop-closure wording

Some older loop-closure surfaces state that `PCTP.hard` supplies a retained class-membership readout. Read literally, that makes the witness bridge tautological. The authoritative direction-typing surface is sharper: `PCTP.hard / TTU.A` is downstream terminal-tail consumer/readout, while the direct bridges into `Pack`, `Part`, and `Field` must be named separately.

Thus this note uses the sharper typing:

```math
PCTP.hard/TTU.A
\text{ is consumed by the readout bridge; it is not itself the primitive }Field\text{ or }Member\text{ face.}
```

## Verdict

The requested standalone theorem fails:

```math
\boxed{
PCTP.hard/TTU.A\not\Rightarrow Field_{N,r,Q}\text{ as a bare label.}
}
```

and

```math
\boxed{
PCTP.hard/TTU.A\not\Rightarrow Member(Q)\text{ as a bare label.}
}
```

The correct installed bridge is conditional and typed:

```math
\boxed{
PCTP.hard/TTU.A+READ.END+Field.Read+Pack.TTU+Part.NoDrop
\Longrightarrow Member(Q).
}
```

## Remaining item

The next step is to write the explicit CM bridge surface using the conditional theorem above, with separate rows for `Pack_Q`, `Part_{N,Q}`, and `Field_{N,r,Q}`. That surface should prevent the source-pulse supplier route from being mislabeled as the governing CM primitive.