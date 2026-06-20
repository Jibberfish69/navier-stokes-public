---
theorem_id: forward-gold-selected-square-polar-saturation-direct-attempt-20260620
status: direct-square-saturation-attempt-complete-not-proved
logical_landing_node: selected_square_polar_saturation
edge_effect: "Tests whether the selected positive polar saturation already isolated for the linear native carrier upgrades to the square-strength selected participation budget. It does not. Linear signed saturation or equal total donor mass does not control the square reserve unless the signed partner is retained with comparable time thickness and amplitude on the same selected carrier. The exact missing input is square-synchronous signed saturation, or equivalently a source-square/Carleson/no-spreading theorem for donor partners."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-participation-to-weighted-residual-square-direct-attempt-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-positive-polar-saturation-attempt-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parabolic-signed-saturation-after-heat-packet-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-zeno-donor-chain-child-after-parabolic-saturation-20260620.md
downstream_consequence: "The square budget cannot use the older linear TerminalSignedSaturation.A without an additional thickness/height preservation theorem. SelectedSquarePolarSaturation.A reduces to SquareSynchronousSignedSaturation.A, SquareLegalExitCharge.A, and SquareDonorNoSpreading.A; the last two are equivalent at current resolution to SourceSquareReserve.A / SelectedCarrierEndpointUI.A / strict no-waste / rigid Zeno source-residue production."
---

# MPP Forward-Gold Selected Square Polar Saturation Direct Attempt

Date: 2026-06-20

## Status

Direct square-saturation attempt complete.  The theorem is not proved from the
installed inputs.

The important refinement is that square saturation is stronger than the linear
signed saturation already tested in the donor-graph notes.  Equal total signed
mass does not pay equal square reserve.

## 1. Target

The selected participation square budget needs a same-carrier inequality of the
form

```math
\boxed{
\sum_T\lambda_T
\int_{I_T}
\bigl(q_{T,+}^{sel}(t)\bigr)^2\,dt
\le
C\sum_T\lambda_T
\int_{I_T}
\bigl(q_{T,-}^{same}(t)\bigr)^2\,dt
+Legal_T+o_T(1).
}
\tag{SPS.1}
```

Here \(q_{T,+}^{sel}\) is the selected positive participation/source density
on the terminal receiver carrier, and \(q_{T,-}^{same}\) is the retained signed
partner in the same usable carrier ledger.

The older linear saturation target only has the form

```math
\int q_{+}^{sel}\,dt
\le
\int q_{-}^{same}\,dt
+Legal+o(1).
\tag{SPS.2}
```

`(SPS.2)` is not enough for `(SPS.1)`.

## 2. Linear balance does not imply square balance

Let the selected positive receiver be concentrated on a short heat window:

```math
q_+(t)
=
A{\bf 1}_{[0,h]}(t).
\tag{SPS.3}
```

Let its signed donor partner carry the same total mass but spread over a longer
usable donor window:

```math
q_-(t)
=
{Ah\over H}{\bf 1}_{[0,H]}(t),
\qquad
H\ge h.
\tag{SPS.4}
```

Then the linear masses are equal:

```math
\int q_+\,dt
=
Ah
=
\int q_-\,dt.
\tag{SPS.5}
```

But the square costs differ by the thickness ratio:

```math
\int q_+^2\,dt
=
A^2h,
\qquad
\int q_-^2\,dt
=
{A^2h^2\over H}
=
{h\over H}\int q_+^2\,dt.
\tag{SPS.6}
```

At heat scale set

```math
h=\lambda^{-2},
\qquad
A=\lambda^{1/2},
\qquad
H=\lambda^{-1}.
\tag{SPS.7}
```

Then

```math
\lambda\int q_+^2\,dt
=
1,
\tag{SPS.8}
```

while

```math
\lambda\int q_-^2\,dt
=
\lambda^{-1}
\longrightarrow0.
\tag{SPS.9}
```

So a linear donor partner can be perfectly mass-balanced and still fail to pay
the selected square reserve.

This is the square-strength version of the terminal time-face problem: the
positive receiver can be short and tall while the signed partner is longer and
lower.

## 3. Consequence for the older finite-donor payment

The previous parabolic signed-saturation note correctly pays finite donor
chains for the linear selected carrier.  It proves that every finite chain ends
in a retained partner, a legal exit, an entrance leaf, or a local donor-balance
telescoping.

