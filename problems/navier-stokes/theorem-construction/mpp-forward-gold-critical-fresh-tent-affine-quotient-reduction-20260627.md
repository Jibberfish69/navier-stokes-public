---
theorem_id: forward-gold-critical-fresh-tent-affine-quotient-reduction-20260627
status: critical-fresh-tent-reduced-to-positive-affine-scale-quotient-kill-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / critical fresh source tent Carleson
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines_hinge:
  - CriticalFreshSourceTentCarleson.A
  - FreshSourceCriticalScaleMemoryBound.A
  - FreshNativeRootUpperBound.A
new_hinge:
  - PositiveFreshAffineQuotientKill.A
  - FreshSecondOrderScaleExactnessOrPotentialAverageKill.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-tent-carleson-governing-hinge-realignment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-native-root-upper-bound-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-source-carrier-to-critical-fresh-source-tent-carleson-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-tent-carleson-codex-audit-20260627.md
  - problems/navier-stokes/theorem-construction/volterra-scale-memory-formalization-note.md
  - problems/navier-stokes/theorem-construction/lower-triangular-scale-memory-formalization-note.md
  - problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-note.md
  - problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-routes-audit.md
  - problems/navier-stokes/theorem-construction/affine-quotient-kill-from-signed-scale-descent-audit.md
edge_effect: >-
  Shrinks the realigned CriticalFreshSourceTentCarleson.A burden. Raw fresh
  Bessel packing fails on the fresh orthogonal half-tail because it has no
  selected-critical weight. The lower-triangular scale-memory notes show that the
  corresponding one-sided Volterra object has only one scale-persistent weighted
  quotient mode; that mode sees only the affine scale quotient of the fresh
  source. Therefore the next nonduplicate theorem is not the whole tent estimate
  at once, but a positive fresh affine-quotient kill theorem plus absorption of
  the exact scale-derivative remainder.
downstream_consequence: >-
  Future proof work should not attack CriticalFreshSourceTentCarleson.A by raw
  Bessel/nonuse, harmonic-weight estimates, or direct mixed readout. Those routes
  return to the same half-tail geometry or become tautological. The live smaller
  object is PositiveFreshAffineQuotientKill.A: control the harmonic-weighted
  affine scale moments of the positive fresh original-history source, either by
  second-order scale exactness or by a potential-average kill theorem that survives
  positive selection.
---

# Critical Fresh Tent To Affine Quotient Kill Reduction

## Status

This note does not prove `CriticalFreshSourceTentCarleson.A`. It gives a smaller
proof target for it.

The current Gold hinge is the selected-critical fresh source tent bound:

```math
 um_{Q ubset P}
w(Q)|F_Q|_{mathcal H_{raw}}^2
le
C_N(u_0)mathcal R(P)+R_{legal}(P),
	ag{AQR.1}
```

where `F_Q` is genuinely fresh original-history visible/silent/exchange source
after spent-source projection and paid removals, and `w(Q)` is the selected
critical heat-scale / first-ratio weight.

Raw freshness gives only:

```math
 um_{Q ubset P}|F_Q|_{mathcal H_{raw}}^2<infty.
	ag{AQR.2}
```

The fresh half-tail shows the gap:

```math
|F_ll|_{mathcal H_{raw}}^2={2^{-ll}over ll+1},
qquad
 um_ll|F_ll|_{mathcal H_{raw}}^2<infty,
qquad
 um_ll2^ll|F_ll|_{mathcal H_{raw}}^2=infty.
	ag{AQR.3}
```

So the missing theorem is exactly the source of the weight, not another raw
orthogonality theorem.

## 1. Scale-memory representation of the same burden

The source refs give the scale-memory form of `(AQR.1)`:

```math
int a(r,t)
left(
int_0^r K(ll,r)z_{fresh}(ll,t){dlloverll}
ight)^2
{drover r},dt
le
C_N(u_0)+R_{legal}.
	ag{AQR.4}
```

In logarithmic scale variables, write `s=log r` and set

```math
F(s,t)=(mathcal V_kappa widetilde Z_{fresh})(s,t),
qquad
w(s,t)=a(e^s,t).
	ag{AQR.5}
```

Then the relevant weighted lower-triangular quadratic form is

```math
int_0^Tint_I w(s,t)|F(s,t)|_{L_x^2}^2,ds,dt.
	ag{AQR.6}
```

The lower-triangular decomposition is exact:

```math
int_I w|F|_{L_x^2}^2,ds
=
int_I w|partial_s S_w|_{L_x^2}^2,ds
+
H_w(t)|c_F(t)|_{L_x^2}^2,
	ag{AQR.7}
```

with

```math
H_w(t):={|I|^2overint_I w(s,t)^{-1},ds},
	ag{AQR.8}
```

and

```math
c_F(t)
=
int_{s_0}^{s_1-kappa}	heta_kappa( igma)
widetilde Z_{fresh}( igma,t),d igma,
	ag{AQR.9}
```

where

```math
	heta_kappa( igma)
=
{(s_1-kappa)- igmaover |I|}
{f 1}_{[s_0,s_1-kappa]}( igma).
	ag{AQR.10}
```

Thus the persistent obstruction is not the whole lower-prefix source. It is the
harmonic-weighted affine scale quotient `(AQR.9)`.

