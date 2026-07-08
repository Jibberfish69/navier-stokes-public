---
theorem_id: frontier-dissolution-loop-continuation-w8-original-data-first-ratio-descent-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop
status: w8-direct-descent-no-deletion
target_claim: W8 is already paid by original smooth data through raw same-parent support, no-recount, finite menu, or viscous heat thickness
open_walls:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A plus arbitrary-original-data admission into the retained branch
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
source_refs:
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wlf60-parent-weighted-first-admission-proof-pressure-test-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wlf60-same-carrier-identity-primitive-channel-boundary-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-wlf-odp-affine-transition-first-ratio-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-moving-driver-custody-first-ratio-source-split-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-finite-menu-norecount-not-first-ratio-payment-no-go-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-raw-event-space-not-parent-owned-bill-currency-no-go-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-viscous-thickness-square-not-first-ratio-no-go-20260707.md
---

# W8 direct descent: original-data first-ratio payment

Frontier opened: W3, W7, W8, W9.

Cross-wall failure sentence: W8 does not delete into W3, W7, or W9, because W8 is the original-data selected first-ratio payment on the order-locked full-packet carrier, while W3 is service persistence after payment, W7 is retained graph/admission closedness, and W9 is compact material-time certificate flow invariance after the payer/certificate rows are installed.

## Physical object

The object is one original Navier-Stokes parent packet before selected positive-part readout. Pressure and incompressibility create a same-parent heat-lag response; viscosity gives a quadratic heat-scale cost; the selected record read asks for a linear first-ratio bill on the same order-locked full-packet carrier.

W8 is the demand that this selected first-ratio bill is finite from original data:

```math
\mu_P^{pw}(P)
\le
C_N(u_0)\mathcal R(P)
+\theta\,Visc_{P,N}
+Paid_P,
\qquad 0<\theta<1.
```

The live issue is whether the installed support already proves this, or whether the support still permits the half-tail.

## Source check

The source frontier and live edge both state W8 as the isolated early-row face `WLF.60 / ODP.91`: finite parent-weighted selected first-admission pulse measure on the order-locked full-packet selected carrier, with same-packet order-lock overlap and selected-overrun tail payment.

The WLF.60 parent-weighted pressure test installs real support: same-parent detection, first-admission update, no-recount pushforward, raw first-admission Bessel measure, and local first-admission native atoms. It also gives the blocking countermodel. A parent Hilbert tail can have finite raw square/Bessel mass while the selected weighted linear bill diverges.

The finite-menu/no-recount no-go gives the same obstruction inside one parent-known retained edge. A finite menu gives custody, and no-recount pairs reversed throughput to earlier admitted throughput, but a fresh positive first-entry half-tail has no reversed unit to pair. The model

```math
\nu_\ell={2^{-\ell}\over \ell+1}
```

has finite raw/square support but infinite selected first-ratio read.

The raw-event-space no-go blocks the raw ownership shortcut. Raw same-fluid event ownership and fixed-event Jordan orientation can hold on every pulse, while the selected first-ratio read still diverges. Raw event ownership is support, not bill currency.

The viscous-thickness no-go blocks the physical square-to-linear shortcut. Viscosity and heat residence pay the pulse quadratically:

```math
\omega_\ell|\Delta_\ell|^2={2^{-\ell}\over(\ell+1)^2},
```

while W8 reads linearly:

```math
\omega_\ell|\Delta_\ell|={1\over \ell+1}.
```

The first series is summable and the second is not.

The WLF/ODP affine-transition reduction sharpens the lower row. The checked implication is conditional:

```math
\texttt{SelectedFirstRatioAffineTransitionReducer.A}
\Longrightarrow
\texttt{WLF.60/ODP.91}.
```

The reducer itself remains open. Its current noncircular producer is the predictable active-weight / stopped lifted affine-transition package plus persistent affine-quotient routing, lowered further to `PersistentAffineQuotientRecordReturnProducer.A` and then to `OriginalHistorySelectedPotentialAmplificationBV.A` / strict original-ledger generator storage / full-exchange critical depletion storage, or an equivalent direct original-data active/root theorem.

## Gate result

This descent sharpens W8 but does not delete it.

The checked sources rule out four shortcuts to W8: raw same-parent support, finite menu/no-recount, raw event ownership, and viscous heat-thickness square cost. Each shortcut permits the same half-tail shape: summable raw or square support with divergent selected first-ratio linear service.

No new frontier wall is admitted. The internal W8 proof obligation is now attackable in this form: prove the selected-linear route-measure payment on the actual order-locked full-packet carrier, equivalently prove `SelectedFirstRatioAffineTransitionReducer.A` / persistent affine-quotient record-return production from original history, with same-packet order-lock overlap and selected-overrun tail payment.

DELETED: none.
CERTIFICATE: W8 is not paid by raw same-parent support, finite menu/no-recount, raw event ownership, or viscous heat-thickness square cost; the half-tail `nu_l=2^-l/(l+1)` has finite raw/square support but infinite selected first-ratio linear read, so W8 remains the selected-linear route-measure / persistent-affine-quotient original-data payment on the actual order-locked full-packet carrier.
REMAINING: W3, W7, W8, W9.
