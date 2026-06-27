---
theorem_id: forward-gold-fixed-stopped-score-return-bv-closure-20260627
status: fixed-stopped-score-return-bv-closed-relative-to-parent-known-selector-and-root-geometry-currency
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped affine quotient branch payment
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
closes_branch:
  - StoppedPrimitivePLSNoFreeOscillation.A
  - StoppedReturnBVFiniteFromOriginalData.A
  - StoppedNegativeScaleReturnCharge.A
  - RepeatedCoreRecordReturnStorageBound.A
uses_currency:
  - fixed stopped parent-known selector channel
  - stopped routed carrier derivative
  - selector/frame/connection motion
  - StoppedPredictableRootGeometryCompensator.A root active weight
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-signed-scale-potential-lift-derivative-control-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-selected-primitive-alignment-stopped-selector-cone-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fixed-core-scale-potential-derivative-bv-route-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-fixed-connection-angle-drift-compensator-20260627.md
effect: >-
  Closes the primitive repeated-core return/BV branch by making the primitive
  record a fixed stopped score P_R = Gamma_R Z^S. Selected action is positive
  variation of that pre-existing score, and the score's total variation is paid
  by the same stopped routed carrier derivative plus selector/frame/connection
  motion already demanded by the root-geometry current currency. This does not
  close Gold; the live producer remains the root-geometry compactness/tightness
  theorem.
---

# Fixed stopped score return/BV closure

The primitive PLS return/BV branch closes once the primitive record is treated
as a fixed stopped score, not as a free scalar record.

The older bounded-oscillation objection was correct for an arbitrary scalar
sequence.  A scalar can move up and down forever inside a bounded range.  The
fixed stopped-core branch is different: the score is attached before the
selected transaction and its derivative is paid by the stopped rooted current
and connection ledgers.

Partial, not Gold closed.

## 1. Fixed stopped score

On a fixed stopped core, take the parent-known signed channel \(\Gamma_R\) and
the stopped routed carrier \(Z^S\).  Define

```math
P_R=\Gamma_R Z^S.
\tag{1}
```

Here \(\Gamma_R\) is fixed by the parent-known stopped selector cone, covector,
orientation, order-lock, and frame data.  It is not chosen from the future
selected tail.

## 2. Selected action is positive score variation

For every retained unpaid fixed-core selected transaction
\(e:Q_k\to Q_{k+1}\), the stopped selector cone gives

```math
A_{\rm sel}(e)
\lesssim
\left[\Gamma_R\left(Z^S(Q_{k+1})-Z^S(Q_k)\right)\right]_+
+R_{\rm legal}.
\tag{2}
```

Using `(1)`,

```math
\left[\Gamma_R\left(Z^S(Q_{k+1})-Z^S(Q_k)\right)\right]_+
=
\left[P_R(Q_{k+1})-P_R(Q_k)\right]_+.
\tag{3}
```

So selected action on the fixed stopped core is positive variation of a
pre-existing stopped score:

```math
A_{\rm sel}(e)
\lesssim
\left[P_R(Q_{k+1})-P_R(Q_k)\right]_+
+R_{\rm legal}.
\tag{4}
```

This is the noncircular point: \(P_R\) exists before the selected tail is read.

## 3. Return/BV payment from the same score

The score is absolutely continuous along the stopped material/log-scale history:

```math
\partial_\sigma P_R
=
\Gamma_R(\partial_\sigma Z^S)
+(\partial_\sigma\Gamma_R)Z^S.
\tag{5}
```

The first term is the routed carrier derivative.  The second term is not a free
new error; it is exactly selector/frame/connection motion: turnstile, exchange,
covector, order-lock, and parent-fixed connection drift.

With the root active weight already demanded by
`StoppedPredictableRootGeometryCompensator.A`, `(5)` gives

```math
{\rm Var}(P_R)
\lesssim
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z^S|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
+|\operatorname{conn}_\sigma|^2
\right)
+R_{\rm legal}.
\tag{6}
```

Therefore

```math
{\rm Var}^{-}(P_R)
\le
{\rm Var}(P_R)
\le
C_N(u_0)+R_{\rm legal},
\tag{7}
```

relative to the fixed stopped parent-known selector and the root-geometry
current currency already isolated upstream.

## 4. The oscillating scalar counterexample is killed

The old obstruction was:

```math
P_k=(-1)^k.
\tag{8}
```

That obstruction applies to a free scalar record.  It does not apply to
`(1)`.  This stopped score can oscillate only by spending the original-history
derivative/current/connection variation in `(6)`.

Consequently the repeated-core branch has the required negative variation
bound:

```math
\sum_k [P_R(Q_k)-P_R(Q_{k+1})]_+
\le
C_N(u_0)+R_{\rm legal}.
\tag{9}
```

This is `StoppedReturnBVFiniteFromOriginalData.A` for the fixed stopped-score
branch.

## 5. Orthogonal increment pressure test

An increment orthogonal to \(\Gamma_R\) is not a retained fixed-core selected
transaction.  It has one of the following outcomes:

```text
exits the stopped selector cone;
changes selector/order-lock;
is paid by legal, donor, or reselection loss;
is paid by selector/frame/connection drift.
```

Thus no selected action is hidden in the orthogonal kernel of the score.  The
only unpaid fixed-core selected increments are those seen by the parent-known
channel and therefore controlled by `(4)`.

## 6. Result

The primitive return/BV branch is closed relative to the fixed stopped
parent-known selector and the root-geometry current currency:

```text
FixedStoppedScore P_R = Gamma_R Z^S
  + StoppedSelectorConeAperture.A
  + root-weighted routed derivative / connection BV
  -> StoppedReturnBVFiniteFromOriginalData.A
  -> RepeatedCoreRecordReturnStorageBound.A.
```

This removes the repeated-core return/BV branch from the live Gold wall.  It
does not close Gold by itself, because the root active weight and parent-fixed
connection currency are still produced by
`StoppedPredictableRootGeometryCompensator.A`, now sharpened to
`RootDefectCarrierStableCompactness.A`.
