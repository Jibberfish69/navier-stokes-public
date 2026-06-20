# Legal Mode Norming Family Compact Separation Test

Date: 2026-06-20

## Status

Direct compact-separation theorem complete.  `LegalModeNormingFamily.A` is not a
new analytic estimate once a compact quotient tangent sphere is available.  It
is exactly the statement that the native legal mode-test class separates every
profile-changing tangent direction on the same selected shadow.

The finite family follows by compactness.  The Navier--Stokes burden is the
separation clause: no nonzero tangent direction may be invisible to every
legal native pre-Cauchy mode test.

## 1. Legal test class

Let `H` be the renormalized profile Hilbert space, and let
`D_legal subset H^*` be the class of mode tests that have already passed the
native admissibility requirements:

```math
D_{legal}
=
\{\Psi:\Psi \text{ has local packet realization, legal lift/projection
commutator, legal gauge-time variation, and same-family support}\}.
\tag{LMN.1}
```

This is the test class after `ModeTestCompatibility.A`, not the formal dual
space before localization.

Let the profile-changing quotient tangent sphere be

```math
\mathcal S_q
=
\{
\mathsf T_Ua:
U\in K_{sel},
\ a\in\mathcal N_U^\perp,
\ |a|=1
\},
\tag{LMN.2}
```

where `N_U=ker T_U` is the stabilizer tangent.

The desired legal norming statement is the existence of finitely many legal
tests `Psi_1,...,Psi_N` and a constant `c_legal>0` such that

```math
\sum_{i=1}^N
|\langle Z,\Psi_i\rangle|^2
\ge
c_{legal}^2
\qquad
\text{for every }Z\in\mathcal S_q.
\tag{LMN.3}
```

By homogeneity, `(LMN.3)` is the finite lower frame bound on all quotient
tangent directions.

## 2. Exact separation condition

Define the legal annihilator

```math
\mathcal A_{legal}
:=
\{Z\in H:\langle Z,\Psi\rangle=0
\text{ for every }\Psi\in D_{legal}\}.
\tag{LMN.4}
```

The pointwise legal tangent separation condition is

```math
\mathcal S_q\cap\mathcal A_{legal}=\varnothing.
\tag{LMN.5}
```

Equivalently, for every `Z in S_q`, there is a legal test `Psi_Z in D_legal`
with

```math
\langle Z,\Psi_Z\rangle\ne0.
\tag{LMN.6}
```

This is the exact content of

```math
\text{PointwiseLegalTangentSeparation.A}.
\tag{LMN.7}
```

## 3. Compact extraction proof

Assume:

```math
\mathcal S_q \text{ is compact in }H,
\tag{LMN.8}
```

and `(LMN.5)`.

For each `Z in S_q`, choose `Psi_Z in D_legal` with
`||Psi_Z||_{H^*}<=1` and

```math
|\langle Z,\Psi_Z\rangle|>0.
\tag{LMN.9}
```

By continuity, there is an open neighborhood `O_Z` of `Z` in `S_q` and a
constant `c_Z>0` such that

```math
|\langle Z',\Psi_Z\rangle|
\ge
c_Z
\qquad
\text{for every }Z'\in O_Z.
\tag{LMN.10}
```

Compactness gives a finite subcover:

```math
\mathcal S_q\subset O_{Z_1}\cup\cdots\cup O_{Z_N}.
\tag{LMN.11}
```

Set

```math
\Psi_i:=\Psi_{Z_i},
\qquad
c_{legal}:=\min_{1\le i\le N}c_{Z_i}>0.
\tag{LMN.12}
```

For every `Z in S_q`, some `i` has `Z in O_{Z_i}`, so

```math
\sum_{i=1}^N
|\langle Z,\Psi_i\rangle|^2
\ge
c_{legal}^2.
\tag{LMN.13}
```

This proves `(LMN.3)`.

Thus

```math
\boxed{
\text{CompactQuotientTangentSphere.A}
+
\text{PointwiseLegalTangentSeparation.A}
\Longrightarrow
\text{LegalModeNormingFamily.A}.
}
\tag{LMN.14}
```

## 4. Necessity

Conversely, if `(LMN.3)` holds, then no `Z in S_q` can lie in
`A_legal`.  Hence

```math
\text{LegalModeNormingFamily.A}
\Longrightarrow
\text{PointwiseLegalTangentSeparation.A}.
\tag{LMN.15}
```

under the same legal test class.

So, at fixed compact tangent sphere,

```math
\boxed{
\text{LegalModeNormingFamily.A}
\Longleftrightarrow
\text{PointwiseLegalTangentSeparation.A}.
}
\tag{LMN.16}
```

The forward implication is immediate; the reverse implication is exactly the
compact extraction above.

## 5. Why formal mode duals do not settle it

A formal Hilbert dual may separate the tangent vector while the native legal
class fails to do so.  The failure is:

```math
Z\notin \{0\},
\qquad
\exists \Phi\in H^\ast:\langle Z,\Phi\rangle\ne0,
\qquad
\langle Z,\Psi\rangle=0
\text{ for all }\Psi\in D_{legal}.
\tag{LMN.17}
```

Then the abstract profile space sees the tangent direction, but the native
pre-Cauchy ledger does not.

This happens in three exact ways.

First, the mode test can live on the wrong selected shadow.  A tangent supported
on the native selected carrier is annihilated by every legal test whose support
has been legalized only on a disjoint mode family.

Second, the formal dual can fail local packet realization or legal
lift/projection commutator control.  Then it is not an element of `D_legal`,
even though it is a valid abstract functional on `H`.

Third, sign or stabilizer averaging can remove the tangent direction from the
legal class.  Averaged signed tests may descend to the quotient while the native
positive carrier still changes under selector choice or positive-part
extraction.

Each failure is a legal-readout failure, not a finite-dimensional frame failure.

## 6. Relation to the gauge package

Combining this note with the compact-frame and quotient-freeness notes gives

```math
\boxed{
\text{CompactSelectedProfileClass.A}
+
\text{StableStabilizerStratum.A}
+
\text{PointwiseQuotientFreeAction.A}
+
\text{PointwiseLegalTangentSeparation.A}
\Longrightarrow
\text{GaugeFunctionalSpectralGap.A}
}
\tag{LMN.18}
```

with stabilizer-neutral directions handled by `StabilizerReadoutCompatibility.A`.

The only remaining legal-mode input is therefore

```math
\boxed{
\text{PointwiseLegalTangentSeparation.A}
}
\tag{LMN.19}
```

which says every nonzero profile-changing tangent direction has a same-shadow
native legal readout.

## Verdict

`LegalModeNormingFamily.A` is discharged as a compact finite-selection theorem
once `PointwiseLegalTangentSeparation.A` is supplied.  It is not produced by
formal modulation duals alone, because the legal test class is the native
localized, lifted, same-shadow pre-Cauchy test class.

The live Navier--Stokes burden is now sharper:

```math
\text{no nonzero quotient tangent may lie in the annihilator of the native legal
same-shadow mode tests.}
\tag{LMN.20}
```

That is the exact mode-test version of the same-shadow native readout problem.
