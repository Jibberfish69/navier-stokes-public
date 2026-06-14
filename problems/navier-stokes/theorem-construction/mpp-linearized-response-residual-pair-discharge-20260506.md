# MPP LinearizedResponseResidualPair.A Discharge

Date: 2026-05-06

Status: conditional discharge; linear viscosity forcing charged by ordinary
dissipation; remaining condition is low-response strain control.

Depends on:

```text
mpp-full-linearized-response-principal-operator-route-20260506.md
mpp-low-response-strain-charge-proof-20260506.md
```

## 0. Target

For the full linearized response principal operator:

```math
L_j^{lin}z_j=P_j\Delta u+R_j^{lin-resp},
```

prove:

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
\tag{LRR.1}
```

This is `LinearizedResponseResidualPair.A`.

## 1. Linear Forcing Is Ordinary Dissipation

The forcing term in the response equation is:

```math
\Delta u.
```

On shell `j`:

```math
\|P_j\Delta u\|_{H^{-1}}^2
\le
C_{\mathrm{LP}}2^{-2j}\|P_j\Delta u\|_2^2
\le
C_{\mathrm{LP}}'2^{2j}\|u_j\|_2^2
=
C_{\mathrm{LP}}'D_j.
\tag{LRR.2}
```

Therefore:

```math
\boxed{
\|P_{>N}\Delta u\|_{L_t^2H_x^{-1}}^2
\le
C_{\mathrm{LRR}}
\int_I\sum_{j>N}D_j(t)dt.
}
\tag{LRR.3}
```

The installed energy/dissipation tail gives:

```math
\int_I\sum_{j>N}D_j(t)dt\to0.
```

So the linear viscosity forcing is legal in the adjoint residual pairing.  It
does not require the stronger height-dissipation charge.

## 2. Legal Residuals

Projected pressure, cutoff, frame, and off-packet residuals obey the same
`H^{-1}` estimates as the installed source-drain route:

```math
\|R_{press}^{lin}\|_{L_t^2H^{-1}}^2
+\|R_{cut}^{lin}\|_{L_t^2H^{-1}}^2
+\|R_{frame}^{lin}\|_{L_t^2H^{-1}}^2
+\|R_{off}^{lin}\|_{L_t^2H^{-1}}^2
\le
CLegal_N+o_N(1).
\tag{LRR.4}
```

These are packet-calculus residuals, not new PDE primitives.

## 3. Remaining Low-Response Terms

The full linearized principal operator captures:

```math
u_{<j}\cdot\nabla z_j+z_j\cdot\nabla u_{<j}.
```

The only mixed terms left outside the principal operator are lower-response /
active-original interactions such as:

```math
z_{<j}\cdot\nabla u_j,
\qquad
u_j\cdot\nabla z_{<j},
```

plus finite-overlap high-high remainders.

These are exactly the low-response-strain branch.  The earlier proof gives:

```math
ResponseLowNormNoBlow.A
\Longrightarrow
LowResponseStrainCharge.A.
```

and:

```math
LowResponseStrainCharge.A
\Longrightarrow
\|R_{low-response}\|_{L_t^2H^{-1}}^2
\le
CLowResponseStrainCharge_N+o_N(1).
\tag{LRR.5}
```

## 4. Discharge

Combining `(LRR.3)`, `(LRR.4)`, and `(LRR.5)` gives:

```math
\boxed{
OrdinaryDissipationTail.A
+LowResponseStrainCharge.A
+LegalResiduals.A
\Longrightarrow
LinearizedResponseResidualPair.A.
}
\tag{LRR.6}
```

Since `OrdinaryDissipationTail.A` is installed from the energy inequality, the
only nontrivial analytic condition left is:

```text
LowResponseStrainCharge.A.
```

## 5. Consequence For ResponseTPNI

The response square-mass route now reduces to:

```math
\boxed{
\begin{aligned}
&FullLinearizedResponsePrincipal.A\\
&+LinearizedResponseAdjointBessel.A\\
&+LinearizedResponseParentKernel.A\\
&+PositiveRotationDetectsLinearizedAdjointMass.A\\
&+LowResponseStrainCharge.A\\
&+ResponseNoParent_src.A\\
&\Longrightarrow ResponseTPNI.A.
\end{aligned}}
\tag{LRR.7}
```

No `OriginalHeightDissipationCharge.A`,
`ResponseStrainDecorrel.A`, or external
`NonlinearResponseRotationNoGain.A` remains in this route.

## 6. Verdict

Proved:

```text
Delta u forcing is paid by ordinary dissipation in H^{-1};
LinearizedResponseResidualPair.A follows from LowResponseStrainCharge.A plus
installed legal residual ledgers.
```

Open:

```text
LowResponseStrainCharge.A / ResponseLowNormNoBlow.A
full linearized response adjoint packet pinning
positive rotation detection for the linearized response packet frame
```

This is a strict improvement over the previous response-height accounting
wall.
