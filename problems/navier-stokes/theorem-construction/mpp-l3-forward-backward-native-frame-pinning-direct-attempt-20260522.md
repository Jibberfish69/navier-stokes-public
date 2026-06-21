# MPP L3ForwardBackwardNativeFramePinning.A Direct Attempt

Date: 2026-05-22

## Status

Direct continuation from `L3AdjointNativeOrthogonalNoCarry.A`.

The no-carry theorem is not proved by the installed heat-Leray translator,
response-tether, or full-coefficient response-drain notes. It reduces to one
sharper source-time frame theorem:

```math
L3ForwardBackwardNativeFramePinning.A.
```

This is still the public `L^3` translator's same-ledger native localization
gap. It does not reopen `B_ASAC^closed`, and it does not route terminal Zeno
as Field/jump.

## Objects

On a selected terminal packet, the nonlinear Duhamel response has the form

```math
w_j(t)
=
\int_{t_0}^{t}
e^{(t-s)\nu\Delta}P_jP_{Leray}\nabla\cdot(u\otimes u)(s)\,ds.
```

The `L^3` response lower bound chooses terminal data

```math
\psi_j(t_+)
:=
\frac{|w_j(t_+)|w_j(t_+)}
{\||w_j(t_+)|w_j(t_+)\|_{L^{3/2}}},
```

and the backward free heat-Leray packet is

```math
\Phi_j(s)
=
e^{(t_+-s)\nu\Delta}P_jP_{Leray}\psi_j(t_+).
```

The source work is

```math
W_\Phi
=
\int
\langle P_{Leray}\nabla\cdot(u\otimes u),\Phi\rangle\,ds.
```

The native edge instead uses the same-time forward packet:

```math
G_N
=
\sum_P\int_{Q(P)}
\langle S^{loc}_{<j_P}w_{j_P},w_{j_P}\rangle.
```

So the gap is not terminal detection. It is source-time pinning:
`\Phi_j(s)` must point into the same native frame as `w_j(s)` on the retained
source tiles.

## Direct Test

At the terminal face, `\psi_j(t_+)` is aligned with `w_j(t_+)` by construction.
For source times `s<t_+`, that alignment is not automatic.

The two packets solve different Volterra halves:

```math
\begin{aligned}
w_j(s)
&=\int_{t_0}^{s} e^{(s-\tau)\nu\Delta}F_j(\tau)\,d\tau,\\
\Phi_j(s)
&=e^{(t_+-s)\nu\Delta}\psi_j(t_+),
\end{aligned}
```

where `F_j=P_jP_{Leray}\nabla\cdot(u\otimes u)`.

The identity

```math
\int \langle F_j(s),\Phi_j(s)\rangle ds
=
\langle w_j(t_+),\psi_j(t_+)\rangle
```

only says that the forcing is seen by the terminal adjoint. It does not say
that the adjoint packet at source time is a scalar multiple of the forward
Duhamel packet `w_j(s)`.

In a finite-dimensional Volterra model, one can choose two source pulses
`F_1,F_2` whose terminal heat images align with `\psi`, while at the earlier
source time `\Phi(s_1)` lies in a direction orthogonal to the already-built
forward packet `w(s_1)`. This is compatible with heat-Leray self-adjointness.
Thus the installed free heat-Leray duality alone cannot prove no-carry.

## Sharper Primitive

The needed theorem is:

```math
\boxed{
L3ForwardBackwardNativeFramePinning.A:
\quad
P^{native,\perp}_{w_j(s)}
\Phi_j(s)
\text{ cannot carry fixed same-ledger source work}
}
```

unless that source work is already:

```math
\neg_{sel}ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
\text{paid Part/legal exit.}
```

Equivalently, on retained source tiles after legal and high-high/source-wall
pieces are removed,

```math
\Phi_j(s)
=
a_P(s)w_j(s)+\Phi_P^{err}(s),
\qquad
a_P(s)\ge 0,
```

with `\Phi_P^{err}` unable to carry fixed lower bound.

## Conditional Consequence

```math
\boxed{
L3ForwardBackwardNativeFramePinning.A
\Longrightarrow
L3AdjointNativeOrthogonalNoCarry.A.
}
```

Proof. Decompose the source work as

```math
W_\Phi
=
G_N+R^{orth}_{L3}+R^{hh/src}+R^{legal}.
```

The high-high/source term and the legal term are already classified. The
orthogonal term is exactly the pairing of the low-high source with
`P^{native,\perp}_{w_j}\Phi_j`. By
`L3ForwardBackwardNativeFramePinning.A`, that term cannot carry fixed retained
lower bound except by selected source-wall failure or paid Part/legal
exit. Therefore, on the retained branch, only `G_N` remains to carry the
lower bound. This proves `L3AdjointNativeOrthogonalNoCarry.A`. `\square`

Then:

```math
L3ForwardBackwardNativeFramePinning.A
\Longrightarrow
L3AdjointNativeOrthogonalNoCarry.A
\Longrightarrow
TerminalAdjointResponseNativeEdgeAnchoring_L3.A.
```

## Verdict

The current native localization gap is:

```math
\boxed{L3ForwardBackwardNativeFramePinning.A.}
```

It asks for a source-time frame pinning theorem between the backward free
heat-Leray adjoint packet and the forward nonlinear Duhamel packet. The
installed response-source tether proves terminal-slice detection for response
variables; it does not supply this source-time forward/backward alignment for
the public `L^3` translator.
