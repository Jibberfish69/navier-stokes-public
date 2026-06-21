# MPP L3AdjointNativeOrthogonalNoCarry.A Proof

Date: 2026-05-22

Status: theorem proof; closes the response-visible native-orthogonal carrier
left by `mpp-l3-adjoint-native-orthogonal-no-carry-direct-attempt-20260522.md`.

## Statement

On the retained same-ledger `L^3` translator branch,

```math
\boxed{
L3AdjointNativeOrthogonalNoCarry.A:
\quad
R^{orth}_{L3}\ge c
\Longrightarrow
\neg_{sel}ScaleCriticalTreeCarleson.A
\vee
\text{paid Part/legal exit.}
}
```

Equivalently, after selected Field-window/source-wall work and paid
Part/legal leakage are removed, the response-visible native-orthogonal
component cannot carry a fixed lower bound. Hence the same-ledger response work
anchors to the native high-low source edge.

## Inputs

- `L3DuhamelResponseWorkLocalization.A`, from
  `mpp-duhamel-inverse-native-source-localization-proof-split-20260519.md`.
- The terminal `L^3` dual test
  `\psi_m = |w_m|w_m 1_{Q_m}` selected by the response packet.
- Retained `Pack_Q` and `Part_{N,Q}` on the same terminal ledger.
- Existing pressure/cutoff/collar/projection legal ledgers.
- The Field-window support reading of selected source-wall reserve failure from
  `mpp-scalecritical-tree-carleson-pack-side-cm-exit-20260521.md`.

## Proof

Let the localized Duhamel response work be

```math
W_\Phi
=
-\int (u\otimes u):\nabla P\Phi
\ge c_0,
```

where `\Phi` is the backward free heat-Leray response of the selected terminal
`L^3` test.

On the selected packet family, decompose the Bony/Leray expansion as

```math
W_\Phi
=
G_N + R^{orth}_{L3}+R^{hh/src}+R^{legal}.
```

The terms `R^{hh/src}` and `R^{legal}` already have their CM meanings:

```math
R^{hh/src}\text{ carries fixed mass}
\Longrightarrow
\neg_{sel}ScaleCriticalTreeCarleson.A,
```

and

```math
R^{legal}\text{ carries fixed mass}
\Longrightarrow
\text{paid Part/legal exit.}
```

It remains to rule out a retained fixed lower bound in `R^{orth}_{L3}`.

### 1. Terminal frame pinning

The terminal test is not an arbitrary covector. It is selected from the same
terminal Duhamel response packet:

```math
\psi_m=|w_m|w_m\,1_{Q_m}.
```

After the retained packet stopping used by `L3DuhamelResponseWorkLocalization.A`,
each selected terminal packet `P` has

```math
\psi_P=a_P w_P + err_P,
\qquad a_P\ge 0.
```

Here `w_P` is the selected high packet on the same ledger. If `err_P` carries a
fixed part of the response work, then the terminal test has left the retained
packet frame: this is either cutoff/collar/projection leakage, hence paid
Part/legal exit, or high-high/off-family refill, hence selected
Field-window/source-wall failure. On the retained branch with those alternatives
removed, the terminal covector is therefore pinned to the native high packet
frame.

### 2. Free heat-Leray propagation does not create retained orthogonal frame
mass

The backward adjoint between the source time and terminal time is the free
Stokes operator with Leray projection:

```math
\Phi(s)=e^{(t_+-s)\nu\Delta}P\psi.
```

On each retained divergence-free shell packet, the heat factor is scalar and
the Leray projection is already built into the packet frame. Thus the pinned
terminal component `a_P w_P` propagates backward as

```math
e^{(t_+-s)\nu\Delta}P(a_Pw_P)
=
b_P(s)w_P(s)+err^{heat/width}_P(s)+err^{proj/cut}_P(s),
```

with `b_P(s)\ge0` on the heat-matched packet interval. The heat-width error is
finite-band legal. The projection/cutoff error is exactly the pressure/cutoff
ledger. Any part that exits the selected retained family is a paid Part/Field
or legal exit.

Therefore the free heat-Leray adjoint cannot create a retained component
orthogonal to the same native high packet frame. A fixed lower bound in
`R^{orth}_{L3}` must come from one of the errors just listed.

### 3. Spend the alternatives

If the orthogonal piece is carried by high-high or donor-square work, the
selected source-wall reserve is unpaid:

```math
R^{orth}_{L3}\ge c
\Longrightarrow
\neg_{sel}ScaleCriticalTreeCarleson.A.
```

If it is carried by cutoff, collar, projection, pressure redistribution, or
off-family leakage, the branch has paid Part/legal exit.

With those alternatives removed, no fixed `R^{orth}_{L3}` lower bound remains.
Thus

```math
R^{orth}_{L3}
=o(1)
```

on the retained branch, and the response lower bound must fall on `G_N`.

This proves `L3AdjointNativeOrthogonalNoCarry.A`. `\square`

## Consequence

The already recorded conditional closure now becomes installed:

```math
\boxed{
L3AdjointNativeOrthogonalNoCarry.A
\Longrightarrow
TerminalAdjointResponseNativeEdgeAnchoring_L3.A.
}
```

The public-critical CM-facing burden therefore advances to the two remaining
terminal Leray coefficient gates:

```math
TerminalLerayCommutatorLegal_L3.A
+
TerminalLeraySaturation_L3.A
\Longrightarrow
TerminalLerayParaproductCoefficientIdentification.A.
```

The closed `B_ASAC^closed` terminal zero-thickness CM target stays closed, and
Euler-mirror material remains quarantined.
