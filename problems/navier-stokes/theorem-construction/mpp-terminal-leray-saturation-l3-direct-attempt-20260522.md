# MPP TerminalLeraySaturation_L3.A Direct Attempt

Date: 2026-05-22

Status: bounded direct attempt; isolates the remaining public-critical
coefficient-identification gate after anchoring and commutator legality.

## Target

After the installed pieces

```math
L3AdjointNativeOrthogonalNoCarry.A
+
TerminalLerayCommutatorLegal_{L3}.A,
```

the remaining gate is

```math
\boxed{
TerminalLeraySaturation_{L3}.A.
}
```

It asks that the signed high partner needed for the native high-low contraction
remain on the retained same-ledger packet after one-sided terminal selection,
unless the work has already exited through selected Field-window/source-wall
failure or paid Part/legal leakage.

## Direct Attempt

After anchoring and legal commutator removal, the retained source work is
reduced to the high-low expression

```math
-\int (w_j\otimes \widetilde w_j):\nabla S^{loc}_{<j}u.
```

The desired native edge is the saturated square

```math
-\int (w_j\otimes w_j):\nabla S^{loc}_{<j}u
=
\int\langle S^{loc}_{<j}w_j,w_j\rangle.
```

The frame-pinning proof gives that the terminal response covector is a
nonnegative scalar multiple of the selected response packet modulo legal or
Field-window support exits. That almost proves saturation, but one remaining point is not
automatic: the one-sided terminal selection can discard the signed partner
before the high-low bilinear form has been converted into the square.

Decompose the partner defect as

```math
\widetilde w_j
=
w_j+\delta_j.
```

The `\delta_j` contribution is

```math
-\int (w_j\otimes\delta_j):\nabla S^{loc}_{<j}u.
```

If `\delta_j` is off-family, cutoff-generated, pressure-generated, or
projection-generated, it is paid Part/legal exit. If it is high-high or
donor-square refill, it is selected Field-window/source-wall failure. The only
unclassified possibility is a retained same-family signed partner defect that
has no independent legal charge but still carries fixed lower bound.

## Remaining Primitive

The exact remaining theorem is therefore the no-free signed partner statement:

```math
\boxed{
L3TerminalSignedPartnerNoFreeDefect.A:
\quad
\text{a retained same-family partner defect }\delta_j
\text{ cannot carry fixed terminal high-low work}
}
```

except as selected Field-window/source-wall failure or paid Part/legal exit.

Equivalently,

```math
L3TerminalSignedPartnerNoFreeDefect.A
\Longrightarrow
TerminalLeraySaturation_{L3}.A.
```

## Verdict

`TerminalLeraySaturation_L3.A` is not closed by the anchoring and commutator
proofs alone. The exact remaining gate is

```math
L3TerminalSignedPartnerNoFreeDefect.A.
```

This is still inside the same CM witness-capture route. It does not reopen
`B_ASAC^closed`, does not promote supplier/readout material, and does not use
Euler-mirror evidence.
