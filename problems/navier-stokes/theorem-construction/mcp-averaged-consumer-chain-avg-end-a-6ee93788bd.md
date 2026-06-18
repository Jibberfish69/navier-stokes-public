# Averaged Consumer Chain

Status: conditional averaged consumer chain.

## Statement

The averaged consumer chain is

```math
LCI.A_{avg}+FCI.5f
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}.
```

## Inputs

`AVG.RCV.A` supplies

```math
LCI.A_{avg}.
```

The strengthened source bridge supplies

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```

The source hypothesis includes `FCC.C1a`.

## Chain

The averaged collar consumer uses the averaged lower-carrier ledger and the source packet:

```math
LCI.A_{avg}+FCI.5f
\Longrightarrow
CSP.A_{avg}.
```

The averaged one-field consumer propagates averaged field coherence:

```math
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}.
```

Combining averaged pack/participation structure with averaged one-field preservation yields averaged class-membership forward invariance:

```math
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}.
```

Thus

```math
LCI.A_{avg}+FCI.5f
\Longrightarrow
CFI.A_{avg}.
```

## Type discipline

The output class witness is averaged:

```math
CM_{avg}=Pack\wedge Part\wedge Field_{avg}.
```

The chain does not produce the old pointwise witness

```math
CM=Pack\wedge Part\wedge Field.
```

The conversion from averaged `Field_avg` to old pointwise `Field` is handled later by `Field.Read` after `READ.COVER` supplies a finite positive-scale SCF-good cover.

## Output

```math
CFI.A_{avg}
```

is now available for the averaged endpoint theorem

```math
AVG.END.A.
```
