# Same-Family Mode Selector Compatibility Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `SameFamilyModeSelectorCompatibility.A` is not installed
by the current mode-test, gauge, or selector-stability inputs.

The missing point is exact family identity.  A local mode test can be legal on
one packet family while the native positive pre-Cauchy source carrier is selected
on another packet family.  Selector stability for each family separately does
not identify the two families.

## 1. Target under test

Let

```text
F_m^{src}:
  the selected packet family used by the native positive pre-Cauchy source
  carrier;

F_{m,i}^{mode}:
  the selected packet family on which the mode multiplier phi_{i,m} is realized;

Q(P):
  the spacetime packet attached to P.
```

The same-family target is the legal-spill estimate

```math
\boxed{
\sum_{P\in F_m^{src}\setminus F_{m,i}^{mode}}
\mu_{src,m}^+(P)
+
\sum_{P\in F_{m,i}^{mode}\setminus F_m^{src}}
\left|
\int_{Q(P)}
\mathcal N^{loc}_{preCauchy}(u;P)\psi_i(P)\,dxdt
\right|
\le
\operatorname{Legal}^{fam}_{m,i}+o_m(1).
}
\tag{SFM.1}
```

Here

```math
\mu_{src,m}^+(P)
:=
\int_{Q(P)}
\left[
\mathcal N^{loc}_{preCauchy}(u;P)
\right]_+\,dxdt.
\tag{SFM.2}
```

The support condition in `ModeTestCompatibility.A`,

```math
\operatorname{supp}\phi_{i,m}
\subset
\bigcup_{P\in F_m^{sel}}Q(P)
\quad\text{up to legal spill},
\tag{SFM.3}
```

is useful only when `F_m^{sel}` is the same family as `F_m^{src}`.  Otherwise the
mode test is admissible on the wrong selected shadow.

## 2. What would prove it

There is a clean sufficient package:

```math
\boxed{
\text{SelectorStability.A}
+
\text{SingleBubbleSeparation.A}
+
\text{ModeNativeCarrierFamilyIdentification.A}
\Longrightarrow
\text{SameFamilyModeSelectorCompatibility.A}.
}
\tag{SFM.4}
```

The first two inputs must apply to the same terminal scoring rule.  The third
input is the actual identity clause:

```math
\operatorname{score}^{mode}_i(P;U)
=
a_i(U)\operatorname{score}^{src}(P;U)
+r_{i,m}(P),
\tag{SFM.5}
```

with

```math
a_i(U)\ge a_0>0,
\qquad
\sum_P |r_{i,m}(P)|\,\operatorname{carrier}_m(P)
\le
\operatorname{Legal}^{score}_{m,i}+o_m(1).
\tag{SFM.6}
```

Under a strict selected gap

```math
\operatorname{score}^{src}(P_\ast;U)
-
\sup_{P\ne P_\ast}\operatorname{score}^{src}(P;U)
\ge
c_{sel}W(U),
\tag{SFM.7}
```

and single-bubble separation

```math
W_2(U)\le(1-c_b)W(U),
\tag{SFM.8}
```

the perturbative identity `(SFM.5)`--`(SFM.6)` forces both selectors to choose
the same packet family, except on packets charged by `Legal^{fam}_{m,i}`.  This
is exactly `(SFM.1)`.

## 3. Why the existing inputs do not prove it

`SelectorStability.A` controls jumps of a chosen selector.  It does not say that
two selectors built from different scores choose the same packet.

`SingleBubbleSeparation.A` controls the second largest bubble for a chosen
weight.  It does not say that the mode weight and the native source weight rank
packets identically.

`ModeTestCompatibility.A` legalizes a local multiplier on its selected family.
It does not identify that family with the family used after native source
selection and positive-part extraction.

Thus `(SFM.4)` needs the extra `ModeNativeCarrierFamilyIdentification.A` clause.

## 4. Countermodel: two stable selectors, two different families

Take two disjoint packet families `F_1` and `F_2`.  Let the native source selector
and the mode selector have strict, stable but different winners:

```math
F_m^{src}=F_1,
\qquad
F_{m,i}^{mode}=F_2.
\tag{SFM.9}
```

