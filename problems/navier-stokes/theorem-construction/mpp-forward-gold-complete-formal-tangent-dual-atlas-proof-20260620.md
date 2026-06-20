# Complete Formal Tangent Dual Atlas Proof

Date: 2026-06-20

## Status

Relative proof complete.  `CompleteFormalTangentDualAtlas.A` is not a
Navier--Stokes analytic supplier when "formal" means the unconstrained Hilbert
or modulation-tangent dual before native localization.  It follows from the
quotient tangent bundle data already exposed by the gauge branch.

The remaining burden is not formal duality.  It is
`SameShadowLegalizationOfTangentDuals.A`: the formal duals must become native
legal pre-Cauchy tests on the selected source shadow.

## 1. Quotient tangent bundle

Let `K_sel` be the selected terminal profile class in the renormalized Hilbert
space `H`.  For each `U in K_sel`, let

```math
\mathsf T_Ua
=
\sum_{\beta=1}^d a_\beta X_\beta(U),
\qquad
a\in\mathbb R^d,
\tag{FTD.1}
```

be the infinitesimal modulation map.  Let

```math
\mathcal N_U:=\ker \mathsf T_U
\tag{FTD.2}
```

be the stabilizer tangent and use the quotient complement
`\mathcal N_U^\perp`.

Assume the quotient freeness input:

```math
m_q
:=
\inf_{U\in K_{sel}}
\inf_{\substack{a\in\mathcal N_U^\perp\\ |a|=1}}
\|\mathsf T_Ua\|_H
>0.
\tag{FTD.3}
```

Assume also a stable stabilizer stratum, so `dim N_U` is constant and
`\mathcal N_U^\perp` forms a finite-dimensional vector bundle over `K_sel`.

## 2. Pointwise formal separation

For any nonzero quotient tangent

```math
Z=\mathsf T_Ua,
\qquad
a\in\mathcal N_U^\perp,
\qquad
a\ne0,
\tag{FTD.4}
```

define the Riesz functional

```math
\Phi_Z(V):=\langle V,Z\rangle_H.
\tag{FTD.5}
```

Then

```math
\Phi_Z(Z)=\|Z\|_H^2>0.
\tag{FTD.6}
```

On the unit quotient tangent sphere, `(FTD.3)` gives the uniform pointwise
bound

```math
\Phi_Z(Z)
\ge
m_q^2.
\tag{FTD.7}
```

Thus formal Hilbert dual separation is automatic once quotient freeness is
present.

## 3. Local coframe formula

On a local trivialization of the quotient tangent bundle, choose an orthonormal
parameter frame

```math
e_1(U),\dots,e_k(U)
\quad\text{for }\mathcal N_U^\perp.
\tag{FTD.8}
```

Set

```math
Z_\alpha(U):=\mathsf T_Ue_\alpha(U).
\tag{FTD.9}
```

The quotient Gram matrix is

```math
G_{\alpha\beta}(U)
:=
\langle Z_\alpha(U),Z_\beta(U)\rangle_H.
\tag{FTD.10}
```

By `(FTD.3)`,

```math
G(U)\ge m_q^2 I
\tag{FTD.11}
```

on the quotient frame.  Define the formal dual coframe

```math
\Psi^\alpha(U)
:=
\sum_{\beta=1}^k
(G(U)^{-1})_{\alpha\beta}Z_\beta(U).
\tag{FTD.12}
```

Then

```math
\langle Z_\gamma(U),\Psi^\alpha(U)\rangle_H
=
\delta_{\alpha\gamma}.
\tag{FTD.13}
```

So every quotient tangent

```math
Z=\sum_{\gamma=1}^k a_\gamma Z_\gamma(U)
\tag{FTD.14}
```

is separated by at least one formal coframe element:

```math
\max_\alpha|\langle Z,\Psi^\alpha(U)\rangle|
\ge
{1\over \sqrt{k}}|a|.
\tag{FTD.15}
```

This is the local complete formal tangent dual atlas.

## 4. Compact finite atlas

If `K_sel` is compact and the quotient tangent bundle is continuous, finitely
many local trivializations cover it:

```math
K_{sel}\subset O_1\cup\cdots\cup O_M.
\tag{FTD.16}
```

On each `O_j`, the construction above gives formal coframes

```math
\Psi^{\alpha,j}(U),
\qquad
\alpha=1,\dots,k.
\tag{FTD.17}
```

Together these finitely many coframes form a complete formal tangent dual atlas:

```math
\boxed{
\text{CompactSelectedProfileClass.A}
+
\text{StableStabilizerStratum.A}
+
\text{UniformQuotientFreeModulationAction.A}
\Longrightarrow
\text{CompleteFormalTangentDualAtlas.A}.
}
\tag{FTD.18}
```

This is a finite-dimensional Hilbert-space construction.

## 5. Exact boundary of the proof

The proof uses formal duals in `H^*`.  It does not prove that the coframes
`\Psi^{\alpha,j}(U)` are native legal tests.  The missing condition is

```math
\Psi^{\alpha,j}(U)
=
\psi^{\alpha,j}_{legal}(U)
+
\operatorname{Err}^{\alpha,j}(U)
\tag{FTD.19}
```

with

```math
\psi^{\alpha,j}_{legal}(U)\in D_{legal}
\tag{FTD.20}
```

and a small error on every quotient tangent direction:

```math
|\langle Z,\operatorname{Err}^{\alpha,j}(U)\rangle|
\le
{1\over2}
|\langle Z,\Psi^{\alpha,j}(U)\rangle|.
\tag{FTD.21}
```

That missing condition is exactly

```math
\text{SameShadowLegalizationOfTangentDuals.A}.
\tag{FTD.22}
```

## 6. Failure modes

There are three precise ways this formal proof can fail.

First, quotient freeness can fail:

```math
\inf_{\substack{a\in\mathcal N_U^\perp\\ |a|=1}}
\|\mathsf T_Ua\|_H=0.
\tag{FTD.23}
```

Then the quotient Gram matrix loses invertibility.

Second, the stabilizer stratum can change, so no continuous finite-rank
quotient tangent bundle is available.

Third, the formal class can be restricted in advance so that it does not contain
the Riesz representatives or the coframe `(FTD.12)`.  In that case the missing
input is not algebraic duality but an explicit formal-mode completeness theorem
for the restricted class.

## Verdict

At the present gauge resolution,

```math
\text{CompleteFormalTangentDualAtlas.A}
\tag{FTD.24}
```

is discharged relative to

```math
\text{CompactSelectedProfileClass.A}
+
\text{StableStabilizerStratum.A}
+
\text{UniformQuotientFreeModulationAction.A}.
\tag{FTD.25}
```

The live proof obligation passes entirely to

```math
\boxed{
\text{SameShadowLegalizationOfTangentDuals.A}.
}
\tag{FTD.26}
```

That is the step where formal modulation coframes must become legal localized
same-shadow pre-Cauchy tests on the selected native source carrier.
