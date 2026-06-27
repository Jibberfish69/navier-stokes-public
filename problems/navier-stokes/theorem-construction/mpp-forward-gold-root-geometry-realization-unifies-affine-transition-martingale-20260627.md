---
theorem_id: forward-gold-root-geometry-realization-unifies-affine-transition-martingale-20260627
status: consumer-unification-installed-root-geometry-producer-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped root geometry
attacks_hinge:
  - StoppedPredictableRootGeometryCompensator.A
  - PredictableWeightedStoppedAffineTransitionMartingale.A
  - PredictableRootWeightMartingaleRealization.A
  - StoppedAffineTransitionLiftedMartingaleDifference.A
refines:
  - StoppedPredictableActiveWeightCompensator.A
  - ParentFixedConnectionAngleDriftCompensator.A
  - StoppedAffineQuotientTransitionSquarePacking.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-fixed-connection-angle-drift-compensator-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-active-weight-compensator-from-scale-memory-storage-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-lifted-transition-bessel-consumer-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-transition-predictable-weight-martingale-lock-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-affine-quotient-transition-square-packing-direct-attack-20260627.md
effect: >-
  Identifies the affine-transition martingale package as the consumer form of
  the stopped predictable root-geometry compensator. Once the root active
  weight and parent-fixed connection are produced from original same-material
  history, the lifted martingale split and Bessel square-packing are algebraic
  consumers. The remaining producer is the original-history Carleson bound for
  the root geometry itself; affine quotient localization is not a separate
  live producer after that realization is installed.
---

# Root geometry realization unifies affine transition martingale

The current Gold edge has two nearby names:

```text
StoppedPredictableRootGeometryCompensator.A
```

and

```text
PredictableWeightedStoppedAffineTransitionMartingale.A.
```

They are not two independent routes. The second is the consumer form of the
first.

## 1. Root geometry data

For a stopped root \(P\), the root geometry compensator is the package

```math
dA_P^{root}=dA_P^{wt}+dA_P^{conn}.
\tag{1}
```

Here \(dA_P^{wt}\) pays new admitted active-weight upcrossings, and
\(dA_P^{conn}\) pays the parent-fixed connection: frame, covector, selector,
collar, endpoint chart, turnstile, and legal drift.

The target estimate is

```math
\int_{\operatorname{Hist}(P')}dA_{P'}^{root}
+
\sum_{e\subset P'}
\int H_{e^-}\|D_e^{vis}+D_e^{sil}+D_e^{ex}\|_{\mathcal H_{\rm lift}}^2
\le
C_N(u_0)\mathcal R(P')
+R_{\rm legal}(P')
+Stop(P').
\tag{2}
```

This is the actual producer. It must be built from original stopped material
history before selected descendant readout.

## 2. Consumer geometry

Once `(2)` is available, the root Hilbert space is fixed:

```math
\mathfrak H_P
=
L^2(H_P^\ast\,dt\,dx;\mathcal H_{\rm lift}),
\qquad
\mathcal H_{\rm lift}
=
\mathcal H_{\rm vis}\oplus\mathcal H_{\rm sil}\oplus\mathcal H_{\rm ex}.
\tag{3}
```

The parent-fixed connection transports all stopped affine transition pieces
into this one parent geometry:

```math
\widetilde Z_e
=
\mathsf U^P_{e\to P}\mathcal C_\theta[Z_e].
\tag{4}
```

The transport is legal only because \(dA_P^{conn}\) is already on the root
geometry ledger. Without that ledger, the parent-fixed Bessel argument has an
unpaid angle-drift term.

## 3. Martingale split is algebraic after root geometry

In \(\mathfrak H_P\), define the parent affine span \(\mathcal P_{e^-}\) from
the stopped parent history: inherited affine transport, frozen silent modes,
old exchange/covector motion, earlier announced transition pieces, and legal
carrier data.

Then the split

```math
\widetilde Z_e=B_e+D_e+R_e
\tag{5}
```

is just orthogonal projection:

```math
B_e=\Pi_{\mathcal P_{e^-}}\widetilde Z_e,
\qquad
D_e=(I-\Pi_{\mathcal P_{e^-}})\widetilde Z_e.
\tag{6}
```

Thus

```math
D_e\perp \mathcal P_{e^-}
\tag{7}
```

before scalar positive selected readout. The legal residual satisfies

```math
\sum_e\|R_e\|_{\mathfrak H_P}^2
\le
R_{\rm legal}(P)+Stop(P).
\tag{8}
```

So `StoppedAffineTransitionLiftedMartingaleDifference.A` is not an extra
producer after root geometry exists. It is the projection language of the same
root geometry.

## 4. Bessel consumer

The already installed Bessel consumer gives

```math
\left\|\sum_eD_e\right\|_{\mathfrak H_P}^2
\le
C\sum_e\|D_e\|_{\mathfrak H_P}^2
+R_{\rm legal}(P)
+C\int dA_P^{conn}.
\tag{9}
```

The connection term appears because pairwise orthogonality in moving child
geometries becomes parent-fixed orthogonality only after the angle-drift ledger
is paid.

Combining `(2)` and `(9)` gives the square-packing part of the affine quotient
transition theorem.

## 5. Branch routing after the split

The predictable part does not go to Bessel:

```math
\sum_eB_e
\leadsto
\operatorname{Rec}_\infty(\Psi)+V_-^{return}(\Psi)+R_{\rm legal}.
\tag{10}
```

The innovation part routes to critical reset:

```math
\sum_e\|D_e\|_{\mathfrak H_P}^2
\leadsto
\sum_{Q\to Q'}J_{\rm crit}(Q\to Q')+R_{\rm legal}.
\tag{11}
```

Those branch payments remain real support gates. They are consumers after the
root geometry has made the transition expansion square-packable.

## 6. Resulting dependency

The correct dependency is therefore:

```text
StoppedPredictableRootGeometryCompensator.A
  -> PredictableWeightedStoppedAffineTransitionMartingale.A
  -> StoppedAffineQuotientTransitionSquarePacking.A
  -> AffineQuotientTransitionPayment.A.
```

Expanded:

```text
StoppedPredictableRootGeometryCompensator.A
  =
StoppedPredictableActiveWeightCompensator.A
+ ParentFixedConnectionAngleDriftCompensator.A.
```

The affine quotient localization and martingale language should no longer
float as an independent frontier beside root geometry. It is the same proof
viewed after the parent-known weight and connection have been realized.

## 7. Remaining open producer

The open theorem is still the root geometry estimate `(2)`. It has exactly two
non-support bad profiles:

```math
\sum_\ell\|D_\ell\|^2<\infty,
\qquad
\sum_\ell H_\ell\|D_\ell\|^2=\infty
\tag{12}
```

for active-weight upcrossing, and

```math
\sum_e\|D_e\|^2<\infty,
\qquad
\sum_{e<f}
|\langle\widetilde D_e,\widetilde D_f\rangle_{\mathfrak H_P}|=\infty
\tag{13}
```

for parent-fixed angle drift.

The route closes this layer only by constructing \(dA_P^{wt}\) and
\(dA_P^{conn}\) from original same-material history. Bessel, affine quotient
localization, selected-density martingale estimates, and endpoint readouts are
downstream consumers of that root geometry.
