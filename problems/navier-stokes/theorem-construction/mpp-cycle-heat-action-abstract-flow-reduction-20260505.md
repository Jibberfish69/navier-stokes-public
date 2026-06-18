# CycleHeatAction Abstract Flow Reduction

## Status

Rehydrated think-again note for the current preferred source-wall route.

The live direct target is no longer best read as the native alignment face.
The current live edge selects the signed parabolic source-current route:

```math
ParabolicSourceCurrent.A
:=
LocalizedSkewCurrent.A+CycleHeatAction.A.
```

`LocalizedSkewCurrent.A` is the algebraic signed-current ledger.  The hard
theorem is:

```math
CycleHeatAction.A:
\quad
\text{terminal closed source-current cycles pay viscous heat action.}
```

This note closes the abstract finite graph/flow part and isolates the exact
PDE gates still required.

## Time-Expanded Packet Graph

Fix a finite truncation of a same-fluid terminal packet family.  The
time-expanded vertices are:

```math
v=(P,n),
```

where `P` is a packet and `n` indexes a heat-scale time slab for that packet.

There are three edge types:

```math
\mathcal E_{space},
\qquad
\mathcal E_{time},
\qquad
\mathcal E_{bdry}.
```

Spatial edges carry signed packet exchange.  Time edges carry stored packet
energy.  Boundary edges carry legal exterior or stopped residual inflow.

Let `\Sigma` be the terminal active vertex set where positive source divergence
is counted.

## Input Gates

### Gate 1: signed-current ledger

Assume `LocalizedSkewCurrent.A` on the finite truncation:

```math
\partial_tE_P+D_P
=
\operatorname{div}_{\mathcal G}J(P)+L_P,
```

with

```math
\sum_P\int |L_P|
\le
o_N(1)+Loss_{legal}.
```

### Gate 2: current rectification

Assume the signed source-current ledger admits a rectified nonnegative
time-expanded flow `F` whose value on terminal active vertices dominates the
positive divergence:

```math
\sum_{P\in\mathcal T}
\int
\left[\operatorname{div}_{\mathcal G}J(P)\right]_+dt
\le
Val_\Sigma(F)+Loss_{legal}+o_N(1).
\tag{CR}
```

Here `Val_\Sigma(F)` is the total amount of rectified flow arriving at
`\Sigma`.

This is not automatic from antisymmetry alone.  It is the first PDE-sensitive
gate: rectification must not replace signed exchange by an uncontrolled total
variation norm.

### Gate 3: first-current pruning

Assume the terminal tree is selected first with respect to the rectified
source-current arrival.  Then every positive-flow path reaching `\Sigma` is
either boundary-fed, legal-loss-fed, or belongs to an internal spacetime cycle:

```math
Val_\Sigma(F)
\le
Flux^+_{\partial\mathcal T}
+
Val_\Sigma(F_{cycle})
+
Loss_{legal}
+
o_N(1).
\tag{FP}
```

The important correction is that firstness must be applied to source-current
arrival, not merely to donor square reserve or parent packet ancestry.

### Gate 4: parabolic dwell / heat action

Assume every closed internal spacetime cycle carrying mass into `\Sigma` has
heat action at least a fixed fraction of its carried mass:

```math
Val_\Sigma(F_{cycle})
\le
c_0^{-1}Action_{heat}(F_{cycle})
+
Loss_{legal}
+
o_N(1).
\tag{DW}
```

This is the real hard PDE gate.  It says source current cannot return to a
terminal active packet through an instantaneous spatial circulation; it must
dwell on heat-scale temporal edges and lose viscous action.

### Gate 5: heat-edge budget

Assume the heat action of the rectified cycle flow is paid by the packet
dissipation:

```math
Action_{heat}(F_{cycle})
\le
C_{heat}\sum_{P\in\mathcal T}\int D_P\,dt
+
Loss_{legal}
+
o_N(1).
\tag{HB}
```

## Theorem `CycleHeatAction.Abstract`

Under `(CR)`, `(FP)`, `(DW)`, and `(HB)`,

```math
\boxed{
\sum_{P\in\mathcal T}
\int
\left[\operatorname{div}_{\mathcal G}J(P)\right]_+dt
\le
Flux^+_{\partial\mathcal T}
+
C_0\sum_{P\in\mathcal T}\int D_P\,dt
+
Loss_{legal}
+
o_N(1).
}
\tag{CHA.abs}
```

