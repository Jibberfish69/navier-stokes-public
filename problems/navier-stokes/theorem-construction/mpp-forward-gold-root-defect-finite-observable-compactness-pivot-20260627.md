---
theorem_id: forward-gold-root-defect-finite-observable-compactness-pivot-20260627
status: finite-observable-pivot-consumed-by-high-frequency-tail-charge-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped root geometry
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - RootDefectCarrierStableCompactness.A
  - OriginalLedgerRootDefectTightness.A
  - StoppedPredictableRootGeometryCompensator.A
refines_to:
  - RootDefectFiniteObservableCompactness.A
  - RootDefectFiniteModeNormingOrEntropyPayment.A
  - RootDefectHighFrequencyTailCharge.A
  - PersistentRootAffineQuotientReturnPayment.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-defect-compactness-finite-band-nonvanishing-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-defect-carrier-stable-compactness-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-defect-tightness-concentration-compactness-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-defect-tightness-original-ledger-correction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-finite-score-or-paid-drift-proof-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-legal-mode-norming-family-compact-separation-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-measure-persistence-production-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-fresh-affine-quotient-bv-return-kill-20260627.md
effect: >-
  Sharpens the compactness theorem by adding the missing observable-coordinate
  layer. Same-carrier weak compactness in a fixed lifted Hilbert space is not
  enough: normalized vectors can vanish weakly by moving through orthogonal
  legal modes. The root defect must either be seen by a finite parent-known legal
  norming family on the compact selected quotient, or the motion through new
  modes must pay spectral/tower tail, selector entropy, potential-average,
  negative-return, legal, stop, or original-history connection charge. The
  finite-band nonvanishing note is the sharper active surface: finite observable
  compactness is the compact piece, and RootDefectHighFrequencyTailCharge.A is
  the remaining open producer.
---

# Root defect finite-observable compactness pivot

The same-carrier condition is necessary, but it is not enough to get a nonzero
weak limit.  A unit sequence in one infinite-dimensional Hilbert space can move
through orthogonal directions and converge weakly to zero.

So the compactness theorem needs one more layer: the normalized root defect must
be visible to a finite parent-known family of legal observables, or the motion
through new observables must pay an original-history bill.

Partial, not Gold closed.

## 1. The countermodel to the current wording

The current compactness target asks for

```math
H_{e_n^-}^{1/2}D_{e_n}
\rightharpoonup D_\infty\ne0
\quad\text{in one fixed } \mathcal H_{\rm lift}.
\tag{1}
```

Same carrier does not imply `(1)`.  In an infinite-dimensional parent Hilbert
space, take an orthonormal sequence \((\phi_n)\) and set

```math
H_{e_n^-}^{1/2}D_{e_n}=\phi_n.
\tag{2}
```

Then

```math
\|H_{e_n^-}^{1/2}D_{e_n}\|_{\mathcal H_{\rm lift}}=1,
\qquad
\phi_n\rightharpoonup0.
\tag{3}
```

This loses the normalized unit without carrier escape.  It is legal inside the
current abstract wording unless the repo supplies a reason that moving through
new legal modes is paid.

That is the missing mechanism.  The defect must not only stay on the same
carrier; it must stay inside a finite observable part of that carrier, or pay
for changing the observable part.

## 2. Existing support that almost gives it

The stopped selector note gives a finite parent-known selector score family at
fixed \(N,Q\):

```math
A_{\rm sel}(Q)
\le
C\max_{a\in\mathcal A_{N,Q,\eta}}s_a
+CR_Q^{legal}.
\tag{4}
```

This prevents a moving future supremum from selecting the Gold packet.  It does
not finite-dimensionalize the lifted quotient \(D_e\).  The velocity/current
field is still full.

The legal-mode norming note gives the right abstract shape:

```math
\sum_{i=1}^M|\langle Z,\Psi_i\rangle|^2
\ge
c^2\|Z\|^2
\tag{5}
```

on a compact quotient tangent sphere, provided every nonzero tangent direction
is separated by a native same-shadow legal test.  That is exactly the kind of
finite observation theorem the root defect needs.

The selected-carrier measure persistence note also gives the right positivity
lesson: compactness must carry a nonnegative selected carrier measure, not only
a signed current that can cancel.  For the root defect, the positive measure is

```math
d\mu_n^{root}
=
H_{e^-}\|D_e\|_{\mathcal H_{\rm lift}}^2.
\tag{6}
```

The missing step is to connect this positive mass to finitely many legal
same-shadow mode readings.

## 3. Finite observable compactness theorem

Replace the raw weak-limit theorem by:

```text
RootDefectFiniteObservableCompactness.A.
```

Statement:

For every normalized root-defect sequence with

