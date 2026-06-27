---
theorem_id: forward-gold-threaded-cascade-to-affine-quotient-transition-payment-20260627
status: threaded-cascade-reduced-to-affine-quotient-transition-payment-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / fresh frequency flux
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - ThreadedFreshCascadePacking.A
  - AffineQuotientTransitionPayment.A
  - RepeatedCoreRecordReturnStorageBound.A
  - CriticalWeightedParentChildResetCarleson.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-threaded-fresh-cascade-packing-finite-band-reset-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-frequency-flux-residence-transit-dichotomy-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-source-record-return-or-reset-structural-split-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-return-branch-sharp-inputs-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-reset-overrun-carleson-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-affine-quotient-transition-payment-20260627.md
effect: >-
  Reconciles the current threaded-transit note with the parent-child transition
  and affine-quotient notes.  ThreadedFreshCascadePacking.A is no longer the best
  live wall after the finite-band/reset reduction: parent-predictable transit gives
  no fresh differential, finite-band transit telescopes, and top outflux is
  reset/escape-paid.  The remaining non-local payments are repeated-core record/
  negative-return storage and critical weighted fresh-reset Carleson.  These are
  the two branch faces of AffineQuotientTransitionPayment.A.
---

# Threaded cascade to affine-quotient transition payment

The current surface still names `ThreadedFreshCascadePacking.A` as the live
Gold hinge.  The newer threaded-cascade note has already done the main
structural work.  It proves that a transit thread is not an arbitrary frequency
cascade:

1. finite-band parent-predictable transit telescopes;
2. parent-predictable transit gives no fresh selected differential;
3. top outflux from the stopped band is a first-exit reset/escape event;
4. return to a previous stopped core is a stopped primitive return/BV event.

Thus the threaded branch is not the final mathematical wall.  It has been
routed into two named non-local payments:

```text
ReturnBV(P)
ResetEscape(P).
```

Those are exactly the two parent-child transition branches already isolated in
the record/return-or-reset split.

## 1. Threaded transit after the finite-band reduction

For a maximal transit thread \(\gamma\), the checked reduction gives

```math
\sum_{\gamma\subset P}
\sum_{j\in\gamma}2^jM_j^\gamma
\le
C_NE_{root}(P)
+C\,Res(P)
+C\,ResetEscape(P)
+C\,ReturnBV(P)
+CR_{legal}(P).
\tag{1}
```

The residence branch has already been paid.  The finite-band part has already
telescoped.  Therefore the only remaining terms in `(1)` that can carry a
fresh selected critical weight are:

```math
ResetEscape(P)
\qquad\text{and}\qquad
ReturnBV(P).
\tag{2}
```

Leaving `ThreadedFreshCascadePacking.A` as the top target hides the fact that
the thread has already been classified.

## 2. Parent-child transition form

The fresh source record/return-or-reset split says that every surviving fresh
selected parent-child transaction is exactly one of:

```text
same stopped carrier record:
  repeated-core record/return;

changed stopped carrier record:
  fresh reset / selected overrun.
```

This is a stopping-time partition, not a heuristic.  In notation, for the
stopped carrier record \(\mathfrak R(Q)\),

```math
\mathfrak R(Q')=\mathfrak R(Q)
\quad\text{or}\quad
\mathfrak R(Q')\ne\mathfrak R(Q).
\tag{3}
```

The first branch is `ReturnBV(P)` in `(1)`.  The second branch is
`ResetEscape(P)` in `(1)`.

## 3. Shared affine quotient

The critical fresh-source affine-quotient note shows that the two branch
payments are the two faces of one operator survivor.  After the DER split of
the fresh weighted paired carrier,

```math
\mathcal V_\kappa\widetilde Z^{fresh}
=
(I-P_w)\mathcal V_\kappa\widetilde Z^{fresh}
+P_w\mathcal V_\kappa\widetilde Z^{fresh},
\tag{4}
```

the derivative-exact term is support.  The remaining affine quotient is

```math
c_F^{fresh}
=
A_\kappa M_0^{fresh}
+B_\kappa M_1^{fresh},
\qquad
M_i^{fresh}=\int_J\sigma^i\widetilde Z^{fresh}(\sigma,t,x)\,d\sigma.
\tag{5}
```

The current nonduplicate theorem is therefore:

```text
AffineQuotientTransitionPayment.A
```

Statement:

```math
\begin{aligned}
AQ(P)
:=&
\int_0^{T^*}H_w(t)\|c_F^{fresh}(t)\|_{L_x^2}^2\,dt\\
\le&
C\int_{\mathcal F_{rep}(P)}
\left(
\operatorname{Rec}_\infty(\Psi_\mathcal A)
+V_-^{return}(\Psi_\mathcal A)
\right)d\mathcal R_{ancestry}(\mathcal A)\\
&+
C\sum_{Q\subset P}\sum_{Q'\in ch_{stop}(Q)}
J_{crit}(Q\to Q')
+R_{legal}(P).
\end{aligned}
\tag{6}
```

The first right-hand term is used only on the repeated-core branch.  The
second is used only on genuine fresh reset.

## 4. Branch payments still open

Equation `(6)` is not Gold closure.  It reduces the live proof to two exact
payments.

Repeated-core branch:

```text
StoppedPrimitivePLSSignedScalePotentialLift.A
+
StoppedNegativeReturnOrientedPayment.A
  -> StoppedNegativeScaleReturnCharge.A
  -> RepeatedCoreRecordReturnStorageBound.A.
```

The first open estimate is the stopped positive PLS lift

```math
d\Omega_N^{PLS,primitive,+}
=
[Y]_+\,d\sigma dt+dR_N^{paid},
\qquad
Y=\partial_\sigma\Psi+S^{spill}+E,
\tag{7}
```

followed by the negative-return charge

```math
\int_0^T
H_w(t)\|\mathcal C_\theta[Y_-](t)\|_{L_x^2}^2\,dt
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{8}
```

Fresh-reset branch:

```text
FreshSelectedCoefficientOverrunPayment.A
+
CriticalWeightedParentChildResetCarleson.A
  via LogScaleResetDerivativeCarrierBound.A.
```

The first open estimate is the critical weighted reset BV bound

```math
\sum_{Q\subseteq Q_0,\,reset}
\omega(Q,Q')
[c_{sel}(Q')-c_{sel}^{par}(Q)]_+
\le
C_N(u_0)+CR_{legal}(Q_0).
\tag{9}
```

## 5. Method fit

The repeated-core branch is not another local positive estimate.  It needs
signed cancellation before positive projection, then oriented payment of the
negative return.  The right method family is signed normal form plus oriented
double counting.

The fresh-reset branch is not a capacity slogan.  It needs a critical weighted
log-scale reset derivative estimate after the minimal escaping-chain reduction.
The right method family is a scale-derivative Carleson estimate with a
first-exit stopping tree.

These branches should be kept explicit, but the live parent theorem is the
affine-quotient transition payment because that is the shared survivor left
after the derivative-exact part of the paired carrier has been separated.

## 6. Result

The current Gold edge should be read as:

```text
ThreadedFreshCascadePacking.A
  <= AffineQuotientTransitionPayment.A
  <= RepeatedCoreRecordReturnStorageBound.A
     + CriticalWeightedParentChildResetCarleson.A.
```

Partial, not Gold closed.  The useful next attack is not another silent-source
local increment, another frequency-flux restatement, or a raw threaded-cascade
packing note.  It is the affine quotient transition payment, with its repeated
core and fresh reset branch estimates kept visible.
