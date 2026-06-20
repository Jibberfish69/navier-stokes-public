---
theorem_id: forward-gold-endpoint-polar-readout-vs-carrier-saturation-20260620
status: direct-endpoint-polar-split-complete
logical_landing_node: endpoint_polar_saturation_split
edge_effect: "Splits the retained endpoint phrase selected endpoint polar saturation into two non-equivalent statements. Oriented signed endpoint readout is only FiniteDonorBoundaryCoherence.A in a finite norm. Positive carrier saturation is stronger and remains the same Door 1 same-ledger carrier problem."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-donor-boundary-coherence-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-residue-fork-after-boundary-telescoping-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-positive-polar-saturation-attempt-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-lobe-shadow-mode-residue-identity-direct-test-20260620.md
downstream_consequence: "Endpoint readout polar saturation must not be counted as an independent gold supplier. It is equivalent to finite donor boundary coherence up to finite test constants. Endpoint carrier polar saturation remains the real positive native carrier theorem and reduces to same-ledger TerminalSignedSaturation.A / NoFreeTerminalZenoDonorChain.A or to same-carrier source-square/no-waste."
---

# Endpoint Polar Readout Versus Carrier Saturation

Date: 2026-06-20

## Status

Direct split complete.  The phrase `SelectedEndpointPolarSaturation.A` has two
different meanings at the endpoint residue level.

The signed-readout meaning is not a new theorem.  It is exactly finite donor
boundary coherence in an oriented finite test norm.

The positive-carrier meaning is a real theorem.  It is not installed by
readout coherence, retained endpoint partners, or finite donor telescoping.

## 1. Endpoint residue object

After finite donor-chain telescoping, legal exits, and entrance leaves are
removed, the finite endpoint residue has the form

```math
E_m^{end}
=
\sum_{\alpha}a_\alpha
\left(\delta_{R_\alpha}-\delta_{D_\alpha}\right)
+E_m^{legal}
+o_m(1),
\qquad
a_\alpha>0.
\tag{EPC.1}
```

Let the finite signed endpoint test family be

```math
\Phi=\{\phi_1,\ldots,\phi_N\},
\qquad
\|\phi_i\|_\infty\le1.
\tag{EPC.2}
```

For each test,

```math
\langle E_m^{end},\phi_i\rangle
=
\sum_\alpha
a_\alpha
\left(
\phi_i(R_\alpha)-\phi_i(D_\alpha)
\right)
+\operatorname{Legal}_{m,i}
+o_m(1).
\tag{EPC.3}
```

This is the finite endpoint boundary term.

## 2. Signed-readout polar form

Define the oriented signed-readout polar quantity

```math
P_\Phi(E_m^{end})
:=
\sum_{i=1}^N
\left[
\langle E_m^{end},\phi_i\rangle
\right]_+
+
\sum_{i=1}^N
\left[
\langle E_m^{end},-\phi_i\rangle
\right]_+.
\tag{EPC.4}
```

Since

```math
[x]_+ + [-x]_+ = |x|,
\tag{EPC.5}
```

one has the exact identity

```math
P_\Phi(E_m^{end})
=
\sum_{i=1}^N
\left|
\langle E_m^{end},\phi_i\rangle
\right|.
\tag{EPC.6}
```

Consequently

```math
\sup_i
\left|
\langle E_m^{end},\phi_i\rangle
\right|
\le
P_\Phi(E_m^{end})
\le
N
\sup_i
\left|
\langle E_m^{end},\phi_i\rangle
\right|.
\tag{EPC.7}
```

Thus signed-readout endpoint polar saturation is the same finite-norm theorem
as `FiniteDonorBoundaryCoherence.A(Phi)`.

In this meaning,

```math
\boxed{
\text{EndpointReadoutPolarization.A}(\Phi)
\Longleftrightarrow
\text{FiniteDonorBoundaryCoherence.A}(\Phi)
}
\tag{EPC.8}
```

with constants depending only on the finite number of tests.

## 3. Positive-carrier endpoint form

The native selected source carrier uses the positive part before the endpoint
sum is restored.  For a nonnegative soft lobe test `zeta`, define

```math
C_\zeta^+(E_m^{end})
:=
\sum_\alpha
a_\alpha
\zeta(R_\alpha).
\tag{EPC.9}
```

The signed readout in the same lobe is

```math
\langle E_m^{end},\zeta\rangle
=
\sum_\alpha
a_\alpha
\left(
\zeta(R_\alpha)-\zeta(D_\alpha)
\right).
\tag{EPC.10}
```

Readout control does not control the positive carrier.  For one retained
endpoint pair with amount `A>0`, choose

```math
\zeta(R)=1,
\qquad
\zeta(D)=1.
\tag{EPC.11}
```

Then

```math
\langle A(\delta_R-\delta_D),\zeta\rangle=0,
\tag{EPC.12}
```

while

```math
C_\zeta^+
\left(A(\delta_R-\delta_D)\right)
=A.
\tag{EPC.13}
```

So signed endpoint readout can vanish while the selected positive endpoint
carrier remains positive.

If instead

```math
\zeta(R)=1,
\qquad
\zeta(D)=0,
\tag{EPC.14}
```

then

```math
\langle A(\delta_R-\delta_D),\zeta\rangle=A
\tag{EPC.15}
```

and the carrier is visible, but visibility is not an anti-atom theorem.

## 4. Exact separation

There are therefore two distinct endpoint statements.

First, the readout statement:

```math
\boxed{
\text{oriented signed endpoint polar readout}
=
\text{finite donor boundary coherence}.
}
\tag{EPC.16}
```

This is a finite-norm repackaging of the endpoint residue.

Second, the carrier statement:

```math
\boxed{
C_\zeta^+(E_m^{end})
\le
C\,|\langle E_m^{end},\zeta\rangle|
+\operatorname{Legal}_{m,\zeta}
+o_m(1).
}
\tag{EPC.17}
```

This is false without an additional same-ledger carrier theorem, because
`(EPC.11)`--`(EPC.13)` give a retained endpoint pair with zero signed readout
and positive selected carrier.

The correct endpoint carrier theorem is

```math
\boxed{
\text{EndpointCarrierPolarSaturation.A}(\zeta)
}
\tag{EPC.18}
```

and it is the endpoint form of

```math
\boxed{
\text{SelectedPositivePolarSaturation.A}
}
\tag{EPC.19}
```

not a consequence of boundary coherence.

## 5. Consequence for the gold route

`SelectedEndpointPolarSaturation.A` must be split in all downstream uses.

If it means oriented signed readout, then it is an alias for
`FiniteDonorBoundaryCoherence.A(Phi)` and supplies no new positive-carrier
bridge.

If it means positive selected carrier saturation, then it is still the Door 1
same-ledger carrier theorem.  It closes only from one of the existing real
currencies:

```math
\boxed{
\text{TerminalSignedSaturation.A / NoFreeTerminalZenoDonorChain.A}
}
\tag{EPC.20}
```

or

```math
\boxed{
\text{same-carrier source-square / strict no-waste}
}
\tag{EPC.21}
```

or

```math
\boxed{
\text{rigid Zeno source-residue production and Liouville}
}
\tag{EPC.22}
```

## Verdict

The endpoint polar phrase is exhausted.

It cannot be used as a separate forward-gold supplier.  The readout version is
finite donor boundary coherence.  The carrier version is the same selected
positive native carrier bridge already exposed by Door 1.