```math
\mu_n^{root}=1,
\qquad
\int d\Lambda_{P_n}^{orig}
+R_{\rm legal}(P_n)
+Stop(P_n)\to0,
\tag{7}
```

there is a stopped subchain, parent transport, active-weight rescaling, and a
finite parent-known legal mode family

```math
\Psi_1,\ldots,\Psi_M\in D_{\rm legal}(P)
\tag{8}
```

such that a fixed positive amount of the defect is seen:

```math
\sum_{i=1}^M
|\langle H_{e_n^-}^{1/2}D_{e_n},\Psi_i\rangle|^2
\ge c_0>0
\tag{9}
```

along a subsequence, unless the missing mass is paid by one of:

```text
parent-known original derivative/current/connection ledger,
selector/collar/covector/order-lock drift,
finite-score reselection loss,
spectral or legal-mode entropy growth,
potential-average growth,
negative scale return,
legal loss,
stop.
```

Once `(9)` holds, the compactness is finite-dimensional at the observed level.
At least one coordinate has a nonzero scalar subsequential limit, so the
zero-cost rigidity argument has a visible nonzero defect to kill.

## 4. Entropy payment for moving through modes

The orthonormal countermodel `(2)` is not defeated by same-carrier transport.
It is defeated only by an entropy or tail law:

```text
RootDefectFiniteModeNormingOrEntropyPayment.A.
```

Statement:

A retained same-carrier root defect cannot keep selecting new orthogonal legal
mode directions at unit normalized weight unless the legal-mode index changes
through a paid original-history mechanism.

In formula form, for a parent-known legal mode filtration
\((\mathcal V_m)_m\),

```math
\sum_{e\subset P}
H_{e^-}\|(I-\Pi_{\mathcal V_m})D_e\|^2
\le
\varepsilon_m
\,
\mathcal E_{\rm mode}(P),
\qquad
\varepsilon_m\downarrow0,
\tag{10}
```

with

```math
\mathcal E_{\rm mode}(P)
\le
C_N(u_0)\mathcal R(P)
+R_{\rm legal}(P)
+Stop(P).
\tag{11}
```

Here \(\mathcal E_{\rm mode}\) is not a new future-tail consumer.  It must be
made from the existing original-history bills: selector finite-score drift,
connection angle drift, covector/frame motion, potential-average growth, and
negative scale return.

If `(10)` is available, pick \(m\) so that the tail is small.  The normalized
defect has positive mass inside the finite-dimensional \(\mathcal V_m\), hence
has a nonzero strongly convergent subsequence there.  That supplies `(9)`.

## 5. Link to persistent affine return

The concentration-compactness note already identified the sharp survivor as

```text
PersistentRootAffineQuotientReturnPayment.A.
```

The finite-observable pivot explains why that survivor is the right one.  A
persistent affine/root quotient can avoid weak compactness by moving through
new legal modes.  On one same-material carrier, that motion has only three
honest sources:

```text
the selected observable changes;
the parent-fixed connection/covector/frame changes;
the signed scale potential returns so the positive quotient can repeat.
```

Those are exactly the finite-score drift, connection/covector ledger, and
potential-average/negative-return bills.

Thus the live proof route becomes:

```text
RootDefectFiniteModeNormingOrEntropyPayment.A
+ PersistentRootAffineQuotientReturnPayment.A
  -> RootDefectFiniteObservableCompactness.A
  -> RootDefectCarrierStableCompactness.A
  -> OriginalLedgerRootDefectTightness.A.
```

## 6. What this changes

`RootDefectCarrierStableCompactness.A` should no longer be pursued as plain
Hilbert weak compactness.  Plain weak compactness permits the orthonormal-mode
loss `(2)`--`(3)`.

The real compactness statement is observable compactness: retained root-defect
mass must be visible to a finite same-shadow legal norming family, or the
attempt to keep changing legal directions must pay the original-history entropy
/ return / connection bill.

This is not Gold closure.  It is a sharper proof object that blocks the current
false nonzero-limit step and turns the remaining work into a concrete finite
mode-tail or entropy-payment theorem.

## 7. Alignment with the active frontier

The active frontier has now sharpened this note into the finite-band/tower-tail
split:

```text
finite-band nonvanishing
+ RootDefectHighFrequencyTailCharge.A
  -> RootDefectCarrierStableCompactness.A.
```

So `RootDefectFiniteObservableCompactness.A` should be read as the observable
reason for the finite-band projection step, not as a separate live target.  The
open theorem is:

```text
RootDefectHighFrequencyTailCharge.A.
```

It is exactly the noncircular tail law that prevents the orthonormal-mode
countermodel from hiding the normalized unit in ever-higher root/tower modes.
The payment must come from parent-known original-history tower/root currency,
not from produced root clocks.
