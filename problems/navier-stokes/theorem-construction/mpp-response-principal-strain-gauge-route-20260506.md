# MPP Response Principal-Strain Gauge Route

Date: 2026-05-06

Status: route correction; removes `ResponseStrainDecorrel.A` as an external
residual primitive by moving original strain into the response principal
operator.

Depends on:

```text
mpp-response-residual-pair-direct-attempt-20260506.md
mpp-principal-flow-adjoint-parent-or-charge-note-20260504.md
mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md
```

## 0. Problem

The first response residual pair attempt left:

```text
ResponseStrainDecorrel.A
```

because it treated:

```math
S_{<j}(u)z_j
```

as an external residual source.  That repeats the old mistake from the
original ASAC route.  Positive strain alignment is real, but if the strain is
part of the principal packet flow, it amplifies inherited response mass rather
than creating response mass from zero.

Therefore `ResponseStrainDecorrel.A` should not be a residual primitive.

## 1. Principal Response Packet Equation

For the active response shell, write:

```math
(\partial_t+b_j\cdot\nabla-\nu\Delta)z_j
=
-A_j^u z_j
+R_j^{resp,gauged},
\tag{RPG.1}
```

where:

```math
b_j=u_{<j-M},
```

and `A_j^u` is the original low-strain production matrix with sign convention
chosen so that `-A_j^u z_j` equals the retained principal action of
`z\cdot\nabla u` / low-strain production on the response shell.

The gauged residual is:

```math
R_j^{resp,gauged}
=
R_{low\ response\ strain}
+R_{response\ rotation}
+R_{linear\ forcing}
+R_{comm/press/cut/off}.
\tag{RPG.2}
```

The original low-strain response alignment is no longer in the residual.

## 2. Response Adjoint Gauge

Define the response principal operator:

```math
L_j^{resp}
:=
\partial_t+b_j\cdot\nabla-\nu\Delta-A_j^u.
```

Let `\psi_T^{resp}` solve:

```math
(L_j^{resp})^\ast\psi_T^{resp}=0.
```

Set:

```math
\Gamma_T^{resp}(t)
:=
\int_t^{t_+}
\lambda_{\max}^+(A_j^u(X_T(s),s))\,ds,
\qquad
g_T^{resp}(t)=e^{\Gamma_T^{resp}(t)},
\qquad
\chi_T^{resp}=g_T^{-1}\psi_T^{resp}.
\tag{RPG.3}
```

This is the exact response analogue of the installed normalized adjoint
amplitude.

## 3. No-Free-Create Identity

Pair `(RPG.1)` with `\psi_T^{resp}`:

```math
\langle z_j(t_+),\psi_T^{resp}(t_+)\rangle
=
\langle z_j(t_-),\psi_T^{resp}(t_-)\rangle
+\int_{I_T}\langle R_j^{resp,gauged},\psi_T^{resp}\rangle dt.
\tag{RPG.4}
```

Normalize and square:

```math
M_{resp}(T)
\le
2M_{resp}^{parent}(T)
+2(g_T^{resp})^{-2}
\left|
\int_{I_T}\langle R_j^{resp,gauged},\psi_T^{resp}\rangle dt
\right|^2.
\tag{RPG.5}
```

Thus original positive strain alignment of `z_j` creates no new response mass
except through:

```text
earlier parent response mass
or gauged residual charge.
```

## 4. Corrected Residual Pair

The corrected residual estimate is:

```math
\boxed{
\|R^{resp,gauged}\|_{L_t^2H_x^{-1}}^2
\le
C\Bigl(
LowResponseStrainCharge_N
+ResponseHeightCreationCharge_N
+NonlinearResponseRotationCharge_N
+Legal_N
\Bigr)
+o_N(1).
}
\tag{RPG.6}
```

Crucially, no separate `ResponseStrainDecorrel.A` appears.

The source terms are:

```text
S_{<j}(z)u_j              -> LowResponseStrainCharge.A;
Delta u                  -> ResponseHeightCreationControl.A /
                            OriginalHeightDissipationCharge.A;
nonlinear orthogonal z   -> NonlinearResponseRotationNoGain.A;
pressure/cutoff/off      -> legal projected packet residuals.
```

## 5. Conditional Route

The corrected response drain is:

```math
\boxed{
\begin{aligned}
&ResponsePrincipalStrainGauge.A\\
&+ResponseAdjointBessel.A\\
&+ResponseParentKernel.A\\
&+CorrectedResponseResidualPair.A\\
&+PositiveRotationDetectsAdjointMass.A\\
&+ResponseNoParent_src.A\\
&\Longrightarrow ResponseTPNI.A.
\end{aligned}}
\tag{RPG.7}
```

And:

```math
CorrectedResponseResidualPair.A
\Longleftarrow
LowResponseStrainCharge.A
+ResponseHeightCreationControl.A
+NonlinearResponseRotationNoGain.A.
\tag{RPG.8}
```

## 6. What This Improves

Before this correction:

```text
ResponseResidualPair.A needed ResponseStrainDecorrel.A.
```

After this correction:

```text
ResponseStrainDecorrel.A is absorbed into the response principal adjoint gain.
```

The remaining PDE walls are lower and sharper:

```text
LowResponseStrainCharge.A
ResponseHeightCreationControl.A
NonlinearResponseRotationNoGain.A
OriginalHeightDissipationCharge.A.
```

This matches the actual viscosity insight: positive viscosity response can be
amplified by the existing strain field, but amplification of inherited response
mass is not creation of new response mass.

## 7. Verdict

Proved as a route correction:

```text
ResponsePrincipalStrainGauge.A removes ResponseStrainDecorrel.A from the
residual primitive list.
```

Open:

```text
CorrectedResponseResidualPair.A
ResponsePrincipalStrainGauge.A packet-definition pinning
```

The next analytic target is:

```text
CorrectedResponseResidualPair.A.
```
