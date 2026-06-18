# Frozen Exceptional-Set Measure Localization

## Status

Active theorem-facing upstream debt note.

Role: isolate the exact frozen geometric wall on the selector-scale
branch, namely the localization and `L^{p/2}` control of the thresholded
differentiability exceptional-set measure.

## Purpose

Discharge the frozen geometric packet:

```math
\boxed{
\texttt{FrozenDiffMeasLoc}_{\mu,p/2}
\Longrightarrow
\texttt{FrozenDiffWeightLoc}_{\mu,p/2}
\quad
\text{after adjoining } \texttt{PTCL.H}.
}
\tag{FEML.0}
```

This is the exact stronger frozen descendant of the qualitative
`DiffExc` theorem.

## Exact Setup

Keep the notation of
[ptc-linearization-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ptc-linearization-closure.md)
and the frozen threshold schedule `\vartheta_{J,\tau}^{lin}(a)`. Define the
frozen exceptional-set measure density

```math
\mu_{J,\tau}^{diff}(a)
:=
\mu_{J,\varepsilon}^{pair}
\bigl(E_{J,\varepsilon,\vartheta_{J,\tau}^{lin}(a)}^{diff}(\tau,a)\bigr).
\tag{FEML.0a}
```

Under the selector-scale realization and the active-pair scale
packet, bounded collar support at the frozen time is automatic; write this as

```math
|\xi_{ab}|
\le
R_{J,\tau}^{frz}(a)
\qquad
\text{for }\mu_{J,\varepsilon}^{pair}(a,\tau;\cdot)\text{-a.e. }b.
\tag{FEML.0b}
```

Let

```math
\Theta_{J,\tau}^{diff}(a)
:=
\int_{E_{J,\varepsilon,\vartheta_{J,\tau}^{lin}(a)}^{diff}(\tau,a)}
|\xi_{ab}|^2\,d\mu_{J,\varepsilon}^{pair}(a,\tau;b)
\tag{FEML.0c}
```

denote the weighted frozen exceptional-set factor.

## Exact Target

### Theorem FEML.A (on the selector-scale branch, frozen exceptional-set measure localization supplies the weighted frozen geometric packet)

Assume the selector-scale realization `(PTCL.3ai)` and the
active-pair scale packet `(PTCL.3aj)`. Then

```math
\Theta_{J,\tau}^{diff}(a)
\le
\bigl(R_{J,\tau}^{frz}(a)\bigr)^2\,\mu_{J,\tau}^{diff}(a).
\tag{FEML.1}
```

Assume moreover that

```math
\sup_{a\in\pi_a(\mathcal G_J)}R_{J,\tau}^{frz}(a)
\le
R_{J,\tau}^{frz,\ast}<\infty,
\tag{FEML.2}
```

and that there is a measurable bad set `B_J^{diff,meas,\tau}\subset\mathcal
G_J` such that

```math
\operatorname{supp}\bigl(\mu_{J,\tau}^{diff}\bigr)
\subseteq
B_J^{diff,meas,\tau},
\qquad
\mu_J^{pair}(B_J^{diff,meas,\tau})=o_J(1),
\tag{FEML.3}
```

with plain pair-measure bound

```math
\bigl\|\mu_{J,\tau}^{diff}\bigr\|_{L^{p/2}(d\mu_J^{pair})}
\le
C_{p/2,\tau}^{diff,meas}.
\tag{FEML.4}
```

Then the weighted packet holds with the same bad set and bound

```math
\bigl\|\Theta_{J,\tau}^{diff}\bigr\|_{L^{p/2}(d\mu_J^{pair})}
\le
\bigl(R_{J,\tau}^{frz,\ast}\bigr)^2\,C_{p/2,\tau}^{diff,meas}.
\tag{FEML.5}
```

Equivalently,

```math
\texttt{PTCL.H}
\;+\;
\texttt{FrozenDiffMeasLoc}_{\mu,p/2}
\Longrightarrow
\texttt{FrozenDiffWeightLoc}_{\mu,p/2}.
\tag{FEML.6}
```

So on the selector-scale branch, the geometric part of the frozen
linearization price is already just a frozen-time slice of exceptional-set
measure localization.

## Proof

The pointwise estimate `(FEML.1)` is exactly `PTCL.F` at `t=\tau` together
with automatic collar support from `PTCL.H`. The support claim for
`\Theta_{J,\tau}^{diff}` follows from `(FEML.3)`, and the `L^{p/2}` bound comes
from applying `(FEML.4)` to the pointwise estimate `(FEML.2)`. ∎

## Interpretation

This note isolates the exact geometric frozen wall behind the sharper
linearization splice. The qualitative selector-good route says only:

```math
\texttt{TPS.4u}
\Longrightarrow
\texttt{DiffExc}.
\tag{FEML.7}
```

The frozen measurable-derivative route is stronger:

```math
\texttt{FrozenDiffMeasLoc}_{\mu,p/2},
\tag{FEML.8}
```

because the threshold depends on the frozen schedule
`\vartheta_{J,\tau}^{lin}(a)` and the packet asks for localization and
`L^{p/2}` control rather than fixed-threshold vanishing alone.

## Downstream Use

This note feeds the frozen linearization splice through the weighted price
packet:

```math
\texttt{FrozenDiffMeasLoc}_{\mu,p/2}
\Longrightarrow
\texttt{FrozenDiffWeightLoc}_{\mu,p/2}
\Longrightarrow
\texttt{FrozenDiffPriceLoc}_{\mu,p/2}
\Longrightarrow
\texttt{FrozenLinLoc}_{\mu,p},
\tag{FEML.9}
```

where the middle implication uses
`\texttt{FrozenTolLoc}_{\mu,p}` and the last price-to-linearization step is the
frozen slice of `PTCL.D`.
