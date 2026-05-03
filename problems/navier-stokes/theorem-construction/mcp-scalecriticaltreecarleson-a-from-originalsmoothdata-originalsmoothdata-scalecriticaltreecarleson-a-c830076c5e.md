# ScaleCriticalTreeCarleson.A from OriginalSmoothData

## Target

Prove

```math
OriginalSmoothData\Longrightarrow ScaleCriticalTreeCarleson.A.
```

Concrete form:

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}[\mathcal N_{preCauchy}^{loc}(u;P)]_+\,dxdt
\le o_N(1)+\text{summable legal losses}
```

for every bounded-overlap same-fluid terminal packet family selected by the source-pulse branch.

Equivalent active-square form:

```math
\int_I\sum_{j\ge\max(N,k+C_1)}2^{-j}D_j(t)^2dt
\le \varepsilon\nu2^{2k}|I|+C2^{-2\delta\max(N,k)}.
```

## Installed consequences

The target would close the donor side:

```math
ScaleCriticalTreeCarleson.A\Longrightarrow TwoTowerDonorDepletion.A\Longrightarrow SourcePulseExclusion.A.
```

The route equivalence between tree Carleson, active-square Carleson, and localized positive pre-Cauchy source control is installed.

## Direct tests

Single-shell active-square control requires a heat-scale square-source estimate for `F_j`. Fixed-shell amplitude scaling blocks a universal source theorem from the current original-data inputs.

Shell-amplitude gain would prove the active-square Carleson bound by converting

```math
2^{-j}D_j^2
```

into

```math
\varepsilon\nu D_j+r_j.
```

The implication is valid, while the gain itself stays open.

Direct localized positive source Carleson keeps the source pre-Cauchy and preserves parent-child geometry. Cauchy/Young envelopes return the active-square term. Global skew symmetry cancels before localization and active selection, while the target concerns the localized positive part. Pressure/cutoff routing handles legal losses and leaves legal interior source-parent production.

First-moment dissipation and raw energy provide finite total cost. They do not price scale-critical source mass on shrinking heat-scale active windows.

## Verdict

`ScaleCriticalTreeCarleson.A` is a precise sufficient supplier. Current route inputs leave it open.

The target reduces to one of:

```math
PositiveSourceDepletion.A,
\qquad
ReverseHolderParentConcentration.A,
\qquad
active\text{-}shell amplitude gain,
\qquad
square\text{-}source control.
```

All four are current presentations of the same source-pulse wall.