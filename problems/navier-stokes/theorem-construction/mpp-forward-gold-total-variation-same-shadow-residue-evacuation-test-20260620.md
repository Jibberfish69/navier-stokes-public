# Total-Variation Same-Shadow Residue Evacuation Test

Date: 2026-06-20

## Status

Direct route test complete.  `TotalVariationSameShadowResidueEvacuation.A` is
not installed by scalar signed saturation, retained signed partners, or finite
donor telescoping.  It is stronger than the Door 1 signed-current ledger.

The useful replacement is a test-class version: for the actual legal tests used
downstream, paired signed residues must cancel in that test class.  Total
variation is the special case where the test class contains packet indicators.

## 1. Target under test

Let the same-shadow residual on the selected packet family be

```math
dE_m
=
\sum_{P\in F_m^{sel}} e_P\,\delta_P.
\tag{TVR.1}
```

The total-variation evacuation target is

```math
\|dE_m\|_{TV(F_m^{sel})}
=
\sum_{P\in F_m^{sel}} |e_P|
\le
\operatorname{Legal}_m+o_m(1).
\tag{TVR.2}
```

This target would imply every bounded same-shadow test identity:

```math
|\langle dE_m,\phi\rangle|
\le
\|\phi\|_\infty
\bigl(\operatorname{Legal}_m+o_m(1)\bigr).
\tag{TVR.3}
```

Thus `(TVR.2)` would close `TestEnrichedMinimalChainResidueIdentity.A`.  The
question is whether the existing signed-saturation machinery proves `(TVR.2)`.

## 2. Scalar balance and signed partners do not imply total variation

Write

```math
E_m^+
:=
\sum_P [e_P]_+,
\qquad
E_m^-
:=
\sum_P [-e_P]_+.
\tag{TVR.4}
```

Scalar balance controls only the difference

```math
|E_m^+-E_m^-|
\le
\operatorname{Legal}_m+o_m(1).
\tag{TVR.5}
```

Total variation asks for the sum

```math
E_m^+ + E_m^-.
\tag{TVR.6}
```

The difference can vanish while the sum remains positive.

The packet countermodel is two retained packets:

```math
e_{P_1}=A,
\qquad
e_{P_2}=-A,
\qquad
A>0.
\tag{TVR.7}
```

Then

```math
\sum_P e_P=0,
\tag{TVR.8}
```

and the positive packet has a retained signed partner.  No legal spill is
needed.  But

```math
\|dE_m\|_{TV}=2A.
\tag{TVR.9}
```

For a nonconstant legal test with

```math
\phi(P_1)=1,
\qquad
\phi(P_2)=-1,
\tag{TVR.10}
```

the same residual gives

```math
\langle dE_m,\phi\rangle=2A.
\tag{TVR.11}
```

Thus signed partner retention is not total-variation evacuation.  It cancels
only against tests that do not distinguish the two packets.

## 3. Correct replacement: test-class same-shadow evacuation

Let `Phi_m` be the downstream legal test class.  The needed theorem is

```math
\boxed{
\sup_{\phi\in\Phi_m,\ \|\phi\|_\infty\le1}
|\langle dE_m,\phi\rangle|
\le
\operatorname{Legal}_m^\Phi+o_m(1).
}
\tag{TVR.12}
```

Call this `TestClassSameShadowResidueEvacuation.A(Phi)`.

For the finite Door 2 modulation family, `Phi_m` is the finite set of mode
multipliers.  For total variation, `Phi_m` contains all packet indicators.
Therefore

```math
\text{TotalVariationSameShadowResidueEvacuation.A}
\Longrightarrow
\text{TestClassSameShadowResidueEvacuation.A}(\Phi)
\tag{TVR.13}
```

for every bounded test class, but the converse holds only when `Phi` separates
packet indicators.

## 4. Exact signed-pair condition for a test class

Assume the residual has been decomposed into retained signed pairs plus legal
spill and terminal Zeno remainder:

