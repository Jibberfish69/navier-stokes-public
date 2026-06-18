# MPP Response Adjoint Square-Mass Route

Date: 2026-05-06

Status: route mutation; square-mass parent-or-charge core proved
conditionally; detection and response residual pair remain open.

Depends on:

```text
mpp-response-parent-or-charge-direct-attempt-20260506.md
mpp-source-drain-definition-alignment-and-discharge-20260504.md
mcp-weightedadjres-source-drain-core-assembly-20260504.md
```

## 0. Problem With The Previous Target

The previous response drain target left:

```text
ResponseAdjointKernelFlattening.A
ResponseKernelSignControl.A
ResponseLocalCharge.A
```

The bad item is `ResponseKernelSignControl.A`.  In the raw positive-part
form, it asks the vector heat/Leray response kernel to preserve a one-sided
sign:

```math
\left[
\int\langle u\cdot\nabla z+z\cdot\nabla u,\Psi_T\rangle
\right]_+.
```

That is not the natural object for a vector adjoint drain.  The installed
source-drain route avoids this problem by using normalized squared adjoint
mass:

```math
M(T)=|\langle w_j(t_+),\chi_T(t_+)\rangle|^2.
```

The response route should do the same.

## 1. New Response Mass

For a response-rotation terminal tile `T`, let `\psi_T^{resp}` be the backward
projected affine heat adjoint packet with terminal data detecting the
orthogonal response direction.  Let:

```math
\chi_T^{resp}:=g_T^{-1}\psi_T^{resp},
```

where `g_T` is the same strain/response gain normalization used by the
source-drain packet calculus.

Define:

```math
\boxed{
M_{resp}(T)
:=
\left|
\left\langle z_{j_T}^{\perp}(t_+),\chi_T^{resp}(t_+)\right\rangle
\right|^2.
}
\tag{RAM.1}
```

The response parent-or-charge theorem is a theorem for `M_resp(T)`, not for a
raw positive signed source integral.

## 2. Detection Bridge

The cost of the square-mass route is one bridge theorem:

```math
\boxed{
PositiveRotationDetectsAdjointMass.A.
}
\tag{RAM.2}
```

Statement:

If a response-rotation tile carries normalized positive rotation mass:

```math
\left[
2\int\langle S_{<j}^{loc}u_j,z_j^\perp\rangle
\right]_+
\ge \eta,
```

then there is a bounded subfamily of response adjoint packets such that:

```math
\sum_{T\in\mathcal T_{resp}}M_{resp}(T)\ge c\eta^2
```

after legal packet-frame errors.

This is a packet testing/detection theorem.  It is lower than raw sign control:
it only asks the terminal positive rotation functional to have nonzero
projection onto the packet frame.

## 3. Response Adjoint Identity

Let the orthogonal response packet satisfy:

```math
L_T^{resp} z_j^\perp = R_T^{resp},
```

where `L_T^{resp}` is the projected affine heat/transport operator on the
same-fluid response tile and `R_T^{resp}` contains nonlinear response source,
pressure, cutoff, and off-tile residuals.

Pair with `\psi_T^{resp}` solving:

```math
(L_T^{resp})^\ast\psi_T^{resp}=0.
```

Then:

```math
\langle z_j^\perp(t_+),\psi_T^{resp}(t_+)\rangle
=
\langle z_j^\perp(t_-),\psi_T^{resp}(t_-)\rangle
+\int_{I_T}\langle R_T^{resp},\psi_T^{resp}\rangle dt.
\tag{RAM.3}
```

Normalize by `g_T` and square:

```math
M_{resp}(T)
\le
2M_{resp}^{parent}(T)
+2g_T^{-2}
\left|
\int_{I_T}\langle R_T^{resp},\psi_T^{resp}\rangle dt
\right|^2.
\tag{RAM.4}
```

The parent term decomposes into earlier response-parent tiles:

