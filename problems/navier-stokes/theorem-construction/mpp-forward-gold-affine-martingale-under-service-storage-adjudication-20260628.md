---
theorem_id: forward-gold-affine-martingale-under-service-storage-adjudication-20260628
status: route-adjudication-installed-affine-martingale-is-consumer-unless-root-service-storage-produced
created: 2026-06-28
problem: navier-stokes
route: forward-gold same-material service storage / affine transition martingale
logical_landing_node: BoundedBelowSameMaterialServiceStorage.A
adjudicates:
  - PredictableWeightedStoppedAffineTransitionMartingale.A
  - StoppedPredictableRootGeometryCompensator.A
  - BoundedBelowSameMaterialServiceStorage.A
  - PositiveCriticalTransferBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-transition-predictable-weight-martingale-lock-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-geometry-realization-unifies-affine-transition-martingale-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-below-same-material-service-storage-target-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-service-storage-equivalence-local-storage-no-go-20260628.md
completion_truth: partial-not-gold-closed
effect: >-
  Resolves the apparent conflict between the affine-transition martingale route
  and the current bounded-below service-storage hinge. The affine martingale
  package is a genuinely useful square-packing consumer after a predictable
  active weight and parent-fixed connection have been produced from original
  same-material history. It is circular as a Gold producer if the active weight
  is defined from the future selected tail or if the parent geometry is assumed
  rather than paid. The live producer remains the bounded-below same-material
  service storage / positive critical transfer bound.
---

# Affine martingale under service storage adjudication

Status: routing decision, not Gold closure.

`PredictableWeightedStoppedAffineTransitionMartingale.A` is the right theorem
language for the affine quotient survivor after the derivative-exact split. It
is not, by itself, the current Gold producer.

## 1. What the affine martingale theorem gives

The affine-lock surface asks for a stopped transition filtration, a predictable
active weight, parent affine spans, and a lifted decomposition

\[
\mathcal C_\theta[Z_e]=B_e+D_e+R_e,
\tag{1}
\]

with

\[
B_e=\Pi_{\mathcal P_{e^-}}\mathcal C_\theta[Z_e],
\qquad
D_e=(I-\Pi_{\mathcal P_{e^-}})\mathcal C_\theta[Z_e],
\tag{2}
\]

and

\[
D_e\perp\mathcal P_{e^-}
\quad
\text{in a predictable lifted weighted Hilbert geometry.}
\tag{3}
\]

After `(1)`--`(3)`, the Bessel consumer square-packs the innovations. The
predictable part routes to record/negative return, and the innovation part
routes to critical reset charge.

This is a real smaller square-function consumer than the full selected action
problem. It attacks the affine quotient survivor, not the whole MPP at once.

## 2. The noncircularity clause

The affine martingale theorem is noncircular only if the weight and parent
geometry are built before positive selected readout.

The root-geometry synthesis states this dependency explicitly:

```text
StoppedPredictableRootGeometryCompensator.A
  -> PredictableWeightedStoppedAffineTransitionMartingale.A
  -> StoppedAffineQuotientTransitionSquarePacking.A
  -> AffineQuotientTransitionPayment.A.
```

The root package is

\[
dA_P^{root}=dA_P^{wt}+dA_P^{conn},
\tag{4}
\]

paying active-weight upcrossing and parent-fixed connection drift from original
same-material history.

Thus the apparent theorem

```text
prove PredictableWeightedStoppedAffineTransitionMartingale.A
```

splits into two different statements:

1. consumer statement: once root service geometry is produced, the martingale
   split and Bessel packing are algebraic;
2. producer statement: construct the predictable active weight and parent-fixed
   connection from original history.

The consumer statement is installed as support. The producer statement is the
same live storage burden as `BoundedBelowSameMaterialServiceStorage.A`.

## 3. Circular version to reject

The circular version is:

\[
H_{e^-}
\quad\hbox{chosen from the future selected descendant tail}
\tag{5}
\]

or parent spans/transport maps assumed in a geometry whose connection drift has
not been paid.

Then orthogonality is true only after the selected tail has already supplied the
weight or geometry needed to prove it. That renames the future selected clock
and cannot produce Gold.

## 4. Relation to the service-storage target

The current storage target is

\[
d\mathcal A_P
+c_Nd\Omega_P^{fresh}
\le
dR_P^{legal}+dStop_P,
\qquad
\mathcal A_P\ge -C_N(u_0).
\tag{6}
\]

In the affine-transition coordinate, `(6)` is the statement that produces:

- the predictable active weight;
- the parent-fixed connection;
- the negative-return/record reservoir for \(B_e\);
- the reset/angle/collar reservoir for \(D_e\).

Once these are produced, `PredictableWeightedStoppedAffineTransitionMartingale.A`
is the correct square-function realization of the consumer side. Before they
are produced, it is not a smaller independent theorem.

## 5. Result

The route decision is:

```text
Do not replace BoundedBelowSameMaterialServiceStorage.A
with PredictableWeightedStoppedAffineTransitionMartingale.A.
```

The lawful use is:

```text
BoundedBelowSameMaterialServiceStorage.A
  / StoppedPredictableRootGeometryCompensator.A
    -> PredictableWeightedStoppedAffineTransitionMartingale.A
    -> AffineQuotientTransitionPayment.A.
```

This keeps the affine martingale route available as a sharp consumer while
preventing it from becoming another name for the missing storage producer.
