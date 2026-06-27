---
theorem_id: forward-gold-record-return-branch-sharp-inputs-20260627
status: record-return-demoted-to-repeated-core-branch-with-two-open-pde-inputs
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / critical fresh source tent Carleson
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - CriticalFreshSourceTentCarleson.A
  - FreshNegativeScaleReturnChargeOrPotentialAverageKill.A
  - StoppedPrimitivePLSRecordReturnDescent.A
  - NoZenoReuseEscapeDichotomyStrictCharge.A
refined_hinge:
  - RepeatedCoreRecordReturnStorageBound.A
  - StoppedPrimitivePLSSignedScalePotentialLift.A
  - StoppedNegativeScaleReturnCharge.A
  - StoppedPotentialRecordAverageBound.A
  - ShrinkingCoreEscapeCapacityLowerBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-der-aqk-moving-lowhigh-record-return-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-record-return-bv-descent-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-nozeno-record-return-branch-routing-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-strict-half-barrier-minimal-bad-chain-direct-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-source-carrier-production-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/signed-lifted-band-scale-descent-identity.md
  - problems/navier-stokes/theorem-construction/lifted-band-upper-boundary-packet.md
subagent_inputs:
  - Linnaeus: signed commutator descent is installed only at the signed layer; polar pushdown to the stopped positive PLS driver is missing.
  - Kant: negative scale return is named as a paid currency but no installed theorem charges the affine negative-return term.
---

# Record/return branch sharp inputs

The record/return idea is useful, but it should not be treated as the whole Gold
route.  The current source check shows a sharper fact:

```text
record/return is the repeated-core branch mechanism;
shrinking-core escape still needs selected capacity / collar-turnstile packing.
```

The minimal bad chain audit already splits the stopped high-ratio chain into two
branches.  On a repeated material core, the same stopped scale potential can
carry multiple selected visits.  On a shrinking core, the potential can restart
on smaller transported cores, so a single-core record/return law does not sum the
escaping family.

## 1. What record/return actually proves

On one stopped material ancestry line, after the correct lift, the positive
selected primitive driver has the scalar form

```math
Y_+=Y+Y_-,
\qquad
Y=\partial_\sigma\Psi+S^{spill}+E.
\tag{1}
```

Then positive variation has the elementary BV split

```math
V_+(\Psi;I_M)
=
\Psi(t_M)-\Psi(t_0)+V_-(\Psi;I_M).
\tag{2}
```

Equivalently, retained positive visits are either records or returns:

```math
\sum_{Q_k\subset\mathcal A}A_{sel}^{fresh}(Q_k)
\lesssim
\operatorname{Rec}_\infty(\Psi_\mathcal A)
+V_-^{return}(\Psi_\mathcal A)
+R_{legal}(\mathcal A).
\tag{3}
```

This closes the repeated-core branch only after the original-data storage bound

```math
\int_{\mathcal F_{lam}}
\left(
\operatorname{Rec}_\infty(\Psi_\mathcal A)
+V_-^{return}(\Psi_\mathcal A)
\right)
d\mathcal R_{ancestry}(\mathcal A)
\le C_N(u_0)+R_{legal}
\tag{4}
```

is proved.

Thus the sharp repeated-core theorem is:

```text
RepeatedCoreRecordReturnStorageBound.A.
```

It is the record/return version of the older repeated-core nonreuse storage
bound, not a third route and not the shrinking-core theorem.

## 2. The signed lift is still open

The installed signed lifted-band note gives the correct signed commutator
mechanism.  It proves the right shape:

```math
\mathfrak c_\ell
=
(\ell\partial_\ell)\Psi_\ell
+\nabla_x\cdot J_\ell
+\partial_tR_\ell
+\mathcal S_\ell^{spill}
+\mathcal E_\ell.
\tag{5}
```

That is not yet the stopped positive PLS lift.  The signed note explicitly keeps
three open subclaims: signed scale descent, triviality of the transportable
mismatch cocycle, and boundary/remainder control.  The upper-boundary packet
also isolates, rather than proves, the required barrier estimate.

The missing pushdown theorem is:

```text
StoppedPrimitivePLSSignedScalePotentialLift.A
```

in the exact form

```math
d\Omega_N^{PLS,primitive,+}
=
[Y]_+\,d\sigma dt+dR_N^{paid},
\qquad
Y=\partial_\sigma\Psi+S^{spill}+E,
\tag{6}
```

on each stopped one-material ancestry line.  The selected polar scalar has to be
chosen before positive projection; polar-frame changes must be paid as
selector/reselection, exchange, collar/spill, donor/order-lock, or legal terms.
They cannot be hidden inside `Y_+`.

## 3. Negative return is not yet paid

The stopped record/return note says the negative return must land in paid
currencies: same-material strain/exchange reversal, selector or polar-frame
rotation, collar/spill separation, donor/order-lock repayment, recirculation
already classified as return, or legal synchronization loss.

That is a target statement, not an installed estimate.  The missing analytic
bound is

```math
\int_0^T H_w(t)\|\mathcal C_\theta[Y_-](t)\|_{L_x^2}^2dt
\le C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{7}
```

So the second open input is:

```text
StoppedNegativeScaleReturnCharge.A.
```

Equivalently, it is the negative-return half of
`RepeatedCoreRecordReturnStorageBound.A`.

The counterprofile remains the one-child laminar half-tail

```math
\nu_\ell={2^{-\ell}\over \ell+1},
\qquad
2^\ell\nu_\ell={1\over \ell+1}.
\tag{8}
```

Raw/support ledgers see

```math
\sum_\ell\nu_\ell<\infty,
\tag{9}
```

while selected action sees

```math
\sum_\ell2^\ell\nu_\ell=\infty.
\tag{10}
```

A repeated-core version can keep records bounded by inserting negative resets
between positive selected visits.  It still satisfies the installed raw Bessel,
spent-source, laminarity, selector/legal/collar/spill, and recirculation
removals unless `(7)` forces those resets into finite original-history charge.

## 4. The shrinking-core branch stays separate

The shrinking-core branch is not killed by a single-core record/return storage.
There the selected visits avoid one fixed material core by restarting on smaller
transported cores.  The required theorem remains:

```text
ShrinkingCoreEscapeCapacityLowerBound.A.
```

It must prove a selected, scale-invariant pressure-Hodge / collar-turnstile /
parent-child reset charge for escaping cores.  Raw capacity is insufficient
because it can remain summable while selected action stays order one at each
restart.

## 5. Result

The current Gold branch state is:

```text
NoZenoReuseEscapeDichotomyStrictCharge.A
  = RepeatedCoreRecordReturnStorageBound.A
    + ShrinkingCoreEscapeCapacityLowerBound.A.
```

The repeated-core side has now been sharpened to exactly two PDE inputs:

```text
StoppedPrimitivePLSSignedScalePotentialLift.A
+
StoppedNegativeScaleReturnCharge.A
```

with potential record/average control as the companion root bound.  This is a
smaller and more honest target than `StoppedPrimitivePLSRecordReturnDescent.A`
as a slogan.  The scalar BV descent is elementary; the theorem work is the polar
signed lift and the original-history charge for the negative return.