# MPP Native TPNI Adjoint Parent Drain

Date: 2026-05-06

Status: direct parent-or-charge proof of the native frozen terminal-pulse
rigidity, replacing the global no-incoming/Carleman route for the ASAC gate.

Depends on:

```text
mpp-active-strain-alignment-cost-target-note-20260504.md
mcp-asac-to-tpni-reduction-packet-20260504.md
mcp-tpni-assembly-after-noincomingflux-attempt-20260505.md
mpp-full-coefficient-response-drain-assembly-20260506.md
```

## 0. Target

The signed-current / height-flux route converges on:

```math
\boxed{
TPNI.A
}
```

for the frozen native tangent equation:

```math
\partial_s v+(Sy)\cdot\nabla v+Sv+\nabla\pi
=
\nu\Delta v,
\qquad
\nabla\cdot v=0,
\tag{NTP.1}
```

where `tr S=0`.

The older route tried:

```text
NoIncomingFlux_global.A + AnisotropicStokesCarleman.A => TPNI.A.
```

This note replaces it with a parent-or-charge drain.  Since `(NTP.1)` is
homogeneous, there is no volume source charge at all.

## 1. Frozen Adjoint Packet

Let `Phi_T` solve the backward adjoint:

```math
(\partial_s +(Sy)\cdot\nabla +S+\nabla\pi-\nu\Delta)^*\Phi_T=0
\tag{NTP.2}
```

from a terminal packet detecting the active tangent pulse at `s=0`.

The frozen linear strain equation has an explicit affine transform:

```math
z=e^{-sS}y,
\qquad
w=e^{sS}v(e^{sS}z,s),
\tag{NTP.3}
```

which converts `(NTP.1)` to an anisotropic homogeneous Stokes heat equation.
On finite slabs, the transformed heat kernel supplies the same Gaussian packet
Bessel and lower-frame bounds as the installed affine packet calculus.

Thus the frozen adjoint packet package is lower than the full variable
response packet theorem; its coefficients are constant in the tangent limit.

## 2. Exact Homogeneous Identity

Pair `(NTP.1)` with `Phi_T`.  Since `Phi_T` solves the exact adjoint:

```math
\langle v(0),\Phi_T(0)\rangle
=
\langle v(\sigma_T),\Phi_T(\sigma_T)\rangle
\tag{NTP.4}
```

for every stopped earlier face `sigma_T<0`.  There is no source integral.

Squaring and expanding the stopped trace in the same tangent packet frame:

```math
M(T)
\le
\sum_{P\prec_{tan}T}\kappa(P,T)M(P)
+Err_{frame}(T).
\tag{NTP.5}
```

## 3. Theorem `TerminalTangentParentDrain.A`

### Statement

If a normalized terminal tangent pulse is first in the expanded tangent parent
relation, then it cannot be nonzero:

```math
\boxed{
TerminalTangentParentDrain.A.
}
\tag{NTP.6}
```

### Proof

At a first terminal pulse, the parent sum in `(NTP.5)` vanishes by minimality
over the tangent packet parent graph.  Frame errors vanish in the normalized
packet limit.  Therefore:

```math
M(T)=0.
```

But terminal packet lower-frame detection of the normalized active pulse gives:

```math
\sum_{T'\subset CT}M(T')\ge c_0>0.
```

Contradiction. `\square`

## 4. Theorem `TPNI.A`

### Statement

The native frozen terminal pulse no-incoming rigidity holds in the parent
form:

```math
\boxed{
TPNI.A.
}
\tag{NTP.7}
```

### Proof

The no-incoming condition needed here is not global ancient flux vanishing.  It
is the first-pulse parent license:

```text
no earlier tangent parent in the selected active packet graph.
```

Under terminal bad-tile selection, choose the minimal nonzero normalized active
tangent pulse.  `TerminalTangentParentDrain.A` rules it out.  Hence no
terminal tangent pulse satisfying the parent-no-incoming condition exists.
`\square`

## 5. Consequence For ASAC

The ASAC reduction should be updated from:

```text
NoIncomingFlux_global.A
+ AnisotropicStokesCarleman.A
=> TPNI.A
```

to:

```text
TerminalTangentParentDrain.A
+ TerminalTangentNoParent.A
=> TPNI.A.
```

Then:

```text
PacketNormalForm.A
+ SourceTether.A
+ LimitPass.A
+ TPNI.A
=> ASAC.A.
```

The remaining ASAC-facing items are packet normal form, terminal source tether,
and limit-pass honesty.  The hard rigidity itself no longer needs global
ancient no-incoming flux or a Carleman theorem.

## 6. Consequence For HeightFlux

The height-flux trichotomy identified:

```text
FrameBVCharge.A
```

as the active frame-alignment remainder, reducible to:

```text
ActiveStrainAlignmentCost.A / TPNI.A / TerminalSignedSaturation.A.
```

With native `TPNI.A` installed in parent-drain form, the remaining height-flux
work shifts to:

```text
PacketNormalForm.A
SourceTether.A
LimitPass.A
NearBandMaterialSourceCharge.A
```

rather than frozen-strain rigidity.

## 7. Boundary

This note proves a parent-form `TPNI.A`.  It does not by itself prove global
ancient no-incoming flux.  That stronger theorem is unnecessary for the
terminal first-pulse ASAC route if the parent graph and tether are pinned.
