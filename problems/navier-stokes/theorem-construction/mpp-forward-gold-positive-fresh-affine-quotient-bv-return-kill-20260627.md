---
theorem_id: forward-gold-positive-fresh-affine-quotient-bv-return-kill-20260627
status: proof-mechanism-proposed-for-positive-fresh-affine-quotient-kill
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / critical fresh source tent Carleson
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - PositiveFreshAffineQuotientKill.A
  - FreshSecondOrderScaleExactnessOrPotentialAverageKill.A
  - CriticalFreshSourceTentCarleson.A
new_hinge:
  - PositiveFreshAffineQuotientBVReturnKill.A
  - FreshNegativeScaleReturnChargeOrPotentialAverageKill.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-tent-affine-quotient-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/signed-lifted-band-scale-descent-identity.md
  - problems/navier-stokes/theorem-construction/affine-quotient-kill-from-signed-scale-descent-audit.md
  - problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-note.md
  - problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-routes-audit.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-origin-current-hinge-inclusion-20260627.md
edge_effect: >-
  Upgrades the previous affine-quotient reduction. The signed scale-descent
  identity is only first order and positive selection can destroy signed
  exactness, but the positive scalar quotient has an exact bounded-variation
  decomposition: positive part equals signed part plus negative return. Therefore
  the positive affine quotient can be killed by the signed affine quotient plus a
  same-material charge for the negative scale return, without requiring full
  second-order scale exactness as the only path.
downstream_consequence: >-
  The next smaller proof object is PositiveFreshAffineQuotientBVReturnKill.A. It
  asks for a polar-compatible lift of the selected positive fresh source to a
  signed scale-descent density, a potential-average/boundary kill for the signed
  quotient, and a legal/exchange/donor charge for the negative return needed to
  reset the scale potential. Failure of this route isolates the exact missing
  theorem: FreshNegativeScaleReturnChargeOrPotentialAverageKill.A.
---

# Positive Fresh Affine Quotient BV-Return Kill

## Status

This note does not prove `CriticalFreshSourceTentCarleson.A`. It gives a more
concrete attack on the smaller hinge isolated in the previous note:

```text
PositiveFreshAffineQuotientKill.A.
```

The previous reduction said that the selected-critical tent theorem reduces to
killing the harmonic-weighted affine scale quotient of the positive fresh source:

```math
\int_0^T H_w(t)
\left\|
\mathcal C_\theta[Z_+](t)
\right\|_{L_x^2}^2dt,
\qquad
\mathcal C_\theta[Z_+]
:=
\int_J\theta_\kappa(\sigma)Z_+(\sigma,t)\,d\sigma.
\tag{BVR.1}
```

The apparent problem was that the installed signed scale descent is only first
order, while the affine kernel is killed automatically only by second scale
derivatives.

There is a better one-sided route: use the exact identity

```math
Y_+=Y+Y_-.
\tag{BVR.2}
```

The positive quotient is the signed quotient plus the negative-return bill.

## 1. Signed descent input

At the signed lifted-band layer, before positive selection, the installed scale
identity has the form

```math
Y(\sigma,t)
=
\partial_\sigma\Psi(\sigma,t)
+S^{spill}(\sigma,t)
+E(\sigma,t).
\tag{BVR.3}
```

Here `Y` is the signed scale source, `Psi` is the cumulative commutator
potential, `S^{spill}` is threshold-local collar/spill material, and `E` is the
soft remainder.

Let the affine quotient functional be

```math
\mathcal C_\theta[Y]
:=
\int_J\theta_\kappa(\sigma)Y(\sigma,t)\,d\sigma,
\qquad
\partial_\sigma\theta_\kappa(\sigma)=-{|I|}^{-1}
\quad\text{on }J.
\tag{BVR.4}
```

Then one integration by parts gives

```math
\mathcal C_\theta[Y]
=
-\theta_\kappa(s_0)\Psi(s_0,t)
+{1\over |I|}\int_J\Psi(\sigma,t)\,d\sigma
+\mathcal C_\theta[S^{spill}]
+\mathcal C_\theta[E].
\tag{BVR.5}
```

The earlier audit stopped here and said this is one derivative short. That is
true for killing an arbitrary signed source by exactness alone. The Gold source
is selected positive, and the positive part has extra bookkeeping.

## 2. Positive part as signed part plus return charge

For a scalar selected-polar source, write

```math
Y_+:=[Y]_+,
\qquad
Y_-:=[-Y]_+.
\tag{BVR.6}
```

