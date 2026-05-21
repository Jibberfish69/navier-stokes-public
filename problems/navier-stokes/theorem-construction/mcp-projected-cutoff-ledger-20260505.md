# ProjectedCutoffLedger.A

## Status

Discharged at theorem-construction level under the projected affine packet convention.

## Target

Show that Leray projection localization, pressure pairing, and packet cutoff commutators contribute only legal residual ledger terms in the weighted/lifted terminal source-current route.

## Projected pressure branch

Use the projected packet equation

```math
L^P_{j,k}w_j=R^P_{j,k},
```

with

```math
L^P_{j,k}
=
\partial_t+
\mathbb P(b_k\cdot\nabla\cdot)-\nu\Delta-
\mathbb P(A_k\cdot).
```

Adjoint packets solve the projected adjoint equation and remain divergence-free. Hence pressure gradients pair to zero:

```math
\int_{I_T}\langle \nabla p,\psi_T\rangle dt=0.
```

Projection commutators have the form

```math
[\mathbb P,b_k\cdot\nabla]w_j,
\qquad
[\mathbb P,A_k]w_j,
\qquad
[\mathbb P,\eta_T]w_j.
```

Coifman-Meyer bounds, the shell gap, and coefficient-good packet geometry give

```math
\|R^{proj}\|_{L_t^2H^{-1}_x}^2
\le
C(\varepsilon_M^2+c_M^2)
\int_I\sum_{q>N}D_q(t)dt
+o_N(1)+Loss_{cut}^{legal}.
```

## Cutoff ledger

The packet viscous cutoff commutator has exact identity

```math
\mathcal C^{cut}
=-4\nu\int \phi f\,\nabla\phi\cdot\nabla f.
```

Cauchy gives

```math
|\mathcal C^{cut}|
\le
\eta\nu\int \phi^2|\nabla f|^2
+C_\eta\nu\|\nabla\phi\|_\infty^2\int |f|^2.
```

The first term is absorbed into the local heat dissipation.  The second term is the transported packet-factor derivative ledger.  On the projected affine packet branch this is precisely `Loss_{cut}^{legal}`.

## Theorem

```math
\boxed{
ProjectedPacketPressure.A
+PacketCutoffCommutator.A
+CoefficientGood.A
\Longrightarrow
ProjectedCutoffLedger.A.
}
```

## Role in WeightedLiftedSkewDefectLegal.A

`ProjectedCutoffLedger.A` removes the pressure/projection/cutoff pieces from the first-gate obstruction.  The remaining principal terms are exactly:

```math
PairWeightFlattening.A
\qquad\text{and}\qquad
LiftedSkewCommutator.A.
```

## Claimed status

Discharged locally on the torus projected affine packet branch.  It supplies legal bookkeeping only; it does not address the active strain-alignment or shell-weight mismatch carrier.