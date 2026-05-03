# SourcePulseExclusion.A Direct Target Loop Audit

Status: failed direct discharge; child-route loop continues.

## Target

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
```

This is the branch-native `Jump_avg` elimination primitive. It cannot assume `Field_avg` on the `Jump_avg` branch.

## Direct proof modes

A direct proof must do one of three jobs on the terminal source-pulse packet:

```math
\text{remove active positive source},
\qquad
\text{charge active source to a finite reserve},
\qquad
\text{rigidify the localized source residue}.
```

## Remove route

The remove route needs a positive-part depletion theorem for active local source or vortex stretching on the selected bad windows. Current energy, pressure Poisson recovery, vorticity identities, and dyadic cancellation do not supply a sign rule after one-sided weights, cutoffs, and terminal bad-window selection.

## Charge route

The charge route needs an active-window Carleson, square-source, or source-parent reserve theorem. Current energy/dissipation and scheduler reserves control raw or Lebesgue-time quantities, not the scale-normalized active source mass on the same selected terminal windows.

## Rigidify route

The rigidify route needs source-residue localization and a source-residue Liouville or ancestry-drain theorem. Current compactness machinery can extract limits only after localization, and the broad ancient no-pulse statement is unavailable.

## Direct verdict

The direct implication is not installed from current original-data surfaces:

```math
OriginalSmoothData\not\vdash SourcePulseExclusion.A
```

on the current route surface.

The remaining loop must close or collapse the child presentations:

```math
SignedLocalSource.A,
\quad MSC.BadAC,
\quad PulseCharge.A,
\quad LocalPositiveSourceCarleson.A,
\quad \text{ancestry/donor-depletion},
\quad \text{rigid Zeno/Liouville}.
```