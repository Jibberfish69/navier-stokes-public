---
theorem_id: forward-gold-persistent-affine-quotient-selected-record-splitting-20260627
status: persistent-quotient-reduced-to-parent-known-selected-record
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped root geometry
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - PersistentRootAffineQuotientReturnPayment.A
  - RootDefectHighFrequencyTailCharge.A
  - OriginalHistorySelectedPotentialAmplificationBV.A
  - StoppedPredictableRootGeometryCompensator.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-persistent-root-affine-quotient-payment-branch-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-selected-potential-amplification-bv-producer-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fixed-stopped-score-return-bv-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-defect-high-frequency-tail-charge-direct-attempt-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-defect-tightness-concentration-compactness-20260627.md
effect: >-
  Records the noncircular implication from the parent-known selected
  potential/amplification record to the persistent affine/root quotient payment.
  After the fixed stopped-score return branch is paid by P_R = Gamma_R Z^S, the
  surviving persistent quotient has no fourth currency: its retained same-core
  part is a projection of Z^S, its fresh affine average is a projection of
  Psi^S, its reset/amplification motion is a projection of Lambda^S, and all
  selector/frame/connection motion is charged to the original-history root
  geometry ledgers.  This makes PersistentRootAffineQuotientReturnPayment.A a
  consumer of OriginalHistorySelectedPotentialAmplificationBV.A, not an
  independent Gold wall.  Partial, not Gold closed.
---

# Persistent affine quotient selected-record splitting

The fixed stopped score closes the primitive return/BV branch.  The remaining
question is whether the persistent non-derivative affine/root quotient still
contains a separate unpaid object after that closure.

It does not, once the parent-known selected record exists.  The exact implication
is:

```text
OriginalHistorySelectedPotentialAmplificationBV.A
  + fixed stopped-score return/BV closure
  + selector/frame/connection/legal charging
  -> PersistentRootAffineQuotientReturnPayment.A.
```

This is an implication, not the construction of the record.

## 1. Survivor after the high-band split

The high-frequency tail direct attempt leaves the persistent non-derivative
quotient

```math
D_e^{pers}
=
(I-\Pi_{\mathcal P_{e^-}})
\mathcal C_\theta[Z_e^{fresh}]
\tag{1}
```

as the survivor after derivative-exact tails, heat-resident tails, finite-band
nonvanishing, and high-weight tube escape have been separated.

The concentration-compactness payment has the form

```math
\sum_{e\subset P}
\int H_{e^-}\|D_e^{pers}\|^2
\le
C_N(u_0)\mathcal R(P)
+C\operatorname{Return}_{-}(P)
+C\operatorname{PotAvg}(P)
+C\operatorname{Overrun}_{sel}(P)
+R_{\rm legal}(P)
+Stop(P).
\tag{2}
```

The live issue is the origin of the three non-legal bills in `(2)`.

## 2. Parent-known selected record

The selected potential/amplification producer asks for a stopped record

```math
\mathfrak Z^S=(Z^S,\Psi^S,\Lambda^S)
\tag{3}
```

defined from the original same-material history before descendant selected
readout.

The three coordinates have separate readings:

```text
Z^S        fixed stopped signed carrier;
Psi^S      fresh affine scale-potential coordinate;
Lambda^S   selected amplification / reset chart coordinate.
```

The record is allowed to spend only original-history scale derivative,
turnstile, exchange, covector, frame, connection, dynamic-silent commutator,
selector/reselection, legal, and stop currency.  It cannot spend the future
selected tail, the selected-critical root norm being proved, produced
root-clock measures, or downstream full-clock finiteness.

## 3. Fixed-core retained branch

On a retained fixed stopped core, the parent-known signed channel \(\Gamma_R\)
defines

```math
P_R=\Gamma_R Z^S.
\tag{4}
```

For every retained unpaid fixed-core transaction \(e:Q_k\to Q_{k+1}\),

```math
A_{\rm sel}(e)
\lesssim
[P_R(Q_{k+1})-P_R(Q_k)]_+
+R_{\rm legal}.
\tag{5}
```

The score variation is paid by

```math
\partial_\sigma P_R
=
\Gamma_R(\partial_\sigma Z^S)
+(\partial_\sigma\Gamma_R)Z^S,
\tag{6}
```

so

