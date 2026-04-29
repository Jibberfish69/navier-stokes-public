# PSJ Plus Terminal Assembly

## Status

Active theorem-facing completion note for the exact-potential `PSJ+` branch.

Role: close the branch-local assembly gap. This note does not promote `PSJ+`
back to the lane-wide live frontier; it records the terminal theorem that the
installed `PSJ+` inputs already imply the exact-potential downstream export.

## Route Boundary

The current lane-wide authority remains the class-membership
forward-invariance / endpoint-exclusion route. The exact-potential `PSJ+`
branch is preserved downstream as a Law-2-survivor / one-field readout branch.

Inside that branch, the relevant projector-first spine is

```math
\texttt{PTC-Lin}+\texttt{PTC-Shape}
\Longrightarrow
D.7mq,
\tag{PSJT.1}
```

```math
D.7mp+D.7mo+D.7mm
\Longrightarrow
SSC\text{-}EP.A,
\tag{PSJT.2}
```

```math
D.7mq+SSC\text{-}EP.A
\Longrightarrow
D.7mr2
\Longrightarrow
RPC.3.
\tag{PSJT.3}
```

The square-budget measurable-derivative descendant gives an equivalent
selector-strain supplier:

```math
\texttt{InitCollapse}
+\texttt{MixCollapse-Honest}
+\texttt{DriftCollapse-Honest}
\Longrightarrow
\texttt{SSC-D7mb-collapse}
\Longrightarrow
SSC.
\tag{PSJT.4}
```

## Theorem `PSJ+.Terminal`

Work on an active exact-potential simple-top selector-good strip. Assume:

1. the ambient synchronization estimate `(D.7m3)` on the strip;
2. the pair-to-reference projector packet `D.7mq`, supplied by
   `PTC-Lin+PTC-Shape` through either Theorem `PTC.A` or
   `EP.Frame.Closure`;
3. the selector-strain packet `SSC-EP.A`, supplied either by
   `D.7mp+D.7mo+D.7mm` or by the square-budget route `(PSJT.4)`;
4. the residual pairwise closure theorem `EPR.A`.

Then the exact-potential `PSJ+` branch reaches the residual pairwise export:

```math
\texttt{PSJ+ inputs}
\Longrightarrow
D.7mr2
\Longrightarrow
RPC.3.
\tag{PSJT.5}
```

Consequently the preserved exact-potential downstream handoff is available:

```math
RPC.3
\Longrightarrow
SG.4B
\Longrightarrow
SG.4
\Longrightarrow
BR.\lambda2
\Longrightarrow
\texttt{continuation export}.
\tag{PSJT.6}
```

## Proof

By assumption (2), the pair-to-reference projector comparison holds:

```math
\|\Pi_J^{pair}-\Pi_J^{ref}\|_F^2\le R_J^{pair},
\qquad
\int_{\mathcal G_J}M_J^2R_J^{pair}\,d\mu_J=o_J(1).
\tag{PSJT.7}
```

Together with the ambient synchronization estimate `(D.7m3)`, the angular
ledger note gives `RefObs`.

By assumption (3), the selector-strain comparison holds:

```math
\|\Pi_J^{ref}-\Pi_J^{top}\|_F^2\le R_J^{ssc},
\qquad
\int_{\mathcal G_J}M_J^2R_J^{ssc}\,d\mu_J=o_J(1).
\tag{PSJT.8}
```

The exact-potential angular ledger now applies directly:

```math
\int_{\mathcal G_J}M_J^2\Xi_J^{ang}\,d\mu_J
\lesssim
\mathcal E_{J,M}^{obs}+o_J(1).
\tag{PSJT.9}
```

This is exactly `D.7mr2`. The residual pairwise closure theorem `EPR.A`
converts `D.7mr2` into `RPC.3`, giving `(PSJT.5)`.

The downstream handoff `(PSJT.6)` is then the installed
`RPC.3 -> SG.4B -> SG.4 -> BR.lambda2` export. This final step is downstream
readout only; it is not a new upstream primitive and it does not replace the
class-membership live edge. ∎

## Completion Read

The branch-local `PSJ+` assembly gap is now closed:

```math
\boxed{
\texttt{D.7mq}
+
\texttt{SSC-EP.A}
\Longrightarrow
\texttt{D.7mr2}
\Longrightarrow
\texttt{RPC.3}.
}
\tag{PSJT.10}
```

Equivalently, on the square-budget measurable-derivative descendant:

```math
\boxed{
\texttt{PTC-Lin}
+
\texttt{PTC-Shape}
+
\texttt{SSC-D7mb-collapse}
\Longrightarrow
\texttt{PSJ+.Terminal}.
}
\tag{PSJT.11}
```

The remaining caution is about authority, not assembly: `PSJ+` remains a
downstream exact-potential branch under the current class-membership edge, and
the `PSJ+.1` overlap refinements still keep their own fine/coarse split
(`LOM.8` / `LOM.10` versus `LRC.1` / `RCP.0`).
