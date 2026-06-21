---
theorem_id: forward-gold-defect-free-linearized-renormalized-tangent-direct-test-20260620
status: direct-test-complete-not-installed
logical_landing_node: defect_free_linearized_renormalized_ns_tangent
edge_effect: "Tests the PDE hinge beneath annular readout completeness/rank: a source-null quotient tangent must satisfy a homogeneous linearized renormalized Navier-Stokes equation before unique continuation or Carleman observability can kill it. Current Zeno compactness and source-null inputs do not provide this. The limit tangent may carry modulation drift, selector drift, residual time dependence, pressure/cutoff defects, source residue, or defect measure. Producing the defect-free tangent equation reduces to the same no-drift, strict no-waste, or exact Zeno profile-production wall."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-readout-completeness-rank-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-null-tangent-evacuation-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-zeno-endpoint-coherence-source-trace-split-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rigid-zeno-profile-production-exhaustion-20260620.md
downstream_consequence: "Do not invoke Carleman, backward uniqueness, or annular Cauchy observability on a source-null tangent until DefectFreeLinearizedRenormalizedNSTangent.A is proved. That proof requires strong local convergence, a stable quotient gauge, modulation/selector freezing, residual source and defect-measure evacuation, and either strict no-waste/unweighted action or exact Zeno profile production."
---

# MPP Forward-Gold Defect-Free Linearized Renormalized Tangent Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `DefectFreeLinearizedRenormalizedNSTangent.A` is not
installed by current inputs.

This is the PDE hinge beneath the annular no-escape / Carleman route.  A
Carleman or Cauchy observability theorem can only kill source-null motion after
that motion is known to solve the correct homogeneous linearized renormalized
Navier--Stokes equation.

## 1. Target equation

In terminal heat-scale variables, the renormalized velocity satisfies

```math
\partial_s U
-\nu\Delta U
+
(U\cdot\nabla)U
+
\nabla P
+
{1\over2}y\cdot\nabla U
+
{1\over2}U
=0,
\qquad
\nabla\cdot U=0,
\tag{DLT.1}
```

after the center, scale, and rotation gauges have been fixed and all forcing
has been removed.

A quotient tangent \(Z\) around \(U\) would need to satisfy the homogeneous
linearized equation

```math
\boxed{
\partial_s Z
-\nu\Delta Z
+
(U\cdot\nabla)Z
+
(Z\cdot\nabla)U
+
\nabla \Pi_Z
+
{1\over2}y\cdot\nabla Z
+
{1\over2}Z
=0,
\qquad
\nabla\cdot Z=0.
}
\tag{DLT.2}
```

This is `DefectFreeLinearizedRenormalizedNSTangent.A`.

## 2. What the Zeno/source-null branch currently gives

The source-null branch gives a quotient tangent direction \(a\in E_U\) with

```math
\Gamma_Ua=0.
\tag{DLT.3}
```

It does not by itself produce `(DLT.2)`.  The actual limiting difference may
only satisfy

```math
\mathcal L_U Z
=
\mathcal M_{gauge}
+
\mathcal M_{selector}
+
\mathcal R_{time}
+
\mathcal R_{pressure/cutoff}
+
\mathcal R_{src}
+
\mathcal D_{defect},
\tag{DLT.4}
```

where:

```math
\mathcal M_{gauge}
\tag{DLT.5}
```

is scale/center/rotation/modulation drift;

```math
\mathcal M_{selector}
\tag{DLT.6}
```

is selector or profile switching;

```math
\mathcal R_{time}
\tag{DLT.7}
```

is residual renormalized time dependence;

```math
\mathcal R_{pressure/cutoff}
\tag{DLT.8}
```

is pressure, localization, lift, projection, or collar error;

```math
\mathcal R_{src}
\tag{DLT.9}
```

is residual selected/nonselected source trace; and

```math
\mathcal D_{defect}
\tag{DLT.10}
```

is weak-limit or defect-measure residue.

Carleman cannot be applied to `(DLT.4)` as if it were `(DLT.2)` unless every
term on the right is zero or legally absorbed with the correct norm.

## 3. Exact obstruction model

