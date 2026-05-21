# SelectedWindowNegativePartComparison.SignGeometryAttempt

## Status

Failed direct discharge.  This note tests a sign-geometry route for the source-weighted angular carrier.

## Target

The desired theorem is

```math
SelectedWindowNegativePartComparison.A:
\quad
\sum_{P\in\mathcal F_N}\int_{Q(P)}
|w_{j_P}|^2[e_{j_P}\cdot S^{loc}_{<j_P}e_{j_P}]_+dxdt
\le
C\sum_{P\in\mathcal F_N}\int_{Q(P)}
|w_{j_P}|^2[e_{j_P}\cdot S^{loc}_{<j_P}e_{j_P}]_-dxdt
+Loss_{legal}+o_N(1).
```

This would imply `SourceWeightedTerminalAngularDepletion.A` if the negative side is routed to parent drain or legal loss.

## Test

The tensor `S^{loc}_{<j}` is trace-free.  This gives signed eigenvalue balance at the matrix level.  It does not give balance after multiplying by the selected active direction and active square mass:

```math
|w_j|^2[e_j\cdot S^{loc}_{<j}e_j]_+.
```

The terminal packet selection can keep exactly the expanding-eigendirection packets.  Contracting eigendirections may carry negligible active shell square mass or live outside the selected family.

Thus same-window negative-part recovery is not supplied by trace-free strain or signed dyadic cancellation.  Both act before the terminal positive-part selection.

## Exact missing theorem

The sign route requires

```math
\boxed{ActiveDirectionEquipartition.A}
```

or

```math
\boxed{SelectedWindowAngularMixing.A}
```

stating that selected active directions cannot concentrate only on expanding eigendirections without paying parent drain or legal loss.

## Verdict

The sign-geometry route remains open.  It returns to angular mixing, now in source-weighted selected-window form.