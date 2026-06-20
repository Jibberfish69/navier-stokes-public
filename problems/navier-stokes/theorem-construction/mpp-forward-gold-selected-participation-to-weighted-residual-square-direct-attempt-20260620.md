---
theorem_id: forward-gold-selected-participation-to-weighted-residual-square-direct-attempt-20260620
status: direct-bridge-attempt-complete-not-proved
logical_landing_node: selected_participation_to_weighted_residual_square
edge_effect: "Attempts the exact bridge exposed by the parent-drain production test: dominate the selected positive participation square by weighted adjoint residual squares on the same carrier. The bridge does not follow from the installed source-drain package because the residual estimate is signed/integrated, while the selected participation budget takes a positive part and squares before signed cancellation, parent inheritance, and selector/cutoff/projection defects are reconciled."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-square-budget-parent-drain-production-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-source-square-carrier-domination-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-source-square-ladder-closeout-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-participation-linear-source-pulse-identity-direct-test-20260620.md
downstream_consequence: "WeightedAdjRes.A would close the selected square budget only after a new same-carrier bridge installs square polar saturation/sign coherence and square-carrier adjoint localization. Without those inputs, the bridge returns to SelectedPositivePolarSaturation.A / TerminalSignedSaturation.A / NoFreeTerminalZenoDonorChain.A or to a square-currency parent-drain theorem."
---

# MPP Forward-Gold Selected Participation To Weighted Residual Square Direct Attempt

Date: 2026-06-20

## Status

Direct bridge attempt complete.  The bridge is not proved from installed inputs.

The desired bridge was:

```math
\boxed{
\sum_{T\in\mathcal F_j}
\lambda_j
\int_{I_T}
\bigl(\Pi_{j,T}^{part,+}(t)\bigr)^2\,dt
\le
C
\sum_{T\in\mathcal F_j}
\left|
\int_{I_T}
g_T(t)^{-1}
\langle R_{j,k},\psi_T\rangle\,dt
\right|^2
+Legal_j+o_j(1).
}
\tag{PWR.1}
```

The right side is paid by the installed weighted-adjoint residual estimate.
Thus `(PWR.1)` would immediately imply the selected participation square budget.

The installed inputs do not prove `(PWR.1)`.

## 1. What `WeightedAdjRes.A` pays

The source-drain package proves

```math
\sum_T
\left|
\int_{I_T}
g_T(t)^{-1}
\langle R_{j,k},\psi_T\rangle\,dt
\right|^2
\le
C\int\sum_{q>N}D_q+o_N(1).
\tag{PWR.2}
```

Here \(R_{j,k}\) is the residual in

```math
L_{j,k}w_j=R_{j,k},
\qquad
L_{j,k}
=
\partial_t+b_k\cdot\nabla-\nu\Delta-A_k.
\tag{PWR.3}
```

The positive principal strain has been moved into the propagator.  The residual
estimate pays creation that appears in the signed adjoint pairing.

## 2. What the selected square budget asks for

The selected square budget asks for the square of the positive part of the
assembled participation current:

```math
\int_{I_j}\lambda_j
\bigl(\Pi_j^{part,+}(t)\bigr)^2\,dt.
\tag{PWR.4}
```

This operation changes the order:

```math
\text{assemble signed current}
\quad\longrightarrow\quad
\text{take positive part}
\quad\longrightarrow\quad
\text{square in time}.
\tag{PWR.5}
```

`WeightedAdjRes.A` controls a different operation:

```math
\text{signed residual}
\quad\longrightarrow\quad
\text{integrate against an adjoint packet}
\quad\longrightarrow\quad
\text{square the resulting scalar}.
\tag{PWR.6}
```

There is no formal inequality from `(PWR.6)` to `(PWR.5)`.

## 3. Exact cancellation obstruction

The obstruction is already visible in one time variable.  A candidate estimate
of the form

```math
\int_I f_+(t)^2\,dt
\le
C\left|\int_I f(t)\,dt\right|^2
+Legal
\tag{PWR.7}
```

is false without a sign-coherence or polar-saturation input.

Take

```math
f(t)
=
A{\bf 1}_{[0,h/2]}(t)
-
A{\bf 1}_{[h/2,h]}(t).
\tag{PWR.8}
```

Then

```math
\int_I f(t)\,dt=0,
\tag{PWR.9}
```

while

```math
\int_I f_+(t)^2\,dt
=
{A^2h\over2}.
\tag{PWR.10}
```

