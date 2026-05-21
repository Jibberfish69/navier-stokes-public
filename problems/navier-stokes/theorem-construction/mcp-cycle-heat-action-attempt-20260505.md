# CycleHeatAction.A attempt

## Status

Failed as an unconditional theorem from the currently installed inputs.  A conditional parabolic-current theorem is isolated.

## Target

For a terminal packet tree `\mathcal T`, prove

```math
\sum_{P\in\mathcal T}\int [\operatorname{div}_{\mathcal G}J(P)]_+dt
\le
Flux^+_{\partial\mathcal T}
+\theta\sum_{P\in\mathcal T}\int D_Pdt
+o_N(1)+Loss_{legal}.
```

The intended meaning is that terminal closed source-current cycles must pay heat action.

## Required inputs

This theorem requires at least:

```math
LocalizedSkewCurrent.A
```

and

```math
ParabolicNoFreeSink.A.
```

The first supplies a legitimate localized antisymmetric terminal source current.  The second prevents positive terminal divergence from being fed by a free internal donor sink.

## Current input status

`LocalizedSkewCurrent.A` is not installed, because `TerminalSkewLocalizationLedger.A` remains open.  The missing gates are:

```math
SkewSaturationAdmissibility.A,
\qquad
WeightedLiftedSkewDefectLegal.A,
\qquad
OffSaturationBoundaryPricing.A.
```

`ParabolicNoFreeSink.A` also remains open.  A legal internal negative donor can feed a terminal positive receiver by inviscid transfer without boundary flux or heat action.

## Direct obstruction

Even if a formal skew current `J` exists, the inequality is false for a general internal sink-source current.  With two internal packets `A,B`, set

```math
J(A\to B)=F>0.
```

Then

```math
\operatorname{div}J(B)=F,
\qquad
\operatorname{div}J(A)=-F.
```

The positive divergence sum is `F`, while boundary flux and heat action can be zero.  Thus positive divergence is not automatically a cycle heat-action cost; it can be a path from an internal sink to a terminal receiver.

## Conditional theorem

The correct conditional statement is:

```math
\boxed{
LocalizedSkewCurrent.A
+ParabolicNoFreeSink.A
+ParabolicEdgeResistance.A
\Longrightarrow CycleHeatAction.A.
}
```

Here `ParabolicEdgeResistance.A` asserts that any remaining genuine spacetime source-current cycle has a temporal/viscous leg whose action is controlled by the heat dissipation ledger.

Then:

```math
CycleHeatAction.A\Longrightarrow ScaleCriticalTreeCarleson.A
\Longrightarrow LocalPositiveSourceCarleson.A.
```

## Verdict

```math
\boxed{CycleHeatAction.A\text{ remains open.}}
```

The signed-current route currently stops at the preconditions to heat action.  The next true theorem target is the earlier hard gate:

```math
WeightedLiftedSkewDefectLegal.A
```

or, equivalently on the donor side,

```math
TerminalSignedSaturation.A / ParabolicNoFreeSink.A.
```

## End of current work order

All items in the requested signed-current frontier loop have been attempted.  The route has not discharged `ScaleCriticalTreeCarleson.A`; it has sharpened the obstruction to terminal signed localization plus no-free-sink / donor-depletion.