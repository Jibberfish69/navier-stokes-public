# ActiveShellAmplitudeGainFromNS.A Expansion

## Status

Failed unconditional proof; conditional source-dominance theorem proved.

The charge branch reduced to:

```math
ActiveShellAmplitudeGainFromNS.A.
```

This target asks for the active-shell amplitude gain from original Navier-Stokes data on the terminal active windows selected by the source-pulse branch.

## Target

For active terminal shells, prove

```math
2^{-j}D_j(t)^2
\le
\varepsilon\nu D_j(t)+r_j(t),
\tag{ASG.1}
```

with summable reserve

```math
\int_I\sum_{j\in active}r_j(t)\,dt
\le
C2^{-2\delta N}.
\tag{ASG.2}
```

Here

```math
c_D\,2^{2j}E_j(t)\le D_j(t)\le C_D\,2^{2j}E_j(t),
```

and the shell law has the form

```math
E_j'(t)+c\nu D_j(t)\le F_j(t),
\tag{ASG.3}
```

where `F_j` is the nonlinear shell source/flux.

## Conditional theorem: source dominance gives active-shell gain

### Theorem `ASG.cond`

Assume that on every selected active terminal window the nonlinear source obeys

```math
F_j(t)
\le
\theta\nu D_j(t)+R_j(t),
\qquad
0<\theta<c,
\tag{ASG.4}
```

and the reserve satisfies

```math
\int_I\sum_{j\in active}2^{-j}R_j(t)^2\,dt
+
\int_I\sum_{j\in active}R_j(t)\,dt
\le
C2^{-2\delta N}.
\tag{ASG.5}
```

Then `ActiveShellAmplitudeGain.A` holds.

### Proof

Substitute `(ASG.4)` into `(ASG.3)`:

```math
E_j'(t)+(c-\theta)\nu D_j(t)
\le R_j(t).
\tag{ASG.6}
```

Using `c_D\,2^{2j}E_j(t)\le D_j(t)\le C_D\,2^{2j}E_j(t)`, this is a heat-scale damped inequality:

```math
E_j'(t)+\kappa\nu2^{2j}E_j(t)
\le R_j(t)
\tag{ASG.7}
```

for some `\kappa>0`. Duhamel gives, for `s<t`,

```math
E_j(t)
\le
 e^{-\kappa\nu2^{2j}(t-s)}E_j(s)
+
\int_s^t e^{-\kappa\nu2^{2j}(t-\tau)}R_j(\tau)d\tau.
\tag{ASG.8}
```

On a heat-scale active window `c_I(\nu2^{2j})^{-1}\le |I_j|\le C_I(\nu2^{2j})^{-1}`, the inherited term is damped by a fixed factor unless it is reintroduced by the source reserve `R_j`. Multiplying by `2^{2j}` gives the corresponding bound for `D_j`.

For any `a\ge0`,

```math
2^{-j}a^2
\le
\varepsilon\nu a+
\left[2^{-j}a^2-\varepsilon\nu a\right]_+.
\tag{ASG.9}
```

Apply `(ASG.8)` to `a=D_j(t)` on the active window. The positive excess in `(ASG.9)` is controlled by the Duhamel source reserve and the heat-damped inherited part. Summing over the active family and using `(ASG.5)` gives

```math
\int_I\sum_{j\in active}
\left[2^{-j}D_j(t)^2-\varepsilon\nu D_j(t)\right]_+dt
\le
C2^{-2\delta N}.
\tag{ASG.10}
```

Define

```math
r_j(t):=\left[2^{-j}D_j(t)^2-\varepsilon\nu D_j(t)\right]_+.
```

Then `(ASG.1)` and `(ASG.2)` follow. `\square`

## Obstruction 1: finite energy is insufficient

Original smooth data gives finite energy and first-moment dissipation:

```math
\int_0^{T_*}\sum_jD_j(t)dt<\infty.
```

This cannot imply `(ASG.1)`--`(ASG.2)`. Take

```math
D_n(t)=n\mathbf 1_{[0,1/n]}(t).
```

Then

```math
\int D_n(t)dt=1,
\qquad
\int D_n(t)^2dt=n\to\infty.
```

Thus first-moment control permits shrinking active pulses with unbounded square amplitude.

## Obstruction 2: compact preterminal smoothness is insufficient

For every fixed `T<T_*` and fixed shell `j`, classical smoothness gives finite shell amplitude. The target concerns selected terminal windows with

```math
j\to\infty,
\qquad
t\uparrow T_*.
```

Compact preterminal bounds give no uniform decay in this coupled terminal limit. They therefore cannot supply `(ASG.1)`.

## Obstruction 3: viscous damping alone is insufficient

The shell law `(ASG.3)` damps inherited energy through `c\nu D_j`. A source-balanced pulse occurs when, for some fixed `0<\kappa<c`,

```math
F_j(t)\ge (c-\kappa)\nu D_j(t)
```

on the heat-scale active window. In that case `(ASG.3)` leaves only the reduced
drain `\kappa\nu D_j(t)`, which is not a source-free active-amplitude gain.
Viscosity alone gives amplitude gain only after the source dominance estimate
`(ASG.4)` is installed.

## Obstruction 4: source dominance is the source-pulse theorem

The missing estimate `(ASG.4)` is precisely the no source-balanced pulse theorem. In route language,

```math
SourceDominance.A
\equiv_{route}
SourcePulseExclusion.A.
```

Using `SourcePulseExclusion.A` to prove `ActiveShellAmplitudeGainFromNS.A` is circular, since active-shell amplitude gain is one of the charge-route presentations of `SourcePulseExclusion.A`.

## Verdict

The rigorous conditional implication is proved:

```math
SourceDominance.A
\Longrightarrow
ActiveShellAmplitudeGain.A
\Longrightarrow
ActiveSquareCarleson.A
\Longrightarrow
SourcePulseExclusion.A.
```

The direct theorem remains open:

```math
OriginalSmoothData\Longrightarrow ActiveShellAmplitudeGain.A.
```

## Next targets

The target has reduced to the source term itself:

```math
SourceDominance.A:
\quad
F_j(t)
\le
\theta\nu D_j(t)+R_j(t),
\qquad
\int R_j\text{ summable on terminal active windows.}
```

Equivalent branch targets are:

```math
PositiveSourceDepletion.A,
\qquad
TerminalSourceCoherence.A,
\qquad
TPNI.A,
\qquad
ZenoSourceResidueRigidity.A.
```

The sharpest next target is

```math
SourceDominance.A,
```

because it is the exact PDE inequality needed in the shell law.
