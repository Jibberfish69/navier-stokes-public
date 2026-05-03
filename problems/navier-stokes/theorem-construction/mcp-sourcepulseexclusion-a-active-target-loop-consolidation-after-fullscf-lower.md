# SourcePulseExclusion.A active target after full-SCF lower accumulation

## Status

Active theorem target / loop consolidation.

The lower side of the `Jump_avg` route is closed for an equivalent enlarged shared charge:

```math
Jump_{avg}\Longrightarrow \text{positive terminal lower accumulation for }\nu_{fullSCF}.
```

The upper side remains the active-window amplitude gain / source-pulse theorem.

## Next targets

1. Prove

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
```

Equivalent route presentations are

```math
OriginalSmoothData\Longrightarrow ActiveShellSourceNormalize.A,
```

and

```math
OriginalSmoothData\Longrightarrow SignedLocalSource.A.
```

2. Use source-pulse exclusion to install the upper bound for the same full-SCF charge used by the lower side.

3. Combine lower plus upper to close

```math
Jump_{avg}\Longrightarrow \bot.
```

4. Propagate the closed branch split to full `PCTP.hard` terminal-tail production.

## Consolidated target

The current source stack reduces to the following exact PDE atom:

```math
\boxed{
\text{exclude heat-scale, scale-critical nonlinear source pulses carrying mixed bilinear dissipation on active terminal windows.}
}
```

Installed conditional bridges show that this atom implies active-shell amplitude gain, heat-scale square-source control, scale-normalized Carleson upper control, and the `Jump_avg` upper side.

## Supplier status

The following supplier presentations reduce to the same atom:

```math
TerminalSourceCoherence.A,
\quad
ScaleCriticalTreeCarleson.A,
\quad
ZenoSourceResidueRigidity.A,
\quad
EigenDecorrel.A,
\quad
SignedPositiveBalance.A,
\quad
LocalPressureStrainDeplete.A,
\quad
ActiveVorticityCoherence.A,
\quad
ReverseHolderParentConcentration.A,
\quad
SignedLocalSource.A.
```

The loop therefore proceeds on the exact source-pulse theorem rather than re-running sibling presentations.

## Current proof boundary

The installed inputs give finite energy, finite dissipation, pressure/source supplier ledgers, compact preterminal smoothness, and conditional AWG-to-upper-control bridges. They do not yet prove terminal source-pulse exclusion from original data.

The next proof attempt must attack the displayed PDE atom directly or produce one of its route-equivalent sufficient forms.