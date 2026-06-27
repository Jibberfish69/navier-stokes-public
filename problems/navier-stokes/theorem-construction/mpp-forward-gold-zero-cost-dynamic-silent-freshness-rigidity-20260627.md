---
theorem_id: forward-gold-zero-cost-dynamic-silent-freshness-rigidity-20260627
status: rigidity-closed-for-fresh-innovation-not-source-vanishing
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / original-history dynamic silent amplification
attacks_hinge:
  - OriginalHistoryDynamicSilentSelectedAmplification.A
  - PredictableDynamicSilentTransitionInnovation.A
  - OriginalHistorySelectedLogAmplificationCarleson.A
refines:
  - MaterialPersistentSilentSourceExchangeTax.A
  - StoppedAffineTransitionLiftedMartingaleDifference.A
  - QuantitativeZeroCostSelectedResetRigidity.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-dynamic-silent-selected-amplification-producer-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-dynamic-silent-source-to-predictable-transition-innovation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-zero-cost-selected-reset-rigidity-after-tightness-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-origin-hilbert-energy-dissipation-selector-readout-test-20260627.md
effect: >-
  Corrects the dynamic silent-source bad-profile target. The needed rigidity is
  not that every zero-cost silent source vanishes. Nonzero silent/gauge material
  may persist as inherited parent transport. The needed statement is that after
  the stopped parent-predictable transport is subtracted, a zero-cost selected
  silent component has zero fresh innovation. This turns the dynamic silent
  commutator identity into a usable branch gate for the original-history
  selected log-amplification producer without overclaiming root Carleson closure.
---

# Zero-cost dynamic silent freshness rigidity

The previous dynamic-silent producer note used the bad-profile target

```math
\mathcal K^{sil}
\cap\mathcal C^{sel}
\cap\ker[D_t,\mathcal L_A]
\cap\ker S_{\rm mat}
=\{0\}.
\tag{1}
```

That target is stronger than the route needs.  It may also be false as a
statement about the source itself: a boundary-flat silent/gauge component can
remain nonzero while it is inherited by the parent material frame.

The proof only needs the fresh quotient to vanish after parent-predictable
transport has been removed.  The correct rigidity statement is therefore:

```text
ZeroCostDynamicSilentFreshnessRigidity.A
```

## 1. Fixed stopped silent transition

