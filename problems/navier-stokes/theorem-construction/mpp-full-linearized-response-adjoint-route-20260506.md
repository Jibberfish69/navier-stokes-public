# MPP Full Linearized Response Adjoint Route

Date: 2026-05-06

Status: strongest route mutation; removes low-response-strain as a PDE
residual if full linearized adjoint packet calculus is available.

Depends on:

```text
mpp-full-linearized-response-principal-operator-route-20260506.md
mpp-linearized-response-residual-pair-discharge-20260506.md
```

## 0. Motivation

The shell-local full-linearized route still left:

```text
LowResponseStrainCharge.A
```

because shell diagonalization treats:

```math
z_{<j}\cdot\nabla u_j
\quad\text{and}\quad
u_j\cdot\nabla z_{<j}
```

as residual sources for the active shell `z_j`.

But the response equation itself is globally linear in `z`:

```math
\partial_t z+\mathbb P(u\cdot\nabla z+z\cdot\nabla u)
=
\nu\Delta z+\Delta u.
```

Therefore the cleanest adjoint should be built for the full localized
linearized operator, not a shell-diagonal approximation.

## 1. Full Linearized Operator

Define:

```math
\boxed{
L_u z
:=
\partial_t z
+\mathbb P(u\cdot\nabla z+z\cdot\nabla u)
-\nu\Delta z.
}
\tag{FRA.1}
```

Then:

```math
L_u z=\Delta u.
\tag{FRA.2}
```

Localize to a terminal response packet by applying the same packet cutoff and
projected shell readout only at the terminal face.  Do not diagonalize the
interior evolution by shell.  The adjoint packet solves:

```math
L_u^\ast\Psi_T=0
```

backward from terminal response-detection data.

## 2. Exact Adjoint Identity

Pair `(FRA.2)` with `\Psi_T`:

```math
\langle z(t_+),\Psi_T(t_+)\rangle
=
\langle z(t_-),\Psi_T(t_-)\rangle
+\int_{I_T}\langle \Delta u,\Psi_T\rangle dt
+Err_{cut/proj/frame}(T).
\tag{FRA.3}
```

There is no residual term of the form:

```math
u\cdot\nabla z+z\cdot\nabla u.
```

That entire expression is in the principal operator.

## 3. Residual Pair Becomes Ordinary Dissipation

If the full linearized adjoint packets satisfy:

```math
\boxed{
\left\|\sum_T c_T\Chi_T\right\|_{L_t^2H_x^1}^2
\le C\sum_T|c_T|^2,
}
\tag{FRA.4}
```

then duality gives:

```math
\sum_T
\left|
\int_{I_T}\langle \Delta u,\Chi_T\rangle dt
\right|^2
\le
C\|\Delta u\|_{L_t^2H_x^{-1}}^2.
```

As before:

```math
\|\Delta u_{>N}\|_{L_t^2H_x^{-1}}^2
\le
C_{\Delta}
\int_I\sum_{j>N}D_j(t)dt
\to0.
\tag{FRA.5}
```

Thus the analytic residual charge is installed by ordinary dissipation.

## 4. New Packet-Calculus Burden

The price is no longer a PDE source estimate.  It is a packet-calculus theorem:

```math
\boxed{
FullLinearizedResponseAdjointPacket.A.
}
\tag{FRA.6}
```

It must prove that the backward adjoint of `L_u` has enough packet structure to
support:

```text
1. full-linearized response Bessel;
2. parent-kernel decomposition;
3. positive rotation detection by terminal packet lower frame;
4. legal cutoff/projection/frame errors.
```

This is harder than the shell-diagonal projected packet, because `L_u^\ast`
contains coefficient coupling across shells.  The theorem can only be pursued
after coefficient stopping or truncation:

```math
u=u_{\le j-M}+u_{>j-M}
```

with the high-coefficient part treated as legal residual.

## 5. Conditional Full Response Drain

Assume:

```text
FullLinearizedResponseAdjointPacket.A
PositiveRotationDetectsFullAdjointMass.A
ResponseNoParent_src.A
OrdinaryDissipationTail.A
```

Then:

```math
\boxed{
ResponseTPNI.A.
}
\tag{FRA.7}
```

Proof:

Use `(FRA.3)` and normalize squared adjoint mass.  The parent endpoint gives
earlier response parent mass.  The residual creation is the `Delta u` pairing,
paid by `(FRA.5)` and Bessel.  First-pulse response no-parent removes the
parent term.  Positive rotation detection supplies a nonzero terminal mass.
The ordinary high-frequency dissipation tail tends to zero.  Contradiction.
`\square`

## 6. Consequence For The Viscosity-Homotopy Route

This route removes the last PDE response residual:

```text
LowResponseStrainCharge.A.
```

The response side becomes a packet theorem:

```text
FullLinearizedResponseAdjointPacket.A
+ PositiveRotationDetectsFullAdjointMass.A
+ ResponseNoParent_src.A
=> ResponseTPNI.A.
```

and the residual charge is just ordinary dissipation.

## 7. Verdict

The strongest current response route is no longer a source-wall estimate.  It
is:

```text
build the full localized linearized-NS adjoint packet calculus.
```

Open:

```text
FullLinearizedResponseAdjointPacket.A
PositiveRotationDetectsFullAdjointMass.A
```

If those packet-calculus theorems close, the response-rotation branch closes
without `HeightFluxControl.A`, `OriginalHeightDissipationCharge.A`,
`ResponseStrainDecorrel.A`, or `LowResponseStrainCharge.A`.

## 8. High-Coefficient Correction

The direct high-coefficient attempt in
`mpp-high-coefficient-response-residual-attempt-20260506.md` changes the packet
target as follows.

The finite collar around the terminal response scale should not be treated as a
residual.  Build the local principal operator with:

```math
u^{col}_j=P_{\le j+C}u.
```

Then all coefficient interactions with `q<=j+C` are inside the principal
linearized response dynamics.  The only remaining discarded coefficient
channel is:

```math
q>j+C,\qquad |\ell-q|\le C_{beat},
```

namely a far-high response beat capable of returning to shell `j`.

Therefore the current expansion of `FullLinearizedResponseAdjointPacket.A` is:

```text
FiniteCollarLinearizedAdjointPacket.A
+ LinearizedCoeffStop.A
+ FarHighBeatNoReturn.A
=> FullLinearizedResponseAdjointPacket.A.
```

The stronger route mutation is:

```text
FullCoefficientLinearizedAdjointKernel.A
```

which would build the adjoint/lower-frame calculus for the full coefficient
operator `L_u^*` and remove coefficient residuals entirely.

This stronger mutation is expanded in
`mpp-full-coefficient-linearized-adjoint-kernel-route-20260506.md`.  That note
proves the exact full-coefficient adjoint identity:

```text
FullCoefficientAdjointIdentity.A
CoefficientResidualRemoval.A
```

and isolates the remaining burden as the vector parabolic packet-frame theorem
`FullCoefficientLinearizedAdjointKernel.A`.

The other listed hard item,
`PositiveRotationDetectsFullAdjointMass.A`, is handled in
`mpp-positive-rotation-detects-full-adjoint-mass-proof-20260506.md`.  It is a
terminal lower-frame detection lemma:

```text
ResponseLowerFrame.A
+ ResponseTestNormalization.A
+ SameTerminalFullResponseFrame.A
=> PositiveRotationDetectsFullAdjointMass.A.
```

Thus the response route's live burden is concentrated in the full-coefficient
vector packet kernel theorem and its frame-pinning subitems.

The stopped-parent frame pinning is recorded in
`mpp-full-coeff-stopped-parent-frame-pinning-20260506.md`.  The no-parent input
for the full-coefficient route is now:

```text
ResponseNoParent_full.A
```

not merely the older `ResponseNoParent_src.A`, because the expanded parent
relation must include coefficient-stopped frame parents.
