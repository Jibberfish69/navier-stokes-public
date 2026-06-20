# Same-Shadow Legalization Of Tangent Duals Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `SameShadowLegalizationOfTangentDuals.A` is not installed
by the formal tangent dual atlas.  It is the uniform native-legalization bridge
that turns every separating formal coframe into a localized same-shadow
pre-Cauchy test with small tangent-pairing error.

This is the exact point where Door 2 returns to the Door 1 native-carrier
problem: the mode tests must live on the same selected packet shadow as the
native positive source carrier.

## 1. Formal coframes

Let the complete formal tangent dual atlas provide, on finitely many quotient
tangent charts, coframes

```math
\Psi^{a,j}(U)\in H^\ast,
\qquad
j=1,\dots,J,
\qquad
a=1,\dots,k_j.
\tag{SSL.1}
```

For every profile-changing tangent

```math
Z=\mathsf T_U b,
\qquad
b\in\mathcal N_U^\perp,
\tag{SSL.2}
```

some chart `j` and coframe index `a` satisfy

```math
|\langle Z,\Psi^{a,j}(U)\rangle|
\ge
c_{form}\|Z\|_H.
\tag{SSL.3}
```

This is formal separation only.

## 2. Native legalization target

The legalization target is: for every formal coframe in `(SSL.1)`, construct a
native legal local multiplier

```math
\phi^{a,j}_{m,U}(t,x)
\tag{SSL.4}
```

supported on the same selected packet family as the native source carrier, with
associated legal functional

```math
\Psi^{a,j}_{legal}(U)\in D_{legal},
\tag{SSL.5}
```

such that every quotient tangent satisfies

```math
|\langle Z,\Psi^{a,j}(U)-\Psi^{a,j}_{legal}(U)\rangle|
\le
{1\over2}
|\langle Z,\Psi^{a,j}(U)\rangle|
+
\operatorname{Legal}^{dual}_{m,a,j}(Z)
+
o_m(1).
\tag{SSL.6}
```

The legal error must be summable or absorbed in the existing ledger:

```math
\sum_{m,a,j}
\operatorname{Legal}^{dual}_{m,a,j}(Z_m)
<\infty
\tag{SSL.7}
```

on the selected terminal family.

Under `(SSL.6)`, every formal separation gives native legal separation:

```math
|\langle Z,\Psi^{a,j}_{legal}(U)\rangle|
\ge
{1\over2}
|\langle Z,\Psi^{a,j}(U)\rangle|
-
\operatorname{Legal}^{dual}_{m,a,j}(Z)
-
o_m(1).
\tag{SSL.8}
```

Thus, away from legal spill, the native test class sees the tangent direction.

## 3. Exact sufficient package

The same-shadow legalization follows from four uniform clauses.

First, uniform local multiplier realization:

```math
\Psi^{a,j}_{legal}(U)
\quad\text{is realized by}\quad
\phi^{a,j}_{m,U}
\tag{SSL.9}
```

with the derivative and support bounds required by the local pre-Cauchy ledger.

Second, lift/projection commutator legality:

```math
\operatorname{LiftProj}(\phi^{a,j}_{m,U}\mathcal N^{loc}_{preCauchy})
-
\phi^{a,j}_{m,U}\operatorname{LiftProj}(\mathcal N^{loc}_{preCauchy})
=
\operatorname{Legal}^{comm}_{m,a,j}+o_m(1).
\tag{SSL.10}
```

Third, gauge-time variation legality:

```math
\partial_s\phi^{a,j}_{m,U}
+
\dot\gamma_m\cdot\nabla_\gamma\phi^{a,j}_{m,U}
\quad\text{is charged by legal modulation-commutator terms}.
\tag{SSL.11}
```

Fourth, same-family support:

```math
\operatorname{supp}\phi^{a,j}_{m,U}
\subset
\bigcup_{P\in F_m^{src}}Q(P)
\quad\text{up to legal spill}.
\tag{SSL.12}
```

