# MinimalBadTerminalLayer.ReducesToSourceWeightedAngularDepletion

## Status

Local theorem-note artifact.  The proposed minimal-layer contradiction was tested against the current MCP source frontier.

## Setup

Assume the stabilized positive-supplier fork fails on one same-fluid terminal layer:

```math
\neg TemporalNonAtomicSource.A,
\qquad
\neg ActiveShellAmplitudeGain.A.
```

Then a terminal source atom may survive:

```math
\mu_*^{src}(B_R\times\{0\})>0,
```

and the shellwise active-square reserve is unavailable:

```math
2^{-j}D_j(t)^2\le \varepsilon\nu D_j(t)+r_j(t)
```

with summable `r_j` is absent on the selected terminal family.

The hoped-for contradiction was:

```math
\text{zero heat-time source atom}
+
\text{no active-shell amplitude gain}
+
\text{same-fluid shell balance}
\Longrightarrow \bot.
```

## Test

The same-fluid shell balance reduces the surviving source to the native positive strain carrier

```math
|w_j|^2\left[e_j\cdot S_{<j}^{loc}e_j\right]_+.
```

A terminal atom can concentrate this carrier at `s=0` while preserving finite `L^1_s` source mass.  The failure of active-shell amplitude gain removes the shellwise square reserve that would charge the concentration.

Thus the minimal-layer assumptions produce a sharper local packet target rather than a contradiction.

## Sharpened target

The MCP refresh identifies the current packet primitive below `PositiveRemainderDepletion.A` as

```math
\boxed{SourceWeightedTerminalAngularDepletion.A.}
```

Target form:

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
|w_{j_P}|^2
\left[e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}\right]_+dxdt
\le
\operatorname{Drain}_{parent}(\mathcal F_N)
+
\operatorname{Loss}_{legal}(\\mathcal F_N)
+o_N(1).
```

This is source-weighted angular depletion on the selected terminal packets.

## Consequence

The minimal bad terminal layer route now reads:

```math
SourceWeightedTerminalAngularDepletion.A
\Longrightarrow
PositiveRemainderDepletion.A
\Longrightarrow
TemporalNonAtomicSource.A\vee ActiveShellAmplitudeGain.A
\Longrightarrow
SourcePulseExclusion.A.
```

## Verdict

The joint-failure attempt narrows the live positive-supplier atom.  It does not discharge the fork.  The next useful theorem target is source-weighted terminal angular depletion.