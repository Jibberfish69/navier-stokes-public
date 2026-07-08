---
theorem_id: forward-gold-c0-strict-atom-spin2-selector-menu-proof-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / Gate A / strict atom non-axisymmetric spin-2 selector admission
status: conditional-branch-proof-under-strict-atom-birth-custody-and-lower-edge-hypotheses-not-c0-closure
target_object:
  - StrictAtomNonAxisymmetricSpinTwoSelectorMenu.A
  - CausalStoppedSpinTwoSelectorAdmission.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-selector-capture-finite-score-scope-audit-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-common-selector-refinement-parent-announced-capture-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-dimensional-schur-motion-payment-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-axisymmetric-swirl-fixed-endpoint-coefficient-audit-20260708.md
completion_truth: >-
  This note proves only the Gate-A selector-menu branch under strict-atom
  birth/custody and nonzero spin-2 lower-edge hypotheses. It does not prove the
  generic future-positive record-edge selector theorem, the strict atomization
  theorem, the spin-2 lower-edge admission theorem, Gate-B swirl Liouville, or
  c_0>0.
---

# Strict-atom spin-2 selector menu proof

The non-axisymmetric Gate-A branch has enough same-fluid structure to build a
finite stopped menu. The proof is not a generic selector theorem; it uses the
strict atom's inherited carrier, parent frame, material chart, collar, and
birth time before selected record readout.

## 1. Branch theorem

Let \(Q\) be a strict same-fluid participation atom with parent \(P\). Assume:

1. the parent strain frame and normalized packet/collar geometry are fixed
   before \(Q\)'s selected positive readout;
2. the child carrier, material window, and chart/collar address are inherited
   from the parent atomization, or failure is already collar/Field/pass/stop
   material;
3. the non-axisymmetric spin-2 component \(Z_Q(t)\) is a measurable,
   absolutely continuous parent-chart observable in the parent strain frame;
4. the strain eigenvalue gap and spin-2 lower edge are admitted on the retained
   interval:

```math
\mathsf S_A(Q)
\le
C\int_{I_Q}|Z_Q(t)|^2\,dt
+dPaid+dStop+dExit ,
\tag{SAM.1}
```

with \(Z_Q\ne0\) on the positive-service branch.

Then \(Q\)'s non-axisymmetric spin-2 record admits a finite parent-known
stopped detector menu carrying a fixed fraction of the retained service, unless
the branch is paid, stopped, loses its lower edge/gap, exits through
collar/Field, or degenerates to the fixed-axis Gate-B endpoint.

Call this branch statement

```math
\texttt{StrictAtomNonAxisymmetricSpinTwoSelectorMenu.A}.
\tag{SAM.2}
```

## 2. Parent-known finite menu

The spin-2 orientation is a headless line in \(S^1/\pi\). In the parent strain
frame choose once and for all a finite net

```math
\mathcal N_P=\{E_k\}_{k=1}^{K}
\subset S^1/\pi
\tag{SAM.3}
```

so that for every unit spin-2 line \(E\),

```math
\max_k |\langle E,E_k\rangle|\ge c_{\rm net}>0 .
\tag{SAM.4}
```

The menu is parent-known because it is anchored to the parent frame and the
strict atom has fixed normalized geometry. For each \(k\), define the stopped
score

```math
s_k(t)=\langle Z_Q(t),E_k\rangle .
\tag{SAM.5}
```

Since \(Z_Q(t)\) is a parent-chart observable, \(s_k\) is adapted to the
parent material history. For a threshold \(\eta>0\),

```math
\tau_k(\eta)=\inf\{t\in I_Q:\ |s_k(t)|\ge \eta\}
\tag{SAM.6}
```

is a stopped time. The first menu crossing

```math
\tau(\eta)=\min_k\tau_k(\eta)
\tag{SAM.7}
```

is stopped because the menu is finite.

## 3. Capture from the lower edge

By the net property,

```math
\max_k |s_k(t)|\ge c_{\rm net}|Z_Q(t)|.
\tag{SAM.8}
```

If the retained non-axisymmetric branch carries positive service through
\(Z_Q\), the lower-edge admission `(SAM.1)' gives a time set on which
\(|Z_Q|\) crosses a fixed threshold comparable to the normalized record
amplitude. Therefore some \(s_k\) crosses the corresponding parent-known
threshold before the positive record is read. The earliest such crossing fixes
the detector, birth time, orientation cell, and order-lock in a stopped way.

If no finite menu score crosses, then `(SAM.8)' forces the spin-2 lower edge to
vanish. That is not an unpaid Gate-A record; it routes to service-zero/pass,
lower-edge failure, or the fixed-axis Gate-B branch.

## 4. Payment after capture

After the first stopped crossing, there are only two possibilities on the
retained child interval.

If the same finite detector cell remains active, the existing stopped-score
theorem applies to that parent-known score. The Schur motion lemma then pays
later inverse-Gram/frame motion on first-exit slabs.

If the retained edge changes detector cell, loses the eigengap, changes
order-lock, changes chart/collar state, or reselects its carrier/window, the
change is exactly selector drift, tie/gap loss, chart/collar loss, legal/stop
material, or Field material. Those are not silent positive Gate-A service.

Thus, under the strict-atom birth/custody and lower-edge hypotheses,

```math
\begin{aligned}
&\texttt{StrictAtomNonAxisymmetricSpinTwoSelectorMenu.A}\\
&+\texttt{StoppedSelectorFiniteScoreOrPaidDrift.A}\\
&+\texttt{SchurThinAdmissionRule.A}\\
&+\texttt{FiniteDimensionalSchurMotionPayment.A}\\
&\Longrightarrow
\texttt{CausalStoppedSpinTwoSelectorAdmission.A}
\end{aligned}
\tag{SAM.9}
```

for the non-axisymmetric \(m=\pm2\) branch.

## 5. Boundary

This does not prove the generic
\(\texttt{FiniteParentKnownRecordEdgeSelectorMenu.A}\) for arbitrary retained
record edges. The moving-argmax spike obstruction from the selector-capture
audit is still real at that level.

What changes in the \(c_0\) strict-atom Gate-A branch is that the carrier,
packet geometry, parent frame, material chart, and collar address are already
part of the strict atom before selected readout. The finite menu only has to
capture the non-axisymmetric spin-2 orientation inside that fixed same-fluid
object. Compact headless spin-2 geometry and stopped first crossing do that.

The remaining \(c_0\) obligations after this branch proof are:

```math
\texttt{strict atom birth/custody without service loss},
\qquad
\texttt{SpinTwoLowerEdgeGapAdmission.A},
\tag{SAM.10}
```

for Gate A compatibility, and the Gate-B swirl endpoint theorems

```math
\texttt{AxisGammaQuotientCoefficientLiouville.A},
\qquad
\texttt{OffAxisAnnularSwirlEndpointLiouville.A}.
\tag{SAM.11}
```

So Gate A is conditionally discharged on the non-axisymmetric strict-atom
branch once atom birth/custody and the spin-2 lower edge are supplied. The
proof of \(c_0>0\) still needs those inputs and the Gate-B exclusion or branch
classification.
