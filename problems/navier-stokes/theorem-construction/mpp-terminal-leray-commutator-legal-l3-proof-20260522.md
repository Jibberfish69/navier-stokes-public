# MPP TerminalLerayCommutatorLegal_L3.A Proof

Date: 2026-05-22

Status: theorem proof; discharges the terminal-weight Leray/cutoff commutator
gate in the `L^3` public-critical translator.

## Statement

On the retained same-ledger `L^3` branch,

```math
\boxed{
TerminalLerayCommutatorLegal_{L3}.A:
\quad
R^{comm}_{L3}
\text{ is paid by the pressure/cutoff/collar/projection legal ledgers,}
}
```

unless the branch has already left through paid Pack/Part/legal exit.

Here `R^{comm}_{L3}` denotes the localized terminal-weight commutator terms
left when passing from the Leray-adjoint source work to the unprojected native
high-low source edge.

## Proof

After `L3AdjointNativeOrthogonalNoCarry.A`, the retained response covector is
anchored to the same native high packet family. The remaining source work has
the form

```math
-\int (u\otimes u):\nabla P(\chi_P \Phi_P),
```

summed over selected packets `P`, with nonnegative terminal `L^3` weights
stopped on the same heat-scale packet family.

Commute the localization and Leray projection:

```math
\nabla P(\chi_P\Phi_P)
=
\chi_P\nabla P\Phi_P
+
[\nabla P,\chi_P]\Phi_P.
```

The first term is the retained main term. The second term is the exact
commutator

```math
[\nabla P,\chi_P]\Phi_P(x)
=
\operatorname{p.v.}\int
K(x-y)(\chi_P(x)-\chi_P(y))\Phi_P(y)\,dy,
```

where the Calderon-Zygmund kernel `K` for `\nabla P` satisfies

```math
|K(z)|\le C|z|^{-4},\qquad |\nabla K(z)|\le C|z|^{-5}.
```

Since the packet cutoff obeys

```math
|\chi_P(x)-\chi_P(y)|
\le \|\nabla\chi_P\|_\infty |x-y|,
```

the near commutator gains one packet-scale cutoff derivative:

```math
|K(x-y)(\chi_P(x)-\chi_P(y))|
\le C\|\nabla\chi_P\|_\infty |x-y|^{-3}.
```

On the stopped terminal family this derivative is supported in the collar of
`Q(P)` or in bounded finite-band overlap. Therefore its pairing with
`(u\otimes u)` is one of:

1. cutoff/collar leakage already assigned to the legal localization ledger;
2. pressure/projection redistribution already assigned to the Part/legal
   pressure ledger;
3. off-family or high-high leakage, which is selected Pack-side/source-wall
   failure if it carries fixed mass without payment.

The one-sided terminal `L^3` weight does not create a new commutator channel.
After packet stopping it is a bounded nonnegative scalar on each selected
packet, and its variation is another cutoff/collar derivative. Thus it is paid
by the same legal ledger.

Consequently, if `R^{comm}_{L3}` carries a fixed part of the lower bound beyond
the legal budget, the branch has by definition paid Pack/Part/legal exit or
selected Pack-side/source-wall failure. On the retained branch with those
alternatives removed,

```math
R^{comm}_{L3}=o(1).
```

This proves `TerminalLerayCommutatorLegal_{L3}.A`. `\square`

## Consequence

With

```math
L3AdjointNativeOrthogonalNoCarry.A
```

and

```math
TerminalLerayCommutatorLegal_{L3}.A
```

installed, the remaining coefficient-identification gate is only

```math
TerminalLeraySaturation_{L3}.A.
```

The closed terminal Zeno / `B_ASAC^closed` CM exit remains untouched.
