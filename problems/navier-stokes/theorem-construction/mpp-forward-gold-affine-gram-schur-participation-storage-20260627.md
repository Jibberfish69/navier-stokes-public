---
theorem_id: forward-gold-affine-gram-schur-participation-storage-20260627
status: new-storage-mechanism-proposed-schur-riccati-proof-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - OriginalParticipationStorageCoercivity.A
  - StoppedPredictableActiveWeightCompensator.A
  - AffineQuotientTransitionPayment.A
  - OriginalHistoryRoutedCurrentEnergyFinite.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bounded-projection-original-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-active-weight-compensator-from-scale-memory-storage-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-scale-memory-storage-to-affine-quotient-transition-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-affine-quotient-transition-payment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-fresh-affine-quotient-bv-return-kill-20260627.md
effect: >-
  Proposes the first concrete storage candidate for the current Gold wall after
  the stopped-selector bounded-projection correction.  The surviving affine
  quotient is treated as the Schur complement energy of the two affine scale
  moments in the stopped participation metric.  Differentiating this inverse
  Gram storage turns positive quotient growth into storage increase, negative
  return, or route-metric/connection motion of the same current.  This is a
  constructive route to OriginalParticipationStorageCoercivity.A, but it is not
  a proof yet.  Partial, not Gold closed.
---

# Affine Gram-Schur participation storage

The stopped routed-current wall has a more specific shape than "find an
original storage."  The lower-triangular scale-memory split says that the only
persistent scale mode left after derivative-exact absorption is the affine
quotient.  That quotient has two scale moments.  The active weight attached to
it is an inverse Gram weight of the stopped scale metric.

So the storage candidate should be the Schur complement energy of those two
moments, not another scalar primitive record.

## 1. The affine moment block

On a stopped parent-known scale interval \(J=[s_0,s_1-\kappa]\), write the
affine basis

```math
b(s)=
\begin{pmatrix}
1\\ s
\end{pmatrix}.
\tag{1}
```

Let \(w_J(s,t)\) be the active weight pulled back from the original
participation metric on this stopped route.  Define the inverse-weight Gram
matrix

```math
\mathsf G_J(t)
=
\int_J w_J(s,t)^{-1}\,b(s)b(s)^\ast\,ds.
\tag{2}
```

The fresh routed source contributes the affine moment vector

```math
m_J(t,x)
=
\int_J b(s)\,\widetilde Z^{S,new}(s,t,x)\,ds.
\tag{3}
```

Every affine quotient readout from the lower-triangular split has the form

```math
c_\theta(t,x)
=
\alpha_\theta^\ast m_J(t,x)
\tag{4}
```

for a geometry-fixed vector \(\alpha_\theta\).  The harmonic active weight in
the older notation is the one-dimensional shadow of \(\mathsf G_J^{-1}\).  In
finite stopped aperture,

```math
H_w(t)\|c_\theta(t)\|_{L_x^2}^2
\le
C_\kappa
\int
\langle m_J(t,x),\mathsf G_J(t)^{-1}m_J(t,x)\rangle_{\mathbb R^2}
\,dx.
\tag{5}
```

Thus the affine quotient energy is not free scalar mass.  It is controlled by
the Schur energy

```math
\mathfrak S_J(t)
:=
\int
\langle m_J(t,x),\mathsf G_J(t)^{-1}m_J(t,x)\rangle\,dx.
\tag{6}
```

This is the candidate original participation storage for the persistent
quotient.

## 2. Schur differential identity

Differentiating `(6)` along the stopped material history gives the exact
identity

```math
D_t\mathfrak S_J
=
2\int\langle \mathsf G_J^{-1}m_J,D_tm_J\rangle\,dx
-
\int\langle \mathsf G_J^{-1}m_J,(D_t\mathsf G_J)\mathsf G_J^{-1}m_J\rangle\,dx.
\tag{7}
```

The first term is source motion in the affine quotient.  The second term is
metric motion of the stopped route.

Now decompose the affine moment motion before scalar selected readout as

```math
D_tm_J
=
p_J-r_J+e_J.
\tag{8}
```

Here:

```text
p_J  selected positive fresh affine production in the current;
r_J  negative return / reset of the same scale potential;
e_J  derivative-exact, collar, stop, legal, and already-routed errors.
```

Also decompose the Gram motion as

```math
D_t\mathsf G_J
=
\mathsf K_J^{turn}
+\mathsf K_J^{ex}
+\mathsf K_J^{cov}
+\mathsf K_J^{conn}
+\mathsf K_J^{reset}
+\mathsf K_J^{legal/stop}.
\tag{9}
```

The matrices in `(9)` are not new currencies.  They are exactly the route
motion already present in

```math
|\partial_\sigma Z|^2+|T_\sigma|^2+|E_\sigma|^2+|C_\sigma|^2.
\tag{10}
```

Completing the square in `(7)` gives the local Schur-storage inequality

```math
H_w\|c_\theta^{+}\|_{L_x^2}^2
\le
C\,D_t\mathfrak S_J
+C\,H_w\|c_\theta^{-}\|_{L_x^2}^2
+C\,\mathfrak S_J\,
\|\mathsf G_J^{-1/2}(D_t\mathsf G_J)\mathsf G_J^{-1/2}\|_{\rm op,+}
+Err_{\rm der}
+dR_{\rm legal}
+dStop.
\tag{11}
```

