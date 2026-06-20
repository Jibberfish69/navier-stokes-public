---
theorem_id: forward-gold-linear-positive-energy-trace-saturation-direct-test-20260620
status: direct-linear-positive-energy-trace-saturation-test-complete-not-proved
logical_landing_node: linear_positive_energy_trace_saturation
edge_effect: "Tests the positive-part step left by the normalized endpoint-energy parent calculation. The signed local energy trace sees the algebraic sum of strain work, while the selected carrier keeps the positive expanding channel after packet selection. A two-channel trace-free strain model has zero signed trace and positive selected trace, so the bridge is not a formal consequence of the energy identity. The remaining theorem is normalized-energy polar saturation plus no-free terminal normalized-energy trace."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-linear-participation-parent-or-charge-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-free-terminal-normalized-energy-trace-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-weighted-skew-to-terminal-signed-saturation-20260618.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-participation-linear-source-pulse-identity-direct-test-20260620.md
downstream_consequence: "LinearParticipationParentOrCharge.A remains unproved at the full Navier-Stokes selected-carrier level. Finite same-normalization signed partners and legal exits are the paid cases; the live residue is LinearEnergyTracePolarSaturation.A plus NoFreeTerminalNormalizedEnergyTrace.A, or a stronger strict no-waste/source-square/unweighted-action theorem."
---

# MPP Forward-Gold Linear Positive Energy Trace Saturation Direct Test

Date: 2026-06-20

## Status

Direct test complete.  The theorem is not proved from current inputs.

The scalar parent-or-charge calculation showed that non-source-residue linear
participation is normalized endpoint-energy transport.  The remaining bridge was

```math
\boxed{
\text{LinearPositiveEnergyTraceSaturation.A}.
}
\tag{LPETS.1}
```

The desired full statement is a same-normalization comparison of the selected
positive strain work with the signed endpoint-energy trace, legal charge, and
retained signed partners.  One sufficient form is

```math
\int_J a_T(s)\,ds
\le
C\left[
\mathcal E_T^{lin}(s_+)-\mathcal E_T^{lin}(s_-)
\right]_+
+
Charge_T^{lin}(J)
+
Legal_T(J)
+
o(1).
\tag{LPETS.2}
```

The edgewise form is the normalized-energy analogue of terminal signed
saturation:

```math
d\pi_E^+(e)
\le
d\pi_E^-(e^*)
+
d\mathcal D_{\mathrm{legal}}(e),
\qquad
\sum_e d\mathcal D_{\mathrm{legal}}(e)<\infty .
\tag{LPETS.3}
```

## 1. What the local energy identity actually sees

For a packet coefficient \(w\), the local energy identity sees signed strain
work of the form

```math
\int_I \langle A(t)w(t),w(t)\rangle\,dt
\tag{LPETS.4}
```

up to transport, pressure, viscosity, cutoff, projection, and residual ledgers.

The selected positive carrier keeps instead

```math
\int_I
\left[
\langle A(t)w(t),w(t)\rangle
\right]_+\,dt .
\tag{LPETS.5}
```

The passage from `(LPETS.4)` to `(LPETS.5)` is a signed-partner theorem.  It is
not supplied by the signed energy identity itself.

## 2. Two-channel obstruction

Take an interval \(I\) of normalized length one and the trace-free strain matrix

```math
A=
\begin{pmatrix}
1&0&0\\
0&-1&0\\
0&0&0
\end{pmatrix}.
\tag{LPETS.6}
```

Let two packet channels carry equal normalized mass:

```math
w^{(1)}(s)=e_1,
\qquad
w^{(2)}(s)=e_2,
\qquad
s\in I .
\tag{LPETS.7}
```

Then the signed total strain work is zero:

```math
\int_I
\left[
\langle Aw^{(1)},w^{(1)}\rangle
+
\langle Aw^{(2)},w^{(2)}\rangle
\right]\,ds
=
\int_I (1-1)\,ds
=0.
\tag{LPETS.8}
```

But a positive selector that retains the expanding channel records

```math
\int_I
\left[
\langle Aw^{(1)},w^{(1)}\rangle
\right]_+\,ds
=
1.
\tag{LPETS.9}
```

Thus signed trace control alone does not dominate the selected positive trace.
The negative partner exists algebraically, but it may sit in another packet,
another selected family, a discarded counter-channel, a legal spill, or an
infinite terminal donor chain.  Showing that it remains payable is exactly the
saturation theorem.

This is not a Navier--Stokes solution model.  It is the algebraic obstruction at
the carrier level.  Since the installed local energy identity is signed before
positive selection, the positive selected trace is not a formal corollary.

## 3. Paid cases and the remaining case

The finite paid cases are the same as in the Door 1 signed-current analysis.

First, the signed partner is retained at the same normalization:

```math
d\pi_E^+(e)\le d\pi_E^-(e^*).
\tag{LPETS.10}
```

Second, the partner leaves through a pressure, cutoff, collar, projection,
residual, or legal spill:

```math
d\pi_E^+(e)\le d\mathcal D_{\mathrm{legal}}(e).
\tag{LPETS.11}
```

Third, the partner enters another internal donor packet.  Finite donor chains
can telescope exactly as normalized endpoint-energy traces:

```math
\sum_{m=0}^{M}
d\pi_E^+(e_m)
\le
\mathcal E^{lin}_{M}
-
\mathcal E^{lin}_{0}
+
Charge^{lin}
+
Legal
+
o(1).
\tag{LPETS.12}
```

The only unpaid branch is an infinite terminal chain of normalized endpoint
energy:

```math
e_0\leftarrow e_1\leftarrow e_2\leftarrow\cdots,
\qquad
t_m\uparrow T^*,
\qquad
\lambda_m\to\infty .
\tag{LPETS.13}
```

Physical endpoint energy may vanish along this chain because of the shrinking
scale factor, while the normalized trace remains order one.  The current
physical energy ledger therefore does not discharge `(LPETS.13)`.

## 4. Exact reduction

The direct test reduces the bridge to two named statements:

```math
\boxed{
\text{LinearEnergyTracePolarSaturation.A}
+
\text{NoFreeTerminalNormalizedEnergyTrace.A}.
}
\tag{LPETS.14}
```

Here `LinearEnergyTracePolarSaturation.A` is the same-normalization signed-partner
statement for the positive selected energy trace.  It says the selected
expanding trace cannot be kept without its contracting partner, a legal exit, or
a donor edge.

`NoFreeTerminalNormalizedEnergyTrace.A` is the terminal-chain statement.  It says
an infinite chain of normalized endpoint-energy parents cannot feed terminal
positive participation forever while physical endpoint energy vanishes and every
legal ledger remains finite.  The direct test
`mpp-forward-gold-no-free-terminal-normalized-energy-trace-direct-test-20260620.md`
shows that this is not supplied by finite physical energy: a Zeno chain can keep
order-one normalized endpoint-energy trace while each physical contribution
carries a summable shrinking-scale factor.

## Verdict

`LinearPositiveEnergyTraceSaturation.A` is not installed.

The local energy identity gives signed trace accounting.  Positive selected
trace accounting requires an extra polar-saturation theorem:

```math
\boxed{
\text{signed endpoint-energy trace}
\not\Rightarrow
\text{selected positive endpoint-energy trace}
}
\tag{LPETS.15}
```

without retained signed partners, legal exits, finite donor telescoping, and the
no-free terminal normalized-energy chain theorem.
