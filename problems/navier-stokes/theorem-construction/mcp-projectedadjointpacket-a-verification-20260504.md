# ProjectedAdjointPacket.A verification

## Status

Analytic-estimate-level verification, conditional on pinning the packet frame to the final dyadic definitions.

This note assembles the projected adjoint packet construction from the existing affine heat packet theorem `AHP.A`, the strain-gauged packet calculus, and the four-layer analytic verification certificates.

## Target

Construct adjoint packets `\psi_T` for the Leray-projected principal operator

```math
L^P_{j,k}
=
\partial_t+\mathbb P(b_k\cdot\nabla\cdot)-\nu\Delta-\mathbb P(A_k\cdot)
```

with divergence-free terminal wave-packet data and normalized packets

```math
\chi_T:=g_T^{-1}\psi_T,
\qquad
 g_T=e^{\Gamma_T},
\qquad
\Gamma_T=\int_{I_T}\lambda_{\max}^+(A_k(X_T(t),t))dt.
```

The desired packet-frame output is

```math
\boxed{
\left\|\sum_T c_T\chi_T\right\|_{L_t^2H_x^1}^2
\le C\sum_T|c_T|^2.
}
\tag{WeightedAdjBessel.A}
```

plus solenoidal pairing against pressure gradients:

```math
\langle \nabla p,\psi_T\rangle=0.
```

## Construction

Start with divergence-free terminal packet data

```math
\psi_T(t_+)=\mathbb P\phi_T^{term}.
```

Apply the same central strain gauge and affine low-flow frame as in `AHP.A`:

```math
\psi_T=G_T\varphi_T,
\qquad
\dot X_T=b_k(X_T,t),
\qquad
\dot J_T=(\nabla b_k)(X_T,t)J_T.
```

On coefficient-good tiles, the gauged packet solves an affine heat equation with perturbation density

```math
\int_{I_T}\beta_T(t)dt\le C\varepsilon_M.
```

The affine heat theorem gives, for `|\alpha|\le N`,

```math
|\partial_x^\alpha\varphi_T(t,x)|
\le C_\alpha r_T^{-3/2-|\alpha|}
\exp\left(-c|x-X_T(t)|^2/r_T^2\right).
```

Since `\|g_T^{-1}G_T\|\le C`, the normalized projected packet inherits the same heat-tube bounds:

```math
|\partial_x^\alpha\chi_T(t,x)|
\le C_\alpha r_T^{-3/2-|\alpha|}
\exp\left(-c|x-X_T(t)|^2/r_T^2\right).
```

## Projection cost

The Leray projection introduces projection commutators

```math
[\mathbb P,b_k\cdot\nabla]w_j,
\qquad
[\mathbb P,A_k]w_j,
\qquad
[\mathbb P,\eta_T]w_j.
```

These are Calderon-Zygmund / Coifman-Meyer residuals. Under the strict scale gap and coefficient-good tile assumptions, their `L_t^2H_x^{-1}` contribution satisfies

```math
\|R^{proj}\|_{L_t^2H_x^{-1}}^2
\le C(\varepsilon_M^2+c_M^2)
\int_I\sum_{q>N}D_q(t)dt+o_N(1)+Loss_{cut}^{legal}.
```

Thus projection changes the residual ledger, while preserving the packet Bessel structure.

## Bessel verification

The heat-tube bounds imply overlap decay:

```math
|K(T,T')|
\le Ce^{-cd(T,T')^2}+C\varepsilon_Me^{-cd(T,T')},
```

where

```math
K(T,T')=
\int
\left(\langle\chi_T,\chi_{T'}\rangle
+\langle\nabla\chi_T,\nabla\chi_{T'}\rangle\right)dt.
```

The tile metric has bounded annular counting measure. Schur / Cotlar summability gives

```math
\left\|\sum_Tc_T\chi_T\right\|_{L_t^2H_x^1}^2
\le C\sum_T|c_T|^2.
```

This proves `WeightedAdjBessel.A` at the analytic-estimate level.

## Pressure cancellation

Because the packets are projected and divergence-free,

```math
\int \nabla p\cdot\psi_T\,dx=0
```

on the periodic branch. In a localized heat-tube frame, boundary/cutoff errors are exactly the projection/cutoff residuals already charged above. Therefore

```math
ProjectedAdjointPacket.A
\Longrightarrow ProjectedPacketPressure.A.
```

## Result

Combining the projected packet construction, Bessel estimate, and pressure cancellation gives

```math
\boxed{
ProjectedAdjointPacket.A
+ProjectionCommutatorResidual.A
\Longrightarrow
ProjectedPacketPressure.A.
}
```

Together with the previous residual decomposition,

```math
ProjectedPacketPressure.A
+CoeffGood.A+CutoffLedger.A+OffPacketTail.A
\Longrightarrow ResidualPair.A.
```

## Remaining formalization task

The analytic estimates are verified at packet-calculus level. The remaining task is to pin the construction to the exact dyadic packet definitions and localized Leray projection conventions used by the final manuscript surface.

## Claimed status

Conditional local verification at analytic-estimate level. The strongest next target is `WeightedAdjRes.A` assembly, because `WeightedAdjBessel.A` and `ResidualPair.A` now have compatible packet-frame inputs.