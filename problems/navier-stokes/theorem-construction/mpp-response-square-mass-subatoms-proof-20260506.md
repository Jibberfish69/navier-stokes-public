# MPP Response Square-Mass Subatoms Proof

Date: 2026-05-06

Status: subatom proof packet; Bessel and parent-kernel inheritance proved
conditionally from existing packet calculus; residual pair remains the hard
analytic estimate.

Depends on:

```text
mpp-response-adjoint-square-mass-route-20260506.md
mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md
mcp-projectedadjointpacket-a-verification-20260504.md
```

## 0. Target

The square-mass response route reduced `ResponseTPNI.A` to:

```text
PositiveRotationDetectsAdjointMass.A
ResponseAdjointBessel.A
ResponseResidualPair.A
ResponseParentKernel.A
ResponseNoParent_src.A.
```

This note tests the first four subatoms.

## 1. ResponseAdjointBessel.A

### Statement

For normalized response adjoint packets:

```math
\chi_T^{resp}=g_T^{-1}\psi_T^{resp},
```

prove:

```math
\boxed{
\left\|\sum_T c_T\chi_T^{resp}\right\|_{L_t^2H_x^1}^2
\le
C\sum_T|c_T|^2.
}
\tag{RSM.1}
```

### Proof

The response adjoint packet uses the same projected affine heat packet frame as
the installed source-drain packet:

```math
L_{j,k}^{P,*}\psi_T^{resp}=0,
```

with terminal data changed from an original source packet to an orthogonal
response detection packet.  The packet frame, heat radius, same-fluid center,
affine low-flow map, strain gauge, Leray projection, and coefficient-good
stopping rule are unchanged.

The installed `ProjectedAdjointPacket.A` verification gives heat-tube bounds:

```math
|\partial_x^\alpha\chi_T(t,x)|
\le
C_\alpha r_T^{-3/2-|\alpha|}
\exp(-c|x-X_T(t)|^2/r_T^2).
```

These bounds depend on the terminal packet being normalized and divergence-free,
not on whether it detects `u_j` or `z_j^\perp`.  Therefore the same
Schur/Cotlar argument gives `(RSM.1)`.

Thus:

```math
\boxed{
ProjectedAdjointPacket.A
\Longrightarrow
ResponseAdjointBessel.A.
}
\tag{RSM.2}
```

## 2. ResponseParentKernel.A

### Statement

For:

```math
M_{resp}(T)
=
|\langle z_j^\perp(t_+),\chi_T^{resp}(t_+)\rangle|^2,
```

prove:

```math
M_{resp}^{parent}(T)
\le
\sum_{P\prec_{resp}T}\kappa_{resp}(P,T)M_{resp}(P)
+Err_{frame}(T).
\tag{RSM.3}
```

### Proof

Backward propagate the normalized response adjoint packet to the stopped
earlier face `\sigma_T`.  The endpoint packet

```math
\chi_T^{resp}(\sigma_T)
```

is a heat-tube packet centered on the same-fluid transported cylinder.  Expand
it in the bounded-overlap terminal packet frame at time `\sigma_T`:

```math
\chi_T^{resp}(\sigma_T)
=
\sum_{P\prec_{resp}T}a_{P,T}\chi_P^{resp}(\sigma_P^+)
+Err_T^{frame}.
```

The Bessel bound and finite-overlap packet partition give:

```math
\sum_{P\prec_{resp}T}|a_{P,T}|^2\le C.
```

Pairing with `z^\perp` and using Cauchy:

```math
|\langle z^\perp,\chi_T^{resp}(\sigma_T)\rangle|^2
\le
C\sum_{P\prec_{resp}T}|a_{P,T}|^2
|\langle z^\perp,\chi_P^{resp}\rangle|^2
+Err_{frame}.
```

Absorb constants into:

```math
\kappa_{resp}(P,T):=C|a_{P,T}|^2.
```

This proves `(RSM.3)`.

Thus:

```math
\boxed{
ResponseAdjointBessel.A
+SameFluidResponseFrame.A
\Longrightarrow
ResponseParentKernel.A.
}
\tag{RSM.4}
```

The needed new object is only `SameFluidResponseFrame.A`, which says the
orthogonal response packet uses the same bounded-overlap terminal frame as the
already installed adjoint packet calculus.

## 3. PositiveRotationDetectsAdjointMass.A

### Statement

If a terminal response tile carries:

