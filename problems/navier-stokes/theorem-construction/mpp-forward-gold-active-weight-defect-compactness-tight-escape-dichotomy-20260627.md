---
theorem_id: forward-gold-active-weight-defect-compactness-tight-escape-dichotomy-20260627
status: compactness-not-automatic-reduced-to-high-weight-escape-charge
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / routed current square-packing
attacks_hinge:
  - ActiveWeightDefectTightnessFromOriginalHistory.A
  - SameCarrierBadProfileExtraction.A
  - ActiveWeightBlowupProjectionCompactness.A
  - AnnounceableActiveWeightResetCarleson.A
  - StoppedRoutedCurrentSquarePacking.A
---

# Active-weight defect compactness: tight/escape dichotomy

## 1. Target

The previous note proved the rigidity part: once a same-carrier zero-cost limit
exists, the parent-subtracted fresh quotient must vanish.  The remaining reset
question is compactness/tightness:

```text
Can a normalized active-weight fresh quotient avoid having a nonzero same-carrier
limit while paying no original-history charge?
```

This note tests that compactness step.

## 2. Normalized defect measure

For a bad reset family, define the active-weight defect measure

```math
d\mu_n
=
\sum_{e\in\mathcal E_n}
H_{e^-}(t)\|D_e^{fresh}(t)\|^2\,d t\,\delta_{W_e},
\qquad
W_e=I_e\times T_e.
\tag{1}
```

Normalize

```math
\mu_n(\operatorname{Hist}(P_n))=1.
\tag{2}
```

Assume the original-history charge tends to zero:

```math
\Lambda_n:=
\int_{\operatorname{Hist}(P_n)}
\left(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
\right)
+R_{legal}(P_n)	o0.
\tag{3}
```

The desired compactness theorem would produce a same-carrier normalized limit
from `(1)`--`(3)`.

## 3. What compactness gives conditionally

Fix a stopped carrier chart \(K\) and an active-weight blow-up normalization.
If there is \(c>0\) such that

```math
\limsup_n \mu_n(K)\ge c,
\tag{4}
```

and the corresponding carrier charts, covectors, selector scores, and scale
intervals remain in a compact stopped-coordinate class, then a subsequence has a
nonzero weak limit of the normalized quantities

```math
\widetilde D_e:=H_{e^-}^{1/2}D_e^{fresh}.
\tag{5}
```

This gives

```math
D_\infty^{fresh}\ne0
\tag{6}
```

in one fixed same-carrier lifted Hilbert space. Since `(3)` says all original
charges vanish, the zero-cost rigidity note applies and forces

```math
D_\infty^{fresh}=0,
\tag{7}
```

a contradiction.

Thus compact tight mass on one stopped carrier is impossible under `(3)`.

## 4. Escape alternative

If no such compact same-carrier region carries positive mass, then for every
compact stopped carrier class \(K\),

```math
\mu_n(K)\to0.
\tag{8}
```

Because the total mass is one, the mass escapes.  The escape can only occur by
one of the following mechanisms:

1. high active-weight concentration in shrinking reset tubes;
2. loss of same carrier / selector chart;
3. covector or frame leaves the stopped compact class;
4. order-lock / cone-aperture boundary is approached;
5. legal or stop boundary is hit.

The last four are exactly turnstile, exchange, covector, selector, or legal
motion.  They are supposed to be part of \(\Lambda_n\).  The first is the true
remaining gap: high active-weight tube escape.

## 5. Exact missing theorem

The missing theorem is

```text
NoFreeHighWeightTubeEscapeCharge.A
```

or equivalently

```text
ActiveWeightEscapeCarleson.A
```

Statement:

For every normalized reset family, the mass of the defect measure outside all
compact same-carrier stopped charts is controlled by original-history charge:

```math
\mu_n(\operatorname{Esc}_M)
\le
C\int_{\operatorname{Esc}_M^*}
\left(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
\right)
+CR_{legal}
+o_M(1),
\tag{9}
```

with \(o_M(1)\to0\) as the stopped compactness parameter \(M\to\infty\).

Equivalently, a unit of active-weight fresh quotient cannot concentrate in
shrinking high-weight reset tubes unless the original same-material history pays
scale derivative, turnstile, exchange, covector, selector-boundary, or legal
charge.

## 6. Result

The compactness route is now reduced to a sharp tight/escape dichotomy.

```math
\boxed{
\text{normalized defect mass}
\Rightarrow
\text{same-carrier tight limit}
\quad\text{or}\quad
\text{high-weight escape}.}
```

The same-carrier tight limit is already killed by zero-cost rigidity.  Therefore
the only remaining reset-side theorem is the escape charge `(9)`.

So:

```text
ActiveWeightDefectTightnessFromOriginalHistory.A
```

is equivalent, after the rigidity note, to:

```text
NoFreeHighWeightTubeEscapeCharge.A / ActiveWeightEscapeCarleson.A.
```

This is a genuine remaining theorem, not a bookkeeping issue.  It must prove
that active-weight mass cannot disappear into increasingly small high-weight
reset tubes without appearing in the original-history derivative/current ledger.