Then exactly:

```math
Y_+=Y+Y_-.
\tag{BVR.7}
```

Applying the affine functional and using `(BVR.5)`,

```math
\boxed{
\mathcal C_\theta[Y_+]
=
-\theta_\kappa(s_0)\Psi(s_0,t)
+{1\over |I|}\int_J\Psi(\sigma,t)\,d\sigma
+\mathcal C_\theta[Y_-]
+\mathcal C_\theta[S^{spill}]
+\mathcal C_\theta[E].
}
\tag{BVR.8}
```

This is the useful identity. The positive selected affine quotient is not a
mysterious new source. It is the signed affine quotient plus the negative return
needed to reset the scale potential after positive production.

In the vector-valued pressure/strain source, `(BVR.8)` must be read after the
selected polar lift: the selected positive source is represented by a scalar
coefficient along the selected polar direction, and the change of polar direction
is paid as selector/reselection, frame rotation, legal, or exchange material.
That polar lift is a real hypothesis, not a formality.

## 3. Proposed theorem

State the next theorem as:

```text
PositiveFreshAffineQuotientBVReturnKill.A
```

For the fresh original-history selected source, after spent-source projection,
silent-source normal form, paid selector/reselection, exchange, entrance/legal,
subheat, recirculation, and stopped-carrier refinements, the selected affine
quotient satisfies

```math
\boxed{
\int_0^T H_w(t)\|\mathcal C_\theta[Z_+](t)\|_{L_x^2}^2dt
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P).
}
\tag{BVR.9}
```

It is enough to prove the following three inputs.

First, polar-compatible signed lift:

```text
SelectedPositiveFreshSourceSignedLift.A
```

The selected positive fresh source can be written as `Y_+` for a signed
scale-descent density `Y`, up to paid polar/reselection/frame/legal defects.

Second, potential-average/boundary kill:

```text
FreshPotentialAverageKill.A
```

```math
\int_0^T H_w(t)
\left(
\|\Psi(s_0,t)\|_{L_x^2}^2
+
\left\|{1\over |I|}\int_J\Psi(\sigma,t)d\sigma\right\|_{L_x^2}^2
\right)dt
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{BVR.10}
```

Third, negative-return charge:

```text
FreshNegativeScaleReturnCharge.A
```

```math
\int_0^T H_w(t)\|\mathcal C_\theta[Y_-](t)\|_{L_x^2}^2dt
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{BVR.11}
```

The spill and soft error terms are the existing collar/spill and soft-remainder
absorptions.

## 4. Why the negative return should be payable

A persistent positive half-tail cannot repeat indefinitely on one material scale
line without a reset. In the scale-potential picture, each selected positive
fresh visit raises the signed potential `Psi`; to produce another separated
positive visit without unbounded potential average, the graph must return by a
negative scale movement.

That return is not invisible. It is one of:

```text
same-material exchange/strain reversal,
selector or polar-frame rotation,
collar/spill separation,
donor/reselection repayment,
or legal synchronization cost.
```

Thus the half-tail is forced into a dichotomy:

```math
\boxed{
\text{either the potential average grows, or the negative return pays.}
}
\tag{BVR.12}
```

This is the scale-memory version of the same-material ancestry intuition. A raw
fresh half-tail can be orthogonal and summable, but a selected positive half-tail
sampled from one transported material history must either retain potential mass
or spend return variation.

## 5. Consequence for the Gold hinge

Combining `(BVR.8)` through `(BVR.11)` proves
`PositiveFreshAffineQuotientKill.A`. Together with the exact scale-derivative
absorption from the lower-triangular decomposition, this proves the scale-memory
form of `CriticalFreshSourceTentCarleson.A`.

The route is:

```text
SelectedPositiveFreshSourceSignedLift.A
+ FreshPotentialAverageKill.A
+ FreshNegativeScaleReturnCharge.A
+ spill/error absorption
=> PositiveFreshAffineQuotientKill.A
=> CriticalFreshSourceTentCarleson.A.
```

## Verdict

The better current idea is not merely second-order scale exactness. A first-order
signed descent can still attack the positive selected source by the exact BV
identity `Y_+=Y+Y_-`. The positive affine quotient is paid by a potential-average
term plus the negative return needed to reset the scale potential. The next sharp
hinge is:

```text
FreshNegativeScaleReturnChargeOrPotentialAverageKill.A.
```

Proving that hinge would make the selected-critical weight come from original
material scale memory rather than from the future terminal selected tail.