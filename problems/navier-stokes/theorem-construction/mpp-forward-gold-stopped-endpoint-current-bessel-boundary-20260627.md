---
theorem_id: forward-gold-stopped-endpoint-current-bessel-boundary-20260627
status: failed-directly-needs-common-hilbert-geometry-or-paid-angle-drift
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - StoppedEndpointCurrentBessel.A
  - OriginalHistoryEndpointCurrentQuadraticVariation.A
  - StoppedRoutedCurrentSquarePacking.A
  - CriticalFreshSourceTentCarleson.A
---

# Stopped endpoint-current Bessel boundary

## 1. Target

The endpoint-current route needs square packing for parent-subtracted current increments:

```math
\sum_{Q\subseteq Q_0}\|J^S_{fresh}(Q,Q')\|^2\mathcal R(Q)
\le C\mathcal R(Q_0)+C R_{legal}(Q_0).
\tag{1}
```

The cleanest possible proof is a Bessel/martingale-difference theorem: the increments are orthogonal or almost orthogonal in a parent-known stopped Hilbert geometry.

## 2. Bessel route

Let \(\mathcal H_Q\) be the parent-known stopped Hilbert space for endpoint-current increments. A Bessel proof would require

```math
J^S_{fresh}(Q,Q')\in \mathcal H_Q,
```

and for descendants \(Q_i\),

```math
\langle J^S_{fresh}(Q_i,Q_{i+1}),J^S_{fresh}(Q_j,Q_{j+1})\rangle_{\mathcal H}=0
\quad (i\ne j)
```

or a controlled almost-orthogonality estimate. Then `(1)` follows from root energy:

```math
\sum_i\|J_i\|_{\mathcal H}^2\le \|J_{root}\|_{\mathcal H}^2+C R_{legal}.
```

## 3. Direct obstruction

The current route has parent-subtracted increments, but not a common Hilbert geometry in which all descendants are orthogonal. Material frames, covectors, selectors, and endpoint charts can rotate across scales. Then

```math
\langle J_i,J_j\rangle_{\mathcal H}
```

is not even canonically defined unless the current is transported to a common parent-known geometry.

If one chooses the common geometry after seeing the descendant selected tail, the proof is circular. If one fixes the geometry at the parent, then angle drift and chart rotation must be paid.

Thus the Bessel estimate is not a formal consequence of parent subtraction.

## 4. Alternative finite-variation route

Instead of orthogonality, one could prove finite variation:

```math
\sum_Q \|J^S_{fresh}(Q,Q')\|\mathcal R(Q)^{1/2}\le C\mathcal R(Q_0)^{1/2}.
```

But this is stronger than needed and again requires a finite original-history variation ledger for commutator, covector, frame, turnstile, exchange, stop, and reset increments.

No such ledger is installed at this hinge.

## 5. Exact missing theorem pair

The Bessel route reduces to:

```text
CommonParentKnownHilbertGeometry.A
```

Statement:

All stopped endpoint-current increments can be transported into a parent-known Hilbert geometry before descendant selected-tail readout, with transport errors charged to material service, frame drift, reset, or legal terms.

and

```text
EndpointInnovationOrthogonalityOrPaidAngleDrift.A
```

Statement:

In that geometry, parent-subtracted endpoint-current increments are martingale/Bessel orthogonal, or every failure of orthogonality is paid by an installed angle-drift / exchange / service ledger:

```math
\sum_{i\ne j}|\langle J_i,J_j\rangle|
\le C(E_{top-ex}+S_{material}+Reset+R_{legal}).
```

## 6. Result

`StoppedEndpointCurrentBessel.A` does not close directly. The current square-packing proof requires new noncircular structure:

```math
\boxed{
\text{CommonParentKnownHilbertGeometry.A}
+
\text{EndpointInnovationOrthogonalityOrPaidAngleDrift.A}.
}
```

This is the current sharp lock for the endpoint-current route. Without a parent-known common geometry or paid angle drift, the stopped current increments can accumulate square mass without a Bessel bound.