## 2. The smaller theorem

The next theorem should be:

```text
PositiveFreshAffineQuotientKill.A
```

Statement:

For the positive fresh original-history source left after spent-source
projection, silent-source normal form, paid selector/reselection, exchange,
entrance/legal, subheat, and recirculation removals,

```math
oxed{
int_0^T H_w(t)
left|
int_{s_0}^{s_1-kappa}	heta_kappa( igma)
widetilde Z_{fresh}( igma,t),d igma
ight|_{L_x^2}^2dt
le
C_N(u_0)mathcal R(P)+R_{legal}(P).
}
	ag{AQR.11}
```

Together with exact-derivative absorption,

```math
int_0^Tint_I w|partial_sS_w|_{L_x^2}^2,ds,dt
le
C_N(u_0)mathcal R(P)+R_{legal}(P),
	ag{AQR.12}
```

this proves the scale-memory form `(AQR.4)` and hence the tent estimate
`(AQR.1)`.

So the critical fresh tent theorem is reduced to two named subtheorems:

```text
FreshExactScaleDerivativeAbsorption.A
+
PositiveFreshAffineQuotientKill.A.
```

## 3. Why this is not the old failed route

The previous quotient audit separates the three natural attacks.

Harmonic-weight control alone gives

```math
H_w(t)le int_I w(s,t),ds,
	ag{AQR.13}
```

which collapses back to cumulative-tail / active-square geometry. It does not
beat the half-tail.

Direct mixed readout gives only

```math
H_w(t)|c_F(t)|_{L_x^2}^2
le
int_I w|F|_{L_x^2}^2,ds,
	ag{AQR.14}
```

which is tautological: it bounds the persistent part by the full object.

The affine-quotient route is different because `(AQR.9)` only sees the affine
scale moments:

```math
M_0(t)=int_Jwidetilde Z_{fresh}( igma,t),d igma,
qquad
M_1(t)=int_J igmawidetilde Z_{fresh}( igma,t),d igma.
	ag{AQR.15}
```

Equivalently, it is blind to exact second scale derivatives:

```math
widetilde Z_{fresh}=partial_ igma^2G+R
quadLongrightarrowquad
c_F(t)=int_J	heta_kappa( igma)R( igma,t),d igma
	ag{AQR.16}
```

under the boundary cancellation conditions on `G`.

That is real shrinkage. The live source is reduced from an entire fresh tent to a
rank-one affine quotient in scale.

## 4. Exact missing content

The currently installed signed scale-descent mechanism is one derivative short.
At the signed layer it gives only

```math
Y=partial_ igmaPsi+S^{spill}+E.
	ag{AQR.17}
```

Pairing with the affine kernel yields

```math
mathcal C_	heta[Y]
=
-	heta_kappa(s_0)Psi(s_0,t)
+
{1over |I|}int_JPsi( igma,t),d igma
+
mathcal C_	heta[S^{spill}]
+
mathcal C_	heta[E].
	ag{AQR.18}
```

So first-order exactness kills only the constant quotient. The affine quotient
still sees the scale-average of the potential.

The positive fresh source has a further problem: positive selection can destroy
the signed exactness before `(AQR.17)` is applied. Therefore the exact missing
content is one of:

```text
PositiveFreshSecondScaleExactness.A
```

```math
widetilde Z_{fresh}=partial_ igma^2G+R
quad	ext{after positive selection and paid removals,}
	ag{AQR.19}
```

or

```text
FreshPotentialAverageKill.A
```

```math
int_0^T H_w(t)
left|
{1over |I|}int_JPsi( igma,t),d igma
ight|_{L_x^2}^2dt
le
C_N(u_0)mathcal R(P)+R_{legal}(P),
	ag{AQR.20}
```

plus a positivity-compatibility bridge:

```text
PositiveSelectionPreservesScaleExactness.A
```

or a replacement theorem that constructs `(AQR.19)` directly for the selected
positive fresh source.

## 5. Relation to laminar ancestry

The laminar ancestry tax remains useful, but it should feed this quotient target
rather than sit as a separate route slogan.

A failed `(AQR.11)` produces a material half-tail whose fresh raw mass is finite
and whose selected-critical quotient mass is infinite. After paid nonlaminar
exits, the same-material ancestry reduction says the half-tail lies on laminar
transport lines. On each line, repeated high-ratio visits must either change the
Cauchy-Green scale profile, rotate the Hodge/pressure frame, separate collars, or
keep the affine quotient mode alive.

Thus the laminar mechanism and the Volterra mechanism can be joined as:

```text
laminar material ancestry
+
affine scale quotient kill
=>
critical fresh source tent Carleson.
```

The analytic target is still `(AQR.11)`: the harmonic-weighted affine quotient of
the positive fresh source.

## Verdict

The governing Gold producer remains `CriticalFreshSourceTentCarleson.A`, but the
better idea is to stop attacking the whole tent bound. The nonduplicate next
hinge is:

```text
PositiveFreshAffineQuotientKill.A / FreshSecondOrderScaleExactnessOrPotentialAverageKill.A.
```

It is smaller than the root/tent theorem, it explains exactly why raw Bessel and
first-order signed descent fail, and it names the next proof burden without
promoting the source-square branch over the global producer.