```math
M_{resp}^{parent}(T)
\le
\sum_{P\prec_{resp}T}\kappa_{resp}(P,T)M_{resp}(P)
+Err_{frame}(T).
\tag{RAM.5}
```

## 4. Proved Square-Mass Parent-Or-Charge Reduction

Assume:

```text
1. ResponseAdjointBessel.A:
   ||sum_T c_T chi_T_resp||_{L_t^2 H_x^1}^2
   <= C sum_T |c_T|^2;

2. ResponseResidualPair.A:
   ||R_resp||_{L_t^2 H_x^{-1}}^2
   <= C ResponseCharge_N + o_N(1);

3. ResponseParentKernel.A:
   endpoint parent mass decomposes as (RAM.5).
```

Then:

```math
\boxed{
M_{resp}(T)
\le
\sum_{P\prec_{resp}T}\kappa_{resp}(P,T)M_{resp}(P)
+Charge_{resp}(T)
+Err(T).
}
\tag{RAM.6}
```

### Proof

Equation `(RAM.4)` splits terminal mass into parent endpoint mass plus residual
creation.  `ResponseParentKernel.A` gives the parent sum.  The residual
creation is controlled exactly as in the installed `WeightedAdjRes.A` proof:
for unit coefficients `a_T`, set

```math
\Xi_{resp}=\sum_T a_T\chi_T^{resp}.
```

Then:

```math
\sum_T a_Tg_T^{-1}
\int_{I_T}\langle R_T^{resp},\psi_T^{resp}\rangle dt
=
\int\langle R_{resp},\Xi_{resp}\rangle dt.
```

By `H^{-1}/H^1` duality, `ResponseAdjointBessel.A`, and
`ResponseResidualPair.A`,

```math
\sum_Tg_T^{-2}
\left|
\int_{I_T}\langle R_T^{resp},\psi_T^{resp}\rangle dt
\right|^2
\le
CResponseCharge_N+o_N(1).
```

Substitute into `(RAM.4)` and `(RAM.5)`.  `\square`

## 5. First-Pulse Kill

At a first response pulse, `ResponseNoParent_src.A` gives:

```math
\sum_{P\prec_{resp}T_0}\kappa(P,T_0)M_{resp}(P)=0
```

in the normalized limit.  Therefore `(RAM.6)` gives:

```math
M_{resp}(T_0)
\le
Charge_{resp}(T_0)+o(1).
```

If `PositiveRotationDetectsAdjointMass.A` supplies
`M_resp(T_0)\ge c_0>0` and the response charge is absorbable, the first
response pulse is impossible.

Thus:

```math
\boxed{
\begin{aligned}
&PositiveRotationDetectsAdjointMass.A\\
&+ResponseAdjointBessel.A\\
&+ResponseResidualPair.A\\
&+ResponseParentKernel.A\\
&+ResponseNoParent_src.A\\
&\Longrightarrow ResponseTPNI.A.
\end{aligned}}
\tag{RAM.7}
```

## 6. What This Replaces

This route replaces:

```text
ResponseKernelSignControl.A
```

by:

```text
PositiveRotationDetectsAdjointMass.A.
```

That is better.  It asks for packet-frame detection of a positive terminal
functional, not sign preservation through a vector heat/Leray kernel.

## 7. Verdict

Proved:

```text
Response square-mass parent-or-charge reduction
ResponseAdjointBessel.A + ResponseResidualPair.A + ResponseParentKernel.A
  => square-mass ParentOrCharge_resp.A
```

Open:

```text
PositiveRotationDetectsAdjointMass.A
ResponseAdjointBessel.A
ResponseResidualPair.A
ResponseParentKernel.A
```

`ResponseKernelSignControl.A` is no longer the right primitive.  The response
drain proceeds through squared adjoint mass and still requires
`PositiveRotationDetectsAdjointMass.A`, `ResponseAdjointBessel.A`,
`ResponseResidualPair.A`, and `ResponseParentKernel.A`.