```math
\left[
2\int_{Q_T}\langle S_{<j}^{loc}u_j,z_j^\perp\rangle
\right]_+
\ge \eta,
\tag{RSM.5}
```

then a bounded response adjoint subframe satisfies:

```math
\sum_{T'\subset C T}M_{resp}(T')\ge c\eta^2
\tag{RSM.6}
```

after legal frame errors.

### Proof As A Conditional Frame Lemma

Let:

```math
F_T(x,t):=
2S_{<j}^{loc}(x,t)u_j(x,t)
```

projected onto the orthogonal response polarization.  Then `(RSM.5)` is:

```math
\left[\langle F_T,z_j^\perp\rangle_{Q_T}\right]_+\ge\eta.
```

Assume the response terminal packet frame is a local lower frame on the
orthogonal response subspace:

```math
\|P_{resp,T} f\|_2^2
\le
C\sum_{T'\subset C T}|\langle f,\chi_{T'}^{resp}\rangle|^2
+Err_{frame}.
\tag{RSM.7}
```

Also assume the test functional is normalized:

```math
\|P_{resp,T}F_T\|_2\le C.
\tag{RSM.8}
```

By Cauchy and the lower frame:

```math
\eta
\le
|\langle P_{resp,T}F_T,z_j^\perp\rangle|
\le
C
\left(\sum_{T'\subset C T}M_{resp}(T')\right)^{1/2}
+Err_{frame}.
```

This gives `(RSM.6)`.

Therefore:

```math
\boxed{
ResponseLowerFrame.A
+ResponseTestNormalization.A
\Longrightarrow
PositiveRotationDetectsAdjointMass.A.
}
\tag{RSM.9}
```

The proof is conditional because the local lower frame must be pinned to the
actual response-orthogonal packet subspace.  That is a packet-definition task,
not a new PDE estimate.

## 4. ResponseResidualPair.A

### Target

Prove:

```math
\boxed{
\|R_{resp}\|_{L_t^2H_x^{-1}}^2
\le
CResponseCharge_N+o_N(1).
}
\tag{RSM.10}
```

The residual contains:

```math
R_{resp}
=
R_{u\nabla z}
+R_{z\nabla u}
+R_{press}^{resp}
+R_{cut}^{resp}
+R_{off}^{resp}.
```

The pressure, cutoff, and off-packet terms are charged by the same projected
packet and finite-overlap ledgers as the installed residual pair.  The new hard
terms are:

```math
u\cdot\nabla z,
\qquad
z\cdot\nabla u.
```

The low-response-strain and response-height packets already reduce those terms
to:

```text
ResponseHeightCreationControl.A
ResponseStrainDecorrel.A
NonlinearResponseRotationNoGain.A.
```

Thus:

```math
\boxed{
ResponseHeightCreationControl.A
+ResponseStrainDecorrel.A
+NonlinearResponseRotationNoGain.A
\Longrightarrow
ResponseResidualPair.A.
}
\tag{RSM.11}
```

This is not an unconditional proof.  It identifies exactly where the response
residual estimate spends the still-open response PDE content.

## 5. Updated Route

The square-mass route now gives:

```math
\boxed{
\begin{aligned}
&ResponseLowerFrame.A\\
&+ResponseTestNormalization.A\\
&+SameFluidResponseFrame.A\\
&+ResponseHeightCreationControl.A\\
&+ResponseStrainDecorrel.A\\
&+NonlinearResponseRotationNoGain.A\\
&+ResponseNoParent_src.A\\
&\Longrightarrow ResponseTPNI.A.
\end{aligned}}
\tag{RSM.12}
```

The frame items are packet-definition / Bessel inheritances.  The real PDE
items remain:

```text
ResponseHeightCreationControl.A
ResponseStrainDecorrel.A
NonlinearResponseRotationNoGain.A
```

which have already been reduced further in the response-route audit.

## 6. Verdict

Proved:

```text
ProjectedAdjointPacket.A => ResponseAdjointBessel.A
ResponseAdjointBessel.A + SameFluidResponseFrame.A => ResponseParentKernel.A
ResponseLowerFrame.A + ResponseTestNormalization.A
  => PositiveRotationDetectsAdjointMass.A
```

Open:

```text
ResponseResidualPair.A
ResponseLowerFrame.A exact pinning
ResponseTestNormalization.A exact pinning
SameFluidResponseFrame.A exact pinning
```

The raw `ResponseKernelSignControl.A` primitive should be retired in favor of
this square-mass route.
