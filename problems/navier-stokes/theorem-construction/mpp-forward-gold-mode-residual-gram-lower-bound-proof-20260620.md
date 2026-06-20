# Mode Residual Gram Lower Bound Proof

Date: 2026-06-20

## Status

Relative proof complete.  `ModeResidualGramLowerBound.A` is not an independent
Door 2 obstruction once the finite-dimensional residual ansatz identifies the
residual basis with the modulation tangent basis up to a small legal Gram error.

The remaining hard part is the residual-basis identification, not the finite
matrix lower bound.

## 1. Original modulation Jacobian lower bound

Let `G_beta U_m`, `beta=1,...,d`, be the modulation tangent directions, and let
`\psi_i`, `i=1,...,N_mode`, be the selected finite mode tests.  Define

```math
K_{i\beta}^{(m)}
:=
\langle G_\beta U_m,\psi_i\rangle.
\tag{MRG.1}
```

Assume the original nondegenerate modulation Jacobian:

```math
\sum_{i=1}^{N_{mode}}
\left|
\sum_{\beta=1}^d a_\beta K_{i\beta}^{(m)}
\right|^2
\ge
c_0^2 |a|^2
\qquad
\text{for every }a\in\mathbb R^d.
\tag{MRG.2}
```

## 2. Residual basis identification

Let the finite-dimensional residual ansatz use basis elements
`\eta_{\alpha,m}`, `alpha=1,...,d`.  Assume they are identified with the
modulation tangent basis by

```math
\eta_{\alpha,m}
=
\sum_{\beta=1}^d B_{\beta\alpha}^{(m)}G_\beta U_m
+r_{\alpha,m},
\tag{MRG.3}
```

where the basis-change matrix has a lower singular value

```math
|B^{(m)}b|
\ge
b_0|b|
\qquad
\text{for every }b\in\mathbb R^d,
\tag{MRG.4}
```

and the residual Gram error satisfies

```math
\sum_{i=1}^{N_{mode}}
\left|
\sum_{\alpha=1}^d b_\alpha
\langle r_{\alpha,m},\psi_i\rangle
\right|^2
\le
\varepsilon_m^2 |b|^2,
\qquad
\varepsilon_m\le {c_0b_0\over2}.
\tag{MRG.5}
```

## 3. Residual Gram matrix

Define

```math
H_{i\alpha}^{(m)}
:=
\langle \eta_{\alpha,m},\psi_i\rangle.
\tag{MRG.6}
```

For any `b in R^d`, `(MRG.3)` gives

```math
\sum_{\alpha=1}^d b_\alpha H_{i\alpha}^{(m)}
=
\sum_{\beta=1}^d (B^{(m)}b)_\beta K_{i\beta}^{(m)}
+
\sum_{\alpha=1}^d b_\alpha\langle r_{\alpha,m},\psi_i\rangle.
\tag{MRG.7}
```

By the reverse triangle inequality in `ell^2_i`, `(MRG.2)`, `(MRG.4)`, and
`(MRG.5)`,

```math
\begin{aligned}
\left(
\sum_i
\left|
\sum_\alpha b_\alpha H_{i\alpha}^{(m)}
\right|^2
\right)^{1/2}
&\ge
c_0 |B^{(m)}b|-\varepsilon_m |b|
\\
&\ge
(c_0b_0-\varepsilon_m)|b|
\\
&\ge
{c_0b_0\over2}|b|.
\end{aligned}
\tag{MRG.8}
```

Squaring gives the residual Gram lower bound:

```math
\sum_i
\left|
\sum_\alpha b_\alpha H_{i\alpha}^{(m)}
\right|^2
\ge
{c_0^2b_0^2\over4}|b|^2.
\tag{MRG.9}
```

## 4. Discharged relative bridge

The proved implication is

```math
\boxed{
\text{NondegenerateModulationJacobian.A}
+
\text{ResidualBasisModulationIdentification.A}
+
\text{SmallResidualGramError.A}
\Longrightarrow
\text{ModeResidualGramLowerBound.A}.
}
\tag{MRG.10}
```

## 5. Remaining burden

This proof does not produce the finite-dimensional residual ansatz.  It also
does not prove that the residual basis has the form `(MRG.3)`.

The live burden remains:

```math
\boxed{
\text{FiniteDimensionalResidualAnsatz.A}
}
\tag{MRG.11}
```

with its Door 2 production inputs:

```math
\text{ZenoNoDriftUniqueTangent.A}
+
\text{DefectMeasureEvacuation.A}
+
\text{RenormalizedZenoStationarity.A}.
\tag{MRG.12}
```

## Verdict

`ModeResidualGramLowerBound.A` is a finite-dimensional linear algebra bridge.
Once the residual basis is identified with the modulation tangent basis up to a
small Gram error, the existing nondegenerate modulation Jacobian supplies the
lower bound.

The obstruction is not the Gram estimate.  It is proving that the terminal
residual has only those finite modulation directions.
