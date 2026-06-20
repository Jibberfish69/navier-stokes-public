# Native Carrier Mode Atlas Jacobian Direct Test

Date: 2026-06-20

## Status

Direct carrier-first test complete.  `NativeCarrierModeAtlas.A +
ModeJacobianOnNativeCarrier.A` is a valid way to avoid post-hoc legalization of
formal tangent duals, but it is not installed by current inputs.

The exact requirement is native-carrier tangent observability: mode tests
supported on the selected positive source carrier must still have a uniform
Jacobian lower bound against every profile-changing modulation tangent.

## 1. Carrier-first object

Let `F_m^{src}` be the selected packet family carrying the native positive
pre-Cauchy source.  A native-carrier mode atlas is a finite family of local
multipliers

```math
\phi_{i,m}^{src},
\qquad
i=1,\dots,N,
\tag{NCM.1}
```

with support on the native carrier:

```math
\operatorname{supp}\phi_{i,m}^{src}
\subset
\bigcup_{P\in F_m^{src}}Q(P)
\quad\text{up to legal spill}.
\tag{NCM.2}
```

Let `Psi_i^{src}(U)` be the corresponding profile-level mode tests.  The
carrier-first Jacobian is

```math
J_{i\beta}^{src}(U)
:=
\left\langle
G_\beta U,
\Psi_i^{src}(U)
\right\rangle.
\tag{NCM.3}
```

The needed lower bound is

```math
\sum_{i=1}^N
\left|
\sum_{\beta=1}^d a_\beta J_{i\beta}^{src}(U)
\right|^2
\ge
c_{src}^2
\operatorname{dist}(a,\mathcal N_U)^2
\tag{NCM.4}
```

for all selected profiles `U` and all modulation vectors `a`.

## 2. Exact sufficient condition

Define the native-carrier legal test class

```math
D_{src}
:=
\{\Psi\in D_{legal}:
\Psi \text{ is realized on }F_m^{src}\text{ up to legal spill}\}.
\tag{NCM.5}
```

The exact pointwise condition is

```math
\forall Z\in\mathcal S_q
\quad
\exists \Psi\in D_{src}
\quad
\langle Z,\Psi\rangle\ne0.
\tag{NCM.6}
```

Equivalently,

```math
\mathcal S_q
\cap
\{Z:\langle Z,\Psi\rangle=0\text{ for every }\Psi\in D_{src}\}
=
\varnothing.
\tag{NCM.7}
```

This is `NativeCarrierTangentObservability.A`.

If the quotient tangent sphere is compact, `(NCM.6)` gives a finite carrier
mode atlas by the same compact-cover proof used for `LegalModeNormingFamily.A`.
Thus

```math
\boxed{
\text{CompactQuotientTangentSphere.A}
+
\text{NativeCarrierTangentObservability.A}
\Longrightarrow
\text{NativeCarrierModeAtlas.A}
+
\text{ModeJacobianOnNativeCarrier.A}.
}
\tag{NCM.8}
```

The commutator and time-gauge legality clauses are still separate:

```math
\text{ModeLiftProjectionCommutatorLegal.A}
+
\text{ModeGaugeTimeVariationLegal.A}.
\tag{NCM.9}
```

## 3. Exact obstruction

Carrier-first construction can fail even when a full formal tangent dual atlas
exists.  Take

```math
H=\mathbb R^2,
\qquad
\mathcal S_q=\{e_1,e_2\}.
\tag{NCM.10}
```

Let the native carrier support only tests in the first coordinate:

```math
D_{src}=\operatorname{span}\{e_1^\ast\}.
\tag{NCM.11}
```

Then

```math
\langle e_2,\Psi\rangle=0
\qquad
\text{for every }\Psi\in D_{src}.
\tag{NCM.12}
```

So carrier-first mode tests can be perfectly source-local and still fail to
control the second modulation direction.  This is not a localization defect; it
is a carrier observability failure.

In Navier--Stokes terms, the selected positive source carrier can sit in a
region where some modulation tangent is nodal, tangent-neutral, or canceled by
the selected packet geometry.

## 4. Relation to source positivity

Native carrier support alone is weaker than positive-carrier readout.  Even if
`D_src` observes every tangent direction in signed mode testing, the scalar
positive carrier still needs

```math
\text{ModeSignCoherentShadowLocalization.A}
+
\text{SelectedPositivePolarSaturation.A}
\tag{NCM.13}
```

to turn signed source-mode visibility into a positive source carrier.

Thus the carrier-first route separates into:

```math
\boxed{
\text{signed tangent observability on the native carrier}
}
\tag{NCM.14}
```

and

```math
\boxed{
\text{positive selected source retention on that carrier}.
}
\tag{NCM.15}
```

The first is `NativeCarrierTangentObservability.A`.  The second is the existing
`SourceResolvedNativeModeReadout.A + SelectedPositivePolarSaturation.A` wall.

## 5. Exact reduction

At current input strength,

```math
\boxed{
\text{NativeCarrierModeAtlas.A}
+
\text{ModeJacobianOnNativeCarrier.A}
\Leftarrow
\text{CompactQuotientTangentSphere.A}
+
\text{NativeCarrierTangentObservability.A}.
}
\tag{NCM.16}
```

The full carrier-first legal mode route is

```math
\boxed{
\text{CompactQuotientTangentSphere.A}
+
\text{NativeCarrierTangentObservability.A}
+
\text{ModeLiftProjectionCommutatorLegal.A}
+
\text{ModeGaugeTimeVariationLegal.A}.
}
\tag{NCM.17}
```

Current inputs do not prove `NativeCarrierTangentObservability.A`.

## Verdict

The carrier-first atlas is not an independent shortcut.  It reduces the
same-shadow legalization problem to one exact observability statement:

```math
\text{no profile-changing tangent lies in the annihilator of native-carrier
legal tests.}
\tag{NCM.18}
```

This is sharper than asking for an abstract mode atlas, but it is still the same
native selected-shadow visibility problem.  After signed observability, the
positive-carrier bridge remains open.
