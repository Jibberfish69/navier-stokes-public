# TerminalSkewLocalizationLedger.A attempt

## Status

Failed as an unconditional theorem.  The exact conditional factorization is preserved.

## Target

For a terminal same-fluid packet ledger, prove a localized signed-current identity

```math
\partial_tE_P+D_P
=
\sum_{P'}J(P'\to P)+L_P,
\qquad
J(P\to P')=-J(P'\to P),
```

with

```math
\sum_P\int |L_P|dt\le o_N(1)+Loss_{legal}.
```

## Required gates

The saturation-reduction surface identifies the exact sufficient gates:

```math
SkewSaturationAdmissibility.A
+
WeightedLiftedSkewDefectLegal.A
+
OffSaturationBoundaryPricing.A
\Longrightarrow
TerminalSkewLocalizationLedger.A.
```

## Gate status

`WeightedLiftedSkewDefectLegal.A` fails unconditionally because one-sided weights and lifted commutator defects are not legally summable without pairwise weight flattening or a signed lifted-commutator theorem.

`SkewSaturationAdmissibility.A` fails unconditionally because saturating a selected terminal family by all signed partners may create an unbounded incoming donor hull.

`OffSaturationBoundaryPricing.A` fails unconditionally because a missing signed partner can be a legal interior donor, not boundary flux or a legal loss.

## Consequence

The target identity cannot be installed.  Bare dyadic skewness remains available only before terminal localization:

```math
BareDyadicSkewCurrent.0.
```

The promotion

```math
BareDyadicSkewCurrent.0\Longrightarrow LocalizedSkewCurrent.A
```

is blocked by the three gates above.

## Conditional theorem

The correct theorem statement is:

```math
\boxed{
BareDyadicSkewCurrent.0
+SkewSaturationAdmissibility.A
+WeightedLiftedSkewDefectLegal.A
+OffSaturationBoundaryPricing.A
\Longrightarrow
LocalizedSkewCurrent.A.
}
```

and the internal ledger is:

```math
\boxed{
SkewSaturationAdmissibility.A
+WeightedLiftedSkewDefectLegal.A
+OffSaturationBoundaryPricing.A
\Longrightarrow
TerminalSkewLocalizationLedger.A.
}
```

## Verdict

```math
\boxed{TerminalSkewLocalizationLedger.A\text{ remains open.}}
```

The signed-current source-wall route cannot yet proceed to heat-action estimates as a theorem-grade route, because the localized terminal current has not been constructed.