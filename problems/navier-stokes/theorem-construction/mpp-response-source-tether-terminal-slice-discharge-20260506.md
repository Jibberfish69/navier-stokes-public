# MPP Response SourceTether Terminal Slice Discharge

Date: 2026-05-06

Status: discharges the response tether needed for terminal full-adjoint mass
detection by terminal-slice selection.

Depends on:

```text
mpp-positive-rotation-detects-full-adjoint-mass-note-20260506.md
mpp-full-coeff-terminal-lower-frame-pinning-20260506.md
mpp-response-tpni-coupled-transform-package-20260506.md
```

## 0. Target

The full-adjoint detection theorem retained one non-definition input:

```math
\boxed{
SourceTether_{resp}.A.
}
```

In this response route the tether has a narrower job than the older global
source-localization tethers.  It only needs to say:

```text
the positive response-rotation spacetime readout can be represented on the
same terminal response packet subspace used by full-adjoint mass.
```

This note proves that by choosing the terminal face at a positive density
slice.

## 1. Spacetime Response-Rotation Readout

On a response tile `T=Q_T x I_T`, define:

```math
\Lambda_T(Z)
:=
2\int_{I_T}\int_{Q_T}
\langle S_{<j}^{loc}u_j,Z_j^\perp\rangle
\omega_T(x,t)\,dxdt.
\tag{RST.1}
```

Assume:

```math
[\Lambda_T(Z)]_+\ge \eta.
\tag{RST.2}
```

Let the slice density be:

```math
\lambda_T(t)
:=
2\int_{Q_T(t)}
\langle S_{<j}^{loc}u_j(x,t),Z_j^\perp(x,t)\rangle
\omega_T(x,t)\,dx.
\tag{RST.3}
```

Then:

```math
\Lambda_T(Z)=\int_{I_T}\lambda_T(t)dt.
\tag{RST.4}
```

## 2. Theorem `PositiveTerminalSlice.A`

### Statement

If `(RST.2)` holds, then there is a time `t_+ in I_T` and a refined terminal
subtile `T_+` with comparable radius and bounded overlap such that:

```math
\left[
\lambda_{T_+}(t_+)
\right]_+
\ge
c\eta/|I_T|.
\tag{RST.5}
```

### Proof

If `(RST.5)` failed on every admissible density slice, then:

```math
\int_{I_T}[\lambda_T(t)]_+dt
<
c\eta.
```

Choosing `c` below the partition/refinement constant would contradict
`[\int_{I_T}\lambda_T(t)dt]_+\ge\eta`, since:

```math
\left[\int\lambda_T\right]_+
\le
\int[\lambda_T]_+.
```

Smooth preterminality gives enough time-continuity to choose a Lebesgue/density
time as the terminal face of a refined packet.  The refinement costs only the
fixed finite-overlap constant. `\square`

## 3. Terminal Riesz Representative

At the selected slice `t_+`, define:

```math
F_{T_+}^{rot}(x)
:=
2P_{H_{T_+}^{rot}}
\left(S_{<j}^{loc}u_j(x,t_+)\omega_{T_+}(x,t_+)\right).
\tag{RST.6}
```

Then:

```math
\lambda_{T_+}(t_+)
=
\langle F_{T_+}^{rot},Z_j^\perp(t_+)\rangle
+Err_{slice/frame}(T_+).
\tag{RST.7}
```

The error is the same projection/cutoff error used in the terminal lower-frame
packet ledger.

## 4. Theorem `SourceTether_resp.A`

### Statement

The response source tether needed by the full-adjoint detection theorem holds:

```math
\boxed{
SourceTether_{resp}.A.
}
\tag{RST.8}
```

namely positive spacetime response-rotation mass on a tile produces a positive
terminal response functional on the same local response packet subspace, after
bounded refinement and legal frame errors.

### Proof

Use `PositiveTerminalSlice.A` to choose `t_+` and `T_+`.  Define the terminal
Riesz representative by `(RST.6)`.  Equation `(RST.7)` places the readout on
`H_{T_+}^{rot}`, exactly the subspace used by
`FullLinearizedTerminalLowerFrame.A`.  The terminal frame pinning note supplies
the lower frame and test normalization on this subspace.  Therefore the
spacetime readout is tethered to the terminal full-adjoint response mass.
`\square`

## 5. Consequence

Combining this note with terminal lower-frame pinning gives:

```text
SourceTether_resp.A
+ FullLinearizedTerminalLowerFrame.A
+ FullLinearizedRotationTestNormalization.A
=> PositiveRotationDetectsFullAdjointMass.A.
```

All detection inputs are now installed as response-packet geometry and
terminal-slice selection.

## 6. Boundary

This does not prove any global ancient no-incoming theorem.  It only handles
the local tether required to detect a positive response-rotation tile by
terminal full-adjoint mass.  That is exactly the tether needed by the
full-coefficient response drain.
