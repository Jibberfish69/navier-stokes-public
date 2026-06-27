---
theorem_id: forward-gold-silent-source-martingale-local-step-inclusion-20260627
status: included-as-local-selected-source-step-current-square-packing-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / routed current Carleson producer
audits_user_supplied_note:
  - silent elliptic kernel source-origin normal form
  - selected-density martingale square-function local step
support_closed:
  - SilentKernelSourceOriginNormalForm.A
  - AugmentedParentDropAfterSilentSource.A
feeds:
  - RoutedSelectedSourceDivergenceForm.A
  - StoppedRoutedParticipationCurrentCarleson.A
  - SelectedDensityMartingaleSquareFunctionCarleson.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-origin-normal-form-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-augmented-parent-drop-silent-source-relay-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-origin-normal-form-support-current-live-edge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-accretive-testing-current-factorization-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-routed-participation-current-carleson-direct-test-20260627.md
---

# Silent source martingale local step: inclusion audit

## 1. User-supplied theorem shape

The supplied theorem is the correct replacement for Schur-only observability.
Boundary-flat elliptic sources exist:

```math
f=\mathcal L_Aw,
\qquad
w|_{\partial A_Q}=0,
\qquad
\partial_{\nu_A}w|_{\partial A_Q}=0.
\tag{1}
```

So the proof must not assert that the parent boundary Schur trace sees every
interior pressure-Hodge source.  The installed source-origin theorem says the
silent kernel has no zero-cost selected component:

```math
\mathcal K_Q^{\rm sil}
\cap
\mathcal C_Q^{\rm sel}
\cap
\ker
\left(
\mathcal E_Q^{\rm top\text{-}ex}
+\mathcal S_Q^{\rm mat}
+R_Q^{\rm legal}
\right)
=\{0\}.
\tag{2}
```

Equivalently, a silent elliptic source is either unselected
gauge/constraint material, or its selected reading is paid by the same-material
top-strain exchange, material service, viscous/radius service, or legal exit:

```math
A_{\rm sel}(f_Q^{\rm sil})
\le
C\mathcal E_Q^{\rm top\text{-}ex}
+C\mathcal S_Q^{\rm mat}
+C D_Q^{\rm vis/rad}
+C R_Q^{\rm legal}.
\tag{3}
```

This is already present in
`mpp-forward-gold-silent-interior-source-origin-normal-form-closure-20260627.md`
and consumed by the augmented parent-drop relay.

## 2. Effect on routed source factorization

For the current stopped source route, the selected source must be built before
scalar positive selection:

```math
\nu^S
=
D_AJ^S+\nu^S_{\rm stop}+\nu^S_{\rm legal}.
\tag{4}
```

The pasted theorem fixes the silent part of this normal form.  The current is
not just the visible Schur current.  It must decompose as

```math
J^S
=
J_{\rm vis}^S
+J_{\rm sil/ex}^S
+J_{\rm reset}^S
+J_{\rm collar}^S
+J_{\rm legal}^S,
\tag{5}
```

where the silent/exchange term is included exactly because boundary-flat
pressure-Hodge material can be invisible to Schur but cannot be a free selected
carrier.  Therefore the silent source is not a residual after the current
factorization.  It is a routed current component or an unselected gauge piece.

## 3. Local martingale step

On a parent-child packet, decompose the selected source into pressure-visible
and silent pieces.  The visible part is controlled by the Schur defect; the
silent selected part is controlled by `(3)`.  Hence the local selected-density
jump estimate is

```math
|\Delta_Q\rho_{\rm sel}|^2\,\mu(Q)
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
+C\mathcal E_Q^{\rm top\text{-}ex}
+C\mathcal S_Q^{\rm mat}
+C D_Q^{\rm vis/rad}
+C R_Q^{\rm legal}.
\tag{6}
```

This is the local step needed by
`SelectedDensityMartingaleSquareFunctionCarleson.A`.  It removes the false
boundary-observability obstruction and rules out a zero-cost selected silent
child.

## 4. What this does not prove

Summing `(6)` over a retained laminar tree gives only

```math
\sum_{Q\subseteq Q_0}
|\Delta_Q\rho_{\rm sel}|^2\,\mu(Q)
\le
C B_{\rm Schur}(Q_0)
+C\sum_{Q\subseteq Q_0}\mathcal E_Q^{\rm top\text{-}ex}
+C\sum_{Q\subseteq Q_0}\mathcal S_Q^{\rm mat}
+C\sum_{Q\subseteq Q_0}D_Q^{\rm vis/rad}
+C R_{\rm legal}(Q_0).
\tag{7}
```

Thus the supplied theorem closes the local source-classification and local
martingale-jump estimate.  It does not by itself prove the global root packing
of the exchange/material-service terms.

In the current routed-current formulation, that global packing is exactly the
remaining square-packing theorem:

```text
StoppedRoutedCurrentSquarePacking.A
```

plus its two exposed branch-payment inputs:

```text
StoppedReturnBVFiniteFromOriginalData.A
CriticalWeightedResetBVFromOriginalHistory.A.
```

## 5. Live placement

The correct live placement is:

```math
\text{Silent-source origin normal form}
\Rightarrow
\text{local selected-density jump estimate}
\Rightarrow
\text{routed visible/silent/exchange current factorization support}.
\tag{8}
```

The open Gold producer remains:

```math
\text{StoppedRoutedCurrentSquarePacking.A}
\quad
\text{with return/reset branch defects paid from original history}.
\tag{9}
```

So the pasted theorem is included as closed support for
`RoutedSelectedSourceDivergenceForm.A`; it should not be reopened as pressure
observability, and it should not be reported as full smoothness closure.
