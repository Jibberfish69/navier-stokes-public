# Gauge Functional Spectral Gap Compact Frame Proof

Date: 2026-06-20

## Status

Relative proof complete.  `GaugeFunctionalSpectralGap.A` follows from a compact
finite-frame argument once the selected terminal profile class has a uniformly
free modulation action and the legal mode tests form a norming family.

This proves the local gauge-functional child.  It does not prove the Navier--
Stokes inputs that make the action uniformly free: absence of isotropy, absence
of flat scale plateaus, compactness of the selected profile class, and legal
mode-test compatibility.

## 1. Hilbert gauge setting

Let `H` be the renormalized profile Hilbert space used for the gauge test, and
let `K_sel` be the selected terminal profile class.  Let the finite modulation
parameters be

```math
\alpha\in\mathbb R^d.
\tag{GFS.1}
```

For each `U in K_sel`, let the infinitesimal modulation map be

```math
\mathsf T_U a
:=
\sum_{\beta=1}^d a_\beta X_\beta(U),
\qquad
a\in\mathbb R^d,
\tag{GFS.2}
```

where `X_beta(U)` are the translation, scale, rotation, phase, or selected
internal tangent directions retained by the gauge.

The desired spectral gap is a finite family of legal mode tests
`\Psi_1,\dots,\Psi_N` such that

```math
\sum_{i=1}^N
\left|
\left\langle \mathsf T_Ua,\Psi_i\right\rangle
\right|^2
\ge
c_0^2|a|^2
\qquad
\text{for all }U\in K_{sel},\ a\in\mathbb R^d.
\tag{GFS.3}
```

This is exactly the lower singular-value bound for the gauge Jacobian.

## 2. Inputs

The proof uses three inputs.

First, compactness:

```math
K_{sel}\ \text{is compact in }H,
\qquad
U\mapsto X_\beta(U)\ \text{is continuous on }K_{sel}.
\tag{GFS.4}
```

Second, uniform freeness of the modulation action:

```math
m_0
:=
\inf_{U\in K_{sel}}
\inf_{|a|=1}
\|\mathsf T_Ua\|_H
>0.
\tag{GFS.5}
```

Third, the legal mode-test family `D_legal` is norming for `H` on the tangent
range:

```math
\|Z\|_H
\le
C_D
\sup_{\Psi\in D_{legal},\ \|\Psi\|_{H^\ast}\le1}
|\langle Z,\Psi\rangle|
\qquad
\text{for every }Z=\mathsf T_Ua.
\tag{GFS.6}
```

The proof below only needs `(GFS.6)` on the compact tangent range, not on all of
`H`.

## 3. Compact tangent sphere

Define the tangent sphere

```math
\mathcal S
:=
\left\{
\mathsf T_Ua:
U\in K_{sel},\ |a|=1
\right\}.
\tag{GFS.7}
```

By `(GFS.4)`, `S` is compact in `H`.  By `(GFS.5)`,

```math
\|Z\|_H\ge m_0
\qquad
\text{for every }Z\in\mathcal S.
\tag{GFS.8}
```

For each `Z in S`, `(GFS.6)` gives a legal test `Psi_Z` with
`\|\Psi_Z\|_{H^*}\le1` and

```math
|\langle Z,\Psi_Z\rangle|
\ge
{m_0\over 2C_D}.
\tag{GFS.9}
```

Continuity gives an open neighborhood `O_Z` of `Z` in `S` such that

```math
|\langle Z',\Psi_Z\rangle|
\ge
{m_0\over 4C_D}
\qquad
\text{for every }Z'\in O_Z.
\tag{GFS.10}
```

Compactness of `S` gives a finite subcover

```math
\mathcal S\subset O_{Z_1}\cup\cdots\cup O_{Z_N}.
\tag{GFS.11}
```

Set

```math
\Psi_i:=\Psi_{Z_i}.
\tag{GFS.12}
```

Then for every `U in K_sel` and every `a` with `|a|=1`, one index `i` satisfies

