# WeightedLiftedSkewDefectLegal.A attempt

## Status

Failed as an unconditional theorem from the currently installed inputs.  A conditional replacement is isolated.

## Target

For a saturated same-fluid terminal packet ledger `\mathcal F_N^\sharp`, prove that the localized pre-Cauchy source can be written as

```math
Source_P^{loc}
=
\sum_{P'}J(P'\to P)+L_P^{w/lift},
\qquad
J(P\to P')=-J(P'\to P),
```

with

```math
\sum_{P\in\mathcal F_N^\sharp}\int |L_P^{w/lift}|dt
\le o_N(1)+Loss_{legal}.
```

The defects to absorb are one-sided tail weights, lifted commutator replacement, Leray/projection localization, packet cutoffs, and terminal same-fluid selection.

## Bare identity

Before localization and one-sided extraction, the incompressible dyadic advective exchange is skew:

```math
Source_P^{bare}=
\sum_{P'}J^{bare}(P'\to P),
\qquad
J^{bare}(P\to P')=-J^{bare}(P'\to P).
```

This supplies only `BareDyadicSkewCurrent.0`.

## Weighted/lifted comparison

The required comparison is

```math
Source_P^{loc}-Source_P^{bare}
=
Def_P^{weight}+Def_P^{lift}+Def_P^{proj}+Def_P^{cut}+Def_P^{term}.
```

To prove the target, each term must be legally summable:

```math
\sum_P\int |Def_P^\bullet|dt\le o_N(1)+Loss_{legal}.
```

Projection and ordinary cutoff terms can be routed into the existing pressure/cutoff ledgers when measured in the projected affine packet frame.  The obstruction is the pair

```math
Def_P^{weight}+Def_P^{lift}.
```

One-sided source-wall weights produce a pair defect of the form

```math
(W_P-W_{P'})J^{bare}(P'\to P),
```

while lifted commutator replacement changes the bare skew exchange into a localized remainder whose sign is no longer paired exactly.  Bounding these terms by absolute value gives

```math
\sum_{P,P'}\int |W_P-W_{P'}|\,|J^{bare}(P'\to P)|dt,
```

which is the positive source / active-square reserve already identified as `ScaleCriticalTreeCarleson.A`.

## Failure mode

The installed inputs do not provide a terminal pairwise flattening theorem strong enough to make

```math
W_P-W_{P'}=o_N(1)
```

on every legal source edge in the saturated packet graph.  They also do not provide a signed lifted-commutator theorem preserving exact antisymmetry after terminal localization.  Therefore the defect cannot be routed to legal losses without reintroducing the source wall.

## Conditional replacement

The correct conditional statement is

```math
PairWeightFlattening.A
+LiftedSkewCommutator.A
+ProjectedCutoffLedger.A
\Longrightarrow WeightedLiftedSkewDefectLegal.A.
```

where:

```math
PairWeightFlattening.A:
\quad
\sum_{e=(P,P')}\int |W_P-W_{P'}|\,|J_e|dt
\le o_N(1)+Loss_{legal},
```

and:

```math
LiftedSkewCommutator.A:
\quad
\text{the lifted localized source remainder admits an antisymmetric edge form
modulo legal commutator losses.}
```

## Verdict

```math
\boxed{WeightedLiftedSkewDefectLegal.A\text{ remains open.}}
```

The signed-current route cannot yet promote `BareDyadicSkewCurrent.0` to a terminal localized skew-current ledger.  The next viable subtarget is `PairWeightFlattening.A` or `LiftedSkewCommutator.A`.