---
theorem_id: forward-gold-root-defect-tightness-concentration-compactness-20260627
status: root-defect-tightness-reduced-to-persistent-affine-return-payment-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped root geometry
attacks_hinge:
  - RootDefectTightnessFromOriginalHistory.A
  - SameCarrierRootDefectExtraction.A
  - ActiveWeightBlowupProjectionCompactness.A
  - ParentFixedConnectionTightness.A
refines:
  - StoppedPredictableRootGeometryCompensator.A
  - NoFreeHighWeightTubeEscapeCharge.A
  - StoppedSelectorFiniteScoreOrPaidDrift.A
  - PositiveFreshAffineQuotientBVReturnKill.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-root-geometry-compensator-direct-proof-attempt-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-free-high-weight-tube-escape-charge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-reset-witness-interval-bounded-overlap-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-finite-score-or-paid-drift-proof-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-to-same-carrier-overrun-payment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-fresh-affine-quotient-bv-return-kill-20260627.md
effect: >-
  Runs concentration-compactness on the normalized root defect measure.  The
  strict first-exit reset/high-weight escape alternative is already paid by the
  finite-score selector, witness-overlap, and harmonic Cauchy machinery.  The
  tight same-carrier zero-cost alternative is killed by parent subtraction and
  dynamic-silent rigidity.  What remains is the non-derivative persistent affine
  quotient on a same carrier: it must be predictable record/return, or it must
  pay a potential-average / negative-scale-return / selected-overrun bill.  This
  is a sharper subproblem inside RootDefectTightnessFromOriginalHistory.A, not
  Gold closure.
---

# Root defect tightness via concentration compactness

## 1. Root defect measure

Start from the direct root-geometry proof attempt.  If
`StoppedPredictableRootGeometryCompensator.A` fails after legal and stop losses
are removed, normalize a stopped family so that

```math
\mu_n^{root}(\mathcal E_n)
:=
\int dA_{P_n}^{root}
+
\sum_{e\in\mathcal E_n}
\int H_{e^-}\|D_e\|_{\mathcal H_{\rm lift}}^2
=1,
\tag{1}
```

while the original-history root ledger vanishes:

```math
\int d\Lambda_{P_n}^{root}+R_{\rm legal}(P_n)+Stop(P_n)\to0.
\tag{2}
```

The target `RootDefectTightnessFromOriginalHistory.A` is the assertion that
`(1)` cannot hold together with `(2)`.

## 2. Concentration-compactness split

Run the standard tree concentration-compactness alternatives on
\(\mu_n^{root}\), after passing to stopped subtrees and root-rescaled material
coordinates.

### Vanishing

Every fixed parent-known root window captures vanishing \(\mu_n^{root}\)-mass.
This alternative contradicts `(1)` after the finite stopped selector and
bounded-overlap witness construction are applied: the only way to keep unit
weighted mass while all fixed root windows vanish is to select future shrinking
windows, and those are not retained Gold selector transactions.  They are
reselection, legal, collar, or stop loss.

### Dichotomy

The defect splits into separated carrier pieces.  In a laminar retained tree,
separation has only two honest meanings:

```text
different same-material carriers,
```

or

```text
one carrier plus a selector/covector/connection mismatch.
```

Different carriers are paid by laminar disjointness after choosing the maximal
subtree carrying a fixed fraction of mass.  A mismatch is exactly
turnstile/exchange/covector/connection cost, hence belongs to
\(d\Lambda^{root}\).  Therefore dichotomy cannot preserve `(1)` while `(2)`
vanishes.

### Tight same-carrier mass

After root rescaling, a nonzero amount of weighted fresh quotient remains on
one same-material carrier.  If all derivative, turnstile, exchange, covector,
connection, legal, and stop charges vanish, the limit is inherited parent
transport.  Parent subtraction gives

```math
D_\infty=(I-\Pi_{\mathcal P_-})Z_\infty=0,
\tag{3}
```

