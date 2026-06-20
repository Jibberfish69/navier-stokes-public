# Mode / Native Carrier Family Identification Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `ModeNativeCarrierFamilyIdentification.A` is not installed
by the current Door 2 gauge, mode-test, or selector-stability inputs.

The theorem is a score-comparison bridge.  It must prove that the packet score
used to select the modulation-mode family is the same score, up to legal error,
as the packet score used by the native positive pre-Cauchy source carrier.  The
existing inputs can stabilize each selector after it is chosen; they do not prove
that the two selectors use the same score.

## 1. Target under test

For each packet \(P\), define the native positive source score

```math
s_m^{src}(P)
:=
\int_{Q(P)}
\left[
\mathcal N^{loc}_{preCauchy}(u;P)
\right]_+\,dxdt.
\tag{MNFI.1}
```

Let \(s_{m,i}^{mode}(P)\) be the score by which the \(i\)-th mode test selects
its packet family.  In the source-resolved case this score has the form

```math
s_{m,i}^{mode}(P)
:=
\left[
\int_{Q(P)}
\mathcal N^{loc}_{preCauchy}(u;P)\psi_i(P)\,dxdt
\right]_+,
\tag{MNFI.2}
```

while a canonical gauge construction may define it from a profile functional
instead.  The family-identification target is

```math
\boxed{
\sum_{P\in F_m^{src}\triangle F_{m,i}^{mode}}
\left(
s_m^{src}(P)+s_{m,i}^{mode}(P)
\right)
\le
\operatorname{Legal}^{id}_{m,i}+o_m(1).
}
\tag{MNFI.3}
```

Here \(F_m^{src}\) is the native selected source family, \(F_{m,i}^{mode}\) is
the mode-selected family, and \(\triangle\) denotes symmetric difference.

## 2. Score comparison that would prove it

A sufficient score-level bridge is:

```math
\boxed{
\left|
s_{m,i}^{mode}(P)
-
a_{m,i}s_m^{src}(P)
\right|
\le
\varepsilon_m s_m^{src}(P)+b_{m,i}(P),
\qquad
a_{m,i}\ge a_0>0,
}
\tag{MNFI.4}
```

with

```math
\varepsilon_m\to0,
\qquad
\sum_P b_{m,i}(P)\le \operatorname{Legal}^{score}_{m,i}+o_m(1).
\tag{MNFI.5}
```

Together with a strict selected-source gap

```math
s_m^{src}(P_\ast)
-
\sup_{P\notin F_m^{src}}s_m^{src}(P)
\ge
c_{sel}W_m
\tag{MNFI.6}
```

and a legal charge for packets whose scores lie inside the gap margin, `(MNFI.4)`
forces `(MNFI.3)`.  This is the exact content needed by
`SameFamilyModeSelectorCompatibility.A`.

## 3. Why current inputs do not prove the comparison

`ModeTestCompatibility.A` makes a chosen mode test legal on a chosen family.  It
does not compare \(s_{m,i}^{mode}\) with \(s_m^{src}\).

`CanonicalGaugeCoercivity.A`, even when supplied, controls the motion of gauge
parameters after a canonical representative has been fixed.  It does not prove
that the canonical representative was selected by the native positive source
score.

`SelectorStability.A` prevents unstable switching for a fixed score.  It does
not identify two different scores.

`SingleBubbleSeparation.A` prevents two comparable bubbles for a fixed weight.
It does not identify the mode weight with the native source weight.

So the missing theorem is not another stability clause.  It is the score
comparison `(MNFI.4)` or the family symmetric-difference estimate `(MNFI.3)`.

## 4. Countermodel: two strict scores with different winners

Take two disjoint packets \(P_1,P_2\).  Set

```math
s_m^{src}(P_1)=1,
\qquad
s_m^{src}(P_2)=0,
\tag{MNFI.7}
```

and

```math
s_{m,i}^{mode}(P_1)=0,
\qquad
s_{m,i}^{mode}(P_2)=1.
\tag{MNFI.8}
```

Both selectors are strict and stable.  The native source selector chooses
\(P_1\), while the mode selector chooses \(P_2\):

```math
F_m^{src}=\{P_1\},
\qquad
F_{m,i}^{mode}=\{P_2\}.
\tag{MNFI.9}
```

The symmetric-difference charge is

```math
\sum_{P\in F_m^{src}\triangle F_{m,i}^{mode}}
\left(
s_m^{src}(P)+s_{m,i}^{mode}(P)
\right)
=2.
\tag{MNFI.10}
```

No contradiction follows from finite source mass, bounded overlap, legal
mode-test admissibility, canonical gauge selection, or one-selector stability.
Those inputs do not couple the two scores.

## 5. Nodal and sign obstruction to score comparison

Even when the mode score is defined by the source integral `(MNFI.2)`,
comparison with `(MNFI.1)` fails unless the mode test has retained sign on the
source carrier.

If

```math
\psi_i(P_1)=0,
\qquad
s_m^{src}(P_1)=1,
\tag{MNFI.11}
```

then

```math
s_{m,i}^{mode}(P_1)=0
\tag{MNFI.12}
```

while the native positive source score is nonzero.  This is exactly the
nodal-zone loss already isolated in `ModeSignCoherentShadowLocalization.A`.

If

```math
\psi_i(P_1)=-1,
\qquad
\mathcal N^{loc}_{preCauchy}(u;P_1)<0,
\tag{MNFI.13}
```

then the signed mode contribution can be positive while the native positive
source score on that packet is zero.  This is the negative-mode sink problem
already exposed by `SourceResolvedNativeModeReadout.A`.

## 6. Exact reduction

At current input strength,

```math
\boxed{
\text{ModeNativeCarrierFamilyIdentification.A}
\Leftarrow
\text{SourceModeScoreComparison.A}
+
\text{StrictCommonSelectorGap.A}.
}
\tag{MNFI.14}
```

The score-comparison input is itself supplied only by one of two routes:

```math
\boxed{
\text{SourceModeScoreComparison.A}
\Leftarrow
\text{SourceResolvedNativeModeReadout.A}
+
\text{ModeSignCoherentShadowLocalization.A}
+
\text{SelectedPositivePolarSaturation.A}.
}
\tag{MNFI.15}
```

or by changing the construction:

```math
\boxed{
\text{SourceModeScoreComparison.A}
\Leftarrow
\text{NativeCarrierModeAtlas.A}
+
\text{ModeJacobianOnNativeCarrier.A}
+
\text{ModeLiftProjectionCommutatorLegal.A}
+
\text{ModeGaugeTimeVariationLegal.A}.
}
\tag{MNFI.16}
```

The first route identifies the scores after proving same-shadow source readout
and sign-coherent localization.  The second route builds the mode tests directly
on the native selected carrier and then proves they still control the modulation
directions.

## Verdict

`ModeNativeCarrierFamilyIdentification.A` is not a free consequence of
selector stability.  It is the exact score-comparison theorem beneath
`SameFamilyModeSelectorCompatibility.A`.

This bridge is narrower than the terminal time-face no-waste problem.  Its
unpaid content is: either prove that the mode score and native positive source
score are the same selected score up to legal error, or rebuild the mode atlas
on the native carrier without losing mode nondegeneracy and commutator legality.