Put a positive native source carrier on `F_1`:

```math
\mu_{src,m}^+(F_1)=A,
\qquad
\mu_{src,m}^+(F_2)=0,
\qquad
A>0.
\tag{SFM.10}
```

Let the mode multiplier be legal and supported on `F_2`.  Then

```math
\sum_{P\in F_m^{src}\setminus F_{m,i}^{mode}}
\mu_{src,m}^+(P)
=A.
\tag{SFM.11}
```

No contradiction follows from finite source mass, bounded overlap, or legal
mode-test admissibility.  The symmetric-difference term in `(SFM.1)` remains
unpaid.

A second version puts the signed mode source on `F_2`:

```math
\int_{F_2}
\mathcal N^{loc}_{preCauchy}\psi_i\,dxdt
=B,
\qquad
\mu_{src,m}^+(F_1)=A,
\qquad
F_1\cap F_2=\varnothing.
\tag{SFM.12}
```

The mode readout and the native positive source carrier are then two different
terminal shadows.  A signed identity on `F_2` gives no positive-carrier payment
on `F_1`, and a positive carrier on `F_1` gives no mode-action payment on `F_2`.

## 5. Carrier-first alternative

There is another possible route: define the mode tests after the native source
family is selected.  This would require a native-carrier mode atlas satisfying

```math
\operatorname{supp}\phi_{i,m}
\subset
\bigcup_{P\in F_m^{src}}Q(P)
\quad\text{up to legal spill},
\tag{SFM.13}
```

while preserving the modulation duality:

```math
\det
\left(
\left\langle G_\beta U,\Psi_i^{src}(U)\right\rangle
\right)_{i,\beta}
\ne0
\quad\text{with a uniform lower singular value}.
\tag{SFM.14}
```

and preserving the legal commutator bounds:

```math
\operatorname{LiftProj}(\phi_{i,m}\mathcal N^{loc}_{preCauchy})
-
\phi_{i,m}\operatorname{LiftProj}(\mathcal N^{loc}_{preCauchy})
=
\operatorname{Legal}^{comm}_{m,i}+o_m(1).
\tag{SFM.15}
```

This is a genuine route only with

```math
\boxed{
\text{NativeCarrierModeAtlas.A}
+
\text{ModeJacobianOnNativeCarrier.A}
+
\text{ModeLiftProjectionCommutatorLegal.A}
+
\text{ModeGaugeTimeVariationLegal.A}.
}
\tag{SFM.16}
```

Without `(SFM.14)` the carrier-first tests may see the source but fail to control
the modulation modes.  Without `(SFM.15)` they may be source-local but illegal in
the lifted pre-Cauchy ledger.

## 6. Exact reduction

At current input strength,

```math
\boxed{
\text{SameFamilyModeSelectorCompatibility.A}
\Leftarrow
\text{SelectorStability.A}
+
\text{SingleBubbleSeparation.A}
+
\text{ModeNativeCarrierFamilyIdentification.A}.
}
\tag{SFM.17}
```

or, by changing the construction of the tests,

```math
\boxed{
\text{SameFamilyModeSelectorCompatibility.A}
\Leftarrow
\text{NativeCarrierModeAtlas.A}
+
\text{ModeJacobianOnNativeCarrier.A}
+
\text{ModeLiftProjectionCommutatorLegal.A}
+
\text{ModeGaugeTimeVariationLegal.A}.
}
\tag{SFM.18}
```

The first route is an identification theorem between the mode selector and the
native source selector.  The second route is a carrier-first rebuild of the mode
test package.

## Verdict

`SameFamilyModeSelectorCompatibility.A` is a real selector-identity bridge.  It
is narrower than the source-square/no-waste wall, but it is not automatic from
legal mode tests, canonical gauges, bounded overlap, finite source mass, or
selector stability taken one selector at a time.

After this bridge is installed, the same-family obstruction is removed from
`ModeTestCompatibility.A` and `SameGaugeSourceActionCompatibility.A`.  The live
source-side burden then remains `SourceResolvedNativeModeReadout.A` plus
`SelectedPolarSaturation.A`, or the stronger source-square / strict no-waste
supplier that pays both.
