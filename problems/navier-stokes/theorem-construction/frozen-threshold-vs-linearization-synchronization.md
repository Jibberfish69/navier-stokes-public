# Frozen Threshold-Vs-Linearization Synchronization

## Status

Active theorem-facing upstream debt note.

Role: isolate the exact synchronized threshold theorem that upgrades the
qualitative selector-good `DiffExc` packet to the stronger frozen
measurable-derivative geometric wall on the standard selector-scale branch.
measurable-derivative geometric wall on the declared selector-scale branch.

## Purpose

Discharge the synchronized frozen geometric step:

```math
\boxed{
\texttt{SyncThreshSq}_{\tau}
\Longrightarrow
\texttt{SyncDiffQuad}_{\tau}.
}
\tag{FTLS.0}
```

This is the exact stronger transport-facing packet still missing above the
qualitative `TPS.4u => DiffExc` route.

## Exact Setup

Keep the declared selector-scale realization from
[ptc-linearization-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ptc-linearization-closure.md)
and the active-pair scale packet `(PTCL.3aj)`. Write the frozen thresholded
differentiability exceptional set at time `\tau` as

```math
E_{J,\varepsilon,\vartheta_{J,\tau}^{lin}(a)}^{diff}(\tau,a)
:=
\left\{
b:
|z_{ab}(\tau)-W\,\xi_{ab}|
>
\vartheta_{J,\tau}^{lin}(a)\,|\xi_{ab}|
\right\},
\tag{FTLS.0a}
```

and set

```math
\mu_{J,\tau}^{diff}(a)
:=
\mu_{J,\varepsilon}^{pair}
\bigl(E_{J,\varepsilon,\vartheta_{J,\tau}^{lin}(a)}^{diff}(\tau,a)\bigr).
\tag{FTLS.0b}
```

The frozen linearization error packet is

```math
\eta_{J,\tau}^{lin}(a)^2
:=
\int
|z_{ab}(\tau)-W\,\xi_{ab}|^2\,
d\mu_{J,\varepsilon}^{pair}(a,\tau;b).
\tag{FTLS.0c}
```

## Exact Target

### Theorem FTLS.A (threshold-vs-linearization synchronization implies the quadratic synchronized modulus)

Assume the declared selector-scale realization `(PTCL.3ai)` together with the
active-pair scale packet `(PTCL.3aj)`. Then there exists a selector-scale
lower constant `c_{\mathrm{sel}}>0` such that

```math
|\xi_{ab}|\ge c_{\mathrm{sel}}
\qquad\text{on the active pair family.}
\tag{FTLS.1}
```

Assume moreover that the frozen threshold schedule is quantitatively
synchronized with the frozen linearization error:

```math
\eta_{J,\tau}^{lin}(a)
\le
C_{\tau}^{th,sync}\,
\bigl(\vartheta_{J,\tau}^{lin}(a)\bigr)^2
\qquad\text{for every }a\in\pi_a(\mathcal G_J).
\tag{FTLS.2}
```

Then the synchronized quadratic modulus holds:

```math
\mu_{J,\tau}^{diff}(a)
\le
c_{\mathrm{sel}}^{-2}\,
\bigl(C_{\tau}^{th,sync}\bigr)^2\,
\bigl(\vartheta_{J,\tau}^{lin}(a)\bigr)^2.
\tag{FTLS.3}
```

Equivalently,

```math
\texttt{SyncThreshSq}_{\tau}
\Longrightarrow
\texttt{SyncDiffQuad}_{\tau}.
\tag{FTLS.4}
```

So one exact stronger realization of the frozen geometric wall is not a new
transport-measure theorem by itself. It is a square-threshold synchronization
law tying the chosen frozen tolerance schedule directly to the frozen
linearization error packet.

## Proof

On the exceptional set `(FTLS.0a)`, by definition,

```math
|z_{ab}(\tau)-W\,\xi_{ab}|^2
>
\bigl(\vartheta_{J,\tau}^{lin}(a)\bigr)^2\,|\xi_{ab}|^2
\ge
c_{\mathrm{sel}}^2\,
\bigl(\vartheta_{J,\tau}^{lin}(a)\bigr)^2
\tag{FTLS.5}
```

using `(FTLS.1)`. Integrating over the exceptional set gives

```math
c_{\mathrm{sel}}^2\,
\bigl(\vartheta_{J,\tau}^{lin}(a)\bigr)^2
\mu_{J,\tau}^{diff}(a)
\le
\int
|z_{ab}(\tau)-W\,\xi_{ab}|^2\,d\mu_{J,\varepsilon}^{pair}(a,\tau;b)
=
\eta_{J,\tau}^{lin}(a)^2.
\tag{FTLS.6}
```

Apply `(FTLS.2)` to the right-hand side to obtain `(FTLS.3)`, which is exactly
`(FTLS.4)`. ∎

## Interpretation

This note isolates the precise point where the frozen measurable-derivative
route becomes genuinely stronger than the qualitative branch-local
`DiffExc` theorem.

The qualitative declared-selector route remains:

```math
\texttt{TPS.4u}
\Longrightarrow
\texttt{DiffExc}
\Longrightarrow
\texttt{PTC-Lin.A}.
\tag{FTLS.7}
```

But the sharper frozen splice asks for more:

```math
\texttt{FrozenDiffMeasLoc}_{\mu,p/2}
\;+\;
\texttt{FrozenTolLoc}_{\mu,p},
\tag{FTLS.8}
```

with `\texttt{SyncThreshSq}_{\tau}` supplying one exact stronger route to the
geometric side through `\texttt{SyncDiffQuad}_{\tau}`.
At present there is no sharper standalone theorem-facing supplier exposed on
disk beneath `\texttt{SyncThreshSq}_{\tau}` itself, so this note is the honest
source-level stop line on the linearization side of the frozen splice.

## Downstream Use

Together with the auxiliary scalar packet
`\texttt{FrozenTolLoc}_{\mu,p}` from
[frozen-tolerance-localization-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/frozen-tolerance-localization-packet.md),
and the geometric packet
`\texttt{FrozenDiffMeasLoc}_{\mu,p/2}` from
[frozen-exceptional-set-measure-localization.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/frozen-exceptional-set-measure-localization.md),
this note feeds the stronger frozen geometric wall:

```math
\texttt{SyncThreshSq}_{\tau}
\Longrightarrow
\texttt{SyncDiffQuad}_{\tau}
\Longrightarrow
\texttt{FrozenDiffMeasLoc}_{\mu,p/2}
\quad
\text{after adjoining }
\texttt{FrozenTolLoc}_{\mu,p}.
\tag{FTLS.9}
```

That is the sharper frozen-schedule descendant of the linearization side
recorded in
[ptc-linearization-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ptc-linearization-closure.md)
and
[ptc-linearization-and-shape-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ptc-linearization-and-shape-closure.md).
No further purely mechanical extraction step is presently visible below this
surface in the installed exact-potential source notes.
