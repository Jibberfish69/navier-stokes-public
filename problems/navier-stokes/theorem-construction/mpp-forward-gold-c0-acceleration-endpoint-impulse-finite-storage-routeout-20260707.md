---
theorem_id: forward-gold-c0-acceleration-endpoint-impulse-finite-storage-routeout-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / selector-force / acceleration endpoint impulse
status: positive-sublemma-fixed-chart-endpoint-impulse-is-finite-storage-routeout-not-bill-currency
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
target_object:
  - AccelerationEndpointImpulseFiniteStorageRouteOut.A
  - AccelerationEndpointImpulseOrFrameVariationBillOrRouteOut.A
  - SelectorForceBalanceLegBillCurrency.A
  - SameEdgeTerminalTailUIBillCurrency.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-selector-force-balance-leg-bill-currency-audit-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-selector-force-hminusone-floor-to-bill-currency-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-acceleration-impulse-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-moving-frame-variation-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-moving-driver-pre-readout-jordan-orientation-sublemma-20260707.md
completion_truth: >-
  Positive sublemma, not c_0 closure. The acceleration endpoint branch is not
  retained B-currency, but on one fixed retained affine chart its sign-coherent
  endpoint impulse is finite storage. For maximal same-sign selected
  acceleration threads, the service is the positive increase of the bounded
  coordinate I(t)=<v(t),Psi_A>. Therefore total same-chart endpoint service is
  bounded by endpoint coordinate range plus the negative return variation
  needed to reset the coordinate. Repeated or unbounded selected acceleration
  service must spend frame/chart variation, negative return/record-reset
  variation, legal/stop terms, or route to a typed endpoint face. The remaining
  open part is admission of those reset/frame/endpoint currencies into the
  same-edge retained bill or route-out before readout. This narrows the
  acceleration leg but does not prove SelectorForceBalanceLegBillCurrency.A,
  ParentOwnedPositiveRecordBillCurrency.A, epsilon_* > 0, or c_0.
---

# Acceleration endpoint impulse finite-storage route-out

## 1. Fixed-chart acceleration coordinate

Use the fixed localized affine test from the selector-force floor:

```math
\Psi_A(x)=A(x-X)\quad\hbox{on the selected ball},
\qquad \operatorname{div}\Psi_A=0.
\tag{AEI.1}
```

On the acceleration-carrier branch the existing identity is

```math
M_A(T)(t)={d\over dt}\langle v(t),\Psi_A\rangle.
\tag{AEI.2}
```

Set

```math
I_A(t):=\langle v(t),\Psi_A\rangle.
\tag{AEI.3}
```

The energy bound gives a fixed coordinate range on the retained chart:

```math
|I_A(t)|
\le
\|v(t)\|_2\|\Psi_A\|_2
\le
C_E |A|D^{5/2}.
\tag{AEI.4}
```

Thus acceleration service in this branch is not an invisible square bill. It is
motion of one bounded endpoint coordinate.

## 2. Same-sign threads spend finite endpoint storage

Let \(\{J_k=(a_k,b_k)\}\) be disjoint stopped subintervals on which the selected
acceleration service is sign-coherent in this fixed chart:

```math
M_A(T)(t)\ge0\quad\hbox{on each }J_k.
\tag{AEI.5}
```

Then `(AEI.2)' gives

```math
\int_{J_k}M_A(T)(t)\,dt=I_A(b_k)-I_A(a_k).
\tag{AEI.6}
```

For a collection of such intervals,

```math
\sum_k\int_{J_k}M_A(T)(t)\,dt
\le
2C_E |A|D^{5/2}
+
\operatorname{Var}^{-}_{\cup J_k}(I_A),
\tag{AEI.7}
```

where \(\operatorname{Var}^{-}\) is the total negative variation of \(I_A\) on
the gaps and reset pieces between positive threads.

Proof. The first positive thread can start from no less than
\(-C_E|A|D^{5/2}\), and the last can end no higher than
\(C_E|A|D^{5/2}\). Every additional positive rise after that requires an
intervening negative return of the same coordinate. Summing the rises gives
endpoint range plus negative return variation.

## 3. Route-out meaning

Consequently a fixed-chart acceleration endpoint thread has only three lawful
statuses before positive readout:

```math
\begin{array}{ll}
\text{finite endpoint storage:} & \text{the service is charged to the bounded range of }I_A,\\[1mm]
\text{return/reset variation:} & \text{the coordinate is lowered before another positive thread},\\[1mm]
\text{chart/frame motion:} & \text{the selected affine coordinate changes and enters }\partial_t\Psi.
\end{array}
\tag{AEI.8}
```

The moving-frame source already prices the third branch by

```math
M_A(T)
 =
{d\over dt}\langle v,\Psi(t)\rangle
-
\langle v,\partial_t\Psi(t)\rangle.
\tag{AEI.9}
```

Thus the acceleration endpoint branch is sharpened to the following sublemma:

```math
\boxed{
\texttt{AccelerationEndpointImpulseFiniteStorageRouteOut.A}
}
\tag{AEI.10}
```

On a fixed retained affine chart, sign-coherent acceleration endpoint service is
finite endpoint storage plus negative return variation. Any attempt to repeat
the service without finite storage exhaustion forces return/reset variation,
moving-frame variation, legal/stop terms, or an endpoint-face route-out.

## 4. What remains open

This does not prove the retained bill estimate

```math
\int\|\mathbb P\operatorname{div}T_m(s)\|_{\dot H^{-1}}^2\,ds
\le C B_m+Legal_m+Stop_m+RouteOut_m+o_m(1).
\tag{AEI.11}
```

The endpoint coordinate range in `(AEI.4)' is an additive finite storage/route
currency, not the retained

```math
B=dE^{Field}+dA_{4B}+dVisc
\tag{AEI.12}
```

bill. The negative return variation and frame variation still have to be
admitted to the same parent edge, charged, or routed out before selected
positive readout. In current c0 language, this remaining admission is part of

```math
\texttt{SelectorForceBalanceLegBillCurrency.A}
\quad\hbox{and}\quad
\texttt{SameEdgeTerminalTailUIBillCurrency.A}.
\tag{AEI.13}
```

So the acceleration branch has been narrowed: the pure endpoint impulse is a
finite fixed-chart storage route-out, while infinite terminal-pulse behavior
must hide in reset/frame variation or in failure of same-edge admission. It is
not yet a proof of \(c_0\).
