# MPP TerminalAdjointResponseNativeEdgeAnchoring_L3.A Direct Attempt

Date: 2026-05-22

## Status

Direct attempt on the first L3 terminal Leray gate:

```math
TerminalLerayOrientation_{L3}.A.
```

The orientation gate is not proved from installed inputs. It sharpens to one
more primitive:

```math
TerminalAdjointResponseNativeEdgeAnchoring_{L3}.A.
```

This remains a CM witness-capture burden. It does not reopen the closed
`B_ASAC^closed` terminal target.

Follow-up direct testing in
`mpp-l3-adjoint-native-orthogonal-no-carry-direct-attempt-20260522.md` shows the
exact unproved component inside this anchoring gate:

```math
L3AdjointNativeOrthogonalNoCarry.A.
```

The heat-Leray response pairing splits into native edge, high-high/source-wall,
legal loss, and a response-visible native-orthogonal carrier. The first three
pieces are already classified. The orthogonal carrier is the remaining gap.

## Target

`L3DuhamelResponseWorkLocalization.A` produces a lower bound of the form

```math
-\int (u\otimes u):\nabla P\Phi \ge c_0,
```

where `\Phi` is the backward heat-Leray response to the terminal test selected
from the Duhamel response packet.

The coefficient-identification route needs this retained work to select the
native high-low source edge

```math
\int
\langle S_{<j}^{loc}w_j,w_j\rangle.
```

## Direct Test

Self-adjointness of heat and Leray is enough to move the terminal `L^3`
response test back to source time. It is not enough to identify

```math
\nabla P\Phi
```

with

```math
\nabla S_{<j}^{loc}u
```

on the same high packet.

The native witness is not an arbitrary source work functional. It is the
same-fluid high-packet energy-production edge: high packet against the
localized low strain of the actual velocity. The adjoint response test is a
dual covector selected by the terminal Duhamel response. A large signed work
pairing against that covector can, from installed identities alone, be carried
by a projected response direction that has not been anchored to the native
same-fluid source edge.

## Failure Mechanism

The obstruction is not the positive part. That was closed algebraically once
the native contraction is present.

The obstruction is edge anchoring before the algebraic contraction:

```text
terminal response covector
  -> same high packet on the retained family
  -> same low strain coefficient from u
  -> same native source edge.
```

Installed heat/Leray duality supplies the first arrow only as a response-work
pairing. It does not supply the remaining native-edge anchoring after terminal
one-sided selection.

If the projected adjoint packet leaves the retained family, that is Part/Field
or legal exit. If the lower bound is carried by high-high/donor-square work,
that is selected Field-window/source-wall failure. The surviving retained branch
still needs the anchoring theorem below.

## Sharpened Primitive

```math
\boxed{
TerminalAdjointResponseNativeEdgeAnchoring_{L3}.A:
\quad
\text{same-ledger L3 adjoint response work}
\Longrightarrow
\text{same retained native high-low source edge}
\vee
\neg_{sel}ScaleCriticalTreeCarleson.A
\vee
\text{paid Part/legal exit.}
}
```

This is the first gate inside
`TerminalLerayParaproductCoefficientIdentification.A`.

## Conditional Consequence

With this anchoring in place, the remaining L3 terminal Leray gate package is:

```math
TerminalLerayCommutatorLegal_{L3}.A
+
TerminalLeraySaturation_{L3}.A.
```

Together they give:

```math
TerminalAdjointResponseNativeEdgeAnchoring_{L3}.A
+
TerminalLerayCommutatorLegal_{L3}.A
+
TerminalLeraySaturation_{L3}.A
\Longrightarrow
TerminalLerayParaproductCoefficientIdentification.A.
```

Then the closed sign lemma gives `ParaproductNativeSourceCapture.A`.

## Verdict

The first live gate is

```math
\boxed{TerminalAdjointResponseNativeEdgeAnchoring_{L3}.A.}
```

It asks for a theorem that the backward heat-Leray response covector is anchored
to the same retained native high-low source edge, unless the work has already
left through Part/legal or selected Field-window/source-wall failure.
