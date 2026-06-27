---
theorem_id: forward-gold-parent-child-transition-payment-method-synthesis-20260627
status: conditional-reduction-open-three-method-attacks
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / no-Zeno selected transition payment
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
authority_state: current goal-loop hinge after record-return branch sharp inputs
refines_hinge:
  - RepeatedCoreRecordReturnStorageBound.A
  - StoppedPrimitivePLSSignedScalePotentialLift.A
  - StoppedNegativeScaleReturnCharge.A
  - ShrinkingCoreEscapeCapacityLowerBound.A
sharpens_to:
  - ParentChildTransitionPaymentLaw.A
  - PrimitivePLSDriverToSignedCommutatorIdentity.A
  - StoppedNegativeReturnOrientedPayment.A
  - CriticalWeightedParentChildResetCarleson.A
  - LogScaleResetDerivativeCarrierBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-return-branch-sharp-inputs-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-signed-lift-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-record-return-bv-descent-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-child-reset-critical-weight-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-birth-live-edge-after-reset-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-multicurrency-invisible-child-to-stopped-compensator-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-scale-native-reserve-atom-joint-interface-reduction-20260627.md
  - subagent Hubble: signed lift probe, completed 2026-06-27
  - subagent Faraday: negative return probe, completed 2026-06-27
  - subagent Newton: shrinking core probe, completed 2026-06-27
effect: >-
  Records the next nonduplicate Gold idea after the branch split. Repeated-core
  record/return and shrinking-core escape are not separate slogans: they are the
  two outcomes of one parent-child selected transition test. No fresh reset routes
  the child to repeated-core record/return; genuine fresh reset must pay a
  critical weighted original-history reset charge. This note is a conditional
  reduction, not a proof of Gold closure.
---

# Parent-child transition payment method synthesis

The current branch split is still open:

```text
NoZenoReuseEscapeDichotomyStrictCharge.A
  = RepeatedCoreRecordReturnStorageBound.A
    + ShrinkingCoreEscapeCapacityLowerBound.A.
```

The sharper idea is to stop treating those two branches as unrelated.  They are
two outcomes of one parent-child selected transition test:

```text
no fresh parent-child reset
  -> inherited selected state
  -> repeated-core record/return;

genuine fresh parent-child reset
  -> critical weighted reset charge
  -> original-history reset Carleson.
```

Call the combined target:

```text
ParentChildTransitionPaymentLaw.A.
```

It is not closed.  It is the smallest common theorem shape that keeps the live
Gold branch from drifting back into raw capacity, raw source mass, or a local
invisible-child detector.

## 1. Repeated-core side

On a repeated material ancestry line, selected positive visits can be controlled
only after the stopped primitive driver is lifted before positive projection:

```math
d\Omega_S^{PLS,primitive,+}
=
[Y_S]_+\,d\sigma dt+dR_S^{paid},
\qquad
Y_S=\partial_\sigma\Psi_S+S_S^{spill}+E_S.
\tag{1}
```

The signed-lift probe did not find a proof of `(1)`.  It sharpened the first
attack to:

```text
PrimitivePLSDriverToSignedCommutatorIdentity.A.
```

The exact claim is that, on one fixed stopped chamber after paid
selector/reselection, polar-frame, collar/spill, donor/order-lock, and legal
losses, the retained primitive positive PLS driver is the positive Jordan part of
the same signed low-high commutator channel:

```math
d\Omega_S^{PLS,primitive,+}
=
[\mathfrak c_S]_+\,d\sigma dt+dR_S^{paid},
\tag{2}
```

where the signed channel has the installed local form

```math
\mathfrak c_\ell
=
(\ell\partial_\ell)\Psi_\ell
+\nabla_x\cdot J_\ell
+\partial_tR_\ell
+\mathcal S_\ell^{spill}
+\mathcal E_\ell.
\tag{3}
```

The proof method is sign-cancellation before positive projection: pair the
primitive positive lobe with its signed partner, keep the negative partner as
return, and pay every unpaired residue in selector, exchange, collar, donor, or
legal currency.  A proof that estimates only the signed current without this
Jordan-part identification repeats the local positive-selection gap.

The remaining signed-lift support is:

```text
SignedScaleCocycleTriviality.A
+
SignedBoundaryRemainderBarrier.A.
```

Those are support for `(1)`, not substitutes for the driver identity.

## 2. Negative-return side

Once `(1)` exists, record/return gives the scalar BV identity

```math
Y_+=Y+Y_-,
\qquad
Y=\partial_\sigma\Psi+S^{spill}+E,
\tag{4}
```

and repeated positive visits are bounded by records plus negative returns:

