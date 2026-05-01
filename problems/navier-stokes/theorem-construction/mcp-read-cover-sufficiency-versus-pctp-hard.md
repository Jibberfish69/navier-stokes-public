# READ.COVER Sufficiency Versus PCTP.hard

## Status

Conditional downstream theorem and upstream obstruction record.

## Question

Does

```math
End_{NS,avg}+READ.COVER
```

supply a uniform terminal-tail cover strong enough for old pointwise endpoint closure?

## Answer

Yes for downstream terminal readout:

```math
End_{NS,avg}\Longrightarrow READ.COVER
\Longrightarrow Field.Read+DTC.Read
\Longrightarrow READ.END
\Longrightarrow End_{NS}.
```

The cover supplied by `READ.COVER` has positive lower scale and finite overlap, so it is strong enough to run `ATD_m^\varepsilon`, `Field.Read`, and `DTC.Read`. These recover the old pointwise rows:

```math
Field,
\qquad
DTC.A,
```

and hence the old endpoint package:

```math
End_{NS}.
```

## Upstream Limitation

`READ.COVER` is downstream of `End_NS_avg`:

```math
End_{NS,avg}\Longrightarrow READ.COVER.
```

`PCTP.hard` asks for production from original data before endpoint closure:

```math
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail retained/readout cover}.
```

Therefore `READ.COVER` cannot be used as the upstream production theorem for `PCTP.hard`. That would route

```math
End_{NS,avg}\Longrightarrow READ.COVER\Longrightarrow End_{NS,avg},
```

which is a circular endpoint loop rather than a dynamics theorem from original data.

## Correct Separation

Downstream use:

```math
End_{NS,avg}+READ.COVER+READ.END\Longrightarrow End_{NS}.
```

Upstream target:

```math
TTU.A:
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail positive-scale SCF-good finite cover}.
```

`READ.COVER` proves the downstream readout bridge. `TTU.A` is the missing upstream terminal-tail uniformization theorem.

## Verdict

`READ.COVER + End_NS_avg` is sufficient for old pointwise endpoint closure after averaged endpoint closure is installed. It is not a proof of `PCTP.hard` from original data.