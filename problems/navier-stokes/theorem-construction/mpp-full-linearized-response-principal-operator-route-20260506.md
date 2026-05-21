# MPP Full Linearized Response Principal Operator Route

Date: 2026-05-06

Status: route correction; moves nonlinear response rotation into the principal
linearized response operator.

Depends on:

```text
mpp-response-principal-strain-gauge-route-20260506.md
mpp-response-residual-pair-direct-attempt-20260506.md
mpp-response-adjoint-square-mass-route-20260506.md
```

## 0. Correction

The response equation is linear in `z=\partial_\nu u`:

```math
\partial_t z+\mathbb P(u\cdot\nabla z+z\cdot\nabla u)
=
\nu\Delta z+\Delta u.
\tag{FLR.1}
```

Therefore the principal response packet should not treat nonlinear response
rotation as an external residual.  It should put the localized linearized NS
operator into the principal flow.

This is stronger than merely gauging `S_{<j}(u)z_j`.

## 1. Full Local Principal Operator

On an active response shell `j`, define:

```math
b_j:=u_{<j-M},
\qquad
B_j:=\nabla u_{<j-M}.
```

The principal linearized response operator is:

```math
\boxed{
L_j^{lin}Z
:=
\partial_t Z
+\mathbb P_j(b_j\cdot\nabla Z+B_jZ)
-\nu\Delta Z.
}
\tag{FLR.2}
```

Here `B_jZ` is the localized form of `Z\cdot\nabla u_{<j-M}` and
`\mathbb P_j` denotes the shell-projected Leray frame.  The skew/rotational and
symmetric strain pieces of `B_j` are both part of the principal response
propagator.

Then:

```math
L_j^{lin}z_j
=
P_j\Delta u
+R_j^{lin-resp},
\tag{FLR.3}
```

where `R_j^{lin-resp}` contains only:

```text
high-high shell interactions,
low-response/high-original terms not in B_j z_j,
pressure/projection/cutoff commutators,
coefficient/frame errors,
off-packet tails.
```

## 2. Adjoint Gain

Let `\psi_T^{lin}` solve:

```math
(L_j^{lin})^\ast\psi_T^{lin}=0
```

with terminal response-detection packet data.  Since `B_j` is not symmetric,
the correct gain is the logarithmic norm of the matrix coefficient:

```math
\mu(B_j)
:=
\lambda_{\max}\left(\frac{B_j+B_j^T}{2}\right).
```

Define:

```math
\Gamma_T^{lin}(t)
:=
\int_t^{t_+}\mu(B_j(X_T(s),s))_+\,ds,
\qquad
g_T^{lin}=e^{\Gamma_T^{lin}},
\qquad
\chi_T^{lin}:=(g_T^{lin})^{-1}\psi_T^{lin}.
\tag{FLR.4}
```

This absorbs every energy-increasing direction of the linearized response
propagator, including orthogonal response rotation induced by `B_j`.

## 3. No-Free-Create Identity

Pair `(FLR.3)` with `\psi_T^{lin}`:

```math
\langle z_j(t_+),\psi_T^{lin}(t_+)\rangle
=
\langle z_j(t_-),\psi_T^{lin}(t_-)\rangle
+\int_{I_T}\langle P_j\Delta u+R_j^{lin-resp},\psi_T^{lin}\rangle dt.
\tag{FLR.5}
```

After normalization and squaring:

```math
M_{resp}^{lin}(T)
\le
2M_{resp}^{lin,parent}(T)
+2(g_T^{lin})^{-2}
\left|
\int_{I_T}\langle P_j\Delta u+R_j^{lin-resp},\psi_T^{lin}\rangle dt
\right|^2.
\tag{FLR.6}
```

Thus full linearized response rotation has only two origins:

```text
earlier response parent mass;
linear viscosity forcing / legal residual charge.
```

It is not a separate creation mechanism.

## 4. Corrected Residual Pair

The corrected residual theorem becomes:

```math
\boxed{
\|P_j\Delta u+R_j^{lin-resp}\|_{L_t^2H_x^{-1}}^2
\le
C\Bigl(
OrdinaryDissipationTail_N
+LowResponseStrainCharge_N
+Legal_N
\Bigr)
+o_N(1).
}
\tag{FLR.7}
```

No `NonlinearResponseRotationNoGain.A` is needed as an external residual
theorem.  It is internal to the principal linearized response propagator.

## 5. Consequence For ResponseTPNI

The response drain can now be stated as:

```math
\boxed{
\begin{aligned}
&FullLinearizedResponsePrincipal.A\\
&+LinearizedResponseAdjointBessel.A\\
&+LinearizedResponseParentKernel.A\\
&+LinearizedResponseResidualPair.A\\
&+PositiveRotationDetectsLinearizedAdjointMass.A\\
&+ResponseNoParent_src.A\\
&\Longrightarrow ResponseTPNI.A.
\end{aligned}}
\tag{FLR.8}
```

where:

```math
LinearizedResponseResidualPair.A
\Longleftarrow
OrdinaryDissipationTail.A
+LowResponseStrainCharge.A
+LegalResiduals.A.
\tag{FLR.9}
```

## 6. What Remains

The full linearized operator route removes both stale primitives:

```text
ResponseStrainDecorrel.A
NonlinearResponseRotationNoGain.A
```

as external source walls.

The hard remaining PDE primitive is:

```text
LowResponseStrainCharge.A / ResponseLowNormNoBlow.A
```

plus packet-definition pinning for:

```text
FullLinearizedResponsePrincipal.A
LinearizedResponseAdjointBessel.A
LinearizedResponseParentKernel.A
PositiveRotationDetectsLinearizedAdjointMass.A.
```

## 7. Verdict

This is the strongest route mutation from the viscosity-homotopy idea so far.
It uses the fact that the viscosity derivative equation is linear in `z`.
Once the full linearized response operator is treated as principal, response
rotation is inherited dynamics, not source creation.

Current reduced wall:

```text
LowResponseStrainCharge.A / ResponseLowNormNoBlow.A
```

with packet-calculus pinning for the full linearized response adjoint frame.
