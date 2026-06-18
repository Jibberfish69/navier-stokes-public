# MPP CycleHeatAction.A Concrete Packet Cycle Statement

## Status

This note records the concrete packet-cycle version of the source-current
route using the signed current from `LocalizedSkewCurrent.A`.

It is not a discharge of the source wall. In fact, the unconditional
`CycleHeatAction.A` estimate below is false by scale-critical packet amplitude
testing; see
`mpp-cycle-heat-action-amplitude-obstruction-and-amp-correction-20260505.md`.
The surviving theorem is the conditional `CycleHeatAction.Amp`, under
`TerminalAmplitudeGain.A`.

## Input Ledger

Assume `LocalizedSkewCurrent.A` has been proved on a bounded-overlap same-fluid
terminal packet family `\mathcal T`:

```math
\frac{d}{dt}E_P+D_P
=
\operatorname{div}_{\mathcal G}J(P)+L_P,
```

where

```math
\operatorname{div}_{\mathcal G}J(P)=\sum_QJ(Q\to P),
```

```math
J(Q\to P)=-J(P\to Q),
```

and

```math
\sum_{P\in\mathcal T}\int |L_P|\,dt
\le
o_N(1)+Loss_{legal}.
```

Then the positive localized source is

```math
\left[
\frac{d}{dt}E_P+D_P-L_P
\right]_+
=
\left[\operatorname{div}_{\mathcal G}J(P)\right]_+.
```

## The Desired Estimate And Its Failure

For a finite terminal packet tree `\mathcal T`, the originally desired estimate
was:

```math
\boxed{
\sum_{P\in\mathcal T}
\int
\left[
\operatorname{div}_{\mathcal G}J(P)
\right]_+dt
\le
\int Flux_{\partial\mathcal T}^+
+
\theta\int\sum_{P\in\mathcal T}D_P\,dt
+
o_N(1)+Loss_{legal}.
}
```

This estimate is not true from finite energy, packet localization, skew current,
and heat dissipation alone. Localized triadic current is cubic in packet
amplitude, while heat dissipation is quadratic. A heat-scale packet with

```math
\|U_P\|_2=Kr_P^{1/2}
```

has

```math
\frac{\int |J|}{\int D}
\ge
c_{\mathrm{heat}}
\frac{K}{\nu},
```

so large `K` defeats any fixed heat fraction even though the packet energy
`\|U_P\|_2^2=K^2r_P` tends to zero as `r_P\to0`.

Here

```math
Flux_{\partial\mathcal T}^+
=
\sum_{\substack{Q\notin\mathcal T\\ P\in\mathcal T}}
[J(Q\to P)]_+
```

is the positive current entering the selected packet tree from outside.

## Why Closed Cycles Are Not Enough

A purely graph-theoretic cycle is not the whole story. A static closed
circulation has zero divergence. Positive divergence inside `\mathcal T` may
also be fed by a path from an internal sink to an internal source:

```math
J(A\to B)=F>0,
```

so that

```math
\operatorname{div}_{\mathcal G}J(B)=F,
\qquad
\operatorname{div}_{\mathcal G}J(A)=-F.
```

There is no boundary inflow and no closed cycle producing the positive source.
The donor packet `A` is the internal sink. Therefore heat action controls the
positive source only after one proves that internal sinks are not free.

The missing theorem is:

```math
\boxed{
ParabolicNoFreeSink.A:
\text{every internal source-current path feeding terminal positive divergence
is boundary-fed, heat-action charged, legal-loss charged, or an earlier
forbidden source-current arrival.}
}
```

This is the spacetime-current version of:

```math
TerminalSignedSaturation.A
```

or:

```math
SignedPositiveBalance.A.
```

## Corrected CycleHeatAction.Amp

With `ParabolicNoFreeSink.A`, the surviving current after first-pulse pruning
is decomposed into:

```math
J=J_{\partial}+J_{heat}+J_{cycle}+J_{legal}.
```

The components mean:

- `J_{\partial}` is boundary-fed current;
- `J_{legal}` is paid by the localized ledger `L_P`;
- `J_{heat}` crosses a parabolic heat edge and is charged to packet
  dissipation;
- `J_{cycle}` is a closed parabolic source-current cycle after internal
  sink-to-source paths have been saturated or removed.

The valid theorem target is conditional on the scale-critical amplitude cap:

```math
\boxed{
TerminalAmplitudeGain.A:
\|U_P\|_2
\le
\varepsilon_N\nu r_P^{1/2},
\qquad
\varepsilon_N\to0.
}
```

Under this cap, the heat-action target becomes:

```math
\boxed{
CycleHeatAction.Amp:
\operatorname{Circ}_{terminal}(\mathcal T)
\le
C\varepsilon_N\sum_{P\in\mathcal T}\int D_P\,dt
+
o_N(1)+Loss_{legal}.
}
```

More explicitly, every retained internal closed parabolic source-current cycle
`C` satisfies

```math
\boxed{
\operatorname{Circ}(C)
\le
C\varepsilon_N\sum_{P\in C}\int D_P\,dt
+
o_N(1)+Loss_{legal}(C),
}
```

after boundary-fed, legal-loss, and earlier-arrival branches are removed by
`ParabolicNoFreeSink.A` and first-pulse pruning.

## Three-Shell Test

In one transported cylinder with shells

```math
j_1<j_2<j_3,
```

the dangerous loop is

```math
j_1\to j_2,
\qquad
j_2\to j_3,
\qquad
j_3\to j_1.
```

The desired three-shell cycle inequality is:

```math
|J(j_1\to j_2)|
+
|J(j_2\to j_3)|
+
|J(j_3\to j_1)|
\le
\theta D_{j_3}
+
Flux_{lower}^+
+
Loss_{legal}.
```

This is not a consequence of skewness alone. It requires the scale-critical
amplitude gain, or an equivalent parabolic edge-resistance / cycle-coercivity
law whose remaining amplitude remainder has been independently controlled:

```math
\boxed{
ParabolicCycleCoercivity.A:
\text{a retained legal source-current cycle crossing the high shell has a
heat-scale action cost controlled by the high-shell dissipation.}
}
```

Equivalently, one may use a legal edge-resistance theorem:

```math
\boxed{
ParabolicEdgeResistance.A:
\text{legal same-fluid nonlinear transfer edges have heat-scale resistance.}
}
```

The current route now factors as:

```math
TerminalSkewLocalizationLedger.A
+
TerminalAmplitudeGain.A
+
ParabolicNoFreeSink.A
+
ParabolicCycleCoercivity.A
+
FirstCurrentPruning.A
\Longrightarrow
CycleHeatAction.A.
```

Then one gets the conditional cycle estimate. Without `TerminalAmplitudeGain.A`,
this route does not lower the source wall.

The hoped-for downstream spend would be:

```math
LocalizedSkewCurrent.A
+
CycleHeatAction.Amp
\Longrightarrow
ScaleCriticalTreeCarleson.A
\Longrightarrow
LocalPositiveSourceCarleson.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A.
```

## Honest Frontier

This packet-current formulation is valuable because it preserves signed
Navier--Stokes transfer before taking positive parts. It does not by itself
solve the source wall.

The live hard gates are:

```math
TerminalSkewLocalizationLedger.A
```

and

```math
TerminalAmplitudeGain.A
```

with `ParabolicNoFreeSink.A+ParabolicCycleCoercivity.A` still needed for the
signed-current graph structure after the amplitude cap is available.
`ParabolicEdgeResistance.A` is available only if its remaining scale-critical
flux-amplitude term is independently controlled.
