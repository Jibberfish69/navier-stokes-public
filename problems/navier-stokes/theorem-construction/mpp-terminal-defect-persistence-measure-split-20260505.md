# TerminalDefectPersistence.A measure split

## Status

Theorem-facing reduction for the `TerminalDefectPersistence.A` slot in the
direct `READ.COVER` bypass route.

Verdict:

```math
\boxed{
\text{Defect persistence closes as a measure-valued theorem under an interior
tightness lower bound.}
}
```

The stronger statement that the limiting velocity-pressure pair itself has
large `SCF_base` remains open unless the route supplies strong convergence of
all SCF components or a Liouville theorem that accepts the residual defect
measure.

## Source anchors

| Surface | Role |
|---|---|
| `mpp-terminal-bad-scale-extraction-compactness-20260505.md` | bad-scale extraction and normalized bad cylinders |
| `mpp-interior-scf-tightness-buffer-20260505.md` | buffered cutoff proof of `(TDP.3)` |
| `mcp-scfbase-defect-measure-construction.md` | construction of the `D_u` and local pressure defect measures |
| `mcp-moving-concentration-compactness-test.md` | moving concentration compactifies to a terminal defect object |
| `mcp-scfbase-modulus-failure-to-epsilon-defect.md` | threshold concentration yields an epsilon-level terminal defect |

## Setup

Let `(u^{(n)},p^{(n)})` be the parabolically rescaled bad-scale sequence from
`TerminalBadScaleExtraction.A`, with

```math
SCF_{base}(Q_1^-(u^{(n)},p^{(n)}))>\varepsilon_m/2.
\tag{TDP.1}
```

Write the nonnegative SCF carrier as a finite sum of normalized component
measures on compact cylinders:

```math
\nu_n
:=
\nu_{E,n}+\nu_{D,n}+\nu_{P,n}+\nu_{\Phi,n}.
```

Here `\nu_{D,n}` is the rescaled `|\nabla u^{(n)}|^2` carrier, `\nu_{P,n}` is
the rescaled local-pressure `|p^{loc,(n)}|^{3/2}` carrier in the compatible
pressure gauge, and the energy/geometric terms are included with the same
normalization used by `SCF_base`.

Assume the local compactness upper envelope:

```math
\sup_n \nu_n(Q_R^-)<\infty
\qquad\text{for every fixed }R.
\tag{TDP.2}
```

## The missing tightness input

The threshold lower bound `(TDP.1)` is not enough by itself to force an
interior defect if all mass can slide into the boundary annulus of the chosen
unit cylinder.  The exact tightness input is:

there exist a nonnegative cutoff `\psi\in C_c(Q_1^-)` and a constant `c_0>0`
such that

```math
\int \psi\,d\nu_n\ge c_0
\qquad\text{for all large }n.
\tag{TDP.3}
```

Equivalently, one may assume a boundary-annulus leakage bound that converts
`SCF_{base}(Q_1^-)>\varepsilon_m/2` into `(TDP.3)` for a fixed interior
subcylinder.

## Theorem `TerminalDefectPersistence.measure.A`

Under `(TDP.2)` and `(TDP.3)`, after passing to a subsequence,

```math
\nu_n\stackrel{*}{\rightharpoonup}\nu_*
```

as Radon measures on compact subsets of the retained tangent chart, and

```math
\nu_*(Q_1^-)>0.
```

More precisely,

```math
\int\psi\,d\nu_*\ge c_0>0.
```

Thus the extracted terminal tangent carries a nonzero terminal SCF defect
measure.

## Proof

By `(TDP.2)`, the sequence `\nu_n` is locally bounded in the space of finite
Radon measures.  Banach-Alaoglu gives a subsequence converging weak-* to a
Radon measure `\nu_*` on every compact cylinder, and diagonal extraction gives
a single local limit on the ancient tangent domain.

For the fixed compactly supported cutoff `\psi`, weak-* convergence gives

```math
\int\psi\,d\nu_*
=
\lim_{n\to\infty}\int\psi\,d\nu_n
\ge c_0.
```

Therefore `\nu_*` is nonzero on `Q_1^-`.  This proves the measure-valued
persistence statement.

## Function-valued persistence is stronger

The statement

```math
SCF_{base}(Q_1^-(u_*,p_*))>0
```

does not follow from weak suitable compactness alone.  Dissipation and local
pressure mass may converge partly into the defect measure

```math
\nu_*-\nu[u_*,p_*,\Phi_*].
```

To obtain a function-valued terminal SCF defect one needs an additional
no-concentration-loss theorem, for example:

```math
\nu_*=\nu[u_*,p_*,\Phi_*]
\quad\text{on }Q_1^-,
```

or strong convergence in the exact component spaces defining `SCF_base`.

## Consequence for the bypass route

The honest persistence split is now:

```math
TerminalBadScaleExtraction.A
+
SCFCarrierUpperEnvelope(Q_2^-)
\Longrightarrow
TerminalDefectPersistence.measure.A.
```

Then the Liouville target must be stated for the object actually produced:

```math
\text{retained ancient local suitable tangent}
+
\text{nonzero terminal SCF defect measure}
\Longrightarrow
\bot.
```

If `TerminalDefectLiouville.A` is instead stated only for a positive
function-level `SCF_base(u_*,p_*)`, then one additional theorem is required:

```math
MeasureDefectRealization.A:
\quad
\nu_*\ne0
\Longrightarrow
SCF_{base}(u_*,p_*)\text{ is nonzero on a retained subcylinder}.
```

## Remaining live target

After the buffered cutoff discharge, the surviving persistence-side primitive
is only the local carrier upper envelope already needed by compactness:

```math
\boxed{
SCFCarrierUpperEnvelope(Q_2^-)
\quad\text{and, if needed,}\quad
MeasureDefectRealization.A.
}
```

The broad terminal rigidity wall remains:

```math
\boxed{
TerminalDefectLiouville.A
}
```

for the measure-valued terminal defect object.