Together with the tangent-pairing error estimate `(SSL.6)`, these clauses give

```math
\boxed{
\text{UniformLocalMultiplierRealizationForFormalCoframes.A}
+
\text{UniformModeLiftProjectionCommutatorLegal.A}
+
\text{UniformModeGaugeTimeVariationLegal.A}
+
\text{SameFamilyModeSelectorCompatibility.A}
+
\text{TangentPairingLegalizationError.A}
\Longrightarrow
\text{SameShadowLegalizationOfTangentDuals.A}.
}
\tag{SSL.13}
```

## 4. Why current inputs do not install it

`ModeTestCompatibility.A` applies to a chosen local mode test once its four
native clauses are supplied.  It does not legalize the entire formal coframe
atlas, and it does not prove the tangent-pairing error `(SSL.6)`.

The exact failure model is finite-dimensional.  Let

```math
H=\mathbb R^2,
\qquad
\Psi^1=e_1^\ast,
\qquad
\Psi^2=e_2^\ast.
\tag{SSL.14}
```

Let the native selected source shadow admit only legal tests supported in the
first coordinate:

```math
D_{legal}=\operatorname{span}\{e_1^\ast\}.
\tag{SSL.15}
```

Then the formal coframe is complete, but no legal representative of `e_2^*`
can satisfy `(SSL.6)` on `Z=e_2`, because

```math
\langle e_2,e_2^\ast\rangle=1,
\qquad
\langle e_2,\Psi\rangle=0
\quad
\text{for every }\Psi\in D_{legal}.
\tag{SSL.16}
```

In Navier--Stokes terms, the second formal coframe lies on a different packet
shadow, or its multiplier is illegal after lift/projection, or its gauge-time
variation has no legal charge.

## 5. Carrier-first alternative

A carrier-first construction would choose the coframes directly on the native
selected source family:

```math
\operatorname{supp}\phi^{a,j}_{m,U}
\subset
\bigcup_{P\in F_m^{src}}Q(P)
\tag{SSL.17}
```

and then prove the modulation Jacobian lower bound on that family:

```math
\sum_{a,j}
|\langle \mathsf T_U b,\Psi^{a,j}_{legal}(U)\rangle|^2
\ge
c_{src}^2|b|^2.
\tag{SSL.18}
```

This route replaces formal legalization by

```math
\boxed{
\text{NativeCarrierModeAtlas.A}
+
\text{ModeJacobianOnNativeCarrier.A}
+
\text{UniformModeLiftProjectionCommutatorLegal.A}
+
\text{UniformModeGaugeTimeVariationLegal.A}.
}
\tag{SSL.19}
```

It is a valid alternative only if `(SSL.18)` is proved after restricting to the
native carrier.

## 6. Relation to positive carrier

Even after `(SSL.13)`, the theorem gives signed legal mode readout.  It does not
yet give the native positive source carrier.  The next bridge is still

```math
\text{SourceResolvedNativeModeReadout.A}
+
\text{SelectedPolarSaturation.A}.
\tag{SSL.20}
```

The reason is that legal signed testing and positive-part extraction are
different operations:

```math
\int q\,\psi
\quad\text{does not determine}\quad
\int [q]_+
\tag{SSL.21}
```

unless sign-coherent localization and complement routing are supplied.

## Verdict

`SameShadowLegalizationOfTangentDuals.A` is the uniform native version of
`ModeTestCompatibility.A` applied to the whole formal tangent coframe atlas.
It is not installed from current inputs.

The exact remaining alternatives are:

```math
\text{uniform legalization of the formal coframes on the native source shadow}
\tag{SSL.22}
```

or

```math
\text{carrier-first native mode atlas with a Jacobian lower bound}.
\tag{SSL.23}
```

Both alternatives return to the same Door 1 wall after signed testing:
the selected positive native carrier must retain the signed same-shadow source
rather than losing it under selector choice and positive-part extraction.