contradicting the nonzero limit.

The tight case therefore closes, provided the selected carrier is genuinely the
same carrier after root rescaling.

### Scale escape

The only dangerous alternative is scale escape: the unit weighted mass moves
into shrinking high-active-weight intervals.  The installed first-exit reset
machinery already pays the derivative-exact part.  If a strict reset edge has

```math
D_e^{fresh}
=
|I_e|^{-1}\int_{I_e}G_e(\sigma,t)\,d\sigma+Err_e^{legal},
\tag{4}
```

then harmonic Cauchy gives

```math
H_{I_e}\|D_e^{fresh}\|^2
\le
\int_{I_e}w\|G_e\|^2+R_e^{legal},
\tag{5}
```

and the maximal first-exit witness overlap sums `(5)` over the stopped tree.
So derivative-exact high-weight tube escape is not free.

## 3. The remaining non-derivative quotient

After the four alternatives above are charged, the only surviving expression is
the persistent affine/root quotient:

```math
D_e^{pers}
=
(I-\Pi_{\mathcal P_{e^-}})\mathcal C_\theta[Z_e^{fresh}],
\tag{6}
```

where \(\mathcal C_\theta[Z_e^{fresh}]\) is not already represented as an
announced derivative average.

Applying harmonic Cauchy to `(6)` would require

```math
\int_{I_e}w\|Z_e^{fresh}\|^2,
\tag{7}
```

which is exactly the selected-critical root bound being proved.  This is the
first genuinely unproved term.

Thus the concentration-compactness proof reduces
`RootDefectTightnessFromOriginalHistory.A` to the following smaller theorem:

```text
PersistentRootAffineQuotientReturnPayment.A.
```

For every retained same-carrier persistent quotient `(6)`, one of the following
must hold:

```text
1. it is inherited parent-predictable transport and lies in the parent span;
2. it is an announced derivative/turnstile/exchange/covector/connection average;
3. it pays same-material potential-average or negative-scale return;
4. it pays selected coefficient-overrun on the same carrier;
5. it is legal/stop/reselection/collar loss.
```

In formula form, the needed bound is

```math
\boxed{
\sum_{e\subset P}
\int H_{e^-}\|D_e^{pers}\|^2
\le
C_N(u_0)\mathcal R(P)
+C\operatorname{Return}_{-}(P)
+C\operatorname{PotAvg}(P)
+C\operatorname{Overrun}_{sel}(P)
+R_{\rm legal}(P)
+Stop(P).
}
\tag{8}
```

Here `Return_-`, `PotAvg`, and `Overrun_sel` are not new consumers.  They are
the exact bills already isolated by the positive affine quotient BV-return
route:

```math
Y_+=Y+Y_-.
\tag{9}
```

The positive persistent quotient is the signed quotient plus the negative
return needed to reset the scale potential.

## 4. Why this is smaller than the previous wall

`RootDefectTightnessFromOriginalHistory.A` was too broad: it mixed strict reset
escape, selector drift, angle drift, silent material persistence, carrier
splitting, and persistent quotient payment.  The installed notes already pay or
classify the first five alternatives under their stopped hypotheses.

The remaining theorem is now narrower:

```text
PersistentRootAffineQuotientReturnPayment.A
```

It is a same-carrier one-dimensional scale-memory statement inside the root
Hilbert geometry.  It says a positive selected affine quotient cannot keep
sampling fresh selected mass on the same material carrier unless the signed
scale potential either grows or pays the negative return needed to reset.

## 5. Result

The concentration-compactness attack does not close Gold.  It sharpens the
first unproved term:

```text
RootDefectTightnessFromOriginalHistory.A
  reduces to
PersistentRootAffineQuotientReturnPayment.A
```

after the derivative-exact reset, finite-score selector, bounded-overlap
witness, parent-fixed connection mismatch, and zero-cost same-carrier rigidity
alternatives are accounted for.

Partial, not Gold closed.
