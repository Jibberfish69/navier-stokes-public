---
theorem_id: forward-gold-silent-source-fork-to-root-reserve-live-edge-audit-20260627
status: silent-source-fork-included-consumer-installed-live-edge-is-selected-compression-root-reserve
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped visible-silent-exchange root reserve
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
includes_user_idea: silent interior source direct attack / source-origin normal form
audits_hinge:
  - SilentKernelSourceOriginNormalForm.A
  - AugmentedStoppedParentDrop.A
  - SelectorStratumCrossingVariationBound.A
  - StochasticExponentialSelectedDensityHilbertBMO.A
  - StoppedSourceCarrierAndPaidReselection.A
  - StoppedFullExchangeActionCarleson.A
  - SelectedCompressionRootReserve.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-origin-fork-to-strict-half-barrier-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-readout-root-bound-merge-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-source-carrier-production-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-visible-silent-exchange-root-reserve-direct-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-reselection-root-reserve-convergence-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stochastic-exponential-selected-density-hilbert-bmo-lemma-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stratum-crossing-bv-closure-20260627.md
---

# Silent source fork to root-reserve live edge audit

The useful pressure point is the silent interior source itself.

The parent Schur trace is not supposed to see every child source.  A boundary
flat source

```math
f=L_Aw,
\qquad
w|_{\partial Q}=0,
\qquad
\partial_{\nu_A}w|_{\partial Q}=0
```

can be invisible to the parent boundary.  The valid question is whether that
boundary-flat source can also be a retained selected pressure-Hodge carrier at
zero same-material cost.

The installed source-origin fork says no.  A boundary-flat source has only two
roles:

1. it is projected pressure-gauge / hidden-potential material, and then it is
   unselected;
2. it is genuinely selected, and then it appears through the strain-Hessian
   / complete-frame exchange channel, so it is charged by same-material
   top-strain exchange, viscous/radius loss, or legal residual.

Thus the corrected zero-cost rigidity statement is

```math
\ker(\text{parent Schur trace})
\cap
\{\text{retained selected pressure-Hodge carriers}\}
\cap
\{\text{zero same-material strain/exchange charge}\}
=
\{0\}.
```

This closes the invisible-child escape in the only form that elliptic theory
allows.  It does not prove the global selected tail bound by itself.

## Merged current edge

After the silent-source fork and the selector-stratum BV/coarea closure, the
stopped source-carrier route has no independent reselection theorem left.  The
martingale/Hilbert step is a consumer:

```math
\text{stopped root square function}
+
\text{paid stopped errors}
\Longrightarrow
\rho_{\rm sel}\in RH_{1+\varepsilon}
\Longrightarrow
\text{strict first-ratio gain}.
```

The producer is the stopped original-history root reserve.

The live estimate is

```math
\sum_{S\subseteq P}
\bigl(
\Omega_S^{strain/ex}
+D_S^{vis/rad}
\bigr)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
```

Equivalently, in the selected compression coordinates,

```math
\sum_{Q\in\mathcal T(P)}
\Bigl(
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal S_{\rm normal}(Q)
+\mathcal S_{\rm covector}(Q)
+\mathcal B_{\rm select}(Q)
+\Omega_Q^{strain/ex}
+D_Q^{vis/rad}
\Bigr)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
```

That is `SelectedCompressionRootReserve.A`, also recorded as
`StoppedFullExchangeActionCarleson.A`.

## What is now closed

The silent-source zero-cost escape is closed as a source-origin fork.  The
visible quotient is paid by the Schur/DtN currency.  The selected silent part
is paid by strain/exchange.  Selector-stratum crossing is paid relative to the
same full exchange action.  The stochastic-exponential Hilbert/BMO step is
installed as a consumer once the stopped square-function and paid errors are
available.

## What remains

The remaining mathematical wall is not boundary observability, not pressure
faithfulness, not reselection as a separate branch, and not the martingale
consumer.  It is the original-history weighted root reserve:

```math
\sum_{Q\in\mathcal T_{\rm sel}}A(Q)<\infty
```

with \(A(Q)\) carrying the selected first-ratio / top-strain-log exchange
action and with the reserve finite from the original smooth material history,
not from the future selected descendant tail.

The forbidden fourth branch is:

```math
\text{unpaid selected high-ratio upward birth attached to source channels but
not packable into finite original-history root reserve.}
```

Closing Gold now means proving that this fourth branch is impossible.
