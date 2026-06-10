# MPP ActiveShellAmplitudeGain.A / HeatScaleSquareSource.A Direct Reentry

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close public Clay
finality and does not license PDF finality.

## Target

The active loop target is:

```math
ActiveShellAmplitudeGain.A / HeatScaleSquareSource.A.
```

This is the scale-normalized active-window control needed to feed

```text
ScaleNormalizedTerminalChargeTimeAC.A
=> TerminalSourceFirstAppearanceTimeSpread.A
=> BASACTimeFaceAntiAtom.A
=> OriginalSmoothDataPackSurvival.A
=> NoGenuineExitFromSmoothData.A.
```

## Conditional theorem already paid

The existing active-shell note proves the useful conditional chain:

```math
ActiveShellSourceNormalize.A
\Longrightarrow
SquareSourceEstimate.A
\Longrightarrow
ActiveShellAmplitudeGain.A
\Longrightarrow
ActiveSquareUpperTailCarleson.A.
```

So the problem is not algebra after source normalization. The open problem is
producing source normalization from original smooth data on the selected
terminal active windows.

## Direct tests

### 1. Energy and first-moment dissipation

Energy gives a first-moment ledger:

```math
\int_0^{T_*}\sum_j D_j(t)\,dt<\infty.
```

The active target needs square-strength heat-scale control:

```math
\int_I\sum_{j\in active}2^{-j}D_j(t)^2\,dt.
```

A heat-scale pulse can keep finite first moment while making the active-square
quantity large on selected shrinking terminal windows. Thus first-moment
dissipation does not prove the target.

### 2. Fixed-shell smoothness

Original smooth data gives fixed-shell bounds before the terminal time. The
target couples

```text
j -> infinity,
t -> T_*.
```

Data-dependent fixed-shell bounds do not give the required `o_N(1)`
scale-normalized estimate on moving high-frequency terminal windows.

### 3. Viscous heat-scale damping

The shell law has the schematic form

```math
E_j'(t)+c\nu D_j(t)\le F_j(t)+L_j(t).
```

Viscosity damps only after the nonlinear source fails to replenish the active
shell. Source-balanced pulses with

```math
F_j(t)\simeq c\nu D_j(t)
```

are still compatible with the current installed inputs. Excluding them is
exactly `ActiveShellSourceNormalize.A` or `SquareSourceEstimate.A`, so using
viscosity here would be circular.

### 4. Signed exchange / ASAC

Dyadic exchange is signed before terminal weights, cutoffs, same-fluid packet
selection, and positive-part extraction. After the terminal selection, the live
carrier is the one-sided native positive source term

```math
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+.
```

Post-ASAC payments handle pair-weight and signed-part defects already routed
away. They do not control the absolute residual-tail branch needed for active
amplitude gain.

## Result

`ActiveShellAmplitudeGain.A` is not proved.

`HeatScaleSquareSource.A` is not proved.

The direct reentry reduces the target to the same native source-normalization
atom:

```math
ActiveShellSourceNormalize.A
```

or, in the positive-strain form,

```math
PositiveStrainDecorrelationOnTerminalPackets.A.
```

The latter is the sharper next child because it attacks the actual one-sided
carrier

```math
|w_j|^2[e_j\cdot S_{<j}^{loc}e_j]_+.
```

## New live criticism

`NS-LIVE-20260609-100`: active-shell amplitude gain and heat-scale square-source
control remain open. Energy, fixed-shell smoothness, viscosity, and signed
exchange do not control the one-sided native positive source carrier on
scale-normalized terminal active windows. The next pass must attack
`ActiveShellSourceNormalize.A / PositiveStrainDecorrelationOnTerminalPackets.A`
or find a different theorem that supplies the same scale-normalized active
window control before any Pack-survival or PDF-finality claim can be made.
