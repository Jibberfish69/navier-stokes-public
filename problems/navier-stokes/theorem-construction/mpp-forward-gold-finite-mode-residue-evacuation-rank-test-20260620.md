# Finite-Mode Residue Evacuation Rank Test

Date: 2026-06-20

## Status

Direct rank test complete.  A finite family of mode tests cannot evacuate an
arbitrary signed same-shadow residual measure.  It can only evacuate residuals
known in advance to lie in the finite-dimensional test span, or residuals
controlled by a total-variation / source-square / no-waste theorem.

This sharpens the test-enriched residue wall: `FiniteModeResidueEvacuation.A`
is not a generic consequence of having finitely many nondegenerate modulation
tests.

## 1. Target under test

Let the same-shadow residual be a signed packet measure

```math
dE_m
=
\sum_{P\in F_m^{sel}} e_P\,\delta_P.
\tag{FMR.1}
```

The finite-mode evacuation target is

```math
\left|
\sum_{P\in F_m^{sel}}e_P\psi_i(P)
\right|
\le
\operatorname{Legal}_{m,i}+o_m(1),
\qquad
i=1,\dots,N_{mode},
\tag{FMR.2}
```

plus the scalar moment

```math
\left|
\sum_{P\in F_m^{sel}}e_P
\right|
\le
\operatorname{Legal}_{m,0}+o_m(1),
\tag{FMR.3}
```

with the desired conclusion that the residual is evacuated in the selected
shadow.

## 2. Kernel countermodel

Choose `K>N_mode+1` retained packets `P_1,\dots,P_K`.  Form the matrix

```math
A_{iP}:=\psi_i(P),
\qquad
i=1,\dots,N_{mode},
\tag{FMR.4}
```

and add the scalar row

```math
A_{0P}:=1.
\tag{FMR.5}
```

The matrix has at most `N_mode+1` rows and `K` columns.  Hence there is a
nonzero vector `c=(c_P)` with

```math
\sum_{P=1}^K c_P=0,
\qquad
\sum_{P=1}^K c_P\psi_i(P)=0
\quad
\text{for every }i.
\tag{FMR.6}
```

Set

```math
dE_m
=
A_*\sum_{P=1}^K c_P\,\delta_P,
\qquad
A_*>0.
\tag{FMR.7}
```

Then all scalar and finite-mode moments vanish:

```math
\langle dE_m,1\rangle=0,
\qquad
\langle dE_m,\psi_i\rangle=0
\quad
\text{for every }i.
\tag{FMR.8}
```

But the total variation is positive:

```math
\|dE_m\|_{TV}
=
A_*\sum_{P=1}^K |c_P|
>0.
\tag{FMR.9}
```

Thus finite-mode moment cancellation does not imply same-shadow residual
evacuation.

## 3. Consequence for the Door 2 mode route

The lower modulation Jacobian says that the chosen modes separate the finite
modulation tangent directions.  It does not say that they separate every signed
packet residual in the selected source shadow.

So the implication

```math
\text{NondegenerateModulationJacobian.A}
\Longrightarrow
\text{FiniteModeResidueEvacuation.A}
\tag{FMR.10}
```

is false without an additional residual-structure theorem.

## 4. Exact sufficient structures

There are three exact ways to make finite-mode evacuation valid.

### 4.1 Finite-dimensional residual ansatz

Assume the residual lies in a fixed finite-dimensional span

```math
dE_m
=
\sum_{\alpha=1}^d b_\alpha\,\eta_{\alpha,m}
+dE_m^{legal},
\tag{FMR.11}
```

and assume the mode matrix against that residual basis has a lower singular
value:

```math
\sum_{i=1}^{N_{mode}}
\left|
\sum_{\alpha=1}^d b_\alpha
\langle \eta_{\alpha,m},\psi_i\rangle
\right|^2
\ge
c_*^2 |b|^2.
\tag{FMR.12}
```

Then small finite-mode moments force `b` small and evacuate the structured
part of the residual.

This is a real theorem only after `(FMR.11)` is proved.  It is not supplied by
packet bounded overlap or by scalar signed cancellation.

### 4.2 Total-variation same-shadow evacuation

If

```math
\|dE_m\|_{TV(F_m^{sel})}
\le
\operatorname{Legal}_m+o_m(1),
\tag{FMR.13}
```

then every bounded mode test is controlled:

```math
|\langle dE_m,\psi_i\rangle|
\le
\|\psi_i\|_\infty
\bigl(\operatorname{Legal}_m+o_m(1)\bigr).
\tag{FMR.14}
```

This is the strongest same-shadow saturation route.

### 4.3 Growing packet-indicator test family

If the proof permits the packet indicator tests `1_{\{P\}}` for every retained
packet, then the test family separates all signed packet residuals.  This is
not the finite Door 2 modulation family.  It is a growing atlas of packet tests,
and it requires legal summability plus a test-enriched residue identity for
each packet test.

At current resolution this is another form of total-variation same-shadow
evacuation.

## 5. Updated residue wall

The test-enriched identity can no longer be compressed to "finite modes see the
residual."  The exact residue wall is:

```math
\boxed{
\text{TestEnrichedMinimalChainResidueIdentity.A}
\Leftarrow
\text{FiniteDimensionalResidualAnsatz.A}
+
\text{ModeResidualGramLowerBound.A}
}
\tag{FMR.15}
```

or

```math
\boxed{
\text{TestEnrichedMinimalChainResidueIdentity.A}
\Leftarrow
\text{TotalVariationSameShadowResidueEvacuation.A}.
}
\tag{FMR.16}
```

The second route is the Door 1 signed-saturation wall.  The first route is a
new rigidity statement: the selected same-shadow residual must be proved to have
only finite modulation degrees of freedom.

## Verdict

Finite modulation tests do not control arbitrary same-shadow signed residuals.
There is a finite-dimensional kernel whenever the selected packet shadow has
more independent packets than the number of tested moments.

The Door 2 residue route therefore needs either total-variation same-shadow
residue evacuation, or a finite-dimensional residual ansatz plus a Gram lower
bound.  Current inputs do not install either theorem.