At heat scale, take

```math
h=\lambda_j^{-2},
\qquad
A=\lambda_j^{1/2}.
\tag{PWR.11}
```

Then the selected square reserve is exactly one half:

```math
\lambda_j\int_I f_+(t)^2\,dt
=
{1\over2},
\tag{PWR.12}
```

but the signed integrated residual is zero.

This is not asserted to be a Navier-Stokes solution.  It is the exact functional
reason `(PWR.1)` is not a consequence of a signed integrated adjoint estimate.
The positive selected part can survive after the signed partner has left the
retained ledger unless a separate saturation theorem keeps or charges that
partner.

## 4. Why refining tiles does not solve this for free

One might try to split every terminal tile at sign changes.  That would replace
`(PWR.9)` by positive subinterval pairings.

That refinement is not free.  It requires all of the following on the same
selected carrier:

```math
\begin{gathered}
\text{sign-adapted measurable packet refinement},\\
\text{bounded overlap after refinement},\\
\text{weighted adjoint Bessel stability for the refined family},\\
\text{legal control of new cutoff/projection/selector commutators},\\
\text{no loss of first-pulse minimality under refinement}.
\end{gathered}
\tag{PWR.13}
```

Those properties are not installed.  Without them, tile refinement merely moves
the bridge into the same carrier-saturation problem.

## 5. Parent inheritance is a second obstruction

The adjoint identity gives parent-or-charge, not charge-only.  A positive
selected participation packet can be inherited from an earlier parent rather
than created by \(R_{j,k}\).  The source-drain route removes that parent branch
only for the linear source-pulse selector.

For selected participation pulses that are not already source-pulse residues,
the relevant no-parent statement must be stated in participation currency.  In
the square-only heat-scale branch this becomes:

```math
\boxed{
\text{earliest selected square pulse has no earlier selected square parent}.
}
\tag{PWR.14}
```

The installed first-pulse theorem gives the no-parent property for the linear
source-pulse residue, not for `(PWR.4)`.  Therefore parent inheritance cannot be
dropped in the selected square bridge without a square-currency first-pulse
theorem.

## 6. Exact missing bridge decomposition

The attempted bridge reduces to the following exact subtheorems:

```math
\boxed{
SquareCarrierAdjointLocalization.A
}
\tag{PWR.15}
```

meaning the assembled selected participation current can be represented on the
same terminal packet family by adjoint residual pairings plus legal terms;

```math
\boxed{
SelectedSquarePolarSaturation.A
}
\tag{PWR.16}
```

meaning positive selected square mass cannot remain after its signed partner is
lost to cancellation, selector drift, projection, cutoff, or donor transfer
without paying legal cost;

and

```math
\boxed{
SquareFirstPulseNoParent.A
}
\tag{PWR.17}
```

meaning earliest square pulses, not only earliest linear source-pulses, have no
unpaid earlier parent chain.

Together they would give:

```math
\boxed{
SquareCarrierAdjointLocalization.A
+
SelectedSquarePolarSaturation.A
+
SquareFirstPulseNoParent.A
\Longrightarrow
SelectedParticipationToWeightedResidualSquare.A.
}
\tag{PWR.18}
```

Then `(PWR.2)` would close the selected square budget.

The follow-up direct localization test shows that the first subtheorem is not
a formal consequence of the installed source-drain package.  The selected
participation square counts principal positive strain work, while
`WeightedAdjRes.A` controls the residual after that principal strain has been
moved into the propagator.  Thus the carrier-localization subpiece itself
reduces to a square parent-or-charge law for the principal-flow gain, or to
replacing the selected carrier by a residual-only square current.

## Verdict

`SelectedParticipationToWeightedResidualSquare.A` is not installed and is not a
formal corollary of `WeightedAdjRes.A`.

The exact failure is:

```math
\boxed{
\text{signed integrated adjoint residual control}
\not\Rightarrow
\text{positive-part square control on the selected participation carrier}.
}
\tag{PWR.19}
```

The bridge returns to the same unresolved core:

```math
\boxed{
SelectedPositivePolarSaturation.A
\quad/\quad
TerminalSignedSaturation.A
\quad/\quad
NoFreeTerminalZenoDonorChain.A
}
\tag{PWR.20}
```

or to the equivalent square-currency parent-drain theorem:

```math
\boxed{
SquareParentDrainProduction.A.
}
\tag{PWR.21}
```
