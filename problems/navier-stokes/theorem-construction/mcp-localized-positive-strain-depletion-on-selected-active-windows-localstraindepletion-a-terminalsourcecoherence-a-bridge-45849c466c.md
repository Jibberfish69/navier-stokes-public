# Localized positive-strain depletion on selected active windows

## Target

Prove the positive-part depletion theorem

```math
LocalStrainDepletion.A:
\quad
\int_{Bad_N(\eta)}(\mathfrak S_{N,loc}^{active})_+(t)\,dt=o_N(1).
```

The exact downstream implication is: `LocalStrainDepletion.A` implies
`LocalSource.NoPulse.A` and feeds the source-pulse closure chain.

## Direct strain attempt

The active local source has a principal strain-production form. On a selected active packet, positive contribution occurs when the active shell aligns with an expanding eigen-direction of the symmetric strain. The installed energy, pressure, incompressibility, and dyadic exchange identities do not prevent that alignment on the same terminal bad windows.

The signed route controls a total signed object at best. Positive-part depletion needs more:

```math
\int G\text{ small} \nRightarrow \int G_+\text{ small}
```

unless a negative-part comparison or oscillation theorem is supplied. No installed route surface supplies that comparison.

## Pack-strain criterion

The installed criterion proves

```math
S_{pack,Q}\in L^1(0,T_*)\Longrightarrow \Gamma_{pack,Q}\in L^\infty(0,T_*).
```

This is a valid consequence after an `L^1_tL^\infty_x` positive-strain bound is known. The missing theorem is exactly that bound, or a directional version along the active stretching vector.

## Coherence bridge

The useful closed bridge is:

```math
TerminalSourceCoherence.A\Longrightarrow PositiveSourceDepletion.A.
```

Define a packet coherence defect `\mathfrak C_{src}(P)` by

```math
\int_{Q(P)}[\mathcal N_{preCauchy}^{loc}(u;P)]_+\,dxdt
\le C\mathfrak C_{src}(P)+\ell(P),
```

where `\ell(P)` is legal pressure/cutoff/localization loss. If

```math
\sum_{P\in\mathcal F_N}\mathfrak C_{src}(P)=o_N(1),
```

then bounded overlap gives

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}[\mathcal N_{preCauchy}^{loc}(u;P)]_+\,dxdt
\le o_N(1)+\text{summable legal losses}.
```

This is `PositiveSourceDepletion.A`.

## Result

The localized positive-strain route closes only conditionally:

```math
\boxed{
TerminalSourceCoherence.A
\Longrightarrow
PositiveSourceDepletion.A
\Longrightarrow
ScaleCriticalTreeCarleson.A
\Longrightarrow
SourcePulseExclusion.A.
}
```

The required new theorem is now sharper:

```math
\boxed{OriginalSmoothData\Longrightarrow TerminalSourceCoherence.A.}
```

Concrete sufficient versions are:

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

## Verdict

`LocalStrainDepletion.A` is not discharged from current materials. The branch advances to the coherence theorem `TerminalSourceCoherence.A`, which is the precise next supplier for positive-source depletion.