```math
\sum_{Q_k\subset\mathcal A}A_{sel}^{fresh}(Q_k)
\lesssim
\operatorname{Rec}_\infty(\Psi_\mathcal A)
+V_-^{return}(\Psi_\mathcal A)
+R_{legal}(\mathcal A).
\tag{5}
```

The negative-return probe found no installed ledger that defeats the one-child
half-tail with resets.  The missing theorem is not merely the final norm bound;
it first needs an oriented payment map:

```text
StoppedNegativeReturnOrientedPayment.A.
```

For each negative return contribution on a stopped common-selector material
chamber, construct a bounded-multiplicity assignment

```math
Y_-\,d\sigma dt
\longmapsto
\Omega^{strain/ex}
+\Omega^{selector/polar}
+\Omega^{collar/spill}
+\Omega^{donor/order}
+\Omega^{legal},
\tag{6}
```

with recirculation counted only when it has already been classified as return.
After that map exists, the analytic estimate is

```math
\int_0^T H_w(t)\|\mathcal C_\theta[Y_-](t)\|_{L_x^2}^2dt
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{7}
```

The proof method here is double counting / oriented payment, followed by the
analytic estimate.  Treating exchange/reselection as already summable would be
circular; the repo still needs the compensator Carleson theorem that makes the
payment finite from original history.

## 3. Escaping-core side

The shrinking-core probe confirmed that raw capacity, raw reset distance, and
raw fresh Hilbert atoms all fail the same critical half-tail test:

```math
\nu_\ell={2^{-\ell}\over \ell+1},
\qquad
\sum_\ell \nu_\ell<\infty,
\qquad
\sum_\ell 2^\ell\nu_\ell=\infty.
\tag{8}
```

Thus `ShrinkingCoreEscapeCapacityLowerBound.A` should now be attacked in its
critical weighted reset form:

```text
CriticalWeightedParentChildResetCarleson.A.
```

For an escaping selected child \(Q'\subset Q\), after paid removals, either the
child inherits the selected parent state and is routed to repeated-core
record/return, or it pays

```math
A_{sel}^{fresh}(Q')
\le
C\Bigl(
\operatorname{Cap}_{PH}^{sel}(Q')
+\operatorname{Turn}_{collar}^{sel}(Q')
+J_{crit}(Q\to Q')
+R_{legal}(Q)
\Bigr),
\tag{9}
```

with root control

```math
\sum_{Q\subset P}\sum_{Q'\in ch_{stop}(Q)}
J_{crit}(Q\to Q')
\le
C_N(u_0)+R_{legal}(P).
\tag{10}
```

The countertest says `J_crit` must carry the selected first-ratio weight.  The
noncircular source currently visible in the repo is:

```text
LogScaleResetDerivativeCarrierBound.A.
```

in the form

```math
\sum_{Q\subseteq P}\sum_{Q'\in ch_{stop}(Q)}
w(Q')\|\Delta Z_{Q\to Q'}^{fresh}\|_{\mathcal H_{raw}}^2
\le
C\int_{\mathcal C(P)}
\left(
|\partial_\sigma Z|^2
+|\mathrm{turnstile}_\sigma|^2
+|\mathrm{exchange}_\sigma|^2
\right)d\sigma dt
+R_{legal}(P).
\tag{11}
```

The proof method is an analytic estimate after the minimal escaping-chain
reduction.  Compactness and tree counting identify the obstruction; they do not
insert the missing selected weight.

## 4. Authority reconciliation

The invisible-child currencies remain useful, but only inside the reset-visible
local statement.  They do not make every child visible to the parent boundary,
and they do not by themselves supply the weighted root bound.

The selected-scale native atom lower edge and moving low-high interface notes are
support surfaces for the same issue.  Their role is to explain where a retained
fresh child can attach to the same packet.  The current live theorem still needs
the root-weighted transition payment:

```text
ParentChildTransitionPaymentLaw.A
  = repeated-core signed lift/payment
    + critical weighted fresh-reset Carleson.
```

## 5. Result

The next nonduplicate proof program is:

```text
Repeated core:
  PrimitivePLSDriverToSignedCommutatorIdentity.A
  + StoppedNegativeReturnOrientedPayment.A
  + signed boundary/remainder support;

Escaping core:
  CriticalWeightedParentChildResetCarleson.A
  via LogScaleResetDerivativeCarrierBound.A.
```

That is the current better idea.  The proof has not crossed the Gold wall, but
it has narrowed the wall to three method-fit attacks: signed cancellation for the
primitive driver, oriented payment for negative return, and a critical weighted
log-scale reset estimate for escaping cores.