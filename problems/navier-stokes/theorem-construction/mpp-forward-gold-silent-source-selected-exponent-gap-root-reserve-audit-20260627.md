---
theorem_id: forward-gold-silent-source-selected-exponent-gap-root-reserve-audit-20260627
status: silent-source-fork-closed-selected-root-reserve-remains-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / root reserve
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
uses:
  - SilentKernelSourceOriginNormalForm.A
  - BoundaryFlatSelectedCarrierExchangeCharge.A
  - SelectorStratumCrossingVariationBound.A
  - StoppedFullExchangeActionCarleson.A
audits_hinge:
  - NativeBirthChargePacking.A
  - ForwardNativeReserveBirthPaysFullPLS.A
  - SelectedCompressionRootReserve.A
  - WeightBeatingTailLaw.A
  - SelectedReserveAbsoluteContinuityExponentLift.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-to-stopped-compensator-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-origin-normal-form-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stratum-crossing-bv-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-full-exchange-native-reserve-pivot-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-forward-native-reserve-birth-packing-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-reused-core-raw-volume-bound-selected-exponent-gap-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-laminar-dual-bellman-mincut-reserve-target-20260626.md
---

# Silent-source closure and selected root-reserve audit

The silent interior source fork is closed at the local source-origin level.
Boundary-flat pressure-Hodge sources can be invisible to the parent Schur trace,
so Schur-only observability is the wrong theorem.  The correct split is:

```math
f=\mathcal L_Aw,
\qquad
w|_{\partial Q}=\partial_{\nu_A}w|_{\partial Q}=0.
```

As a projected material pressure force,

```math
\mathbb P_A\mathcal G_Aw=0,
```

so this part is constraint/gauge material and is not selected velocity
activity.  If the same silent potential is genuinely selected, it is selected
through the material strain-Hessian reading:

```math
\left[-e\cdot\nabla_A^2w\,e\right]_+
\le
\left[D_t(e\cdot Se)\right]_+
+|S|^2
+|\Omega e|^2
+\nu|\Delta_A S|
+|\mathcal C_A^{legal}|.
```

Thus the selected silent branch is paid locally by top-strain exchange,
complete-frame strain/vorticity service, viscous/radius service, and legal
collar/coefficient residue.  The local invisible-child escape is gone.

## What this does not prove

The source-origin split does not prove selected root summability.  It removes
the silent-kernel loophole from the local parent-drop argument, but the global
Gold wall is still the selected exponent gap:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
```

The raw original-history service bound is real:

```math
\int_{\Omega_a}\operatorname{Var}_{[0,T]}
\log |D_aX(a,t)\xi|\,da
<\infty.
```

It is not the selected reserve.  A heat-scale selected packet with radius \(r\)
has raw strain costs

```math
\int_{Q_r}|S|\,dxdt\simeq r^3,
\qquad
\int_{Q_r}|S|^2\,dxdt\simeq r,
```

while the selected critical action is scale invariant:

```math
\int_{Q_r}|S|^{5/2}\,dxdt\simeq 1.
```

So a terminal selected family can have finite raw material cost and infinite
selected first-ratio action.  The missing theorem is a selected measure-change
or native reserve theorem, not another raw deformation estimate.

## Correct current hinge

The live hinge is:

```text
NativeBirthChargePacking.A
```

This is the proof-bearing core of:

```text
ForwardNativeReserveBirthPaysFullPLS.A
```

equivalently:

```text
SelectedCompressionRootReserve.A
WeightBeatingTailLaw.A
SelectedReserveAbsoluteContinuityExponentLift.A
```

The required content is a forward-native, nonfuture reserve and spent-reserve
ledger:

```math
d\mathfrak R_N^{nat}
+d\mathfrak L_N
+c\,d\Omega_N^{full}
\le
dR_N,
\qquad
\mathfrak R_N^{nat}\ge0,
\qquad
\mathfrak L_N\ge-C_N(u_0),
\qquad
\int_0^{T^*}dR_N<\infty.
```

The sharpened form is a bounded-multiplicity charge map.  After lower-band
carry, entrance/legal, nonlaminar, selector/order-lock, and already-paid
exchange defects are removed, each retained selected high-ratio birth atom
\(\gamma\) must map to a finite original-history native reserve atom:

```math
\iota:\Gamma_N(P)\to\mathcal R_N^{nat}(u_0;P),
\qquad
\omega_\gamma
\le
C_N\rho_{\iota(\gamma)}+R_{\rm legal}(\gamma),
\qquad
\operatorname{mult}(\iota)\le C_N.
```

with

```math
\sum_{\rho\in\mathcal R_N^{nat}(u_0;P)}\rho
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
```

Equivalently, every retained selected high-ratio child action must be one of:

1. lower-band carry consuming already-present native reserve;
2. visible same-history birth seen by annular stress, Hodge/projector motion,
   strain-frame compression, Schur normal pressure-collar defect, or entrance
   mass;
3. selector/order-lock, nonlaminar, entrance, or legal payment.

The forbidden fourth branch is:

```math
\text{unpaid selected high-ratio upward birth attached to source channels but not packable into finite root reserve.}
```

## Dual/Bellman status

The laminar dual Bellman/min-cut formulation is useful as a certificate
language, but it is not a smaller proof.  The corrected monotone dual class
must include the constant multiplier \(\alpha_Q\equiv1\), so it already tests
the whole selected action:

```math
\sum_{Q\in T}A(Q).
```

Thus

```text
LaminarAdjointStressTestEstimate.A
```

is equivalent to the selected root reserve unless it supplies a new PDE
mechanism for the forward-native reserve above.  It must not be reported as
closure by duality alone.

## Result

The source-origin theorem is the correct answer to the silent interior source
problem.  It does not close the MPP.  The nonduplicate Gold burden is the native
birth-packing theorem that supplies the selected root-reserve/exponent lift:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty,
```

or equivalently the forward-native no-free-upward-birth reserve.  Future loop
work should attack the bounded-multiplicity charge map directly and should not
reselect pure boundary observability, hidden-bubble Carleson, selector-stratum
crossing, raw Cauchy-Green material variation, source-channel attachment alone,
or Bellman duality by itself as the live hinge.