```math
\left|
\left\langle \mathsf T_Ua,\Psi_i\right\rangle
\right|
\ge
{m_0\over 4C_D}.
\tag{GFS.13}
```

Therefore

```math
\sum_{i=1}^N
\left|
\left\langle \mathsf T_Ua,\Psi_i\right\rangle
\right|^2
\ge
\left({m_0\over 4C_D}\right)^2
\tag{GFS.14}
```

for `|a|=1`, and by homogeneity

```math
\sum_{i=1}^N
\left|
\left\langle \mathsf T_Ua,\Psi_i\right\rangle
\right|^2
\ge
\left({m_0\over 4C_D}\right)^2
|a|^2.
\tag{GFS.15}
```

This proves `(GFS.3)` with

```math
c_0={m_0\over 4C_D}.
\tag{GFS.16}
```

## 4. Gauge consequence

Let the gauge constraints be

```math
\Gamma_i(U)=\langle U,\Psi_i\rangle-\gamma_i=0.
\tag{GFS.17}
```

Their Jacobian along modulation directions is

```math
K_{i\beta}(U)
=
\left\langle X_\beta(U),\Psi_i\right\rangle.
\tag{GFS.18}
```

Equation `(GFS.15)` is exactly

```math
\sigma_{\min}K(U)\ge c_0
\qquad
\text{for every }U\in K_{sel}.
\tag{GFS.19}
```

Thus

```math
\boxed{
\text{CompactSelectedProfileClass.A}
+
\text{UniformFreeModulationAction.A}
+
\text{LegalModeNormingFamily.A}
\Longrightarrow
\text{GaugeFunctionalSpectralGap.A}.
}
\tag{GFS.20}
```

Together with the existing gauge-child transversality note, this gives

```math
\boxed{
\text{CompactSelectedProfileClass.A}
+
\text{UniformFreeModulationAction.A}
+
\text{LegalModeNormingFamily.A}
+
\text{SelectorStability.A}
+
\text{SingleBubbleSeparation.A}
\Longrightarrow
\text{CanonicalGaugeCoercivity.A}.
}
\tag{GFS.21}
```

## 5. Exact failure modes

The proof identifies the exact ways the child can fail.

### 5.1 Isotropy

If there are `U in K_sel` and `a` with `|a|=1` such that

```math
\mathsf T_Ua=0,
\tag{GFS.22}
```

then `m_0=0`, so no finite gauge test family can give `(GFS.3)`.

### 5.2 Flat scale plateau

If the scale generator satisfies

```math
\|X_{scale}(U_m)\|_H\to0
\tag{GFS.23}
```

along selected profiles, then again `m_0=0`.  This is the scale-plateau
obstruction in exact tangent form.

### 5.3 Missing legal norming

If legal tests do not norm the tangent range, there is a sequence
`Z_m in S` with

```math
\sup_{\Psi\in D_{legal},\ \|\Psi\|_{H^\ast}\le1}
|\langle Z_m,\Psi\rangle|
\to0.
\tag{GFS.24}
```

Then the abstract Hilbert lower bound is invisible to the native mode ledger.

### 5.4 Noncompact selected class

If `K_sel` is not compact, the open-cover argument gives no finite test family.
One can still have pointwise separation at every profile with no uniform finite
lower frame bound.

## Verdict

The spectral-gap child is mathematically discharged as a compact finite-frame
theorem.  The remaining Navier--Stokes content is not the finite-frame step; it
is producing the inputs:

```math
\text{CompactSelectedProfileClass.A},
\qquad
\text{UniformFreeModulationAction.A},
\qquad
\text{LegalModeNormingFamily.A}.
\tag{GFS.25}
```

In physical terms, the selected terminal object must be one compact,
isotropy-free, non-flat bubble whose tangent directions are visible to the
legal mode tests.  Without those clauses, the gauge can drift or become
invisible while all existing zero-flux and compactness statements remain true.
