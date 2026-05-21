# MPP PositiveRotationDetectsFullAdjointMass.A Note

Date: 2026-05-06

Status: theorem-facing detection primitive for the full-linearized response
adjoint route.  This note does not prove the full response drain.  It isolates
the minimal legal lower-frame theorem needed once the adjoint is full-linearized
rather than shell-diagonal.

Depends on:

```text
mpp-response-adjoint-square-mass-route-20260506.md
mpp-response-square-mass-subatoms-proof-20260506.md
mpp-response-source-tether-terminal-slice-discharge-20260506.md
mpp-full-coeff-terminal-lower-frame-pinning-20260506.md
mpp-full-linearized-response-principal-operator-route-20260506.md
mpp-full-linearized-response-adjoint-route-20260506.md
mpp-full-linearized-response-adjoint-packet-attempt-20260506.md
mpp-response-tpni-coupled-transform-package-20260506.md
mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md
mcp-projectedadjointpacket-a-verification-20260504.md
```

## Target

The full-linearized response route needs:

```math
\boxed{
PositiveRotationDetectsFullAdjointMass.A.
}
```

This is not a sign-preservation theorem.  It is a terminal packet-frame
detection theorem: positive response-rotation mass must have nonzero projection
onto the normalized terminal traces of the full-linearized response adjoint
frame.

## Objects

On a terminal response-rotation tile `T` of shell `j`, let:

```math
L_u z
=
\partial_t z+\mathbb P(u\cdot\nabla z+z\cdot\nabla u)-\nu\Delta z
```

be the full localized linearized response operator, with the coefficient-good
truncation/stopping convention from
`mpp-full-linearized-response-adjoint-packet-attempt-20260506.md`.

Let `Psi_{T,a}^{full}` solve backward:

```math
L_u^*\Psi_{T,a}^{full}=0
```

from terminal detection data indexed by a finite bounded-overlap packet index
`a in A_T`.  Normalize by the full-linearized logarithmic gain:

```math
\Chi_{T,a}^{full}
:=
(g_{T}^{full})^{-1}\Psi_{T,a}^{full}.
```

Define the full-adjoint square mass:

```math
M_{full}(T,a)
:=
\left|
\left\langle z(t_+),\Chi_{T,a}^{full}(t_+)\right\rangle
\right|^2.
```

Let the terminal positive response-rotation functional be:

```math
\Lambda_T(z)
:=
2\int_{Q_T}
\left\langle S_{<j}^{loc}u_j,z_j^\perp\right\rangle
\,\omega_T\,dxdt,
```

with the same response-rotation localization used by the response-TPNI compactness
route.  `SourceTether_resp.A` is the required license that this spacetime
functional is represented on the same terminal heat cylinder by the terminal
response subspace `H_T^{rot}`.

## Theorem `PositiveRotationDetectsFullAdjointMass.A`

Assume:

1. `SourceTether_resp.A`: the selected positive response-rotation mass is
   represented on the same terminal response subspace `H_T^{rot}`.
2. `FullLinearizedTerminalLowerFrame.A`: the terminal traces
   `{Chi_{T,a}^{full}(t_+) : a in A_T}` form a lower frame on `H_T^{rot}`:

```math
\|P_{H_T^{rot}} f\|_2^2
\le
C
\sum_{a\in A_T}
\left|\left\langle f,\Chi_{T,a}^{full}(t_+)\right\rangle\right|^2
+Err_{frame}(T).
```

3. `FullLinearizedRotationTestNormalization.A`: the Riesz representative
`F_T^{rot}` of `Lambda_T` on `H_T^{rot}` obeys:

```math
\|F_T^{rot}\|_2\le C_{rot}.
```

If the tile carries normalized positive rotation:

```math
[\Lambda_T(z)]_+\ge \eta,
```

then:

```math
\boxed{
\sum_{a\in A_T} M_{full}(T,a)
\ge
c\,\eta^2
-Err_{frame}(T)
-Err_{tether}(T).
}
```

This is the minimal legal detection theorem.

## Proof Sketch

By `SourceTether_resp.A`, the positive rotation functional is read on the same
terminal subspace:

```math
\Lambda_T(z)
=
\left\langle P_{H_T^{rot}}z(t_+),F_T^{rot}\right\rangle
+Err_{tether}(T).
```

If `[Lambda_T(z)]_+ >= eta`, then

```math
\eta
\le
\left|
\left\langle P_{H_T^{rot}}z(t_+),F_T^{rot}\right\rangle
\right|
+Err_{tether}(T).
```

Cauchy and `FullLinearizedRotationTestNormalization.A` give:

```math
\eta
\le
C_{rot}\|P_{H_T^{rot}}z(t_+)\|_2
+Err_{tether}(T).
```

Apply `FullLinearizedTerminalLowerFrame.A` to `f=z(t_+)`:

```math
\|P_{H_T^{rot}}z(t_+)\|_2^2
\le
C
\sum_{a\in A_T}
\left|
\left\langle z(t_+),\Chi_{T,a}^{full}(t_+)\right\rangle
\right|^2
+Err_{frame}(T).
```

Combining and absorbing constants yields the claimed square-mass lower bound.
The full-linearized evolution is not used to preserve sign; it is used only to
define the legal adjoint packet traces.  The no-free-create identity and
ordinary dissipation payment are separate steps in the full-linearized response
route.

## Legal Boundary

This theorem may reuse:

```text
ProjectedAdjointPacket.A
NormalizedAdjointAmplitudeFourCertificate.A
TruncatedLinearizedResponseAdjointPacket.A
SourceTether_resp.A
```

It must not reuse:

```text
ResponseKernelSignControl.A
NonlinearResponseRotationNoGain.A
ResponseStrainDecorrel.A
LowResponseStrainCharge.A
```

as proof inputs for detection.  Those are either retired by the square-mass /
full-linearized route or belong to older shell-diagonal residual accounting.

## Verdict

`PositiveRotationDetectsFullAdjointMass.A` reduces to two packet-definition
pinning statements plus one tether:

```math
SourceTether_resp.A
+FullLinearizedTerminalLowerFrame.A
+FullLinearizedRotationTestNormalization.A
\Longrightarrow
PositiveRotationDetectsFullAdjointMass.A.
```

No new PDE source estimate is required for detection itself.

The terminal packet-definition inputs are pinned in
`mpp-full-coeff-terminal-lower-frame-pinning-20260506.md`; the remaining
non-definition input in this detection theorem is `SourceTether_resp.A`.
That tether is discharged for the response-rotation detector in
`mpp-response-source-tether-terminal-slice-discharge-20260506.md` by selecting
a positive terminal time-slice and placing the full-adjoint terminal frame
there.
