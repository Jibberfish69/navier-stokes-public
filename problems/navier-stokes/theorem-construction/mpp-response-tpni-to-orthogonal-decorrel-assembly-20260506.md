# MPP ResponseTPNI To Orthogonal Decorrel Assembly

Date: 2026-05-06

Status: downstream assembly; replaces the older response-ASAC/global
no-incoming detour for the orthogonal response branch.

Depends on:

```text
mpp-orthogonal-response-decorrelation-proof-20260506.md
mpp-nonlinear-response-rotation-no-gain-proof-20260506.md
mpp-full-coefficient-response-drain-assembly-20260506.md
mpp-response-source-tether-terminal-slice-discharge-20260506.md
```

## 0. Target

The older route left:

```text
NonlinearResponseRotationNoGain.A
```

as the primitive behind:

```text
OrthogonalResponseDecorrel.A.
```

That route passed through `ResponseASAC.A`, source tether, no-incoming, and a
coupled frozen-response rigidity theorem.  The full-coefficient response drain
now gives a shorter route:

```text
failed orthogonal response decorrelation
=> first positive terminal response-rotation pulse
=> ResponseTPNI.A contradiction.
```

## 1. Bad Orthogonal Response Tile

If `OrthogonalResponseDecorrel.A` fails, then after removing legal
response-height, pressure/cutoff, and frame errors there exists a sequence of
tiles with:

```math
\left[
2\int_{Q_T}
\langle S_{<j}^{loc}u_j,Z_j^\perp\rangle
\right]_+
\ge \eta_0
\tag{RTO.1}
```

in normalized units.

By the terminal-slice tether:

```text
PositiveTerminalSlice.A
=> SourceTether_resp.A
```

we may refine to a terminal face carrying positive terminal response-rotation
mass on the same full-adjoint response packet subspace.

## 2. Theorem `ResponseTPNIKillsOrthogonalRotation.A`

### Statement

```math
\boxed{
ResponseTPNI.A
+SourceTether_resp.A
\Longrightarrow
NonlinearResponseRotationNoGain.A.
}
\tag{RTO.2}
```

### Proof

Assume `NonlinearResponseRotationNoGain.A` fails.  Select a first terminal
tile satisfying `(RTO.1)` after all legal charges have been removed.  By
`SourceTether_resp.A` and terminal lower-frame detection, this tile has
nonzero full-adjoint response square mass:

```math
\sum_{T'\subset CT}M_{full}(T')\ge c\eta_0^2.
\tag{RTO.3}
```

The selected tile is a first positive response-rotation pulse in the expanded
full response ancestry relation.  But `ResponseTPNI.A`, proved by the
full-coefficient response drain, rules out exactly such a first terminal pulse
under retained positive-viscosity response dynamics.  Contradiction.

Therefore the nonlinear response rotation cannot produce positive orthogonal
strain alignment except through the legal charges already removed. `\square`

## 3. Theorem `OrthogonalResponseDecorrel.A`

### Statement

```math
\boxed{
ResponseTPNI.A
+SourceTether_resp.A
\Longrightarrow
OrthogonalResponseDecorrel.A.
}
\tag{RTO.4}
```

### Proof

`mpp-orthogonal-response-decorrelation-proof-20260506.md` already proves:

```text
HeatResponseNoOrthogonalRotation.A
ResponseRotationCharge.A => OrthogonalResponseDecorrel.A.
```

The only non-legal source of `ResponseRotationCharge.A` is the nonlinear
response-rotation pulse.  By `ResponseTPNIKillsOrthogonalRotation.A`, such a
pulse is impossible.  Hence the remaining terms are legal heat-width,
pressure/cutoff, response-height, and frame errors.  This proves
`OrthogonalResponseDecorrel.A`. `\square`

## 4. Route Replacement

Replace the old downstream route:

```text
PacketNormalForm_resp.A
+ SourceTether_resp.A
+ NoIncomingLicense_resp.A
+ ResponseTPNI.A
=> ResponseASAC.A
=> NonlinearResponseRotationNoGain.A
```

with:

```text
ResponseTPNI.A
+ SourceTether_resp.A
=> NonlinearResponseRotationNoGain.A
=> OrthogonalResponseDecorrel.A.
```

This is legitimate because the full-coefficient response drain already proves
the no-free-create/parent-or-charge theorem directly; it does not need the
older global no-incoming compactness detour.

## 5. Verdict

Proved:

```text
ResponseTPNIKillsOrthogonalRotation.A
OrthogonalResponseDecorrel.A
```

from the installed full-coefficient `ResponseTPNI.A` and response terminal
tether.
