# MPP SourceTimeConcentrationCost.A Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close public Clay
finality.

## Target

The previous pass reduced the terminal time-thickness problem to a concrete
cost theorem:

```math
SourceTimeConcentrationCost.A.
```

The theorem should price a terminal native positive source squeeze. If a fixed
amount of the selected source measure is concentrated in a terminal slab of
thickness `\tau_m\downarrow0`, some same-ledger nonnegative cost must become
too large for the installed finite budgets, legal payments, Part/Field
face accounting, or source-residence budget.

## Existing Cost Form

The checked repo form of this cost is:

```math
UniformLedgerAC.A
```

or equivalently:

```math
NativeTrilinearDefectDomination.A.
```

In measure language, let `\nu_N` be the native positive source measure and
`\rho_N` the installed same-ledger cost measure. The needed statement is:

```math
\rho_N(E_N)\to0
\Longrightarrow
\nu_N(E_N)\to0.
```

A terminal atom violates exactly this statement:

```math
\rho_N(E_N)\to0,
\qquad
\nu_N(E_N)\ge c_0>0.
```

## Direct Cost Test

The native positive source carrier is:

```math
\left[
\langle S_{<j}^{loc} w_j,w_j\rangle
\right]_+.
```

A cost proof has only three noncircular ways to dominate it.

### 1. Coefficient Control

Prove a terminal coefficient bound for `S_{<j}^{loc}` in the selected packet
topology. This would turn the source carrier into a finite active-square or
dissipation cost.

The checked direct attempt fails here: trace-free strain and pressure Poisson
do not control the positive directional coefficient. A terminal packet can
align with an expanding eigendirection.

### 2. Active-Square / Carleson Charge

Prove a same-ledger active-square reserve:

```math
\int_I\sum_j 2^{-j}D_j(t)^2\,dt
```

or an equivalent source Carleson budget on the selected terminal family.

The checked active-square attempt fails from installed inputs. First-moment
dissipation does not control square density on shrinking active windows, and
tail-square reserve does not give selected shellwise source-square control.

### 3. Eigendirection Decorrelation

Prove that the selected high-frequency direction cannot remain aligned with
the expanding eigendirection of the lower strain over the terminal heat-scale
family.

The checked eigendirection / pressure-Hessian attempts isolate real structure,
but the near-band material pressure/source-current term remains one-sided
after terminal selection. No installed theorem turns that one-sided term into
legal angular mixing cost.

## Result

`SourceTimeConcentrationCost.A` is not installed from current inputs.

The cost theorem has been sharpened to the already checked native defect
statement:

```math
UniformLedgerAC.A / NativeTrilinearDefectDomination.A.
```

The next non-alias target is one of the three native faces:

```text
Terminal coefficient control for S_{<j}^{loc},
PositiveActiveCarlesonReserve.A,
TerminalEigendirectionDecorrelation.A.
```

At current authority, none is proved. The most concrete next door is the third
one, because the coefficient and active-square routes have already returned to
the same terminal source-wall. The eigendirection route has a sharper surviving
subterm:

```math
TerminalPressureHessianNoSustain.A
```

or, in source-current language,

```math
OneSidedNearBandMaterialStrainBV.A.
```

## Loop Consequence

The public Clay finality chain remains open:

```text
SourceTimeConcentrationCost.A: open
=> ExternalTerminalTimeThicknessMechanism.A: open
=> OriginalSmoothDataPackSurvival.A: open
=> NoGenuineExitFromSmoothData.A: open
=> pdfs_final: false.
```
