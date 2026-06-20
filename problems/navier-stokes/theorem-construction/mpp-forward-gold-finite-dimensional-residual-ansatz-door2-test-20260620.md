# Finite-Dimensional Residual Ansatz Door 2 Test

Date: 2026-06-20

## Status

Direct Door 2 route test complete.  `FiniteDimensionalResidualAnsatz.A` is not
installed by the current zero-flux Zeno inputs.  It is equivalent, at this
resolution, to proving that the normalized terminal defect has no packet-scale
defect measure except finitely many modulation tangent directions.

This turns the finite-mode residue branch into the rigidity side of Door 2:
no drift, no residual source measure, no defect measure, and stationarity.

## 1. Target under test

The finite-dimensional ansatz needed by the rank test is

```math
dE_m
=
\sum_{\alpha=1}^d b_{\alpha,m}\eta_{\alpha,m}
+dE_m^{legal},
\tag{FDA.1}
```

where the number `d` is fixed, the residual basis
`\eta_{\alpha,m}` is tied to modulation tangent directions, and

```math
\|dE_m^{legal}\|_{TV}
\le
\operatorname{Legal}_m+o_m(1).
\tag{FDA.2}
```

With a lower Gram bound against the finite mode tests, `(FDA.1)` converts
finite-mode moment control into residual evacuation.

## 2. Why current zero-flux Zeno inputs do not install it

The current zero-flux branch supplies a terminal critical/Zeno structure, not a
finite-dimensional residual normal form.  A same-shadow residual can still have
packet-scale oscillatory content:

```math
dE_m^{osc}
=
\sum_{j=1}^{K_m} c_{j,m}\delta_{P_{j,m}},
\qquad
K_m\to\infty,
\tag{FDA.3}
```

with zero scalar moment and zero finite-mode moments:

```math
\langle dE_m^{osc},1\rangle=0,
\qquad
\langle dE_m^{osc},\psi_i\rangle=0
\quad
\text{for every fixed }i,
\tag{FDA.4}
```

but with nonzero total variation:

```math
\|dE_m^{osc}\|_{TV}\ge c_*>0.
\tag{FDA.5}
```

This is the growing-packet kernel from the finite-mode rank test.  It is not
excluded by zero stress flux or by nondegeneracy of the modulation Jacobian.

## 3. What would prove the ansatz

The ansatz follows from four concrete Door 2 rigidity inputs.

First, no drift and unique tangent:

```math
U_m(s)\to U_*
\quad
\text{in a fixed normalized gauge, without profile switching}.
\tag{FDA.6}
```

Second, defect-measure evacuation:

```math
dE_m
-
\Pi_{T_{U_*}\mathcal M}dE_m
\longrightarrow0
\quad
\text{in total variation on the selected shadow}.
\tag{FDA.7}
```

Here `T_{U_*}M` denotes the finite modulation tangent space.

Third, asymptotic stationarity:

```math
\partial_s U_m
\longrightarrow0
\quad
\text{in the same local residual topology}.
\tag{FDA.8}
```

Fourth, legal commutator control for the fixed gauge:

```math
\text{all lift/projection/cutoff/gauge commutators}
\le
\operatorname{Legal}_m+o_m(1).
\tag{FDA.9}
```

Under `(FDA.6)`--`(FDA.9)`, the only nonlegal residual directions are the
finite modulation tangent directions, giving `(FDA.1)`.

Thus the exact conditional bridge is

```math
\boxed{
\begin{gathered}
\text{ZenoNoDriftUniqueTangent.A}
+
\text{DefectMeasureEvacuation.A}
+
\text{RenormalizedZenoStationarity.A}
\\
+
\text{FixedGaugeCommutatorLegal.A}
\Longrightarrow
\text{FiniteDimensionalResidualAnsatz.A}.
\end{gathered}
}
\tag{FDA.10}
```

## 4. Door merger

The rank test leaves two honest ways to control the test-enriched residual.

The Door 1 way is signed-current saturation:

```math
\text{TotalVariationSameShadowResidueEvacuation.A}
\tag{FDA.11}
```

which is the same no-free terminal Zeno donor-chain wall.

The Door 2 way is rigidity:

```math
\text{FiniteDimensionalResidualAnsatz.A}
+
\text{ModeResidualGramLowerBound.A}.
\tag{FDA.12}
```

The ansatz is not a bookkeeping theorem.  It is the statement that the zero-flux
terminal object has become a compact modulated profile with no residual defect
measure outside finite modulation directions.

## Verdict

`FiniteDimensionalResidualAnsatz.A` is not installed from the present zero-flux
Zeno structure.  The missing content is exactly the Door 2 production package:
`ZenoNoDriftUniqueTangent.A`, `RenormalizedZenoStationarity.A`, and
`DefectMeasureEvacuation.A`, plus fixed-gauge commutator legality.

So the finite-mode residue route does not add a third branch.  It forces the
same fork already exposed by the gold program:

```math
\boxed{
\text{total-variation signed saturation}
\quad\text{or}\quad
\text{zero-flux finite-dimensional rigidity}.
}
\tag{FDA.13}
```
