---
theorem_id: forward-gold-selected-square-budget-parent-drain-production-test-20260620
status: direct-production-test-complete-not-proved
logical_landing_node: selected_square_budget_parent_drain_production
edge_effect: "Tests whether the normalized-adjoint parent-drain/source-drain package produces the selected participation square budget. It does not: the discharged source-drain package controls the linear normalized positive source-pulse functional on separated same-fluid source-residue tiles, while the live forward-gold object is the square-strength selected participation current. The heat-scale square pulse Pi_j^{part,+}=lambda_j^{1/2} on |I_j|=lambda_j^{-2} has selected square reserve equal to 1 while its linear source-pulse measure tends to 0. The exact remaining bridge is a same-carrier square residual identification or square parent-drain theorem."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-participation-square-budget-direct-attempt-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-square-reserve-signed-balance-merge-closeout-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md
  - problems/navier-stokes/theorem-construction/mpp-source-drain-definition-alignment-and-discharge-20260504.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-participation-linear-source-pulse-identity-direct-test-20260620.md
downstream_consequence: "The parent-drain machinery remains a real supplier for the linear source-pulse/no-Jump_avg route, but it is not a proof of SelectedParticipationSquareBudget.A. It can pay selected square budget only after a new same-carrier bridge identifies the selected square participation current with weighted adjoint residual squares, or after a square-version parent-drain/no-free-Zeno theorem is proved."
---

# MPP Forward-Gold Selected Square-Budget Parent-Drain Production Test

Date: 2026-06-20

## Status

Direct production test complete.  The normalized-adjoint parent-drain package is
real, but it does not produce the selected participation square budget from the
currently installed inputs.

The tested target was:

```math
\boxed{
\int_{I_j}\lambda_j
\bigl(\Pi_j^{part,+}(t)\bigr)^2\,dt
\le
Legal_j+o_j(1)
}
\tag{PDP.1}
```

on the actual selected positive participation carrier.  Here
\(\Pi_j^{part,+}\) is the positive part of the assembled same-fluid
participation current: pressure, convection, viscosity, cutoff, projection,
commutator, and selector terms are already on the same ledger.

## 1. What the parent-drain package actually proves

The normalized-adjoint source-drain package works on separated same-fluid
terminal tiles \(T=(j,k,Q_T,I_T)\), with

```math
k<j-M,
\qquad
r_T=2^{-j}.
```

It uses the packet equation

```math
L_{j,k}w_j=R_{j,k},
\qquad
L_{j,k}
=
\partial_t+b_k\cdot\nabla-\nu\Delta-A_k,
\tag{PDP.2}
```

where the principal positive strain has been moved into the propagator.  The
backward adjoint packet solves

```math
L_{j,k}^*\psi_T=0,
\qquad
\chi_T(t)=g_T(t)^{-1}\psi_T(t),
\tag{PDP.3}
```

with

```math
g_T(t)
=
\exp\!\left(
\int_t^{t_+}\lambda_{\max}^+(A_k(X_T(s),s))\,ds
\right).
\tag{PDP.4}
```

The discharged residual estimate is

```math
\sum_T
\left|
\int_{I_T}g_T(t)^{-1}
\langle R_{j,k},\psi_T\rangle\,dt
\right|^2
\le
C\int\sum_{q>N}D_q+o_N(1).
\tag{PDP.5}
```

The first-pulse selector in that package is the linear normalized positive
source-pulse functional

```math
\mathcal P(Q_r(x,t))
=
r^{-1}
\int_{Q_r(x,t)}
[F^{src}_{>1/r}]_+.
\tag{PDP.6}
```

Thus the installed source-drain route pays creation of the localized positive
pre-Cauchy source residue measured by `(PDP.6)`.  It gives the supplier chain

```math
LemmaB.SourceDrain
\Longrightarrow
SOURCE.NO\text{-}PULSE.A
\Longrightarrow
AWG.A
\Longrightarrow
Jump_{avg}\Rightarrow\bot
\Longrightarrow
PCTP.hard/TTU.A.
\tag{PDP.7}
```

as supplier/readout support.

## 2. Why this does not identify the selected square current

The forward-gold object is not the linear source-pulse functional `(PDP.6)`.
It is the square-strength selected participation current `(PDP.1)`.

Even under the most favorable identification, namely the model equality

```math
F^{src}_{>1/r_j}
=
\Pi_j^{part,+},
\tag{PDP.8}
```

the two measurements separate on the heat-scale pulse.  Let

```math
|I_j|=\lambda_j^{-2},
\qquad
\Pi_j^{part,+}(t)
=
\lambda_j^{1/2}{\bf 1}_{I_j}(t),
\qquad
\lambda_j=2^j.
\tag{PDP.9}
```

Then the selected square reserve is exactly one:

```math
\int_{I_j}\lambda_j
\bigl(\Pi_j^{part,+}(t)\bigr)^2\,dt
=
\lambda_j\lambda_j\lambda_j^{-2}
=1.
\tag{PDP.10}
```

But the normalized linear source-pulse measurement vanishes:

