---
theorem_id: forward-gold-first-created-reserve-charge-production-clause-recheck-20260620
status: direct-clause-recheck-complete-not-proved
logical_landing_node: first_created_reserve_charge_production_clause
edge_effect: "Rechecks Clause B of the unweighted same-carrier reserve production obligation. The first-created reserve charge is not paid by earliest square-window selection, normalized-adjoint child-mass parent-or-charge, boundary packet mass, heat-window thickness, linear donor balance, or first-moment source mass. The remaining supplier must be a square-strength same-carrier theorem, strict no-waste Lyapunov drop, active-height/log-tail theorem, same-unit square evolution/trace theorem, or CM Pack/Part/Field consumption after same-witness admission."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-unweighted-same-carrier-reserve-production-obligation-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-reserve-creation-heat-scale-first-appearance-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-square-first-pulse-no-parent-recheck-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-square-carrier-adjoint-localization-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-square-parent-or-charge-for-reserve-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-square-donor-no-spreading-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-positive-scale-reserve-cm-promotion-direct-test-20260620.md
downstream_consequence: "Do not treat FirstCreatedReserveCharge.A as paid by linear participation, firstness, or inherited child-mass ancestry. The clause remains a genuine square-currency production theorem on the actual selected positive native carrier, with a separate CM readout only after the retained pulse is admitted as the same terminal witness."
---

# MPP Forward-Gold First-Created Reserve Charge Production Clause Recheck

Date: 2026-06-20

## Status

Direct Clause B recheck complete.  `FirstCreatedReserveCharge.A` is not proved
from current inputs.

This note fixes the role of Clause B from
`mpp-forward-gold-unweighted-same-carrier-reserve-production-obligation-20260620.md`.
It is the negative-time interior square-reserve production clause, not the
endpoint time-face atom clause and not the compact no-null readout clause.

## 1. Clause B target

The selected reserve is

```math
R_N(W)
=
\int_W
\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt.
\tag{FCR.1}
```

The desired first-created charge estimate is

```math
\left[
R_N(W)
-(1-\delta)R_N({\rm Past}(W))
-Loss_{\rm legal}(W)
\right]_+
\le
Charge_N(W)+o_N(1),
\tag{FCR.2}
```

with terminal-tail depletion

```math
\lim_{N\to\infty}
\sum_{W\in{\mathcal W}_N}Charge_N(W)=0
\tag{FCR.3}
```

on the actual selected nonlegal family.

## 2. Paid pieces

Selecting the square reserve measure pays the earliest-window part.  One may
choose a first dyadic same-fluid window with \(R_N(W)\ge\eta\) and no earlier
threshold-crossing square window.

That does not pay square reserve created inside the selected window.  A dynamic
same-unit law is still needed:

```math
R_N(W)
\le
(1-\delta)R_N({\rm Past}(W))
+Charge_N(W)
+Loss_{\rm legal}(W)
+o_N(1).
\tag{FCR.4}
```

The installed normalized-adjoint parent-or-charge law evolves selected child
packet mass.  It does not evolve the integrated donor/source square reserve
`(FCR.1)`.

## 3. First-moment source mass does not pay Clause B

On a heat window set

```math
h_m=2^{-2m},
\qquad
D_{m+5}(t)=2^{-3m/2}h_m^{-1}{\bf 1}_{I_m}(t).
\tag{FCR.5}
```

Then

```math
\int_{I_m}D_{m+5}(t)\,dt=2^{-3m/2}\to0,
\tag{FCR.6}
```

while

```math
\int_{I_m}2^mD_{m+5}(t)^2\,dt=1.
\tag{FCR.7}
```

Thus any charge controlled only by first-moment source mass misses the selected
square reserve.

## 4. Principal-flow gain does not pay through residual charge

The scalar principal-flow normal form is

```math
I_\lambda=[0,\lambda^{-2}],
\qquad
{d\over dt}w(t)-\lambda^2w(t)=0,
\qquad
w(0)=\lambda^{-3/4}.
\tag{FCR.8}
```

The residual is zero.  The selected positive participation current is

```math
\Pi_\lambda^{part,+}(t)=\lambda^2w(t)^2
=\lambda^{1/2}e^{2\lambda^2t}.
\tag{FCR.9}
```

The square reserve is fixed:

```math
\lambda\int_0^{\lambda^{-2}}
\bigl(\Pi_\lambda^{part,+}(t)\bigr)^2dt
=
{e^4-1\over4}.
\tag{FCR.10}
```

The boundary packet masses tend to zero:

```math
w(0)^2=\lambda^{-3/2},
\qquad
w(\lambda^{-2})^2=e^2\lambda^{-3/2}.
\tag{FCR.11}
```

Therefore boundary child mass, residual square charge, and linear
parent-or-charge do not imply `(FCR.2)`.

## 5. Linear signed donor balance does not pay Clause B

Let

```math
q_+=A{\bf 1}_{[-h,0]},
\qquad
q_-={Ah\over H-h}{\bf 1}_{[-H,-h]},
\qquad
B'=q_- - q_+,
\tag{FCR.12}
```

with \(B(-H)=B(0)=0\).  Choose

```math
h=\lambda^{-2},
\qquad
H=\lambda^{-1},
\qquad
A=\lambda^{1/2}.
\tag{FCR.13}
```

The linear donor and receiver masses match, and the storage height tends to
zero:

```math
\int q_+dt=\int q_-dt,
\qquad
\sup B=Ah=\lambda^{-3/2}\to0.
\tag{FCR.14}
```

The selected receiver square reserve remains positive while the donor square
cost vanishes:

```math
\lambda\int q_+^2dt=1,
\qquad
\lambda\int q_-^2dt\to0.
\tag{FCR.15}
```

Thus finite donor telescoping and linear signed saturation do not pay the
square-strength clause.

## 6. Exact remaining suppliers

Clause B can be paid only by a theorem in the same square currency, or by a
same-witness CM consumption branch.  The noncircular options are:

```math
\boxed{
\text{SourceSquareReserve.A / SelectedParticipationSquareBudget.A on the actual selected carrier,}
}
\tag{FCR.16}
```

```math
\boxed{
\text{SquareReserveEvolution.A / SquareParentOrChargeForReserve.A / DonorReserveAdjointTrace.A,}
}
\tag{FCR.17}
```

```math
\boxed{
\text{ActiveWindowHeight.A with selected height plus log-tail control,}
}
\tag{FCR.18}
```

```math
\boxed{
\text{StrictRescaledNoWasteLyapunov.A for unweighted critical action,}
}
\tag{FCR.19}
```

or, after the retained pulse is admitted as the same terminal witness,

```math
\boxed{
\text{Pack/Part/Field face failure.}
}
\tag{FCR.20}
```

The CM branch is a readout after admission.  It is not a forward-gold payment
of `(FCR.2)`.

## Verdict

`FirstCreatedReserveCharge.A` remains an open square-strength production clause
on the actual selected positive native carrier.

The checked obstruction is exact:

```math
\boxed{
\text{a heat-scale selected square pulse can have vanishing linear mass and
zero residual charge while retaining order-one square reserve.}
}
\tag{FCR.21}
```

This rules out the lower shortcuts already tested:

```math
\boxed{
\text{firstness, linear donor balance, boundary child mass, heat thickness,
first-moment source mass, and normalized-adjoint child ancestry.}
}
\tag{FCR.22}
```

The remaining forward-gold burden is not smaller bookkeeping.  It is the
same-carrier square payment theorem listed in `(FCR.16)`--`(FCR.19)`, or else
the retained pulse must be consumed by the CM Pack/Part/Field route after
same-witness admission.
