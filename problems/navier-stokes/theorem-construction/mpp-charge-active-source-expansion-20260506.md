# ChargeActiveSource.A Expansion

## Status

Failed unconditional proof; conditional reductions proved.

The previous source-upper-control audit selected the charge branch:

```math
ChargeActiveSource.A.
```

This branch asks for a finite scale-normalized reserve that pays for every terminal source-balanced heat-scale pulse.

## Target

The active source-pulse packet can be charged by any one of the following estimates on the same selected terminal active-window family:

```math
ScaleCriticalTreeCarleson.A,
\qquad
ActiveSquareCarleson.A,
\qquad
SquareSource.A,
\qquad
ActiveShellAmplitudeGain.A.
\tag{CAS.1}
```

One active-square target form is

```math
\int_I\sum_{j\ge \max(N,k+C)}2^{-j}D_j(t)^2\,dt
\le
\varepsilon\nu 2^{2k}|I|+C2^{-2\delta\max(N,k)}.
\tag{CAS.2}
```

One amplitude-gain target form is

```math
2^{-j}D_j(t)^2
\le
\varepsilon\nu D_j(t)+r_j(t),
\qquad
\int_I\sum_{j\in active}r_j(t)dt\le C2^{-2\delta N}.
\tag{CAS.3}
```

## Conditional implication 1: amplitude gain charges active square

Assume `(CAS.3)`. Summing over the active windows and shells gives

```math
\int_I\sum_{j\in active}2^{-j}D_j(t)^2dt
\le
\varepsilon\nu\int_I\sum_{j\in active}D_j(t)dt
+C2^{-2\delta N}.
```

The first term is absorbed into the viscous first-moment ledger; the second is the summable reserve. Hence `(CAS.3)` implies the active-square Carleson charge `(CAS.2)` on the selected active-window family.

Thus

```math
ActiveShellAmplitudeGain.A
\Longrightarrow
ActiveSquareCarleson.A.
\tag{CAS.4}
```

## Conditional implication 2: active-square charge gives source-pulse exclusion

Assume `ActiveSquareCarleson.A`. On every selected terminal source-balanced heat-scale pulse, the active positive source packet is controlled by the same square source reserve. Summing over bounded-overlap terminal active windows gives a finite total charge. A terminal sequence carrying persistent active source mass then requires a fixed positive lower charge on infinitely many selected windows; bounded overlap makes those charges summable only if the tail vanishes, contradicting persistence.

Therefore

```math
ActiveSquareCarleson.A
\Longrightarrow
SourcePulseExclusion.A.
\tag{CAS.5}
```

The same proof applies to `SquareSource.A` and `ScaleCriticalTreeCarleson.A`, since those are equivalent reserve presentations on the current route.

## Conditional downstream propagation

Once `SourcePulseExclusion.A` holds, the installed consumer chain gives

```math
SourcePulseExclusion.A
\Longrightarrow
AWG.A
\Longrightarrow
Jump_{avg}\Rightarrow\bot
\Longrightarrow
PCTP.hard/TTU.A.
\tag{CAS.6}
```

## Direct proof obstruction from first-moment data

Original smooth data gives finite energy and first-moment dissipation:

```math
\int_0^{T_*}\sum_j D_j(t)dt<\infty.
```

A first-moment bound cannot imply the square reserve. For

```math
D_n(t)=n\mathbf 1_{[0,1/n]}(t),
```

one has

```math
\int D_n(t)dt=1,
\qquad
\int D_n(t)^2dt=n\to\infty.
```

Thus first-moment control can coexist with arbitrarily large square charge on shrinking terminal active windows.

## Direct proof obstruction from shell law

The active shell law is

```math
E_j'(t)+c\nu D_j(t)
\le
F_j(t),
```

where `F_j` is the nonlinear source/flux. Viscosity drains `D_j`; a source-balanced pulse occurs when `F_j` supplies the matching input on a heat-scale window. The energy inequality alone permits this balance.

Therefore charge requires a source theorem controlling `F_j` on the same active windows. That theorem is exactly the source-pulse exclusion wall in charge language.

## Direct proof obstruction from dyadic cancellation

Unweighted dyadic exchange cancellation occurs before the route inserts terminal shell weights, cutoffs, same-fluid localization, active-window selection, and positive-part extraction. After these operations, the remaining weighted lifted positive source packet has no installed cancellation theorem. Hence dyadic exchange cannot supply the charge reserve directly.

## Direct proof obstruction from downstream source ledgers

The downstream frozen-family source supplier

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f
```

controls an accepted source packet after the receiver route has been admitted. The charge branch needs control of the branch-native bad-window source pulse before that downstream route is licensed. Importing `FFSRC.A` here would reuse a later consumer as an earlier source-control proof.

## Verdict

The charge branch has valid conditional implications:

```math
ActiveShellAmplitudeGain.A
\Longrightarrow
ActiveSquareCarleson.A
\Longrightarrow
SourcePulseExclusion.A
\Longrightarrow
Jump_{avg}\Rightarrow\bot.
```

The original-data proof of the first charge input remains open:

```math
OriginalSmoothData\Longrightarrow ChargeActiveSource.A
\quad\text{open.}
```

At the current route resolution,

```math
ChargeActiveSource.A
\equiv_{route}
ScaleCriticalTreeCarleson.A
\equiv_{route}
ActiveSquareCarleson.A
\equiv_{route}
SquareSource.A
\equiv_{route}
ActiveShellAmplitudeGain.A
\equiv_{route}
SourcePulseExclusion.A.
```

This equivalence is proof-burden equivalence; it is not a discharge.

## Next targets

The charge branch reduces to three concrete theorem attempts:

```math
ActiveShellAmplitudeGainFromNS.A,
```

```math
SquareSourceFromNS.A,
```

```math
ScaleCriticalTreeCarlesonFromNS.A.
```

The sharpest next target is

```math
ActiveShellAmplitudeGainFromNS.A,
```

because it directly converts viscous first-moment drain into square reserve plus summable remainder on the active windows.