This is the useful algebra.  Positive affine quotient growth can only appear
as:

```text
increase of Schur storage,
negative return of the same affine potential,
or inverse-Gram metric motion of the stopped route.
```

Those are exactly the three faces that had been appearing as separate branch
payments.

## 3. Why this targets the real Gold wall

The previous notes exposed three facts:

```text
1. lower-triangular scale memory leaves one affine quotient mode;
2. first-order signed descent leaves potential average plus negative return;
3. active-weight upcrossing is unpaid unless it is parent-known original
   metric motion.
```

The Gram-Schur storage puts those facts into one object.

The inverse Gram matrix is where the active weight lives.  If the active weight
gets large, then either the affine moment is genuinely small in Schur norm or
the inverse Gram metric has moved.  That movement is measurable as

```math
d\log\det\mathsf G_J^{-1}
\quad\text{and}\quad
\|\mathsf G_J^{-1/2}d\mathsf G_J\mathsf G_J^{-1/2}\|_{\rm op,+}.
\tag{12}
```

But \(\mathsf G_J\) is built from the original stopped participation metric.
Its motion can only come from turnstile, exchange, covector, connection,
reset/order-lock, stop, or legal changes.  Therefore the active-weight
compensator is not a new scalar envelope; it is the positive inverse-Gram
variation of the same routed current geometry.

This is the intended noncircular form of

```text
StoppedPredictableActiveWeightCompensator.A.
```

## 4. Proposed theorem

State the next constructive theorem as:

```text
AffineGramSchurParticipationStorage.A.
```

For every stopped parent \(P\), after parent-predictable transport is removed
and the finite stopped selector chart is fixed before child readout, the affine
moment Schur storages satisfy

```math
\sum_{J\subset P}
\int
\left[
d\mathfrak S_J
+c\,H_w\|c_{\theta,J}^{+}\|_{L_x^2}^2\,dt
\right]
\le
C
\sum_{J\subset P}
\int
\left[
H_w\|c_{\theta,J}^{-}\|_{L_x^2}^2\,dt
+\mathfrak S_J\,d\mathcal K_J^{geom}
\right]
+R_{\rm legal}(P)+Stop(P),
\tag{13}
```

where

```math
d\mathcal K_J^{geom}
:=
\|\mathsf G_J^{-1/2}d\mathsf G_J\mathsf G_J^{-1/2}\|_{\rm op,+}
\tag{14}
```

is generated by turnstile, exchange, covector, connection, reset/order-lock,
stop, and legal motion of the stopped route.

The root bound needed to integrate `(13)` is

```math
\sum_{J\subset P}\mathfrak S_J(0)
+
\sum_{J\subset P}
\int
\left[
H_w\|c_{\theta,J}^{-}\|_{L_x^2}^2\,dt
+\mathfrak S_J\,d\mathcal K_J^{geom}
\right]
\le
C(u_0)+R_{\rm legal}(P)+Stop(P).
\tag{15}
```

Then `(13)` gives the affine quotient part of
`OriginalParticipationStorageCoercivity.A`.

## 5. Relation to return and reset

Repeated-core return is the \(c_\theta^{-}\) term in `(13)`.  The earlier fixed
stopped-score return/BV law becomes the scalar readout of the same Schur
storage differential on a fixed selector chart.

Fresh reset is the \(d\mathcal K_J^{geom}\) term.  A reset changes the affine
moment metric or the chart/order-lock, so it must enter through inverse-Gram
variation, covector/connection motion, or stop/legal loss.  The old critical
weighted reset BV target becomes the Carleson bound for this metric-motion
term.

So the route is no longer:

```text
prove return payment and reset payment as two independent scalar ledgers.
```

It is:

```text
prove Schur storage for the affine moment block of J^S, then read return and
reset as the two derivative faces of that storage.
```

## 6. Pressure test

The half-tail model

```math
\sum_\ell \|D_\ell\|^2<\infty,
\qquad
\sum_\ell H_\ell\|D_\ell\|^2=\infty
\tag{16}
```

survives raw Bessel control because \(H_\ell\) is allowed to be an external
weight.

In the Gram-Schur formulation, \(H_\ell\) is not external.  It is inverse Gram
geometry.  A bad profile must therefore force one of two concrete failures:

```text
unbounded positive inverse-Gram variation with zero turnstile/exchange/covector/
connection/reset cost;
or repeated positive affine moment production with zero negative return and
bounded Schur storage.
```

Those are much sharper than the old "weighted half-tail" obstruction.  They are
also the correct noncircular tests: both are statements about the original
stopped participation metric before scalar selected readout.

## 7. Result

This note does not close Gold.  It gives a concrete storage mechanism to attack
the current Gold wall:

```text
AffineGramSchurParticipationStorage.A
  -> AffineQuotientTransitionPayment.A
  -> OriginalParticipationStorageCoercivity.A
  -> OriginalHistoryRoutedCurrentEnergyFinite.A.
```

The remaining proof is now an algebraic/geometric storage theorem for the affine
moment Gram block of the same routed current \(J^S\): prove `(13)`--`(15)` from
original same-material turnstile, exchange, covector, connection, reset, stop,
and legal ledgers.

Partial, not Gold closed.
