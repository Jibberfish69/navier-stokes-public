# Source-Weighted Mode Deficit Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `SourceWeightedModeDeficit.A` is not installed by the
current source-mode readout, lower-frame/no-null, selected polar saturation,
finite source mass, bounded overlap, selector stability, or single-bubble
inputs.

This is an equality-case theorem.  It does not merely ask a mode to see the
positive source.  It asks one orientation of the selected mode to align with
almost all of the native selected positive source mass.

## 1. Target under test

Let

```math
\mu_m^+(P):=[q_m(P)]_+,
\qquad
|\psi_m(P)|\le1,
\tag{SWMD.1}
```

and define

```math
M_m^+
:=
\sum_P\mu_m^+(P),
\qquad
I_m
:=
\sum_P\psi_m(P)\mu_m^+(P).
\tag{SWMD.2}
```

The source-weighted mode deficit is

```math
D_m^\psi
:=
\inf_{\varepsilon\in\{-1,1\}}
\sum_P
\left(1-\varepsilon\psi_m(P)\right)
\mu_m^+(P).
\tag{SWMD.3}
```

`SourceWeightedModeDeficit.A` is the estimate

```math
\boxed{
D_m^\psi
\le
\operatorname{Legal}^{def}_{m}+o_m(1).
}
\tag{SWMD.4}
```

Since

```math
\sum_P
\left(1-\varepsilon\psi_m(P)\right)
\mu_m^+(P)
=
M_m^+-\varepsilon I_m,
\tag{SWMD.5}
```

the deficit has the exact moment form

```math
\boxed{
D_m^\psi=M_m^+-|I_m|.
}
\tag{SWMD.6}
```

Thus the theorem says that the selected mode moment nearly saturates the
trivial bound

```math
|I_m|\le M_m^+.
\tag{SWMD.7}
```

## 2. Exact equality-case decomposition

Split the source-weighted mode mass into

```math
R_m^\psi
:=
\sum_P(1-|\psi_m(P)|)\mu_m^+(P),
\tag{SWMD.8}
```

and

```math
J_{m,+}^\psi
:=
\sum_{\psi_m(P)\ge0}|\psi_m(P)|\mu_m^+(P),
\qquad
J_{m,-}^\psi
:=
\sum_{\psi_m(P)<0}|\psi_m(P)|\mu_m^+(P).
\tag{SWMD.9}
```

Then

```math
D_m^\psi
=
R_m^\psi
+
2\min\{J_{m,+}^\psi,J_{m,-}^\psi\}.
\tag{SWMD.10}
```

So `(SWMD.4)` is equivalent to two conditions:

```math
R_m^\psi
\le
\operatorname{Legal}_{m}^{mod}+o_m(1),
\tag{SWMD.11}
```

and

```math
\min\{J_{m,+}^\psi,J_{m,-}^\psi\}
\le
\operatorname{Legal}_{m}^{sign}+o_m(1).
\tag{SWMD.12}
```

The first condition says the selected positive source lives where
\(|\psi_m|\) is almost one.  The second says the source-weighted mass does not
split between both signs.

## 3. Countermodel

Take two packets with

```math
\psi_m(P_+)=1,
\qquad
\psi_m(P_-)=-1,
\tag{SWMD.13}
```

and

```math
\mu_m^+(P_+)=A,
\qquad
\mu_m^+(P_-)=A,
\qquad
A>0.
\tag{SWMD.14}
```

Then

```math
M_m^+=2A,
\qquad
I_m=0,
\qquad
D_m^\psi=2A.
\tag{SWMD.15}
```

The modulus defect is zero:

```math
R_m^\psi=0.
\tag{SWMD.16}
```

The failure is entirely the sign-split term:

```math
2\min\{J_{m,+}^\psi,J_{m,-}^\psi\}=2A.
\tag{SWMD.17}
```

This model satisfies finite source mass and bounded overlap.  It also survives
ordinary nodal-zone evacuation, because no source sits where \(|\psi_m|<\kappa\).
It survives negative-mode sink routing, because all source is positive.