The obstruction is simple at the level of linear PDE.  A field can have zero
observed source trace and zero boundary readout while failing homogeneous
unique continuation because it is forced:

```math
\mathcal L_U Z=F,
\qquad
\mathcal B_UZ=0,
\qquad
F\ne0.
\tag{DLT.11}
```

No homogeneous Carleman theorem implies \(Z=0\) from `(DLT.11)`.  It only gives
an estimate of \(Z\) by \(F\), boundary terms, and weighted bulk terms.  Thus
the defect-free equation is not a cosmetic hypothesis; it is the condition
that prevents hidden forcing from replacing the source-null motion.

## 4. What would prove the defect-free tangent equation

A noncircular sufficient package is:

```math
\boxed{
\begin{gathered}
\text{StrongLocalRenormalizedConvergence.A}
+
\text{StableQuotientGaugeAndStabilizer.A}
\\
+
\text{ModulationFreezing.A}
+
\text{SelectorStability.A}
\\
+
\text{ResidualSourceEvacuation.A}
+
\text{PressureCutoffDefectEvacuation.A}
\\
+
\text{DefectMeasureEvacuation.A}
\\
\Longrightarrow
\text{DefectFreeLinearizedRenormalizedNSTangent.A}.
\end{gathered}
}
\tag{DLT.12}
```

Each term has real content:

```math
\text{StrongLocalRenormalizedConvergence.A}
\tag{DLT.13}
```

allows passage from difference quotients to a tangent equation;

```math
\text{StableQuotientGaugeAndStabilizer.A}
\tag{DLT.14}
```

prevents a changing kernel from becoming an artificial tangent;

```math
\text{ModulationFreezing.A + SelectorStability.A}
\tag{DLT.15}
```

removes drift and switching;

```math
\text{ResidualSourceEvacuation.A + PressureCutoffDefectEvacuation.A}
\tag{DLT.16}
```

removes nonhomogeneous source/localization forcing; and

```math
\text{DefectMeasureEvacuation.A}
\tag{DLT.17}
```

upgrades weak compactness to a PDE tangent without hidden measure forcing.

## 5. Relation to existing walls

The package `(DLT.12)` is not currently installed.

`ModulationFreezing.A` and `SelectorStability.A` are the no-drift/unique-tangent
part of the Zeno profile-production wall.  `ResidualSourceEvacuation.A`,
`PressureCutoffDefectEvacuation.A`, and `DefectMeasureEvacuation.A` are exactly
the no-waste/source-residue evacuation problem.  Strong convergence is also not
available from weak current or tangent compactness alone.

Thus the defect-free tangent equation reduces to:

```math
\boxed{
\text{StrictRescaledNoWasteLyapunov.A / UnweightedTerminalCriticalActionReserve.A}
\quad\text{or}\quad
\text{MinimalZenoProfileProduction.A}.
}
\tag{DLT.18}
```

## 6. Exact Carleman boundary

If `(DLT.2)` is proved, then a Carleman/observability route becomes meaningful:

```math
\text{DefectFreeLinearizedRenormalizedNSTangent.A}
+
\text{FullAnnularCauchyLegalTraceCapture.A}
+
\text{UniformCarlemanObservabilityOnSelectedClass.A}
\Longrightarrow
\text{AnnularReadoutCompleteness.A}.
\tag{DLT.19}
```

But without `(DLT.2)`, Carleman is only a forced estimate:

```math
\|Z\|
\le
C\left(
\|\mathcal B_UZ\|
+
\|\mathcal L_UZ\|
\right),
\tag{DLT.20}
```

and \(\|\mathcal L_UZ\|\) is precisely the unremoved defect.

## Verdict

`DefectFreeLinearizedRenormalizedNSTangent.A` is not a hidden consequence of
source-nullity, tangent compactness, or annular readout abundance.

It is the no-defect production theorem needed before unique continuation can
act.  At current input strength it is another face of the same source-null
wall:

```math
\boxed{
\text{strict unweighted no-waste/action}
\quad\text{or}\quad
\text{exact Zeno profile production}.
}
\tag{DLT.21}
```
