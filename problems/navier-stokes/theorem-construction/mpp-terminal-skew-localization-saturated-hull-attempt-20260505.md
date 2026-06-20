# MPP TerminalSkewLocalizationLedger.A Saturated-Hull Attempt

## Status

Rehydrated solve attempt on the lowest missing gate in the preferred signed
parabolic source-current route.

The current route overlay factors the preferred direct source-wall attack as

```math
TerminalSkewLocalizationLedger.A
+
ParabolicCycleCoercivity.A
+
FirstCurrentPruning.A
\Longrightarrow
CycleHeatAction.A
\Longrightarrow
ScaleCriticalTreeCarleson.A.
```

This note tests whether `TerminalSkewLocalizationLedger.A` can be obtained by
replacing the selected terminal packet family by its saturated same-fluid
signed-current hull.

Verdict:

```math
\boxed{
\text{the saturated-hull repair does not install }
TerminalSkewLocalizationLedger.A.
}
```

It installs only a weaker bare-current bookkeeping fact on finite unweighted
truncations.  The live weighted/lifted terminal source object still leaves an
unpriced defect, and forcing closure under all signed partners either destroys
the terminal bounded-overlap consumer family or reintroduces exactly
`TerminalSignedSaturation.A`.

## Tested Repair

Start with a bounded-overlap same-fluid terminal family
`\mathcal F_N`.  On a finite dyadic/time truncation define its formal signed
closure by

```math
\operatorname{Sat}_0(\mathcal F_N)=\mathcal F_N,
```

and

```math
\operatorname{Sat}_{q+1}(\mathcal F_N)
=
\operatorname{Sat}_{q}(\mathcal F_N)
\cup
\{\text{all packet endpoints of the bare algebraic signed counter-edges of edges
meeting }\operatorname{Sat}_{q}(\mathcal F_N)\}.
```

Let

```math
\operatorname{Sat}(\mathcal F_N)
=
\bigcup_q\operatorname{Sat}_{q}(\mathcal F_N)
```

inside the finite truncation.

For the bare unweighted dyadic exchange this gives a closed interaction graph.
Hence the internal advective source vector is zero-sum and can be represented
as an antisymmetric edge divergence:

```math
\partial_t E_P+D_P
=
\sum_{P'}J(P'\to P)+L_P,
\qquad
J(P\to P')=-J(P'\to P),
```

where `L_P` is only a remainder ledger.  It consists of the pressure/projection
localization, packet-cutoff, collar, and finite-truncation boundary terms, and
the hull argument can spend it only under a legal-loss estimate of the form

```math
\sum_{P\in\operatorname{Sat}(\mathcal F_N)}
\int |L_P(t)|\,dt
\le
Loss_{legal}+o_N(1).
```

This is the strongest honest output of the hull construction:

```math
\boxed{
BareDyadicSaturatedHull.0:
\text{finite unweighted saturated dyadic interaction hulls carry a closed
antisymmetric current ledger.}
}
```

## Why This Is Not The Live Theorem

`TerminalSkewLocalizationLedger.A` is stronger than
`BareDyadicSaturatedHull.0`.  It must hold on the terminal localized source
surface actually consumed by the source-wall route, after:

- one-sided tail weights;
- lifted commutator replacement;
- packet cutoff and collar truncation;
- pressure/projection localization;
- terminal same-fluid selection;
- positive-source consumer restriction.

The saturated hull repairs only the easiest defect: a missing algebraic
counter-edge endpoint caused by restricting the packet family too early.  It
does not repair the two defects that survive on the live terminal record.

### 1. Weighted/Lifted Exchange Is Not Antisymmetric On The Hull

Even if both endpoints of an algebraic counter-edge are included, the live weighted
source contribution has the form

```math
W(P,P')I(P\to P')+W(P',P)I(P'\to P),
```

not

```math
I(P\to P')+I(P'\to P)=0.
```

The coefficient mismatch is a real weighted lifted defect:

```math
\mathfrak D_{wgt/lift}(P,P')
:=
\bigl(W(P,P')-W(P',P)\bigr)I(P\to P')
+R^{lift}_{P,P'}.
```

Current installed inputs do not prove

```math
\sum_{P\in\operatorname{Sat}(\mathcal F_N)}
\int |\mathfrak D_{wgt/lift}(P,P')|\,dt
\le
o_N(1)+Loss_{legal}.
```

That missing estimate is the signed form of the same native positive
source-control wall: it is the old `SignedWeightedLiftedBalance.A` /
`SignedPositiveBalance.A` obstruction, not a bookkeeping error.

### 2. Full Saturation Loses The Terminal Consumer Geometry

If the hull is forced to contain every corresponding signed partner, it may propagate
through donor packets, lower-scale parents, and same-time internal sinks that
were not selected as terminal bad packets.  On finite truncations this is a
finite set, but it is not the original bounded-overlap terminal consumer family
with legal off-family loss.

There are then two choices.

First, keep the original terminal family.  Then counter-edges can leave the
usable ledger, and the missing statement is exactly

```math
TerminalSignedSaturation.A:
\text{every selected positive terminal source edge keeps its negative partner
inside the same usable ledger or pays installed legal loss.}
```

Second, enlarge to the full saturated hull.  Then the source-wall target has
been changed: the hull includes internal sink-to-source paths whose incoming
negative side is not paid by heat, boundary, or legal losses.  The no-free-sink
obstruction reappears as

```math
ParabolicNoFreeSink.A.
```

Thus saturation does not remove the wall.  It only moves the unpaid object from
"lost signed partner" to "unpriced internal sink feeding the saturated hull."

## Sharpest Valid Conditional Lemma

The following theorem is valid and is the strongest non-circular output of this
attempt.

```math
\boxed{
BareDyadicSaturatedHull.0
+
WeightedLiftedDefectCarleson.A
+
TerminalSignedSaturation.A
\Longrightarrow
TerminalSkewLocalizationLedger.A.
}
```

Here

```math
WeightedLiftedDefectCarleson.A:
\quad
\sum_{\operatorname{Sat}(\mathcal F_N)}
\int |\mathfrak D_{wgt/lift}|\,dt
\le
o_N(1)+Loss_{legal},
```

and `TerminalSignedSaturation.A` pays signed partners that leave the original
terminal consumer ledger.

Proof.  On a finite truncation, use `BareDyadicSaturatedHull.0` to write the
unweighted advective exchange as an antisymmetric edge divergence.  Move the
weighted/lifted mismatch into the ledger and use
`WeightedLiftedDefectCarleson.A` to pay it.  For each selected terminal edge
whose counter-edge exits the usable terminal family, apply
`TerminalSignedSaturation.A` to charge it to installed legal loss or return it
to the same saturated same-fluid ledger.  The remaining internal terms form the
required antisymmetric current `J`, and the total ledger is
`o_N(1)+Loss_{legal}`.  Remove the finite truncation by monotone convergence
and bounded overlap of the selected terminal family.

This is conditional only: both `WeightedLiftedDefectCarleson.A` and
`TerminalSignedSaturation.A` are uninstalled source-control inputs.

## Consequence

The rehydrated conclusion is:

```math
\boxed{
TerminalSkewLocalizationLedger.A
\text{ is not lower than the source wall unless a new signed
weighted/lifted balance theorem is supplied.}
}
```

The preferred route should therefore be read as:

```math
BareDyadicSkewCurrent.0
+
\left[
TerminalSignedSaturation.A
\ \text{and weighted/lifted defect control}
\right]
+
ParabolicCycleCoercivity.A
+
FirstCurrentPruning.A
\Longrightarrow
CycleHeatAction.A
\Longrightarrow
ScaleCriticalTreeCarleson.A.
```

If no new signed weighted/lifted balance is found, the parabolic-current route
collapses back to the same irreducible direct wall:

```math
\boxed{
ScaleCriticalTreeCarleson.A.
}
```
