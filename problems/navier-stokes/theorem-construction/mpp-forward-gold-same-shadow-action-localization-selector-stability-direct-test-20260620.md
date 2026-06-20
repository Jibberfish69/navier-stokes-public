# Same-Shadow Action Localization / Selector Stability Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `SameShadowActionLocalization.A` and
`SameShadowSelectorStability.A` are not supplied by the existing gauge-child
transversality notes.

The gauge-child package can make a canonical coordinate system coercive after a
compact, transverse, single-bubble selected profile class is produced.  The
same-shadow action problem asks for one more alignment: the action must be
measured on the same selected source shadow that carries the native positive
source edge.

## 1. Target under test

Let `E_m^{src}` be the selected donor/source edges that appear in the native
positive carrier, and let `E_m^{act}` be the edges or time intervals on which
the modulation action is measured.  The required localization is

```math
E_m^{src}\subset E_m^{act}
\quad\text{up to legal spill},
\tag{SSAL.1}
```

with the quantitative form

```math
\sum_{e\in E_m^{src}} d_e^2
\le
C\sum_{e\in E_m^{act}} d_e^2
+\operatorname{Legal}^{shadow}_m+o_m(1).
\tag{SSAL.2}
```

For a time-continuous gauge path, the same requirement is

```math
\int_{J_m^{src}}v_m(s)^2\,ds
\le
C\int_{J_m^{act}}v_m(s)^2\,ds
+\operatorname{Legal}^{shadow}_m+o_m(1).
\tag{SSAL.3}
```

Selector stability is the condition that the selected source shadow does not
jump to a different packet family without a paid selector-action or legal spill.

## 2. What would prove it

The localization follows from three inputs.

First, a strict selector gap on the terminal profile class:

```math
\operatorname{score}_1(U)-\operatorname{score}_2(U)
\ge
c_{sel}W(U).
\tag{SSAL.4}
```

Second, single-bubble separation:

```math
W_2(U)\le(1-c_b)W(U).
\tag{SSAL.5}
```

Third, action measured in the same canonical gauge used to define the selected
source shadow:

```math
E_m^{src}=E_m^{act}
\quad\text{up to legal spill}.
\tag{SSAL.6}
```

The first two are the selector/single-bubble clauses already identified by the
Door 2 gauge-child tests.  The third is the same-shadow compatibility clause.

## 3. Disjoint-shadow countermodel

Without `(SSAL.6)`, an action estimate on one shadow does not control source
edges on another.  Take two edge families `E_1,E_2` with

```math
E_m^{src}=E_1,
\qquad
E_m^{act}=E_2,
\qquad
E_1\cap E_2=\varnothing.
\tag{SSAL.7}
```

Let

```math
d_e=1\quad(e\in E_1),
\qquad
d_e=0\quad(e\in E_2).
\tag{SSAL.8}
```

Then

```math
\sum_{e\in E_m^{src}}d_e^2=|E_1|,
\qquad
\sum_{e\in E_m^{act}}d_e^2=0.
\tag{SSAL.9}
```

Thus action on a different representative, selector, or unsigned compact orbit
does not localize to the selected source carrier.

## 4. Selector-tie countermodel

Suppose two candidate packets have tied scores:

```math
\operatorname{score}(P_1)-\operatorname{score}(P_2)=0.
\tag{SSAL.10}
```

A measurable selector can choose `P_1` at one time and `P_2` at the next under an
arbitrarily small perturbation.  The continuous gauge variables can have small
speed while the selected packet identity jumps.  Unless the selector jump is
included in the action metric, `(SSAL.2)` misses the source edge created by the
switch.

So same-shadow selector stability requires either `(SSAL.4)`--`(SSAL.5)` or a
discrete selector-action term charged on the selected source shadow.

## 5. Exact reduction

At current input strength,

```math
\boxed{
\text{SameShadowActionLocalization.A}
+
\text{SameShadowSelectorStability.A}
\Leftarrow
\text{SelectorStability.A}
+
\text{SingleBubbleSeparation.A}
+
\text{SameGaugeSourceActionCompatibility.A}.
}
\tag{SSAL.11}
```

The first two inputs are already part of the Door 2 gauge-child frontier.  The
third input is the source-readout side: the selected native positive carrier and
the modulation-action representative must be the same packet family up to legal
spill.

Equivalently, the route can be supplied by

```math
\boxed{
\text{SourceResolvedNativeModeReadout.A}
+
\text{SelectedPolarSaturation.A}
+
\text{StrictRescaledNoWasteLyapunov.A}.
}
\tag{SSAL.12}
```

These inputs are not installed.

## Verdict

`SameShadowActionLocalization.A` and `SameShadowSelectorStability.A` do not add a
new analytic route.  They are the overlap of the existing Door 2 gauge
rigidity package with the Door 1 same-shadow selected-source visibility problem.
Current inputs do not prove that overlap.