```math
r_j^{-1}
\int_{I_j}\Pi_j^{part,+}(t)\,dt
=
\lambda_j\lambda_j^{1/2}\lambda_j^{-2}
=
\lambda_j^{-1/2}
\longrightarrow0.
\tag{PDP.11}
```

So the exact enemy that defeats the selected square budget can be invisible to
the source-drain first-pulse selector.  It is square-large and linear-small.

This is not a defect in the parent-drain proof.  It is an object mismatch:

```math
\boxed{
\text{linear source-pulse no-free-creation}
\not\Rightarrow
\text{selected square participation budget}.
}
\tag{PDP.12}
```

## 3. The part that is genuinely harvested

The parent-drain machinery does kill the branch where the selected terminal
object also contains a nonzero linear source-pulse residue.  In that case,
first-pulse selection supplies no earlier source-pulse parent, and `(PDP.5)`
pays any new creation by the residual square.

The follow-up linear identity test shows that this should not be silently
upgraded to all nonzero selected participation residence.  A selected
participation packet can have nonzero linear residence because of principal
flow gain already moved into the propagator while the source-drain residual
creation is zero.  Thus the harvested branch is precisely the source-pulse
subbranch, not every linear selected-participation subbranch.

Thus the source-drain package gives a real conditional fork:

```math
\boxed{
\text{selected terminal pulse has a source-pulse residue}
\Longrightarrow
\text{parent-drain/source-drain payment}.
}
\tag{PDP.13}
```

The live branch after this harvest is the square-only heat-scale branch:

```math
\boxed{
\int_{I_j}\lambda_j
\bigl(\Pi_j^{part,+}\bigr)^2\,dt\ge\eta,
\qquad
r_j^{-1}\int_{I_j}\Pi_j^{part,+}\,dt\to0.
}
\tag{PDP.14}
```

That branch is exactly the retained heat-scale participation reserve already
isolated by the coherent-participation test.  The non-source-residue linear
participation branch is adjacent to it, but weaker: the direct linear
parent/gain test identifies it as normalized endpoint-energy transport.  It
requires linear energy-trace polar saturation and endpoint UI on the normalized
endpoint-energy carrier, not the existing source-pulse parent-drain theorem
alone.

## 4. Exact bridge that would make parent-drain close the square budget

The usable noncircular bridge is not another generic no-incoming statement.  It
has to identify the same selected square carrier with the weighted adjoint
residual squares.  A sufficient theorem is:

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
\int_{I_T}g_T(t)^{-1}
\langle R_{j,k},\psi_T\rangle\,dt
\right|^2
+Legal_j+o_j(1).
}
\tag{PDP.15}
```

Call this

```math
SelectedParticipationToWeightedResidualSquare.A.
```

If `(PDP.15)` is proved, then `(PDP.5)` immediately gives the desired selected
participation square budget `(PDP.1)` up to the already declared legal ledger.

The current installed package proves `(PDP.5)`.  It does not prove `(PDP.15)`.
The obstruction is structural: \(\Pi_j^{part,+}\) is obtained only after
assembling pressure, convection, viscous flux, cutoff, projection, commutator,
and selector terms and then taking a positive part.  The weighted adjoint
residual in `(PDP.5)` is the residual after the principal strain and low-flow
transport have already been moved into the propagator.

Thus the missing point is a same-carrier square identification:

```math
\boxed{
\text{selected positive participation square}
\Longrightarrow
\text{weighted residual square plus legal parent/drain terms}.
}
\tag{PDP.16}
```

## 5. Square parent-drain reformulation

Equivalently, one can rebuild the parent-drain package in square currency.  The
needed theorem is:

```math
\boxed{
\text{SquareParentDrainProduction.A}
}
\tag{PDP.17}
```

with four explicit components:

```math
\begin{gathered}
\text{SquareCarrierLocalization.A},\\
\text{SquareResidualAdjointIdentity.A},\\
\text{SquareFirstPulseNoParent.A},\\
\text{SquareParentKernelContraction.A}.
\end{gathered}
\tag{PDP.18}
```

The target output would be

```math
\int_{I_j}\lambda_j
\bigl(\Pi_j^{part,+}\bigr)^2\,dt
\le
C\int\sum_{q>N}D_q
+Legal_j+o_j(1).
\tag{PDP.19}
```

This is not currently installed.  It is another exact form of
`SelectedParticipationSquareBudget.A`, not a lower theorem already supplied by
the source-drain files.

## Verdict

The normalized-adjoint parent-drain machinery should be retained, because it
does real work: it pays source-pulse creation after the principal positive
strain is put into the packet propagator.

It does not close the current forward-gold obstruction.  The remaining object
is the square-only selected participation pulse:

```math
\boxed{
\text{square-large on the selected carrier, linear-small for source-pulse
selection}.
}
\tag{PDP.20}
```

The exact surviving production bridge is therefore

```math
\boxed{
SelectedParticipationToWeightedResidualSquare.A
}
\tag{PDP.21}
```

or the equivalent square-currency parent-drain theorem

```math
\boxed{
SquareParentDrainProduction.A.
}
\tag{PDP.22}
```

Until one of those is proved, the parent-drain route remains a real supplier
for the linear source-pulse/no-`Jump_avg` branch, not a proof of
`SelectedParticipationSquareBudget.A`.
