---
theorem_id: forward-gold-predictable-active-weight-transition-producer-direct-attack-20260627
status: predictable-active-weight-reduced-to-announceable-reset-derivative-carleson-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped affine transition square-packing
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - PredictableActiveWeightTransitionCarleson.A
  - PredictableWeightedStoppedAffineTransitionMartingale.A
  - StoppedAffineTransitionLiftedMartingaleDifference.A
  - LogScaleResetDerivativeCarrierBound.A
  - CriticalWeightedResetBVFromOriginalHistory.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-transition-predictable-weight-martingale-lock-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-dynamic-silent-source-to-predictable-transition-innovation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-affine-quotient-transition-square-packing-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-routes-audit.md
  - problems/navier-stokes/theorem-construction/lower-triangular-scale-memory-formalization-note.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-cone-aperture-consumed-support-20260627.md
effect: >-
  Directly tests whether the predictable active weight can be obtained by
  replacing each future selected harmonic weight by a parent-known envelope.
  The parent envelope is noncircular but too coarse by the same critical
  half-tail profile. The real theorem is an announceable stopped transition
  weight whose admitted child intervals are Carleson/sparse with respect to the
  original log-scale derivative, turnstile, covector, and exchange measure.
---

# Predictable active weight transition producer: direct attack

The current martingale package has one standard consumer and two real
production burdens.  Once a parent-history Hilbert geometry exists,
Pythagoras/Bessel squares the lifted innovations.  The hard part is constructing
that geometry from the original stopped material history before the future
selected tail is read.

This note attacks the first production burden:

```text
PredictableActiveWeightTransitionCarleson.A.
```

## 1. The active weight being replaced

The affine quotient uses the harmonic active weight

```math
H_I(t)
:=
{|I|^2\over \int_I w(s,t)^{-1}\,ds},
\tag{1}
```

and the fresh affine coefficient

```math
c_F^{fresh}(t)
=
\int_I\theta_I(\sigma)Z^{fresh}(\sigma,t)\,d\sigma.
\tag{2}
```

The target inequality is of the form

```math
H_I(t)\|c_F^{fresh}(t)\|_{L_x^2}^2
\le
C\sum_{e\in\mathscr E(P)}
H_{e^-}(t)
\|\mathcal C_\theta[Z_e](t)\|_{L_x^2(\mathcal H_{\rm lift})}^2
+R_{\rm legal}(P),
\tag{3}
```

with each \(H_{e^-}\) determined by the stopped parent/root history.  It cannot
be chosen after observing the descendant selected tail.

## 2. The tempting parent-envelope construction

For a stopped parent \(Q\), let \(\mathcal I_{\rm adm}(Q)\) be the family of
child scale intervals admissible under the stopped parent record, selector
cone, collar, and legal exclusions.  Define

```math
H_Q^{env}(t)
:=
\sup_{I\in\mathcal I_{\rm adm}(Q)}
{|I|^2\over \int_I w(s,t)^{-1}\,ds}.
\tag{4}
```

This is parent-predictable if \(\mathcal I_{\rm adm}(Q)\) is determined before
positive selected readout.  For an actual edge \(e=Q\to Q'\) with interval
\(I_e\),

```math
H_{I_e}(t)\le H_Q^{env}(t).
\tag{5}
```

So `(4)` gives a noncircular candidate weight.

## 3. Why the envelope is not enough

The envelope proof fails at the critical sum.  It forgets how often the parent
can admit high harmonic weights on a single material line.

The same half-tail profile survives.  Take nested admissible intervals
\(I_\ell\) and collinear lifted transition pieces

```math
D_\ell
=
{2^{-\ell/2}\over(\ell+1)^{1/2}}\,g,
\qquad
\|g\|=1,
\tag{6}
```

with harmonic weights

```math
H_{I_\ell}\simeq 2^\ell.
\tag{7}
```

Then the raw lifted mass is finite:

```math
\sum_{\ell\ge1}\|D_\ell\|^2
=
\sum_{\ell\ge1}{2^{-\ell}\over \ell+1}
<\infty,
\tag{8}
```

but the selected critical weighted mass diverges:

```math
\sum_{\ell\ge1}H_{I_\ell}\|D_\ell\|^2
\simeq
\sum_{\ell\ge1}{1\over \ell+1}
=\infty.
\tag{9}
```

The parent supremum does not remove this profile.  It only assigns the large
weight earlier.

Thus `PredictableActiveWeightTransitionCarleson.A` is not proved by replacing
future \(H_I\) with a parent envelope.  The parent envelope is a measurability
repair, not a packing theorem.

## 4. What additional structure is needed

The missing structure is an announceable stopped transition family.  A child
interval may carry the parent-predictable active weight only if its appearance
is certified by original-history movement:

```math
d\Lambda
:=
|\partial_\sigma Z|^2\,d\sigma dt
+|\operatorname{turnstile}_\sigma|^2\,d\sigma dt
+|\operatorname{exchange}_\sigma|^2\,d\sigma dt
+|\operatorname{covector}_\sigma|^2\,d\sigma dt.
\tag{10}
```

The actual theorem should be:

```text
AnnounceableActiveWeightResetCarleson.A
```

For every stopped root \(P\), there is a parent-predictable assignment
\(e\mapsto H_{e^-}\) such that:

```math
H_{I_e}(t)\le C H_{e^-}(t)+R_e^{legal}(t),
\tag{11}
```

and for every lifted innovation family adapted to the stopped transition
filtration,

```math
\sum_{e\subset P}
\int H_{e^-}(t)\|D_e(t)\|_{L_x^2(\mathcal H_{\rm lift})}^2\,dt
\le
C_N\int_{\operatorname{Hist}(P)}d\Lambda
+R_{\rm legal}(P).
\tag{12}
```

This theorem is exactly the active-weight side of the reset derivative gate.
It says the high active weights are not merely predictable; they are
announceable by finite original-history derivative/covector/turnstile/exchange
motion.

## 5. Branch consequences

In the fixed-core branch, the stopped selector cone aperture gives a parent
known sign/channel once the record is unchanged.  That helps route predictable
mass into the primitive record/return ledger.  It does not prove `(12)`,
because `(12)` is about repeated high active weights on the transition family.

In the reset branch, `(12)` is the real payment theorem.  A strict child reset
that creates a fresh selected interval with large \(H_I\) must be accompanied by
log-scale derivative, collar turnstile, covector rotation, or exchange.  This is
the same mechanism exposed by the dynamic silent-source note: material
persistence can reveal the cost, but the cost must be packed by original
history before positive readout.

## 6. Result

The direct parent-envelope attack narrows the problem:

```text
parent-predictable envelope: available but insufficient;
announceable reset derivative Carleson: still open and necessary.
```

So the next hinge is not the Bessel theorem and not a raw predictability
statement.  It is:

```text
AnnounceableActiveWeightResetCarleson.A
  =
PredictableActiveWeightTransitionCarleson.A
  + LogScaleResetDerivativeCarrierBound.A
  in one original-history stopping theorem.
```

If this is proved, the lifted transition martingale package becomes
noncircular: the active weight is fixed from the parent history, the innovations
are orthogonal in that geometry, and the high selected weights are paid by
finite original material motion.  If it fails, the exact bad profile is a
parent-announced sequence of increasingly active child intervals whose raw
innovation mass is summable while the harmonic active-weighted mass is a
critical half-tail.
