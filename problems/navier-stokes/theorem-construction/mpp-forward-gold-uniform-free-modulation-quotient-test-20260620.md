# Uniform Free Modulation Quotient Test

Date: 2026-06-20

## Status

Direct quotient test complete.  Full `UniformFreeModulationAction.A` is too
strong when a selected profile has a genuine stabilizer.  The exact replacement
is uniform freeness on the quotient by the stabilizer, plus a readout
compatibility clause for neutral stabilizer motion.

This prevents a false gauge burden: rotations of a radial profile and scale
motion of an exactly critical homogeneous profile are not profile-changing
directions.  The proof must coerce only the directions that actually move the
selected terminal profile.

## 1. Stabilizer split

Use the notation of the compact-frame proof.  For each selected profile
`U in K_sel`, define

```math
\mathsf T_Ua
=
\sum_{\beta=1}^d a_\beta X_\beta(U),
\qquad
a\in\mathbb R^d.
\tag{UFQ.1}
```

The infinitesimal stabilizer is

```math
\mathcal N_U
:=
\ker\mathsf T_U.
\tag{UFQ.2}
```

Let

```math
\mathbb R^d
=
\mathcal N_U\oplus \mathcal N_U^\perp.
\tag{UFQ.3}
```

Full uniform freeness asks for

```math
\inf_{U\in K_{sel}}\inf_{|a|=1}\|\mathsf T_Ua\|_H>0.
\tag{UFQ.4}
```

This fails as soon as any profile has a nonzero stabilizer.

The quotient version asks for

```math
m_q
:=
\inf_{U\in K_{sel}}
\inf_{\substack{a\in\mathcal N_U^\perp\\ |a|=1}}
\|\mathsf T_Ua\|_H
>0.
\tag{UFQ.5}
```

Equivalently, the smallest positive singular value of `T_U` is uniformly
bounded below on the selected profile class.

## 2. Compact proof of quotient freeness

Assume:

```math
K_{sel}\ \text{is compact},
\qquad
U\mapsto \mathsf T_U\ \text{is continuous},
\tag{UFQ.6}
```

and the stabilizer dimension is constant:

```math
\dim\ker\mathsf T_U=k
\qquad
\text{for all }U\in K_{sel}.
\tag{UFQ.7}
```

Assume also pointwise quotient freeness:

```math
\mathsf T_Ua\ne0
\qquad
\text{whenever }a\in\mathcal N_U^\perp,\ |a|=1.
\tag{UFQ.8}
```

Then `(UFQ.5)` holds.

Proof: under constant rank, the orthogonal projections
`P_U^\perp` onto `N_U^\perp` vary continuously on `K_sel`.  The set

```math
\mathcal Q
:=
\{(U,a): U\in K_{sel},\ a\in\mathcal N_U^\perp,\ |a|=1\}
\tag{UFQ.9}
```

is compact.  The function

```math
(U,a)\mapsto \|\mathsf T_Ua\|_H
\tag{UFQ.10}
```

is continuous and positive on `Q` by `(UFQ.8)`.  Its minimum is therefore
positive, which is `(UFQ.5)`.

Thus

```math
\boxed{
\text{CompactSelectedProfileClass.A}
+
\text{StableStabilizerStratum.A}
+
\text{PointwiseQuotientFreeAction.A}
\Longrightarrow
\text{UniformQuotientFreeModulationAction.A}.
}
\tag{UFQ.11}
```

## 3. What the quotient spectral gap gives

The compact-frame proof can now be run on the quotient tangent sphere

```math
\mathcal S_q
:=
\{\mathsf T_Ua: U\in K_{sel},\ a\in\mathcal N_U^\perp,\ |a|=1\}.
\tag{UFQ.12}
```

With legal norming tests, it yields

```math
\sum_{i=1}^N
|\langle \mathsf T_Ua,\Psi_i\rangle|^2
\ge
c_q^2\,\operatorname{dist}(a,\mathcal N_U)^2.
\tag{UFQ.13}
```

This is the correct gauge coercivity statement:

```math
\operatorname{dist}(\dot\alpha,\mathcal N_U)
\le
C
\left(
\|\partial_sU_{\alpha(s)}\|_{\mathcal X^\ast}
+
\operatorname{Def}_{gauge}(s)
\right).
\tag{UFQ.14}
```

It controls profile-changing drift and leaves neutral stabilizer drift
unmeasured.

## 4. Stabilizer readout compatibility

Neutral stabilizer drift is harmless only if it is also invisible to the
selected source, mode, and endpoint readouts.  The needed compatibility is

```math
\mathcal R(g_\eta U)=\mathcal R(U)
\qquad
\text{for every } \eta\in\operatorname{Stab}(U),
\tag{UFQ.15}
```

where `R` denotes the selected native source carrier, finite mode readout, and
endpoint test family used downstream.

If `(UFQ.15)` fails, motion inside the profile stabilizer can still move the
selected ledger.  That creates a real readout defect, not a gauge-coercivity
defect.  The defect must be paid by a same-shadow source/mode readout theorem
or by strict no-waste.

So the corrected route is

```math
\boxed{
\text{UniformQuotientFreeModulationAction.A}
+
\text{StabilizerReadoutCompatibility.A}
\Longrightarrow
\text{usable gauge action for selected readouts}.
}
\tag{UFQ.16}
```

## 5. Exact failure modes

There are three remaining failures.

First, rank can drop:

```math
\dim\ker\mathsf T_{U_m}\not\equiv k,
\tag{UFQ.17}
```

so the stabilizer stratum changes and the smallest positive singular value can
collapse.

Second, pointwise quotient freeness can fail:

```math
\mathsf T_Ua=0
\quad
\text{for some }a\notin\mathcal N_U,
\tag{UFQ.18}
```

which means the chosen tangent list or quotient is wrong.

Third, selected readouts can fail stabilizer invariance:

```math
\mathcal R(g_\eta U)-\mathcal R(U)\ne0
\tag{UFQ.19}
```

for a neutral profile symmetry.  Then neutral profile motion still changes the
proof ledger and must be charged outside gauge coercivity.

## Verdict

The freeness input in the compact-frame proof is too strong in full parameter
space and correct modulo stabilizers.  The precise replacement is

```math
\text{StableStabilizerStratum.A}
+
\text{PointwiseQuotientFreeAction.A}
+
\text{StabilizerReadoutCompatibility.A}.
\tag{UFQ.20}
```

This closes the false stabilizer objection and leaves a smaller real burden:
the selected terminal class must remain in one stabilizer stratum, with legal
readouts invariant under neutral symmetry and coercive on every
profile-changing direction.
