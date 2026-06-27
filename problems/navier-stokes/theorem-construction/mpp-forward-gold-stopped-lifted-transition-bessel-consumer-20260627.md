---
theorem_id: forward-gold-stopped-lifted-transition-bessel-consumer-20260627
status: bessel-consumer-proved-predictable-realization-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / affine quotient transition payment
attacks_hinge:
  - StoppedAffineQuotientTransitionSquarePacking.A
  - PredictableWeightedStoppedAffineTransitionMartingale.A
  - StoppedLiftedTransitionBesselCarleson.A
refines_to:
  - PredictableRootWeightMartingaleRealization.A
  - StoppedAffineTransitionLiftedMartingaleDifference.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-scale-memory-storage-to-affine-quotient-transition-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-transition-predictable-weight-martingale-lock-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-affine-quotient-transition-square-packing-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-dynamic-silent-source-to-predictable-transition-innovation-20260627.md
effect: >-
  Proves the abstract Bessel/Pythagoras consumer under a common predictable
  root Hilbert geometry. This discharges only the consumer part of stopped
  affine quotient transition square-packing. It does not construct the
  predictable root weight, the parent affine spans, or the lifted martingale
  difference split from the Navier-Stokes material history.
---

# Stopped lifted transition Bessel consumer

The affine quotient wall is no longer the whole scale-memory storage theorem.
The lower-triangular split leaves one persistent affine scale quotient.  The
transition notes show that this quotient must be decomposed before positive
selected readout into inherited predictable pieces and fresh innovations.

This note proves the square-packing consumer once that decomposition is already
installed.

## 1. Common predictable root geometry

Let \(P\) be a retained stopped root.  Assume there is a parent-known measure

```math
d\nu_P(t,x)=H_P(t,x)\,dt\,dx
```

and a lifted same-packet Hilbert space

```math
\mathcal H_{\rm lift}
=
\mathcal H_{\rm vis}\oplus\mathcal H_{\rm sil}\oplus\mathcal H_{\rm ex}.
```

Set

```math
\mathfrak H_P
=
L^2(d\nu_P;\mathcal H_{\rm lift}).
```

The important point is that the geometry is fixed from the stopped parent
history before the scalar selected positive readout.  Edge-dependent weights
may appear only as parent-predictable bounded multipliers inside this one root
space.

## 2. Martingale-difference hypotheses

Let \(\mathscr E(P)\) be the stopped affine transition edges.  Assume each edge
has the decomposition

```math
\mathcal C_\theta[Z_e]=B_e+D_e+R_e
\tag{1}
```

in \(\mathfrak H_P\), where \(B_e\) is parent-predictable inherited affine
transport, \(D_e\) is the fresh lifted innovation, and \(R_e\) is legal.

Assume the fresh pieces satisfy the stopped martingale-difference condition:
for the stopped transition filtration \((\mathcal F_e)\),

```math
D_e\perp \mathcal P_{e^-},
\qquad
\mathcal P_{e^-}\supseteq
\overline{\operatorname{span}}\{D_{e'}:\ e'<e\}
\tag{2}
```

inside \(\mathfrak H_P\).  Equivalently, \(D_e\) is orthogonal to all
previously inherited parent affine information on the ancestry line.

For a tree, use the usual stopping-time linearization: order the edges by
stopped ancestry and split siblings by disjoint stopped regions.  Then `(2)`
implies pairwise orthogonality of the innovation family after legal overlap
errors are removed:

```math
\langle D_e,D_{e'}\rangle_{\mathfrak H_P}=0
\qquad(e\neq e')
\tag{3}
```

up to \(R_{\rm legal}(P)\).

## 3. Bessel consumer

By Pythagoras in \(\mathfrak H_P\),

```math
\left\|\sum_{e\in\mathscr E(P)}D_e\right\|_{\mathfrak H_P}^2
=
\sum_{e\in\mathscr E(P)}\|D_e\|_{\mathfrak H_P}^2
+R_{\rm legal}(P).
\tag{4}
```

Thus

```math
\left\|\sum_{e\in\mathscr E(P)}D_e\right\|_{\mathfrak H_P}^2
\le
C\sum_{e\in\mathscr E(P)}
\int H_{e^-}(t,x)\|D_e(t,x)\|_{\mathcal H_{\rm lift}}^2\,dt\,dx
+R_{\rm legal}(P),
\tag{5}
```

provided the parent-predictable edge weights are uniformly comparable to the
root measure on their stopped supports:

```math
C^{-1}H_P\le H_{e^-}\le C H_P.
\tag{6}
```

If the weights are not comparable, the same statement is valid after replacing
`\(\mathfrak H_P\)` by the direct-sum root space

```math
\bigoplus_{e\in\mathscr E(P)}
L^2(H_{e^-}dt\,dx;\mathcal H_{\rm lift})
```

only when the transition expansion map from the direct sum to the quotient
readout is a bounded martingale transform with parent-predictable coefficients.
That bounded transform clause is part of the realization theorem, not part of
Pythagoras.

Therefore the pure Bessel consumer is proved under a common predictable root
Hilbert geometry.

## 4. What this proves for the affine quotient

Assume the affine quotient transition expansion is

```math
c_F^{fresh}
=
\sum_{e\in\mathscr E(P)}B_e
+
\sum_{e\in\mathscr E(P)}D_e
+R_{\rm legal}.
\tag{7}
```

The innovation part is square-packed by `(5)`.  The inherited part is not
estimated by Bessel; it is routed to the repeated-core record/return branch:

```math
\sum_e B_e
\leadsto
\operatorname{Rec}_\infty(\Psi)+V_-^{return}(\Psi).
\tag{8}
```

The fresh innovation energy is routed to the reset branch:

```math
\sum_e\int H_{e^-}\|D_e\|^2
\leadsto
\sum_{Q\to Q'}J_{\rm crit}(Q\to Q').
\tag{9}
```

Thus the consumer chain is:

```text
Predictable root Hilbert geometry
+ lifted martingale-difference split
  -> StoppedLiftedTransitionBesselCarleson.A
  -> StoppedAffineQuotientTransitionSquarePacking.A
  -> branch routing into record/return and critical reset.
```

## 5. Remaining theorem

This note does not prove the Navier-Stokes realization of the hypotheses.
The live theorem is now:

```text
PredictableRootWeightMartingaleRealization.A.
```

Statement:

For each retained stopped root \(P\), construct from the original same-material
history, before terminal selected positive readout,

```text
1. a common parent-predictable root Hilbert measure;
2. parent affine spans;
3. a legal decomposition C_theta[Z_e]=B_e+D_e+R_e;
4. pairwise orthogonality / martingale-difference structure for D_e;
5. bounded transition transform from edge weights to the affine quotient readout;
6. routing of B_e to repeated-core record/return and D_e to critical reset charge.
```

Then `AffineQuotientTransitionPayment.A` follows from the already isolated
branch payments.

The remaining difficulty is not the Bessel theorem.  It is constructing the
predictable lifted martingale geometry from the same material Navier-Stokes
history without using the future selected descendant tail.

