---
theorem_id: forward-gold-square-first-pulse-no-parent-recheck-20260620
status: refinement-complete-selection-paid-dynamic-parent-gate-open
logical_landing_node: square_first_pulse_no_parent_recheck
edge_effect: "Rechecks the SquareFirstPulseNoParent.A subpiece exposed by the selected-participation-to-weighted-residual bridge attempt. The earliest square-reserve selection/no-earlier-order-one-square-window part is formal once the square reserve measure is the selected object. The unproved part is not firstness; it is the dynamic parent-or-charge law or trace bridge for the square reserve itself."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-participation-to-weighted-residual-square-direct-attempt-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-square-reserve-first-pulse-route-for-scalecriticaltreecarleson-20260505.md
  - problems/navier-stokes/theorem-construction/mpp-scalecriticaltreecarleson-squarefirstpulse-solve-attempt-gate2-obstruction-20260505.md
  - problems/navier-stokes/theorem-construction/mpp-dynamic-square-packet-reserve-bridge-attempt-20260505.md
downstream_consequence: "Do not treat SquareFirstPulseNoParent.A as a live independent obstruction. It splits into a paid square-first selection/no-earlier-square-window clause plus the still-open SquareReserveEvolution.A / DonorReserveAdjointTrace.A / SquareParentOrChargeForReserve.A gate."
---

# MPP Forward-Gold Square First-Pulse No-Parent Recheck

Date: 2026-06-20

## Status

Refinement complete.  The square-first-pulse subpiece was too coarsely named.
The firstness/no-earlier-window part is formal after selecting the square
reserve itself.  The open gate is the dynamic parent-or-charge law for that
square reserve.

## 1. Paid part: earliest square-window selection

For the square-reserve measure

```math
d\mathcal R_N
=
\sum_{P^-}|A_{P^-}|^2\,d\tau,
\tag{SFN.1}
```

or in shell form

```math
\mathcal R_N(W)
=
\int_W
\sum_{k>N}
2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2dt,
\tag{SFN.2}
```

one can choose an earliest dyadic same-fluid window \(W_m\) with

```math
\mathcal R_{N_m}(W_m)\ge\eta.
\tag{SFN.3}
```

After dyadic grid and lexicographic tie-breaking, this gives the formal
no-earlier-order-one-square-window statement:

```math
\mathcal R_{N_m}(W)<\eta
\quad
\text{for all earlier admissible dyadic same-fluid windows }W.
\tag{SFN.4}
```

That is the paid selection part.

## 2. What firstness does not give

The selected window can still contain first-time creation of square reserve.
Firstness removes earlier order-one square windows.  It does not produce an
evolution law for \(\mathcal R_N\).

The required dynamic statement would be:

```math
\boxed{
\mathcal R_N(W)
\le
Charge(W)
+
(1-\delta)\mathcal R_N(Past(W))
+
Loss_{legal}(W)
+o_N(1).
}
\tag{SFN.5}
```

This is `SquareReserveEvolution.A`.

The older square-first-pulse audit already identified the failed gate:

```math
\boxed{
\text{no dynamic parent-or-charge inequality is installed for }\mathcal R_N.
}
\tag{SFN.6}
```

## 3. Why normalized adjoint parent-or-charge is not enough

The normalized adjoint package evolves child packet mass:

```math
M(T)=|\langle w_j(t_+),\chi_T(t_+)\rangle|^2.
\tag{SFN.7}
```

It gives a parent-or-charge law for \(M(T)\), paid by weighted residual squares.
The square reserve \(\mathcal R_N\) is a donor/source coefficient square:

```math
\mathcal R_N(W)
=
\int_W\sum_{P^-}|A_{P^-}(t)|^2\,dt.
\tag{SFN.8}
```

The installed `ParentSquareEmbed.A` is a static upper Bessel embedding from
donor cloud to child source image.  It is not an inverse trace estimate.  The
missing bridge is:

```math
\boxed{
DonorReserveAdjointTrace.A:
\quad
\mathcal R_N(W)
\le
C\sum_{T\subset W}M(T)+Loss_{legal}(W)+o_N(1).
}
\tag{SFN.9}
```

Without `(SFN.9)`, the dynamic law for \(M(T)\) cannot be substituted for a
dynamic law for \(\mathcal R_N\).

## 4. Correct refinement of the subpiece

The earlier name

```math
SquareFirstPulseNoParent.A
\tag{SFN.10}
```

should be read as the following split:

```math
\boxed{
SquareFirstPulseSelection.A
\quad\text{paid/formal}
}
\tag{SFN.11}
```

and

```math
\boxed{
SquareParentOrChargeForReserve.A
\quad\text{open}.
}
\tag{SFN.12}
```

Equivalently, the open gate is:

```math
\boxed{
SquareReserveEvolution.A
\quad\text{or}\quad
DonorReserveAdjointTrace.A.
}
\tag{SFN.13}
```

## Verdict

`SquareFirstPulseNoParent.A` is not the hard theorem by itself.  The square
first-pulse selection removes earlier square windows once the selected square
measure is defined.

The remaining live theorem is:

```math
\boxed{
SquareParentOrChargeForReserve.A
}
\tag{SFN.14}
```

or the equivalent trace/evolution bridge:

```math
\boxed{
DonorReserveAdjointTrace.A
\quad/\quad
SquareReserveEvolution.A.
}
\tag{SFN.15}
```

This is the same dynamic square-reserve gate already exposed by the
ScaleCriticalTreeCarleson square-first-pulse audits.

The follow-up direct parent-or-charge test shows the exact normal-form
obstruction: principal-flow gain can create fixed positive integrated square
reserve inside the first square window while the weighted residual charge is
zero and the boundary child mass tends to zero.  Thus the dynamic gate must be
a square-height/thickness law, a same-unit square parent trace, or a charge of
principal gain itself in the square ledger.