## 4. Why lower-frame/no-null visibility is insufficient

A lower-frame or no-null theorem has the form

```math
\max_i
\left|
\sum_P\psi_i(P)\mu_m^+(P)
\right|
\ge
c\,M_m^+
\tag{SWMD.18}
```

for some \(0<c\le1\), after choosing from a finite test family.  This gives
visibility of positive source only when \(c>0\).  It gives `(SWMD.4)` only at
equality-case strength:

```math
1-c
\le
{\operatorname{Legal}^{def}_{m}+o_m(1)\over M_m^+}.
\tag{SWMD.19}
```

If the terminal positive source mass has a nonzero normalized limit, any fixed
lower-frame constant \(c<1\) leaves the unpaid deficit

```math
D_m^\psi
\ge
(1-c)M_m^+.
\tag{SWMD.20}
```

Thus no-null readout is too weak.  The branch needs almost-isometric recovery
of the positive source measure by one selected mode orientation, not merely a
nonzero observation.

## 5. Relation to selected polar saturation

`SelectedPositivePolarSaturation.A` and `SourceWeightedPolarSaturation.A` control
whether a selected one-sided carrier disappears from a signed vector/current
record by cancellation.  That is a polar equality problem for the carrier
current.

`SourceWeightedModeDeficit.A` is the analogous equality problem for a scalar
mode test.  It requires the selected mode itself to satisfy

```math
\psi_m(P)\approx\varepsilon_m
\quad
\mu_m^+\text{-almost everywhere},
\tag{SWMD.21}
```

up to legal mass.  A carrier may be polar-saturated as a current while a
particular sign-changing mode test still has a large deficit on that carrier.

Therefore

```math
\text{SelectedPositivePolarSaturation.A}
\nRightarrow
\text{SourceWeightedModeDeficit.A}
\tag{SWMD.22}
```

from current inputs.

## 6. Exact sufficient routes

The direct sufficient route is the equality-case package

```math
\boxed{
\text{ModeModulusSaturationOnSource.A}
+
\text{ModeSignSplitEvacuationOnSource.A}
\Longrightarrow
\text{SourceWeightedModeDeficit.A}.
}
\tag{SWMD.23}
```

where the two inputs are `(SWMD.11)` and `(SWMD.12)`.

A carrier-building route is also possible:

```math
\boxed{
\text{ModeLobeRefinedNativeCarrier.A}
+
\text{RefinedCarrierModeJacobian.A}
+
\text{RefinedCarrierCommutatorLegal.A}
\Longrightarrow
\text{SourceWeightedModeDeficit.A}
\text{ on the refined carrier}.
}
\tag{SWMD.24}
```

This does not prove the original selected carrier had small deficit.  It changes
the carrier to one on which the selected mode has the needed sign.

## 7. Exact reduction

At current input strength,

```math
\boxed{
\text{SourceWeightedModeDeficit.A}
\Leftarrow
\text{ModeModulusSaturationOnSource.A}
+
\text{ModeSignSplitEvacuationOnSource.A}.
}
\tag{SWMD.25}
```

or, after changing the carrier,

```math
\boxed{
\text{SourceWeightedModeDeficit.A}
\Leftarrow
\text{ModeLobeRefinedNativeCarrier.A}
+
\text{RefinedCarrierModeJacobian.A}
+
\text{RefinedCarrierCommutatorLegal.A}.
}
\tag{SWMD.26}
```

The first route proves equality-case alignment on the original carrier.  The
second route rebuilds the carrier so the equality-case alignment is built into
the selected lobe.

## Verdict

`SourceWeightedModeDeficit.A` is not supplied by ordinary visibility,
lower-frame/no-null observation, selector stability, single-bubble separation,
finite mass, bounded overlap, or selected polar saturation.

The exact wall is equality-case alignment:

```math
M_m^+-|I_m|
\le
\operatorname{Legal}^{def}_{m}+o_m(1).
\tag{SWMD.27}
```

Without this, the mode can see some source while still leaving a fixed positive
fraction of the native positive source carrier outside any one mode lobe.