If the constants are normalized so that the dissipation coefficient is
absorbable in the local source budget, `(CHA.abs)` is exactly
`CycleHeatAction.A`.

## Proof

Start from rectification `(CR)`:

```math
PositiveSource(\mathcal T)
\le
Val_\Sigma(F)+Loss_{legal}+o_N(1).
```

Apply first-current pruning `(FP)`:

```math
Val_\Sigma(F)
\le
Flux^+_{\partial\mathcal T}
+
Val_\Sigma(F_{cycle})
+
Loss_{legal}
+
o_N(1).
```

Apply parabolic dwell `(DW)`:

```math
Val_\Sigma(F_{cycle})
\le
c_0^{-1}Action_{heat}(F_{cycle})
+
Loss_{legal}
+
o_N(1).
```

Apply the heat-edge budget `(HB)`:

```math
Action_{heat}(F_{cycle})
\le
C_{heat}\sum_{P\in\mathcal T}\int D_P
+
Loss_{legal}
+
o_N(1).
```

Combining gives `(CHA.abs)` with `C_0=c_0^{-1}C_{heat}` after absorbing legal
loss ledgers.  This proves the abstract flow reduction.

## Consequence For The Source Wall

Together with `LocalizedSkewCurrent.A`, the abstract theorem gives the
conditional chain:

```math
LocalizedSkewCurrent.A
+
CurrentRectification.A
+
FirstCurrentPruning.A
+
ParabolicDwell.A
+
HeatEdgeBudget.A
\Longrightarrow
CycleHeatAction.A.
```

Then:

```math
CycleHeatAction.A
\Longrightarrow
LocalPositiveSourceCarleson.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A
\Longrightarrow
GoodScaleNonCollapse.A.
```

## Remaining PDE Gates

This reduction shows exactly where the next theorem work must land.

```math
\boxed{CurrentRectification.A}
```

The signed source current must be rectified into a nonnegative time-expanded
flow without spending an uncontrolled total-variation norm.  A naive Hahn
decomposition of `J` is not enough if it destroys the skew-exchange
cancellation.

```math
\boxed{FirstCurrentPruning.A}
```

The first-pulse selection has to be upgraded from donor-square reserve
firstness to rectified source-current arrival firstness.

```math
\boxed{ParabolicDwell.A}
```

Every internal cycle that reaches the terminal active set must traverse
heat-scale temporal edges with a uniform action lower bound.  This is the
heart of `CycleHeatAction.A`.

```math
\boxed{HeatEdgeBudget.A}
```

The action counted on those temporal edges must be bounded by the same packet
dissipation ledger already present in the local source budget.

## Rethink Verdict

The prior local conclusion

```math
\text{attack AlignmentDecorrel.A first}
```

is too narrow after rehydration.  Alignment remains a native zero-loss face,
but the live broader route is:

```math
\boxed{
ParabolicSourceCurrent.A
=
LocalizedSkewCurrent.A+CycleHeatAction.A.
}
```

The abstract flow part closes conditionally through the displayed reduction
`ParabolicSourceCurrent.A =
LocalizedSkewCurrent.A+CycleHeatAction.A`.  Later theorem-grade audits sharpen
the PDE gates further:

```math
LocalizedSkewCurrent.A
\text{ itself requires }
TerminalSkewLocalizationLedger.A
\text{ / }
TerminalSignedSaturation.A,
```

and direct attempts on `CycleHeatAction.A` show that positive terminal
divergence can be fed by an internal source-current sink unless

```math
ParabolicNoFreeSink.A
```

is supplied.  The three-shell test then sharpens the closed-cycle heat gate to

```math
ParabolicEdgeResistance.A,
```

but the direct edge-resistance attempt reduces its missing coefficient to the
active-square reserve displayed below:

```math
CriticalFluxAmplitudeSmall.A
\equiv_{\mathrm{route}}
ScaleCriticalTreeCarleson.A.
```

Therefore this note should be read as an abstract conditional skeleton, not as
the current lowest proof-facing gate.  The live direct wall remains

```math
\boxed{
ScaleCriticalTreeCarleson.A
}
```

or the independent Zeno rigid-class pair.
