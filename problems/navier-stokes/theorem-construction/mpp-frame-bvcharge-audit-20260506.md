# MPP FrameBVCharge.A Audit

Date: 2026-05-06

Status: route-convergence audit; not installed as a theorem.

Purpose: test the remaining frame-rotation term under `LowStrainBVCharge.A`
and determine whether it is independent of the active-alignment / terminal
no-incoming gate already isolated elsewhere.

## 0. Target

The frame term in the sampled near-band strain derivative is:

```math
2(D_tn_P)\cdot S^{near}_{j_P,L}n_P.
```

The target estimate is:

```math
\boxed{
\sum_{P\in F_N(W)}
\omega_PE_P\tau_P
\int_{I_P}|D_tn_P|\,\|S^{near}_{j_P,L}\|_\infty\,dt
\le
\mathrm{Legal}_{N,Q}(W)+o_N(1).
}
\tag{FBV.1}
```

## 1. Transport-frame identity

For a normalized transported packet direction, the model frame equation is:

```math
D_tn_P
=
Q_{n_P}S^{loc}_{<j_P}n_P
+\mathrm{FrameComm}_P,
\tag{FBV.2}
```

where

```math
Q_{n}:=I-n\otimes n.
```

The commutator term records pressure/projection/cutoff/localization and
off-packet defects.  Those are legal only if the corresponding Part/Field
ledgers are already available.

Substituting `(FBV.2)` into `(FBV.1)` leaves the principal term:

```math
\sum_P\omega_PE_P\tau_P
\int_{I_P}
|Q_{n_P}S^{near}_{j_P,L}n_P|\,\|S^{near}_{j_P,L}\|_\infty\,dt.
\tag{FBV.3}
```

## 2. Subparabolic/burst split

On the subparabolic set

```math
\|S^{near}_{j_P,L}\|_\infty
\le
\theta\nu2^{2j_P}
=
\theta\tau_P^{-1},
\tag{FBV.4}
```

one has

```math
\tau_P
|Q_{n_P}S^{near}_{j_P,L}n_P|
\|S^{near}_{j_P,L}\|_\infty
\le
C\theta
|Q_{n_P}S^{near}_{j_P,L}n_P|.
\tag{FBV.5}
```

If the off-axis strain component is not large, `(FBV.5)` is paid with an
explicit absorption margin.  For the tested frame packet define

```math
H_W^{frame}:=\sum_P\omega_PE_P
|Q_{n_P}S^{near}_{j_P,L}n_P|.
```

After summing `(FBV.5)` over \(P\), choose \(0<\eta_{fbv}<1\) and

```math
\theta\le \eta_{fbv}/C.
\tag{FBV.5a}
```

Then the subparabolic non-rotating part is bounded by

```math
\sum_P\omega_PE_P\tau_P
|Q_{n_P}S^{near}_{j_P,L}n_P|
\|S^{near}_{j_P,L}\|_\infty
\le
\eta_{fbv}H_W^{frame}.
\tag{FBV.5b}
```

If this smallness condition fails through a large off-axis component, then the
packet direction is rotating at the high heat rate toward or across an
expanding near-band eigendirection.  That is exactly an active-alignment
transition, not legal bookkeeping.

On the complement of `(FBV.4)`, the near band has parabolic-rate amplitude and
therefore routes to the already isolated burst-height branch:

```text
ParabolicRateStrainBurst
=> lower/neighbor donor height
=> inherited height, height charge, or Zeno residue.
```

## 3. Principal obstruction

After the subparabolic/burst split, the remaining frame term is:

```math
\sum_P\omega_PE_P
\int_{I_P}
|Q_{n_P}S^{near}_{j_P,L}n_P|
\,dt
\tag{FBV.6}
```

on active retained packets.  This is the geometric cost of rotating a retained
high packet into the expanding low/near strain direction.

That is the same primitive carried by:

```text
ActiveStrainAlignmentCost.A,
TerminalTangentNoIncomingRigidity.A,
TPNI.A,
TerminalSignedSaturation.A.
```

The earlier direct ASAC attempt already showed that incompressibility and
bare skew exchange do not remove this positive aligned carrier.  Absolute
estimates return to `ScaleCriticalTreeCarleson.A`.

## 4. Bridge statement

The honest bridge is:

```math
\boxed{
ActiveStrainAlignmentCost.A
+ FrameCommLegal.A
+ BurstToHeightInheritanceOrCharge.A
\Longrightarrow
FrameBVCharge.A.
}
\tag{FBV.7}
```

Alternatively:

```math
\boxed{
TPNI.A
+ PacketNormalForm.A
+ SourceTether.A
+ LimitPass.A
\Longrightarrow
FrameBVCharge.A.
}
\tag{FBV.8}
```

The first form is a direct finite-window ledger.  The second form is the
terminal tangent rigidity route: a nonzero terminal tangent packet with
no incoming source cannot keep rotating into an expanding strain direction.

## 5. Verdict

`FrameBVCharge.A` is not an independent easy estimate.  Its subparabolic
non-rotating part is paid only by the explicit `(FBV.5b)` absorption after the
choice `(FBV.5a)`, and its parabolic-amplitude complement routes to burst
height.  The live remainder is exactly the active alignment/no-incoming gate:

```text
ActiveStrainAlignmentCost.A / TPNI.A / TerminalSignedSaturation.A.
```

Together with the `NearBandMaterialSourceCharge.A` audit, this means the
height-flux route has converged with the signed-current route at one common
primitive:

```text
signed positive-source balance under one-sided terminal weights,
including active frame-alignment depletion.
```

## 6. Native TPNI Parent-Drain Update

The active-alignment rigidity primitive is sharpened in
`mpp-native-tpni-adjoint-parent-drain-20260506.md`:

```text
TerminalTangentParentDrain.A
+ TerminalTangentNoParent.A
=> TPNI.A.
```

Therefore the frame-BV branch should no longer spend
`NoIncomingFlux_global.A` or `AnisotropicStokesCarleman.A` if the terminal
first-pulse parent graph is available.  The live frame-BV burdens become:

```text
PacketNormalForm.A
SourceTether.A
LimitPass.A
TerminalTangentNoParent.A
```

with the homogeneous tangent rigidity itself handled by the adjoint
parent-drain.

The ASAC support pins are assembled in
`mpp-asac-parent-drain-assembly-20260506.md`, which proves:

```text
PacketNormalForm.A
+ SourceTether.A
+ LimitPass.A
+ TerminalTangentNoParent.A
+ TPNI.A
=> ASAC.A.
```

Consequently the frame-BV branch can now consume `ASAC.A`; the remaining
height-flux microfrontier is `NearBandMaterialSourceCharge.A` plus legal
frame-commutator bookkeeping.
