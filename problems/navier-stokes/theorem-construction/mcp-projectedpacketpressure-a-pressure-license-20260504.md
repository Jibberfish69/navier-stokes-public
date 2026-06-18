# ProjectedPacketPressure.A pressure license

## Status

Conditional pressure-license theorem. The pressure obstruction in `ResidualPair.A` can be removed by building the principal-flow adjoint packet calculus in the Leray-projected divergence-free frame. This is the preferred route. A separate local pressure-normalized residual estimate remains a fallback.

## Target role

`ResidualPair.A` requires

```math
\|R\|_{L_t^2H_x^{-1}}^2
\le C\int_I\sum_{q>N}D_q(t)dt+o_N(1).
```

In the residual split

```math
R=R^{coeff}+R^{comm}+R^{press}+R^{cut}+R^{off},
```

the pressure component is removable only if the adjoint packet frame pairs in
the solenoidal projected class or if pressure is separately normalized on the
same carrier.

## Projected formulation

Let `\mathbb P` denote the Leray projector. Write the high packet equation as

```math
\partial_t w_j+\mathbb P(b_k\cdot\nabla w_j)-\nu\Delta w_j-\mathbb P(A_kw_j)
=\mathbb P R_{j,k}^{raw}+R_{proj}.
```

Equivalently,

```math
L^P_{j,k}w_j=R^P_{j,k},
```

where

```math
L^P_{j,k}:=\partial_t+\mathbb P(b_k\cdot\nabla\cdot)-\nu\Delta-\mathbb P(A_k\cdot).
```

The projected adjoint packet solves

```math
(L^P_{j,k})^*\psi_T=0,
\qquad
\nabla\cdot\psi_T=0,
```

with divergence-free terminal packet data.

Then for any scalar pressure `p`,

```math
\int \langle \nabla p,\psi_T\rangle dx=0
```

on the periodic branch or after local pressure normalization with boundary errors assigned to legal cutoff residuals.

Thus the pressure part vanishes from the residual pairing:

```math
\int_{I_T}\langle R^{press},\psi_T\rangle dt=0.
```

## Projection commutators

The cost of projection is not zero. It creates commutators:

```math
[\mathbb P,b_k\cdot\nabla]w_j,
\qquad
[\mathbb P,A_k]w_j,
\qquad
[\mathbb P,\chi_T]w_j
```

and localized boundary/cutoff terms. These are Calderon-Zygmund / Coifman-Meyer terms. Under the same coefficient-good and strict scale-gap hypotheses used in `ResidualPair.A`, they obey

```math
\|R^{proj}\|_{L_t^2H_x^{-1}}^2
\le C(\varepsilon_M^2+c_M^2)\int_I\sum_{q>N}D_q(t)dt+o_N(1)+Loss_{cut}^{legal}.
```

Therefore projection moves pressure into already-listed residual classes rather than creating a new source primitive.

## Conditional theorem

```math
\boxed{
ProjectedAdjointPacket.A
+ ProjectionCommutatorResidual.A
\Longrightarrow ProjectedPacketPressure.A.
}
```

Then

```math
ProjectedPacketPressure.A
+CoeffGood.A+CutoffLedger.A+OffPacketTail.A
\Longrightarrow ResidualPair.A.
```

## Fallback theorem

If the projected packet frame cannot be built with the required strain-gauged Bessel bound, the fallback is a same-carrier pressure-normalized residual estimate:

```math
\boxed{
PressureNormalizedResidual.A:
\quad
\|R^{press}\|_{L_t^2H_x^{-1}}^2
\le C\int_I\sum_{q>N}D_q(t)dt+o_N(1).
}
```

This fallback must use the same heat-scale same-fluid carrier as the adjoint packets. Pressure estimates on a fixed endpoint cover or post-readout cover do not automatically apply to the terminal packet frame.

## Non-circularity boundary

This pressure license may use only Leray projection, Calderon-Zygmund bounds, coefficient-good packet geometry, and legal cutoff ledgers. It may not use `SOURCE.NO-PULSE.A`, `ASAC.A`, or any downstream no-jump conclusion.

## Claimed status

Conditional. The pressure gradient itself is removed by a projected solenoidal adjoint packet frame. The remaining proof burden is analytic: construct `ProjectedAdjointPacket.A` with the same strain-gauged weighted Bessel estimates, and prove `ProjectionCommutatorResidual.A` in `L_t^2H_x^{-1}`.