For the square budget, this is not yet enough.  The finite chain is square-paid
only under an additional synchronous-thickness condition:

```math
\boxed{
\int_{I_R}\lambda_R(q_{R,+}^{sel})^2dt
\le
C\int_{I_D}\lambda_D(q_{D,-}^{same})^2dt
+Legal+o(1)
}
\tag{SPS.10}
```

on each donor/receiver transfer.  A finite chain of linear balances does not
produce `(SPS.10)` unless the transfer preserves the relevant heat-clock
height, or unless the spreading defect is charged to a square/source-Carleson
ledger.

Thus the square version of polar saturation has an extra internal gate:

```math
\boxed{
SquareSynchronousSignedSaturation.A.
}
\tag{SPS.11}
```

## 4. What is paid

Three cases are still paid.

First, a retained signed partner in the same packet and same heat window pays
the square directly:

```math
q_-^{same}(t)\ge c q_+^{sel}(t)
\quad\text{on }I_T
\Longrightarrow
\lambda_T\int(q_+^{sel})^2
\le
c^{-2}\lambda_T\int(q_-^{same})^2.
\tag{SPS.12}
```

Second, a legal exit pays the square only if the legal ledger is square-strength
on that exit:

```math
\lambda_T\int(q_+^{sel})^2
\le
Legal_T^{sq}+o_T(1).
\tag{SPS.13}
```

The ordinary finite \(L^1\) legal source ledger is not enough for `(SPS.13)`.

Third, a donor chain pays the square if every transfer satisfies the
square-synchronous law `(SPS.10)` and the final leaf is square-legal or
square-small.

These are genuine payments, but they are stronger than the installed linear
donor-balance package.

## 5. The unproved spreading branch

The unproved branch is a square-spreading donor path:

```math
q_+ \text{ short/tall on the selected receiver,}
\qquad
q_- \text{ longer/lower on the donor side.}
\tag{SPS.14}
```

For a single transfer, the missing payment is exactly the ratio \(H/h\) in
`(SPS.6)`.  For an infinite terminal donor chain, these spreading losses can
accumulate along a Zeno schedule.

To rule this out one needs one of:

```math
\boxed{
\text{same-carrier source-square / Carleson control},
}
\tag{SPS.15}
```

or

```math
\boxed{
\text{endpoint uniform integrability / reverse Holder / Orlicz control},
}
\tag{SPS.16}
```

or

```math
\boxed{
\text{strict no-waste Lyapunov or rigid Zeno source-residue Liouville}.
}
\tag{SPS.17}
```

These are the same unweighted critical-action suppliers already isolated by the
selected square budget attempts.

## 6. Exact reduction

The square polar-saturation theorem splits as:

```math
\boxed{
\begin{aligned}
SelectedSquarePolarSaturation.A
\Leftarrow\;&
SquareRetainedPartner.A\\
&+SquareLegalExitCharge.A\\
&+SquareSynchronousSignedSaturation.A\\
&+NoFreeTerminalZenoDonorChain.A.
\end{aligned}
}
\tag{SPS.18}
```

The first line is paid when the signed partner remains on the same carrier with
comparable heat-clock height.  The second and third lines are not installed in
square strength from the current linear legal/donor ledgers.  The fourth line
is the already known terminal Zeno branch.

Equivalently, the unresolved square-specific gate is:

```math
\boxed{
SquareDonorNoSpreading.A:
\quad
\text{signed donor partners cannot spread the square reserve into longer,
lower terminal windows without paying a square ledger.}
}
\tag{SPS.19}
```

## Verdict

`SelectedSquarePolarSaturation.A` is not a formal consequence of
`SelectedPositivePolarSaturation.A` or `TerminalSignedSaturation.A`.

The linear signed-current theorem controls total mass.  The selected square
budget controls height squared.  The bridge between them is exactly a
time-thickness theorem:

```math
\boxed{
\text{linear signed saturation}
+
\text{square-synchronous thickness}
\Longrightarrow
\text{selected square saturation}.
}
\tag{SPS.20}
```

The square-synchronous thickness theorem is not installed.  At current
resolution it is another face of `SourceSquareReserve.A`,
`SelectedCarrierEndpointUI.A`, strict no-waste, or rigid Zeno source-residue
production.
