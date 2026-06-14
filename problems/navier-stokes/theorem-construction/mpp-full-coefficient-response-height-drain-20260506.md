# MPP Full Coefficient Response Height Drain

Date: 2026-05-06

Status: extends the full-coefficient adjoint drain from response rotation to
raw high-frequency response height.

Depends on:

```text
mpp-full-coefficient-response-drain-assembly-20260506.md
mpp-full-coefficient-linearized-adjoint-kernel-route-20260506.md
mpp-response-height-creation-control-proof-20260506.md
mpp-low-response-strain-charge-proof-20260506.md
```

## 0. Target

The older response-height note left:

```text
ResponseHeightCreationControl.A
```

with a linear `Delta u` forcing branch that looked like original
height-dissipation.  That was an artifact of shell energy testing for `z`.

The full-coefficient adjoint route tests terminal response mass by dual
packets.  In `H^{-1}`, the forcing `Delta u` is paid by ordinary dissipation,
not by height-dissipation.

## 1. Response Height Mass

For a terminal response-height tile `T` of shell `j`, define:

```math
M_Z(T)
:=
|\langle z_j(t_+),\Chi_T^{full}(t_+)\rangle|^2,
\tag{RHD.1}
```

where `Chi_T^{full}` is the full-coefficient adjoint packet with terminal data
in the shell-`j` response packet frame.

The terminal lower frame gives:

```math
E_j^z(t_+)
\le
C_{\mathrm{frame}}
\sum_{T\in\mathcal T_j}M_Z(T)
+Err_{frame}.
\tag{RHD.2}
```

and therefore detects response height:

```math
H_k^z(t_+)
=
2^k\sum_{j>k+4}2^{2j}E_j^z(t_+).
\tag{RHD.3}
```

## 2. Parent-Or-Charge For Response Height

The response equation is:

```math
L_u z=\Delta u.
\tag{RHD.4}
```

Pair with the full adjoint packet.  By the full-coefficient adjoint identity:

```math
\langle z(t_+),\Chi_T^{full}(t_+)\rangle
=
\langle z(\sigma_T),\Chi_T^{full}(\sigma_T)\rangle
+\int_{\sigma_T}^{t_+}\langle\Delta u,\Chi_T^{full}\rangle dt.
\tag{RHD.5}
```

Squaring and expanding the stopped endpoint in the response packet frame gives:

```math
M_Z(T)
\le
\sum_{P\prec_Z^{full}T}\kappa(P,T)M_Z(P)
+Charge_{\Delta u}(T)
+Err(T).
\tag{RHD.6}
```

The charge satisfies:

```math
\sum_TCharge_{\Delta u}(T)
\le
C_{\mathrm{chg}}
\|\Delta u_{>N}\|_{L_t^2H_x^{-1}}^2
\le
C_{\Delta}
\int\sum_{j>N}D_j(t)dt
=o_N(1).
\tag{RHD.7}
```

## 3. Theorem `ResponseHeightNoFirstPulse.A`

### Statement

There is no first terminal high-frequency response-height pulse at fixed
positive viscosity except by ordinary `Delta u` tail charge:

```math
\boxed{
ResponseHeightNoFirstPulse.A.
}
\tag{RHD.8}
```

### Proof

Assume a first response-height pulse exists after past height and legal losses
are removed.  Choose the pulse minimal in the expanded full response-height
parent relation `\prec_Z^{full}`.  The parent sum in `(RHD.6)` vanishes by
first-pulse minimality.  The `Delta u` charge vanishes by `(RHD.7)` in the
high-frequency limit.  Frame errors are legal.  But terminal lower-frame
detection `(RHD.2)` gives nonzero terminal response mass.  Contradiction.
`\square`

## 4. Theorem `ResponseHeightCreationControl.A`

### Statement

```math
\boxed{
ResponseHeightCreationControl.A
}
\tag{RHD.9}
```

in the form:

```math
\left[
H_N^z(W)-H_N^z(Past(W))-Loss_N^z(W)
\right]_+
\le
OrdinaryDissipationTail_N(W)+o_N(1).
\tag{RHD.10}
```

### Proof

If `(RHD.10)` fails, select a first terminal response-height pulse in the
excess set.  This is exactly the event excluded by
`ResponseHeightNoFirstPulse.A`, because the only legal creation term is the
ordinary `Delta u` tail.  `\square`

## 5. Consequence For Low Response Strain

The low-response-strain note proved:

```text
FiniteLowResponseControl.A
+ ResponseHeightCreationControl.A
=> LowResponseStrainCharge.A.
```

With `(RHD.9)` installed, the only remaining low-response input is finite-depth
low-mode response control, which is a compact positive-viscosity ODE/parabolic
low-mode estimate and not a terminal source wall.

Thus:

```math
\boxed{
FiniteLowResponseControl.A
+ResponseHeightCreationControl.A
\Longrightarrow
LowResponseStrainCharge.A.
}
\tag{RHD.11}
```

with the high-frequency threat discharged by the full-coefficient response
height drain.

## 6. Verdict

Proved:

```text
ResponseHeightNoFirstPulse.A
ResponseHeightCreationControl.A
```

The old `OriginalHeightDissipationCharge.A` input is superseded for response
height creation by the full-coefficient adjoint `H^{-1}` drain.