```math
\operatorname{Return}_{-}(P)
\lesssim
\operatorname{Var}(P_R)
\lesssim
\int_{\operatorname{Hist}(P)}
w\Big(
|\partial_\sigma Z^S|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
+|\operatorname{conn}_\sigma|^2
\Big)
+R_{\rm legal}(P).
\tag{7}
```

Thus the inherited fixed-core part of `(2)` is already a projection of
\(Z^S\).  It is closed relative to the root-geometry current currency.

## 4. Fresh affine average

The fresh affine quotient coordinate has the signed form

```math
Y=\partial_\sigma\Psi^S+S^{spill}+E.
\tag{8}
```

Pairing against the affine quotient weight leaves the average term

```math
\mathcal P_{avg}^{fresh}(t)
=
{1\over |J|}
\int_J\Psi^S(\sigma,t)\,d\sigma
\tag{9}
```

after the signed derivative, fixed-score return, spill, selector, frame, and
legal pieces are routed.  Therefore the selected record estimate gives

```math
\operatorname{PotAvg}(P)
\lesssim
\int_0^{T^*}
H_w(t)
\|\mathcal P_{avg}^{fresh}(t)\|_{L_x^2}^2dt
\le
C_N(u_0)+CR_{\rm legal}(P).
\tag{10}
```

The fresh average is not a scalar gauge-normalization problem.  It is the
\(\Psi^S\)-coordinate of the same stopped record whose \(Z^S\)-coordinate pays
return.

## 5. Reset and amplification motion

For a strict reset \(Q\to Q'\), the selected amplification jump is

```math
\Delta_{reset}\Lambda^S(Q,Q')
=
\Lambda^S_{new}(Q')-\Lambda^S_{old\to new}(Q).
\tag{11}
```

The reset overrun is the positive critical variation of the same record:

```math
\Omega_{reset}(Q,Q')
\lesssim
\omega(Q,Q')[\Delta_{reset}\Lambda^S(Q,Q')]_+
+R_{\rm legal}(Q,Q').
\tag{12}
```

Hence

```math
\operatorname{Overrun}_{sel}(P)
\lesssim
\operatorname{Var}_{crit}^{stop}(\Lambda^S;P)
+R_{\rm legal}(P).
\tag{13}
```

If the child coefficient is not a charted reading of \(\Lambda^S\), the
transaction is not a retained fixed-core selected transaction.  It exits the
stopped selector cone, changes selector/order-lock, or pays legal, donor,
reselection, or connection drift.

## 6. No fourth persistent quotient bill

Combining `(7)`, `(10)`, and `(13)` in `(2)` gives

```math
\sum_{e\subset P}
\int H_{e^-}\|D_e^{pers}\|^2
\le
C_N(u_0)\mathcal R(P)
+C\mathcal E_{SPA}(P)
+R_{\rm legal}(P)
+Stop(P),
\tag{14}
```

where \(\mathcal E_{SPA}\) is the original-history selected
potential/amplification BV/testing norm of \((Z^S,\Psi^S,\Lambda^S)\).

Therefore

```text
OriginalHistorySelectedPotentialAmplificationBV.A
  -> PersistentRootAffineQuotientReturnPayment.A.
```

The persistent affine/root quotient is not an independent fourth branch after
the fixed stopped score is installed.  It is the combined readout of the same
selected record through \(Z^S\), \(\Psi^S\), and \(\Lambda^S\).

## 7. Noncircularity

The proof is noncircular for two reasons.

First, the record is parent-known.  \(\Gamma_R\), \(Z^S\), \(\Psi^S\), and
\(\Lambda^S\) are fixed before descendant selected-tail readout.

Second, every increment invisible to the retained channel has already left the
fixed-core transaction class or is charged to selector/frame/connection/legal
motion.  No selected-critical root norm, produced \(dA^{wt}+dA^{conn}\), or
future full-clock bound appears on the right side of `(14)`.

## 8. Result

This note narrows the Gold edge.  It does not close Gold.

The live producer remains:

```text
StoppedPredictableRootGeometryCompensator.A.
```

Its unpaid internal subproducer is:

```text
OriginalHistorySelectedPotentialAmplificationBV.A
/ StoppedSelectorTestingCarleson.A
/ OriginalHistoryHilbertBMOProducer.A.
```

Once that parent-known record is constructed from original stopped history,
`PersistentRootAffineQuotientReturnPayment.A` becomes a downstream consumer,
not a separate live obstruction.
