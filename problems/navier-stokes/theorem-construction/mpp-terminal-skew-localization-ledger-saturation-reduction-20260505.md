# MPP TerminalSkewLocalizationLedger.A Saturation Reduction

## Status

This note executes the first missing step in the signed-current source-wall
route.

The current source-current path is:

```math
BareDyadicSkewCurrent.0
+
TerminalSkewLocalizationLedger.A
\Longrightarrow
LocalizedSkewCurrent.A,
```

followed by:

```math
LocalizedSkewCurrent.A
+
CycleHeatAction.A
\Longrightarrow
ScaleCriticalTreeCarleson.A.
```

The theorem-grade audit shows that `LocalizedSkewCurrent.A` is not installed by
bare dyadic skewness alone.  The missing promotion is terminal-local: after
one-sided source weights, cutoffs, lifted remainders, same-fluid restriction,
and terminal positive selection, the negative signed partner of a selected
positive edge may have been removed from the usable ledger.

This note gives the correct conditional reduction.  It does not close the
source wall.  It isolates the exact first gates needed before `CycleHeatAction.A`
can be used honestly.

## Saturated Terminal Ledger

Let `\mathcal F_N` be the bounded-overlap same-fluid terminal packet family.
Let `\mathcal E^{bare}` denote the unweighted dyadic triadic exchange graph
on which the advective exchange is antisymmetric.

For every selected terminal source edge, let `\iota(e)` be its formal signed
counter-edge in the bare exchange graph.  Define the saturated ledger
`\mathcal F_N^\sharp` to be the smallest same-fluid packet ledger containing
`\mathcal F_N` and all packets needed to realize:

```math
e\in\mathcal E^{bare}
\quad\Longrightarrow\quad
\iota(e)\in\mathcal E^{bare}
```

for every selected edge whose counter-edge is not explicitly routed to a legal
boundary, stopped residual, collar, pressure, cutoff, or off-family loss.

The point of saturation is to avoid demanding that the original bad family
already contain its signed partners.  The right question is whether adding the
partners stays legal and bounded-overlap.

## Gates

### Gate 1: `SkewSaturationAdmissibility.A`

The saturated ledger remains admissible:

```math
\mathcal F_N^\sharp
\quad\text{is a bounded-overlap same-fluid terminal ledger,}
```

and every added packet either belongs to the saturated same-fluid family or is
charged to the installed legal-loss ledger:

```math
\sum_{P\in\mathcal F_N^\sharp\setminus \mathcal F_N}
\int |L_P^{sat}|
\le
o_N(1)+Loss_{legal}.
```

Finite dyadic banding is not enough by itself.  The admissibility theorem must
also control physical packet multiplicity, terminal-window spill, and same-fluid
collar enlargement.

### Gate 2: `WeightedLiftedSkewDefectLegal.A`

After one-sided tail weights, lifted commutator replacement, Leray/projection
localization, and cutoff insertion, the localized pre-Cauchy source admits:

```math
Source_P^{loc}
=
\sum_{P'}J(P'\to P)
+
L_P^{w/lift},
```

with:

```math
J(P\to P')=-J(P'\to P),
```

and:

```math
\sum_{P\in\mathcal F_N^\sharp}
\int |L_P^{w/lift}|
\le
o_N(1)+Loss_{legal}.
```

This is where the one-sided weight mismatch and lifted commutator signs must be
paid.  If they are estimated by absolute values, the route collapses back to
`ScaleCriticalTreeCarleson.A`.

### Gate 3: `OffSaturationBoundaryPricing.A`

Every signed partner that cannot be included in `\mathcal F_N^\sharp` is an
actual boundary/stopped/off-family event:

```math
Partner(e)\notin\mathcal F_N^\sharp
\Longrightarrow
e\text{ contributes only to }Flux_{\partial}^{+}
\text{ or }Loss_{legal}.
```

This gate is the precise replacement for the overstrong phrase "the negative
partner stays in the same terminal family."

## Conditional Theorem `TSLL.A`

Assume:

```math
SkewSaturationAdmissibility.A,
\qquad
WeightedLiftedSkewDefectLegal.A,
\qquad
OffSaturationBoundaryPricing.A.
```

Then `TerminalSkewLocalizationLedger.A` holds on the saturated ledger
`\mathcal F_N^\sharp`.  Consequently:

```math
BareDyadicSkewCurrent.0
+
TerminalSkewLocalizationLedger.A
\Longrightarrow
LocalizedSkewCurrent.A.
```

### Proof

Start from the bare dyadic exchange identity on the closed triadic graph:

```math
BareDyadicSkewCurrent.0:
\quad
Source^{bare}_P
=
\sum_{P'}J^{bare}(P'\to P),
\qquad
J^{bare}(P\to P')=-J^{bare}(P'\to P).
```

Restricting this identity directly to `\mathcal F_N` is not legal, because
the counter-edge of a selected positive source edge can leave the selected
terminal family.

Instead pass to the saturated ledger `\mathcal F_N^\sharp`.  By
`SkewSaturationAdmissibility.A`, this ledger remains bounded-overlap and
same-fluid, up to legal losses.  By construction, every selected signed
counter-edge is either present in the saturated ledger or is priced by
`OffSaturationBoundaryPricing.A`.

Now replace the bare exchange by the actual localized pre-Cauchy source object.
`WeightedLiftedSkewDefectLegal.A` says the difference between the localized
weighted/lifted source and the antisymmetric edge current is a legal ledger.
Thus for every `P\in\mathcal F_N^\sharp`,

```math
\partial_t E_P+D_P
=
\sum_{P'}J(P'\to P)+L_P,
\qquad
J(P\to P')=-J(P'\to P),
```

and:

```math
\sum_{P\in\mathcal F_N^\sharp}\int |L_P|
\le
o_N(1)+Loss_{legal}.
```

This is `TerminalSkewLocalizationLedger.A`, hence `LocalizedSkewCurrent.A`.

## What Remains Open

The first signed-current obstruction is no longer well-described as
"prove `CycleHeatAction.A`" by itself.  Before heat action can act on source
cycles, the route needs the localized skew-current ledger:

```math
\boxed{
TerminalSkewLocalizationLedger.A
}
```

and this note reduces that ledger to:

```math
\boxed{
SkewSaturationAdmissibility.A
+
WeightedLiftedSkewDefectLegal.A
+
OffSaturationBoundaryPricing.A.
}
```

The likely hard gate is `WeightedLiftedSkewDefectLegal.A`: if the
one-sided-weight and lifted-commutator defects are not paid as legal losses,
then the signed route loses its advantage and returns to the native positive
source wall:

```math
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
NativeTrilinearDefectDomination.A.
```

Thus the corrected signed-current route is:

```math
SkewSaturationAdmissibility.A
+
WeightedLiftedSkewDefectLegal.A
+
OffSaturationBoundaryPricing.A
\Longrightarrow
LocalizedSkewCurrent.A
```

then:

```math
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

Only after both stages are installed may the route claim:

```math
CycleHeatAction.A
\Longrightarrow
ScaleCriticalTreeCarleson.A.
```
