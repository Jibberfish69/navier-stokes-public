# InteriorSCFTightness.A buffered cutoff discharge

## Status

Theorem-facing discharge of the interior/tightness input introduced by
`TerminalDefectPersistence.measure.A`.

Verdict:

```math
\boxed{
InteriorSCFTightness.A
\text{ closes by passing from }Q_1^-\text{ to a buffered }Q_2^-.
}
```

This removes the artificial boundary-annulus leakage issue from the persistence
slot.  It does not prove the Liouville/rigidity theorem for the resulting
defect measure.

## Source anchors

| Surface | Role |
|---|---|
| `mpp-terminal-bad-scale-extraction-compactness-20260505.md` | bad-scale normalization and `(TBSE.1a)` |
| `mpp-terminal-defect-persistence-measure-split-20260505.md` | measure-valued persistence theorem requiring `(TDP.3)` |
| `mcp-scfbase-defect-measure-construction.md` | SCF carrier measures |

## Setup

Let `\nu_n` be the nonnegative normalized SCF carrier measure for the rescaled
bad-scale sequence.  The bad-scale choice gives

```math
\nu_n(Q_1^-)
=
SCF_{base}(Q_1^-(u^{(n)},p^{(n)}))
>
\varepsilon_m/2.
\tag{IST.1}
```

Assume the local compactness upper envelope on the buffered cylinder:

```math
\sup_n\nu_n(Q_2^-)<\infty.
\tag{IST.2}
```

This is the `R=2` instance of the compactness normalization `(TBSE.2)` after
the SCF carrier measures are included.

## Theorem `InteriorSCFTightness.A`

Under `(IST.1)` and `(IST.2)`, there exist a nonnegative cutoff
`\psi\in C_c(Q_2^-)` and a constant `c_0>0` such that

```math
\int\psi\,d\nu_n\ge c_0
\qquad\text{for all }n.
```

In particular, the tightness input `(TDP.3)` holds on the buffered tangent
cylinder.

## Proof

Choose `\psi\in C_c(Q_2^-)` such that

```math
0\le\psi\le1,
\qquad
\psi\equiv1\text{ on }\overline{Q_1^-}.
```

This is possible because `\overline{Q_1^-}` is compactly contained in
`Q_2^-`.  Since `\nu_n` is nonnegative, `(IST.1)` gives

```math
\int\psi\,d\nu_n
\ge
\nu_n(Q_1^-)
>
\varepsilon_m/2.
```

Set `c_0:=\varepsilon_m/2`.  This is exactly `(TDP.3)`.

The upper bound `(IST.2)` supplies the local Radon compactness needed to pass
to a weak-* limit in the persistence theorem.

## Consequence

Combining this note with `TerminalDefectPersistence.measure.A` gives

```math
TerminalBadScaleExtraction.A
+
SCFCarrierUpperEnvelope(Q_2^-)
\Longrightarrow
TerminalDefectPersistence.measure.A.
```

Thus the post-extraction route reduces to:

```math
TerminalBadScaleExtraction.A
+
SCFCarrierUpperEnvelope(Q_2^-)
+
TerminalDefectLiouville.measure.A
\Longrightarrow
GoodScaleNonCollapse_{1/2}.A.
```

The remaining analytic issue before Liouville is only the carrier upper
envelope needed for compactness, not an independent tightness theorem.