```math
dE_m
=
\sum_{e=(D,R)}
a_e(\delta_R-\delta_D)
+dE_m^{legal}
+dE_m^{Zeno},
\qquad
a_e>0.
\tag{TVR.14}
```

Then for any test `phi`,

```math
\langle dE_m,\phi\rangle
=
\sum_e a_e(\phi(R)-\phi(D))
+\langle dE_m^{legal},\phi\rangle
+\langle dE_m^{Zeno},\phi\rangle.
\tag{TVR.15}
```

The exact sufficient condition for the pair part is

```math
\sum_e a_e|\phi(R)-\phi(D)|
\le
\operatorname{Legal}_{m,\phi}^{pair}+o_m(1)
\qquad
\text{for every }\phi\in\Phi_m.
\tag{TVR.16}
```

Call `(TVR.16)` `TestCoherentSignedPairSaturation.A(Phi)`.

Together with legal spill control and no-free terminal Zeno remainder,

```math
\boxed{
\begin{gathered}
\text{TerminalDonorGraphDecomposition.A}
+
\text{TestCoherentSignedPairSaturation.A}(\Phi)
\\
+
\text{NoFreeTerminalZenoDonorChain.A in the }\Phi\text{ test norm}
\Longrightarrow
\text{TestClassSameShadowResidueEvacuation.A}(\Phi).
\end{gathered}
}
\tag{TVR.17}
```

This is the exact test-class version of the signed-saturation route.

## 5. Relation to total variation

For total variation, the test class contains packet indicators.  Then
`(TVR.16)` forces the retained signed partners to cancel at packet resolution.
Equivalently, after matching, the pair residual must be invisible to every
packet indicator.  That is a co-location or full polar-saturation theorem, not
ordinary signed-partner retention.

Thus the total-variation route requires

```math
\boxed{
\text{PacketIndicatorCoherentSignedPairSaturation.A}
}
\tag{TVR.18}
```

or an independent source-square/no-waste theorem that directly controls the
unmatched same-shadow total variation.

## 6. Relation to the finite-mode route

For Door 2 finite mode tests, `(TVR.16)` is exactly the finite-mode donor-edge
coherence problem:

```math
\sum_e a_e|\psi_i(R)-\psi_i(D)|
\le
\operatorname{Legal}_{m,i}^{edge}+o_m(1).
\tag{TVR.19}
```

So the finite-mode route does not need total variation.  It needs the smaller
test-class theorem for the chosen mode family.  Current notes already identify
that smaller theorem as `ModeDonorEdgeCoherence.A` plus the no-free terminal
Zeno remainder in the same mode norm.

## 7. Updated exact reduction

The broad implication

```math
\text{TerminalSignedSaturation.A}
\Longrightarrow
\text{TotalVariationSameShadowResidueEvacuation.A}
\tag{TVR.20}
```

is false by `(TVR.7)`--`(TVR.11)`.

The valid implications are:

```math
\boxed{
\text{TerminalSignedSaturation.A}
+
\text{PacketIndicatorCoherentSignedPairSaturation.A}
+
\text{NoFreeTerminalZenoDonorChain.A}
\Longrightarrow
\text{TotalVariationSameShadowResidueEvacuation.A}.
}
\tag{TVR.21}
```

and, for a finite downstream test class,

```math
\boxed{
\text{TerminalSignedSaturation.A}
+
\text{TestCoherentSignedPairSaturation.A}(\Phi)
+
\text{NoFreeTerminalZenoDonorChain.A in }\Phi
\Longrightarrow
\text{TestClassSameShadowResidueEvacuation.A}(\Phi).
}
\tag{TVR.22}
```

## Verdict

Total-variation same-shadow residue evacuation is a stronger theorem than
signed saturation.  Signed saturation keeps or pays the partner; it does not
make the paired residual invisible to nonconstant tests.

The sharpened target is test-class same-shadow evacuation.  For Door 2 modes,
that is finite-mode donor-edge coherence plus no-free terminal Zeno remainder.
For full total variation, it is packet-indicator coherent polar saturation or
an independent source-square/no-waste theorem on the selected same-shadow
carrier.
