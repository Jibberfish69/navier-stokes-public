# Pointwise Legal Tangent Separation Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `PointwiseLegalTangentSeparation.A` is not installed by
the existence of formal modulation duals, compactness, or `ModeTestCompatibility.A`
for one chosen mode test.

The theorem is exactly a no-annihilator statement: every nonzero
profile-changing tangent direction must be read by at least one native legal
same-shadow mode test.

## 1. Target

Let the quotient tangent sphere be

```math
\mathcal S_q
=
\{
\mathsf T_Ua:
U\in K_{sel},
\ a\in\mathcal N_U^\perp,
\ |a|=1
\}.
\tag{PLT.1}
```

Let `D_legal` be the native legal test class after local packet realization,
lift/projection commutator payment, gauge-time variation payment, and
same-family support.  The target is

```math
\forall Z\in\mathcal S_q
\quad
\exists\Psi\in D_{legal}
\quad
\langle Z,\Psi\rangle\ne0.
\tag{PLT.2}
```

Equivalently,

```math
\mathcal S_q
\cap
\{Z:\langle Z,\Psi\rangle=0\ \text{for every }\Psi\in D_{legal}\}
=
\varnothing.
\tag{PLT.3}
```

## 2. What would prove it

It is enough to have a complete formal tangent dual atlas and a legalizer for
that atlas.

First, formal tangent separation:

```math
\forall Z\in\mathcal S_q
\quad
\exists\Phi_Z\in D_{formal}
\quad
\langle Z,\Phi_Z\rangle\ne0.
\tag{PLT.4}
```

Second, legal realization of the separating duals:

```math
\Phi_Z
=
\Psi_Z+\operatorname{Err}_Z,
\qquad
\Psi_Z\in D_{legal},
\qquad
|\langle Z,\operatorname{Err}_Z\rangle|
<
{1\over2}|\langle Z,\Phi_Z\rangle|.
\tag{PLT.5}
```

Then

```math
|\langle Z,\Psi_Z\rangle|
\ge
{1\over2}|\langle Z,\Phi_Z\rangle|
>0,
\tag{PLT.6}
```

which proves `(PLT.2)`.

Thus

```math
\boxed{
\text{CompleteFormalTangentDualAtlas.A}
+
\text{SameShadowLegalizationOfTangentDuals.A}
\Longrightarrow
\text{PointwiseLegalTangentSeparation.A}.
}
\tag{PLT.7}
```

## 3. Why current inputs do not install it

`ModeTestCompatibility.A` legalizes a chosen mode test once four native
conditions are supplied.  It does not say that for every nonzero quotient
tangent, there is a separating formal dual whose legalized representative
remains on the same selected shadow.

The failure is finite-dimensional and exact.  Take

```math
H=\mathbb R^2,
\qquad
\mathcal S_q=\{e_1,e_2\},
\qquad
D_{formal}=\operatorname{span}\{e_1^\ast,e_2^\ast\}.
\tag{PLT.8}
```

The formal duals separate both tangent directions.  If the native legal class is

```math
D_{legal}=\operatorname{span}\{e_1^\ast\},
\tag{PLT.9}
```

then

```math
\langle e_2,\Psi\rangle=0
\qquad
\text{for every }\Psi\in D_{legal}.
\tag{PLT.10}
```

So formal separation holds while pointwise legal tangent separation fails.

In Navier--Stokes language, `e_2^*` can fail legality because its packet
realization is on the wrong selected family, its lift/projection commutator is
unpaid, its gauge-time variation is unpaid, or its support misses the native
pre-Cauchy source carrier.

## 4. Relation to same-shadow readout

The legal-separation problem is the signed linear version of the same-shadow
readout problem.  It occurs before positive-part extraction:

```math
\text{legal signed test sees }Z
\tag{PLT.11}
```

is weaker than

```math
\text{native positive selected carrier sees the corresponding source}.
\tag{PLT.12}
```

So proving `(PLT.2)` would help the gauge spectral-gap branch, but it would not
by itself prove `SourceResolvedNativeModeReadout.A` or
`SelectedPolarSaturation.A`.  Those are the additional positive-carrier
bridges after the signed legal test exists.

## 5. Exact reduction

At current input strength,

```math
\boxed{
\text{PointwiseLegalTangentSeparation.A}
\Leftarrow
\text{CompleteFormalTangentDualAtlas.A}
+
\text{SameShadowLegalizationOfTangentDuals.A}.
}
\tag{PLT.13}
```

The second input expands to the same native requirements already isolated by
`ModeTestCompatibility.A`:

```math
\text{LocalModeMultiplierRealization.A}
+
\text{ModeLiftProjectionCommutatorLegal.A}
+
\text{ModeGaugeTimeVariationLegal.A}
+
\text{SameFamilyModeSelectorCompatibility.A},
\tag{PLT.14}
```

but applied to a separating atlas for every quotient tangent direction, not to
one prechosen mode.

## Verdict

`PointwiseLegalTangentSeparation.A` is a real same-shadow legal-readout
statement.  It is not a compactness theorem and not a formal Hilbert-dual
theorem.  It says the native legal test class has no hidden annihilator on the
profile-changing tangent sphere.

The exact remaining inputs are:

```math
\text{CompleteFormalTangentDualAtlas.A}
\qquad
\text{and}
\qquad
\text{SameShadowLegalizationOfTangentDuals.A}.
\tag{PLT.15}
```

The second input is where the proof rejoins the Door 1 native-source carrier
problem: legality has to be on the same selected packet shadow that carries the
terminal source.