Let \(e=Q\to Q'\) be a retained stopped transition edge.  In the lifted
visible/silent/exchange Hilbert space, write the silent component as a stopped
parent-frame readout

```math
q_e(\tau)=\Gamma_e(\tau)Z_e^{sil}(\tau),
\qquad \tau\in I_e.
\tag{2}
```

Here \(\Gamma_e\) is built from the stopped parent covector/frame history.  The
parent-predictable silent span \(\mathcal P_{e^-}^{sil}\) is the span generated
by the homogeneous transported solutions seen by the parent before the child
transition is selected.

The fresh silent innovation is

```math
D_e^{sil}
=
(I-\Pi_{\mathcal P_{e^-}^{sil}})
\left(q_e(\tau_1)-q_e(\tau_0)\right).
\tag{3}
```

This is the same parent-subtracted quotient used in the selected-reset rigidity
note, now applied to the dynamic silent component.

## 2. Derivative identity

Differentiate `(2)`:

```math
\partial_\tau q_e
=
\Gamma_e\,D_tZ_e^{sil}
+(D_t\Gamma_e)Z_e^{sil}.
\tag{4}
```

For a boundary-flat pressure-Hodge source

```math
f_e=\mathcal L_Aw_e,
\qquad
w_e|_{\partial A_e}=0,
\qquad
\partial_{\nu_A}w_e|_{\partial A_e}=0,
\tag{5}
```

the material derivative is

```math
D_tf_e
=
\mathcal L_A(D_tw_e)+[D_t,\mathcal L_A]w_e.
\tag{6}
```

The terms in `(4)` outside the parent-predictable transported span are exactly
the charged dynamic-silent terms:

```math
\partial_\tau q_e
=
\Pi_{\mathcal P_{e^-}^{sil}}\partial_\tau q_e
+
\Pi_{\rm new}(e)
\left(
[D_t,\mathcal L_A]w_e
+\operatorname{covector}_e
+\operatorname{frame}_e
+\operatorname{turnstile}_e
+\partial_\sigma Z_e
\right)
+R_e^{legal}.
\tag{7}
```

The frozen-symbol version is the same identity.  Pressure-Hodge silence is

```math
\xi^TZ\xi=0,
\tag{8}
```

and \(D_t\xi=-(\nabla u)^T\xi\), so

```math
0=D_t(\xi^TZ\xi)
=-2\xi^T(\nabla u)Z\xi+\xi^T(D_tZ)\xi.
\tag{9}
```

The cancellation in `(9)` is parent transport when it stays in
\(\mathcal P_{e^-}^{sil}\).  It is a new charged exchange/covector term only
after projection by \(\Pi_{\rm new}(e)\).

## 3. Zero-cost rigidity

Assume a normalized bad profile has been extracted in one fixed same-carrier
lifted Hilbert space and all fresh dynamic-silent charges vanish:

```math
\Pi_{\rm new}(e)[D_t,\mathcal L_A]w_e=0,\qquad
\Pi_{\rm new}(e)\operatorname{covector}_e=0,\qquad
\Pi_{\rm new}(e)\operatorname{frame}_e=0,
\tag{10}
```

```math
\Pi_{\rm new}(e)\operatorname{turnstile}_e=0,\qquad
\Pi_{\rm new}(e)\partial_\sigma Z_e=0,\qquad
R_e^{legal}=0.
\tag{11}
```

Project `(7)` onto the fresh quotient:

```math
(I-\Pi_{\mathcal P_{e^-}^{sil}})\partial_\tau q_e=0.
\tag{12}
```

Integrating over the stopped transition interval gives

```math
D_e^{sil}
=
(I-\Pi_{\mathcal P_{e^-}^{sil}})
\int_{\tau_0}^{\tau_1}\partial_\tau q_e\,d\tau
=0.
\tag{13}
```

So a zero-cost dynamic silent component may persist, but it is inherited
parent-predictable transport.  It cannot create a fresh selected silent
innovation.

## 4. Quantitative form

Before passing to the bad-profile limit, the same computation gives

```math
\|D_e^{sil}\|_{\mathcal H_{\rm lift}}^2
\le
C\left(
\int_{I_e}
\left[
\|\Pi_{\rm new}[D_t,\mathcal L_A]w_e\|
+|\Pi_{\rm new}\operatorname{covector}_e|
+|\Pi_{\rm new}\operatorname{frame}_e|
+|\Pi_{\rm new}\operatorname{turnstile}_e|
+|\Pi_{\rm new}\partial_\sigma Z_e|
\right]d\tau
\right)^2
+CR_e^{legal}.
\tag{14}
```

With a parent-known active weight \(H_{e^-}\), Cauchy gives

```math
H_{e^-}\|D_e^{sil}\|_{\mathcal H_{\rm lift}}^2
\le
C\int_{I_e}H_{e^-}a_e(\tau)
\left(
\|\Pi_{\rm new}[D_t,\mathcal L_A]w_e\|^2
+|\Pi_{\rm new}\operatorname{covector}_e|^2
+|\Pi_{\rm new}\operatorname{frame}_e|^2
+|\Pi_{\rm new}\operatorname{turnstile}_e|^2
+|\Pi_{\rm new}\partial_\sigma Z_e|^2
\right)d\tau
+CR_e^{legal},
\tag{15}
```

where \(a_e\) is the announced first-exit / scale-interval weight already used
in the reset branch.

This is a branch rigidity estimate, not the global producer.

## 5. What remains open

This theorem discharges the zero-cost loophole in the dynamic silent branch:
unpaid material persistence is predictable and therefore disappears from the
fresh quotient.

It does not prove the selected log-amplification root Carleson bound by itself.
The remaining producer is still:

```text
OriginalHistorySelectedLogAmplificationCarleson.A
```

through the two obligations already isolated:

```text
IndependentRootHilbertCarrierBound.A
SelectorCarrierNondegeneracyOrPaidReselection.A.
```

The dynamic-silent contribution to those obligations is now sharper:

```text
selected silent fresh action
  is either charged by projected commutator/covector/frame/turnstile motion
  or is inherited parent transport and gives zero fresh quotient.
```

## 6. Result

`ZeroCostDynamicSilentFreshnessRigidity.A` is closed at the branch level.  The
overstrong statement that every zero-cost silent source must vanish should be
demoted to this parent-subtracted freshness statement.

The live Gold obstruction is no longer a zero-cost silent bad profile.  It is
the global Carleson packing of the charged fresh innovations, together with the
selector-to-carrier readout that prevents reselection from recreating the
selected half-tail.
