# TerminalSourceCoherence.A Child-Loop Audit

Status: failed child discharge; loop continues.

## Target

```math
OriginalSmoothData\Longrightarrow TerminalSourceCoherence.A.
```

The intended downstream bridge is

```math
TerminalSourceCoherence.A
\Longrightarrow PositiveSourceDepletion.A
\Longrightarrow ScaleCriticalTreeCarleson.A
\Longrightarrow SourcePulseExclusion.A.
```

## Concrete supplier split

The current route exposes five supplier candidates:

```math
EigenDecorrel.A,
\quad
SignedPositiveBalance.A,
\quad
LocalPressureStrainDeplete.A,
\quad
ActiveVorticityCoherence.A,
\quad
AntiBeltramiCarleson.A.
```

Each supplier must control the native positive active source packet after same-fluid localization, terminal active-window selection, cutoffs, weights, and positive-part extraction.

## Audit result

`EigenDecorrel.A` remains open: incompressibility gives trace-free strain, while selected active packets may align with expanding eigendirections.

`SignedPositiveBalance.A` remains open: signed shell identities before terminal selection do not control the selected positive carrier after weights and positive-part extraction.

`LocalPressureStrainDeplete.A` remains open: pressure Poisson recovery gives elliptic routing and pressure-loss control, while the interior stretching/source carrier remains sign-indefinite.

`ActiveVorticityCoherence.A` remains open: direction coherence depletes
stretching once supplied, while OriginalSmoothData gives no terminal
active-window direction modulus for the exact weighted carrier.

`AntiBeltramiCarleson.A` remains open: Beltrami/helical cancellation is a possible geometry, while the current route has no theorem forcing terminal active packets into that depleted class.

## Decision

The theorem

```math
OriginalSmoothData\Longrightarrow TerminalSourceCoherence.A
```

is not installed on current surfaces. The loop continues to the positive-source Carleson / reverse-Holder parent concentration branch.
