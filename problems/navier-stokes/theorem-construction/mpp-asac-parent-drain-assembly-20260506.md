# MPP ASAC Parent-Drain Assembly

Date: 2026-05-06

Status: theorem assembly for `ASAC.A` through native parent-form `TPNI.A`.

Depends on:

```text
mpp-native-tpni-adjoint-parent-drain-20260506.md
mcp-asac-to-tpni-reduction-packet-20260504.md
mpp-active-strain-alignment-cost-target-note-20260504.md
mpp-frame-bvcharge-audit-20260506.md
```

## 0. Target

Assemble:

```math
\boxed{
ASAC.A.
}
```

through the terminal parent-drain route:

```text
PacketNormalForm.A
+ SourceTether.A
+ LimitPass.A
+ TerminalTangentNoParent.A
+ TPNI.A
=> ASAC.A.
```

## 1. Packet Normal Form

For `k<j-M`, the low strain coefficient `S_k` is essentially constant on a
shell-`j` packet.  Wave-packet expand:

```math
u_j=\sum_{P}c_P e_P\phi_P.
```

Then:

```math
2^{2j}\langle\mathcal C_j(S_k,u_j),u_j\rangle
=
2^{2j}
\sum_P
\langle S_k(x_P,t)e_P,e_P\rangle |c_P|^2
+Err_{j,k}.
\tag{APA.1}
```

The off-diagonal packet interactions and coefficient Taylor remainders are
bounded by the low-high scale gap:

```math
\sum_{j,k}\int|Err_{j,k}|dt
\le
\varepsilon\int\sum_{q>N}D_q(t)dt+o_N(1).
\tag{APA.2}
```

Thus:

```math
\boxed{
PacketNormalForm.A.
}
\tag{APA.3}
```

The proof-bearing input is the displayed error estimate `(APA.2)`: off-diagonal
packet interactions and coefficient Taylor remainders are bounded by
`\varepsilon\int\sum_{q>N}D_q(t)dt+o_N(1)`.  After that estimate is installed,
the remaining large object is the diagonal positive strain carrier.

## 2. Source Tether

If the positive alignment spacetime measure is nonzero on a terminal tile:

```math
\int_{I_T}
\sum_P
(\langle S_k(x_P,t)e_P,e_P\rangle)_+
|c_P(t)|^2dt
\ge \eta,
\tag{APA.4}
```

then terminal-slice selection gives a time `t_+` with positive density.  The
terminal packet frame at `t_+` reads exactly the same active packet subspace.
Therefore:

```math
\boxed{
SourceTether.A.
}
\tag{APA.5}
```

for the ASAC terminal pulse.  This is the native analogue of the response
terminal-slice tether.

## 3. Limit Pass

Assume the positive-alignment tile Carleson theorem `PATC.A` fails.  Select a
maximal bad tile and rescale on its heat scale.  The local energy inequality,
packet normalization, and same-fluid compactness package give a subsequential
limit:

```math
v_m(y,s)=r_m u(x_m+r_my,t_m+r_m^2s)
\to v(y,s)
```

on compact subslabs, where `v` solves the frozen tangent equation:

```math
\partial_s v+(Sy)\cdot\nabla v+Sv+\nabla\pi=\nu\Delta v.
\tag{APA.6}
```

The source tether preserves nonzero terminal active mass in the limit.  Legal
errors vanish by the normalization.  Thus:

```math
\boxed{
LimitPass.A.
}
\tag{APA.7}
```

for the ASAC bad-tile compactness route.

## 4. Terminal Tangent No-Parent

Define the tangent parent relation by backward adjoint packet expansion in the
frozen tangent packet frame.  Choose the bad tile minimal among nonzero
terminal active-alignment pulses.  Then no earlier tangent parent has nonzero
normalized mass:

```math
\boxed{
TerminalTangentNoParent.A.
}
\tag{APA.8}
```

This is first-pulse minimality, not global ancient no-incoming flux.

## 5. ASAC Theorem

### Statement

```math
\boxed{
ASAC.A.
}
\tag{APA.9}
```

### Proof

Assume `ASAC.A` fails.  By `PacketNormalForm.A`, a failure produces a failure
of the positive-alignment tile Carleson theorem after legal errors are removed.
Use `SourceTether.A` and `LimitPass.A` to extract a nonzero frozen terminal
tangent pulse.  By `TerminalTangentNoParent.A`, the pulse has no earlier
tangent parent.  Native parent-drain `TPNI.A` from
`mpp-native-tpni-adjoint-parent-drain-20260506.md` rules out such a pulse.
Contradiction.

Therefore `PATC.A` holds, hence `ASAC.A` holds by the packet normal form.
`\square`

## 6. Consequence For FrameBV

The frame audit reduced:

```text
FrameBVCharge.A
```

to active alignment / TPNI.  With `ASAC.A` installed:

```math
\boxed{
ASAC.A
+FrameCommLegal.A
+BurstToHeightInheritanceOrCharge.A
\Longrightarrow
FrameBVCharge.A.
}
\tag{APA.10}
```

Thus the active frame-rotation part of `HeightFluxControl.A` is no longer the
hardest subgate.

## 7. Boundary

This assembly is theorem-grade only for the terminal first-pulse ASAC route.
It does not prove global no-incoming flux, and it does not by itself close
`NearBandMaterialSourceCharge.A`.
