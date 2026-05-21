# MPP PositiveRotationDetectsFullAdjointMass.A Proof

Date: 2026-05-06

Status: terminal-frame detection discharged, conditional only on the existing
local lower-frame and test-normalization packet definitions.

Depends on:

```text
mpp-response-square-mass-subatoms-proof-20260506.md
mpp-positive-rotation-detects-full-adjoint-mass-note-20260506.md
mpp-full-coefficient-linearized-adjoint-kernel-route-20260506.md
mpp-full-linearized-response-adjoint-route-20260506.md
```

## 0. Target

The full-coefficient response route needs:

```math
\boxed{
PositiveRotationDetectsFullAdjointMass.A.
}
```

This note proves that this is not a new PDE estimate.  It is the same terminal
lower-frame detection theorem as the square-mass response route, because the
full adjoint and truncated adjoint have the same terminal packet data.  They
only differ when propagated backward.

## 1. Full Adjoint Mass

Let `Chi_T^{full}` be the normalized backward packet for the full
linearized response adjoint:

```math
L_u^*\Chi_T^{full}=0
```

with terminal data at `t_+` equal to the local response-orthogonal packet frame
element on tile `T`.

Define:

```math
\boxed{
M_{full}(T)
:=
\left|
\left\langle Z_{j_T}^{\perp}(t_+),
\Chi_T^{full}(t_+)
\right\rangle
\right|^2.
}
\tag{PRF.1}
```

At `t_+`, the terminal packet is just the chosen frame element.  The full
coefficient operator affects `Chi_T^{full}(t)` only for `t<t_+`.

## 2. Detection Hypothesis

Assume a terminal response-rotation tile carries:

```math
\left[
2\int_{Q_T}
\langle S_{<j}^{loc}u_j,Z_j^\perp\rangle
\right]_+
\ge \eta.
\tag{PRF.2}
```

Define the terminal test:

```math
F_T:=2P_{resp,T}(S_{<j}^{loc}u_j).
\tag{PRF.3}
```

The packet-definition hypotheses are:

```text
SourceTether_resp.A:
  if the rotation functional is represented as a spacetime readout, tether it
  to the same terminal response subspace used by the packet frame;

ResponseLowerFrame.A:
  terminal response packets form a local lower frame on P_{resp,T}L^2;

ResponseTestNormalization.A:
  ||F_T||_2 <= C_T with C_T uniform after the installed normalization;

SameTerminalFullResponseFrame.A:
  Chi_T^{full}(t_+) uses the same terminal response packet frame as the
  projected/truncated response adjoint.
```

The last item is a definition lock, not an analytic theorem.

The companion note
`mpp-positive-rotation-detects-full-adjoint-mass-note-20260506.md` gives the
equivalent Riesz-representer version:

```text
SourceTether_resp.A
+ FullLinearizedTerminalLowerFrame.A
+ FullLinearizedRotationTestNormalization.A
=> PositiveRotationDetectsFullAdjointMass.A.
```

## 3. Theorem

```math
\boxed{
ResponseLowerFrame.A
+ResponseTestNormalization.A
+SameTerminalFullResponseFrame.A
\Longrightarrow
PositiveRotationDetectsFullAdjointMass.A.
}
\tag{PRF.4}
```

More explicitly:

```math
\sum_{T'\subset C T}M_{full}(T')
\ge c\eta^2-Err_{frame}(T).
\tag{PRF.5}
```

## 4. Proof

By `(PRF.2)` and `(PRF.3)`:

```math
\eta
\le
|\langle F_T,Z_j^\perp(t_+)\rangle|.
\tag{PRF.6}
```

Project both factors onto the response-orthogonal local terminal subspace.
The projection error is exactly `Err_frame(T)` in the packet ledger.  Let
`\{e_{T'}\}_{T'\subset C T}` be the local terminal frame.  By
`SameTerminalFullResponseFrame.A`:

```math
e_{T'}=\Chi_{T'}^{full}(t_+).
\tag{PRF.7}
```

The local lower-frame/dual-frame inequality gives:

```math
|\langle F_T,Z_j^\perp\rangle|
\le
C\|F_T\|_2
\left(
\sum_{T'\subset C T}
|\langle Z_j^\perp,\Chi_{T'}^{full}(t_+)\rangle|^2
\right)^{1/2}
+Err_{frame}(T).
\tag{PRF.8}
```

Using `ResponseTestNormalization.A`, `\|F_T\|_2\le C_T`, and absorbing the
uniform constant:

```math
\eta
\le
C
\left(
\sum_{T'\subset C T}M_{full}(T')
\right)^{1/2}
+Err_{frame}(T).
\tag{PRF.9}
```

Squaring and shrinking constants proves `(PRF.5)`. `\square`

## 5. Consequence

The full-coefficient route no longer has two independent hard items.  The
detection item is terminal packet geometry:

```text
PositiveRotationDetectsFullAdjointMass.A
```

is discharged once the terminal response lower frame and normalization are
locked.  It does not depend on how the adjoint packet propagates backward.

The remaining live mathematical burden is therefore:

```text
FullCoefficientLinearizedAdjointKernel.A
```

with its internal stopped-tile/lower-frame packet-definition items.
