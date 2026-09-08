---
theorem_id: forward-gold-fixed-core-scale-potential-derivative-bv-route-20260627
status: conditional-fixed-core-return-reduced-to-scale-potential-derivative-bv
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / routed current square-packing
attacks_hinge:
  - StoppedPrimitivePLSSignedScalePotentialLift.A
  - StoppedPotentialRecordAverageBound.A
  - SignedStoppedPLSEvolutionIdentity.A
  - StoppedReturnBVFiniteFromOriginalData.A
  - StoppedRoutedCurrentSquarePacking.A
---

# Fixed stopped-core return gate: derivative BV route

## 1. Motivation

The earlier fixed-core route asked for a one-sided balance law

```math
D_tP_{\mathfrak R}=\mathcal P^+_{fresh}-\mathcal R_{return}+Err_{legal}.
```

That is strong and was not installed.  This note tests a weaker and cleaner
route: do not require a special production-minus-return law.  Instead, make the
primitive record a stopped absolutely continuous score and pay both upward and
downward variation by its original-history derivative.

## 2. Primitive stopped score hypothesis

For a fixed stopped record \(\mathfrak R\), suppose there is a primitive signed
scale potential

```math
P_{\mathfrak R}(\sigma,t,x)
```

with the following properties.

### Same-channel positive increment

For every fixed-core fresh selected transaction \(e=Q\to Q'\),

```math
A_{sel}(e)
\le C[P_{\mathfrak R}(Q')-P_{\mathfrak R}(Q)]_+ + CR_{legal}(Q).
\tag{1}
```

This is the signed-channel alignment already isolated earlier.

### Absolute continuity

Along the same material history,

```math
P_{\mathfrak R}(\sigma_1)-P_{\mathfrak R}(\sigma_0)
=\int_{\sigma_0}^{\sigma_1}\partial_\sigma P_{\mathfrak R}(\sigma)\,d\sigma.
\tag{2}
```

### Routed derivative domination

The derivative is controlled by the same original routed current pieces:

```math
|\partial_\sigma P_{\mathfrak R}|
\le
C\left(
|\partial_\sigma Z|
+|\operatorname{turnstile}_\sigma|
+|\operatorname{exchange}_\sigma|
+|\operatorname{covector}_\sigma|
\right)
+Err_{legal}.
\tag{3}
```

## 3. Variation payment

For a finite stopped-core chain,

```math
\sum_e A_{sel}(e)
\le C\sum_e[P_{\mathfrak R}(Q')-P_{\mathfrak R}(Q)]_+ + CR_{legal}.
\tag{4}
```

Positive variation is controlled by total variation:

```math
\sum_e[P_{\mathfrak R}(Q')-P_{\mathfrak R}(Q)]_+
\le Var(P_{\mathfrak R};\operatorname{Hist}(P)).
\tag{5}
```

Using absolute continuity,

```math
Var(P_{\mathfrak R};\operatorname{Hist}(P))
\le
\int_{\operatorname{Hist}(P)}
|\partial_\sigma P_{\mathfrak R}|\,d\sigma dt d\mu.
\tag{6}
```

Then `(3)` gives

```math
\sum_e A_{sel}(e)
\le
C\int_{\operatorname{Hist}(P)}
\left(
|\partial_\sigma Z|
+|\operatorname{turnstile}_\sigma|
+|\operatorname{exchange}_\sigma|
+|\operatorname{covector}_\sigma|
\right)
+CR_{legal}(P).
\tag{7}
```

If the route uses square-energy currency, apply Cauchy--Schwarz with the active
weight \(w\):

```math
\int_H |G|
\le
\left(\int_H w^{-1}\right)^{1/2}
\left(\int_H w|G|^2\right)^{1/2}.
\tag{8}
```

On stopped packets where \(\int_H w^{-1}\) is root-controlled, `(7)` becomes an
original-history BV/Carleson payment.

## 4. Why this avoids the old block

The old route needed a special decomposition into positive production and
negative return.  The derivative-BV route does not.  Downward moves of the
record are not separately interpreted; they are simply part of total variation,
paid by the same original derivative current.

This blocks the oscillating bounded-record counterexample: a bounded scalar can
oscillate infinitely only if its total variation is infinite.  Here total
variation is forced through `(6)`--`(8)` into an original-history derivative
ledger.

## 5. Exact remaining theorem

The remaining theorem is now sharper:

```text
StoppedPrimitiveSignedScalePotentialLiftWithDerivativeControl.A
```

Statement:

On a fixed stopped material core and signed selector channel, construct a
primitive scale potential \(P_{\mathfrak R}\) satisfying `(1)`, `(2)`, and `(3)`,
with the root control needed for `(8)`.

If this is proved, then fixed-core return is paid without installing a separate
one-sided PLS balance law.

## 6. Result

The fixed stopped-core branch is reduced to a constructive lift theorem:

```math
\boxed{
\text{signed primitive scale-potential lift}
+
\text{derivative domination by original routed current}
\Rightarrow
\text{fixed-core return BV finite}.}
```

This is a better target than `SignedStoppedPLSEvolutionIdentity.A` as previously
phrased.  The proof should now try to construct \(P_{\mathfrak R}\) as a stopped
signed score/primitive of the same routed current, rather than as an abstract
bookkeeping record.