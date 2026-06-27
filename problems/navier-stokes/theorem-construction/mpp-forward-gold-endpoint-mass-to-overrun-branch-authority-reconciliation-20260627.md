---
theorem_id: forward-gold-endpoint-mass-to-overrun-branch-authority-reconciliation-20260627
status: authority-reconciled-endpoint-mass-demoted-to-subordinate-source-square-branch
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / source-square branch custody
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - FreshPositiveAffineEndpointMassKill.A
  - FreshMuNCarlesonEndpointThreading.A
  - FreshSameCarrierIdentityAndOverrunTailUI.A
  - FreshNativeRootUpperBound.A
  - CriticalFreshSourceTentCarleson.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-positive-affine-endpoint-mass-threading-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-local-identity-vs-global-root-reserve-reconciliation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parentdrop-to-hs-relay-verification-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-to-same-carrier-overrun-payment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-same-carrier-overrun-ordering-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-overrun-tail-ui-nested-core-reduction-20260627.md
edge_effect: >-
  Repairs target custody after the fresh endpoint-mass reduction. Endpoint mass
  is a real subordinate AQK/source-square mechanism, but it is not the governing
  Gold hinge. The trajectory remains the finite global selected-action producer:
  either the fresh root/tent theorem, or the source-square branch after actual
  carrier identity plus overrun tail UI. Endpoint mass belongs inside that
  source-square branch and must not replace the branch.
downstream_consequence: >-
  The proof relay should not promote FreshPositiveAffineEndpointMassKill.A or
  FreshMuNCarlesonEndpointThreading.A to the top-level current hinge. Those
  objects are allowed only as a subordinate mechanism for the source-square/AQK
  path. The live source-square branch is still FreshSameCarrierIdentity.A first,
  then FreshOverrunSameCarrierTailUI.A on the actual selected carrier.
---

# Endpoint mass to overrun branch authority reconciliation

This note fixes the hierarchy after the fresh endpoint-mass reduction.

## 1. What the endpoint-mass note actually proves

The fresh endpoint-mass note proves a conditional reduction:

\[
\texttt{FreshPotentialAverageKillAndPositiveTransfer.A}
\quad\text{or}\quad
\texttt{FreshPositiveStressSecondOrderExactness.A}
\]

is not installed.  The signed scale descent is one scale derivative short after
positive extraction, and positivity contracts the fresh affine quotient to the
endpoint mass

\[
M_0^{fresh}(t,x)=\int_J\widetilde Z^{fresh}(\sigma,t,x)\,d\sigma .
\]

The resulting target is

\[
\int_0^{T^*}H_w(t)\|M_0^{fresh}(t)\|_2^2\,dt
\le
{\eta\nu\over C}\int_0^{T^*}D_N(t)\,dt
+
C_*2^{-2\delta N}
+
R_{\rm legal}.
\tag{1}
\]

This is a real endpoint/AQK producer.  It is not the top-level Gold hinge.

## 2. Where endpoint mass sits

The paired-carrier audit already places endpoint/AQK inside the source-square
branch.  Endpoint mass is a way to pay the affine quotient in the DER/AQK route.
The same branch then folds into the selected source-square split:

\[
\texttt{FreshSameCarrierIdentity.A}
+
\texttt{FreshSelectedCoefficientOverrunPayment.A}.
\]

After the actual selected positive native carrier is identified, the bounded
coefficient branch is paid:

\[
\alpha_j^+\le K\nu r_j^{-2}
\quad\Longrightarrow\quad
\Pi_{j,K}^{bd}\le K T_{j-C_0}+Legal_j .
\]

The remaining product is the selected overrun source

\[
a_{j,K}^{fresh,over}(s)
=
C_{LP}r_j^{1/2}
\int_{\Omega_{j,K}^{fresh,over}(T+r_j^2s)}
|w_j|^2\alpha_j^+\,dx .
\tag{2}
\]

So the source-square branch still has the ordered form:

\[
\texttt{FreshSameCarrierIdentity.A}
\quad\text{then}\quad
\texttt{FreshOverrunSameCarrierTailUI.A}.
\tag{3}
\]

Endpoint mass does not bypass either part of (3).

## 3. Relation to the global selected-action producer

The parent-drop relay verifies the downstream consumer chain only after finite
global selected same-material action is produced.

The direct global producer is

\[
\texttt{FreshNativeRootUpperBound.A}
\]

or equivalently

\[
\texttt{CriticalFreshSourceTentCarleson.A / FreshSourceCriticalScaleMemoryBound.A}.
\]

In root form the needed estimate is

\[
\sum_{Q\subset P}\rho_Q^{fresh}
\le
C_N(u_0)\mathcal R(P)
+
R_{\rm legal}(P).
\tag{4}
\]

In selected-critical source form it is

\[
\sum_{Q\subset P}w(Q)\|F_Q\|_{\mathcal H_{raw}}^2
\le
C_N(u_0)\mathcal R(P)
+
R_{\rm legal}(P).
\tag{5}
\]

Raw Bessel packing does not imply (5), because the critical half-tail

\[
\|F_\ell\|_{\mathcal H_{raw}}^2={2^{-\ell}\over \ell+1}
\]

has finite raw mass and divergent selected-critical mass:

\[
\sum_\ell\|F_\ell\|_{\mathcal H_{raw}}^2<\infty,
\qquad
\sum_\ell2^\ell\|F_\ell\|_{\mathcal H_{raw}}^2=\infty .
\]

The source-square/overrun path is a branch route to the same selected-action
control, not a replacement for the global producer.

## 4. Correct authority surface

The current authority hierarchy is:

\[
\texttt{GlobalSamePacketFullClockFromOriginalData.A}
\]

requires finite global selected action.  That action may be produced by

\[
\texttt{FreshNativeRootUpperBound.A}
\quad\text{or}\quad
\texttt{CriticalFreshSourceTentCarleson.A}.
\]

On the source-square branch, the live ordered hinge is

\[
\texttt{FreshSameCarrierIdentityAndOverrunTailUI.A}.
\]

The endpoint-mass theorem

\[
\texttt{FreshPositiveAffineEndpointMassKill.A / FreshMuNCarlesonEndpointThreading.A}
\]

is only a subordinate AQK/source-square mechanism under that branch.

## 5. Current proof state

The silent-source zero-cost escape is already consumed by the source-origin
normal form and augmented parent-drop.  The parent-drop-to-\(H^s\) relay is
verified as a conditional consumer.

The Gold route is not closed.  The current source-square trajectory remains:

\[
\texttt{FreshSameCarrierIdentity.A}
\]

followed by

\[
\texttt{FreshOverrunSameCarrierTailUI.A}.
\]

Failure of the overrun tail UI is the selected terminal source-curve atom; it is
consumed by the CM Part/Field service theorem only after same-witness admission
and service certification.  That failure reading is not a forward-Gold payment.
