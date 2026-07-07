---
theorem_id: forward-gold-c0-return-fibre-active-density-projection-split-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / selected return admission / return fibre projection
status: checked-strict-reduction-not-proof-no-c0-closure
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
target_object:
  - ReturnFibreBeforeClippingActiveDensityProjection.A
  - RetainedReturnIntervalSameEdgeCustodyInjection.A
  - ReturnFibreBoundedOverlapFromFiniteMenu.A
  - ReturnIntervalActiveFibreJacobianDomination.A
  - ReturnFibreNoDetachmentClosedGraph.A
  - SameEdgeSelectedReturnInverseWeightCapacity.A
  - ReturnClockActiveNumeratorLowerGate.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-inverse-weight-capacity-parent-active-entropy-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-selected-return-inverse-weight-capacity-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-pre-readout-custody-tuple-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-selector-capture-finite-score-scope-audit-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-edge-no-detachment-producer-topology-synthesis-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-admission-same-edge-closed-graph-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-admission-no-detachment-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tower-feedback-entropy-l1-attempt-20260630.md  # TFE.2494-TFE.2504
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-return-clock-active-density-rn-split-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-return-clock-active-weight-compensator-pressure-test-20260707.md
completion_truth: >-
  Strict reduction only. This note does not prove
  ReturnFibreBeforeClippingActiveDensityProjection.A, inverse-weight capacity,
  epsilon_* > 0, or c_0 > 0. It proves the internal split forced by the
  checked custody and active-density surfaces. Same-edge custody, finite menu,
  stopped-line ancestry, and no-detachment supply the correct physical
  container for return fibres, but they do not by themselves dominate
  \int_I w^{-1}d\sigma by the before-clipping active density. The newly exposed
  nonduplicate analytic clause is ReturnIntervalActiveFibreJacobianDomination.A:
  the inverse-weight return clock must be the Radon-Nikodym/Jacobian shadow of
  the same parent active density, before selected return readout. Without that
  clause, a half-tail can satisfy finite menu, bounded overlap, and no-recount
  support while the inverse-weight capacity diverges.
---

# Return-fibre projection splits at the inverse-weight Jacobian

## 1. Same physical object

The return-fibre projection asks whether a retained selected return interval
is already a fibre of the same before-clipping parent active measure that later
pays the positive record.

For a retained return interval \(I\),
\[
A_I=\int_I w^{-1}\,d\sigma .
\tag{RFS.1}
\]

The parent-active entropy reduction proved that inverse-weight capacity follows
once \(A_I\) is dominated by the before-clipping parent active density on a
bounded-overlap fibre:
\[
A_I
\le
C_N\int_{F_I}R_P^+\,d\mathfrak m_P
+Paid_I+Legal_I+Stop_I+RouteOut_I .
\tag{RFS.2}
\]

This note tests whether `(RFS.2)' follows from the installed custody surfaces.
It does not. The custody surfaces supply the right same-edge address; they do
not supply the inverse-weight Jacobian domination.

## 2. Four-clause split

The noncircular projection theorem is:
\[
\texttt{ReturnFibreBeforeClippingActiveDensityProjection.A}.
\tag{RFS.3}
\]

It splits into four clauses.

First, same-edge injection:
\[
\texttt{RetainedReturnIntervalSameEdgeCustodyInjection.A}.
\tag{RFS.4}
\]
Every retained selected return interval \(I\) must be attached before readout
to the same parent selector, primitive face, material chart, stopped-line
ancestry, and root/full-exchange bill address as the record edge. Failure is
paid, legal, stopped, or routed out.

Second, bounded fibre overlap:
\[
\texttt{ReturnFibreBoundedOverlapFromFiniteMenu.A}.
\tag{RFS.5}
\]
The fibres \(F_I\subset\mathfrak S_P\) built from those return intervals satisfy
\[
\sum_I{\bf 1}_{F_I}\le C_N
\tag{RFS.6}
\]
on the parent active space. This is the return-side use of finite parent-known
selector menu, stopped-line ancestry, and no-recount support.

Third, inverse-weight Jacobian domination:
\[
\boxed{\texttt{ReturnIntervalActiveFibreJacobianDomination.A}}
\tag{RFS.7}
\]
meaning exactly `(RFS.2)'. This is the clause that says the inverse-weight
clock \(w^{-1}d\sigma\) of the selected return is the Radon-Nikodym/Jacobian
shadow of the same before-clipping active density \(R_P^+d\mathfrak m_P\).

Fourth, closed graph/no-detachment:
\[
\texttt{ReturnFibreNoDetachmentClosedGraph.A}.
\tag{RFS.8}
\]
The relation \(I\mapsto F_I\) must persist through normalized compactness;
selector drift, chart drift, detector/channel drift, or face-address drift is
paid, legal, stopped, or a typed route-out before the selected return is
counted.

Together:
\[
\begin{aligned}
&\texttt{RetainedReturnIntervalSameEdgeCustodyInjection.A}\\
&+\texttt{ReturnFibreBoundedOverlapFromFiniteMenu.A}\\
&+\texttt{ReturnIntervalActiveFibreJacobianDomination.A}\\
&+\texttt{ReturnFibreNoDetachmentClosedGraph.A}\\
&\Longrightarrow
\texttt{ReturnFibreBeforeClippingActiveDensityProjection.A}.
\end{aligned}
\tag{RFS.9}
\]

Proof. The first clause assigns each retained return interval to the same
physical parent edge before readout. The second makes the assigned fibres
summable without duplicate spending. The third gives `(RFS.2)' on each fibre.
The fourth prevents the assignment from changing in the limiting/normalized
record passage. Therefore the definition of
`ReturnFibreBeforeClippingActiveDensityProjection.A' is satisfied.

## 3. What existing custody surfaces supply

The current same-edge custody notes support the first, second, and fourth
clauses only conditionally.

The pre-readout custody tuple says the edge must be selected, charted,
detected/service-paid, and face-addressed before record readout:
\[
\texttt{RetainedRecordEdgePreReadoutCustodyTuple.A}.
\tag{RFS.10}
\]

The selector-capture audit says finite stopped scores pay motion only after a
finite parent-known menu has captured the edge:
\[
\texttt{FiniteParentKnownRecordEdgeSelectorMenu.A}.
\tag{RFS.11}
\]

The no-detachment and closed-graph notes say compactness must preserve the same
selected, charted, detector-paid, face-admitted edge:
\[
\texttt{SameEdgeNoDetachmentModulus.A}
\quad\text{and}\quad
\texttt{RetainedRecordEdgePreReadoutCustodyClosedGraph.A}.
\tag{RFS.12}
\]

These surfaces give the right container for \(F_I\), once their own open source
clauses are proved. They do not prove `(RFS.7)'.

Thus the sharpened sufficient package is
\[
\begin{aligned}
&\texttt{RetainedRecordEdgePreReadoutCustodyTuple.A}\\
&+\texttt{FiniteParentKnownRecordEdgeSelectorMenu.A}\\
&+\texttt{RetainedRecordEdgeStoppedLineBeforeReadout.A}\\
&+\texttt{SameEventNoRecountFirstRatioBillCurrency.A}\\
&+\texttt{SameEdgeNoDetachmentModulus.A}\\
&+\texttt{ReturnIntervalActiveFibreJacobianDomination.A}\\
&\Longrightarrow
\texttt{ReturnFibreBeforeClippingActiveDensityProjection.A}.
\end{aligned}
\tag{RFS.13}
\]

This is a reduction. It is not a proof, because several inputs in `(RFS.13)'
are themselves open, and `(RFS.7)' is not supplied by the custody notes.

## 4. Half-tail countercheck

Finite menu, bounded overlap, and no-recount can all hold while inverse-weight
capacity fails if `(RFS.7)' is absent.

Take disjoint candidate fibres \(F_\ell\), so `(RFS.6)' holds. Let their
before-clipping selected density mass be
\[
\int_{F_\ell}R_P^+\,d\mathfrak m_P
= {2^{-\ell}\over \ell+1}.
\tag{RFS.14}
\]
The parent selected \(L^1\) mass is finite:
\[
\sum_\ell {2^{-\ell}\over \ell+1}<\infty.
\tag{RFS.15}
\]

But if the inverse-weight return clock is not dominated by that active density,
the selected return intervals may still carry
\[
A_\ell=\int_{I_\ell}w^{-1}\,d\sigma={1\over \ell+1},
\tag{RFS.16}
\]
so
\[
\sum_\ell A_\ell=\infty .
\tag{RFS.17}
\]

This is the same half-tail in return-fibre language. The parent active density
can be finite, and the fibres can be disjoint, while the inverse-weight return
capacity diverges unless the return clock is the active-density Jacobian of the
same parent fibre.

## 5. Consequence for the active route

The selected-return part of the \(L^2\to L^3\) to \(\varepsilon_*\) route now
has the sharper chain
\[
\begin{aligned}
&\texttt{ReturnIntervalActiveFibreJacobianDomination.A}\\
&+\texttt{RetainedRecordEdgePreReadoutCustodyTuple.A}\\
&+\texttt{FiniteParentKnownRecordEdgeSelectorMenu.A}\\
&+\texttt{RetainedRecordEdgeStoppedLineBeforeReadout.A}\\
&+\texttt{SameEdgeNoDetachmentModulus.A}\\
&+\texttt{FullExchangeCriticalDepletionStorage.A}
+\texttt{BeforeClippingActiveDensityComparison.A}\\
&\Longrightarrow
\texttt{SameEdgeSelectedReturnInverseWeightCapacity.A}.
\end{aligned}
\tag{RFS.18}
\]

The new first failed line inside the return-fibre projection is
\[
\boxed{\texttt{ReturnIntervalActiveFibreJacobianDomination.A}.}
\tag{RFS.19}
\]

The return-clock Radon-Nikodym split sharpens `(RFS.19)' further. The
entropy/Jacobian machinery in the tower-feedback note controls admitted density
ratios and active-coordinate changes, but it does not by itself prove that the
harmonic inverse-weight clock \(w^{-1}d\sigma\) is a submeasure of the same
before-clipping active density. The nonduplicate clock theorem is therefore
\[
\boxed{\texttt{ReturnClockParentAnnouncedRNDerivative.A}.}
\tag{RFS.20}
\]
It says the pushed return clock \(\pi_{I\#}(w^{-1}d\sigma|_I)\) is absolutely
continuous with respect to \(d\mathfrak m_P\), has density bounded by
\(C_NR_P^+\), and has any singular clock mass paid, stopped, legal, terminal
no-residue, or CM-routed before selected return readout.

In physical terms: the proof still has to show that the selected return
clock \(w^{-1}d\sigma\) is read from the same before-clipping parent active
density that the full-exchange ledger controls. Same-edge custody tells us
which edge the return belongs to; it does not yet prove that this edge's
inverse-weight clock is quantitatively carried by \(R_P^+d\mathfrak m_P\).

The active-weight compensator pressure test rules out the nearest shortcut. The
compensator pays \(H_I\|D_I\|^2\) and new high-\(H_I\) upcrossings, where
\[
H_I={|I|^2\over\int_Iw^{-1}d\sigma}.
\tag{RFS.21}
\]
That is reciprocal square control, not domination of the linear inverse clock.
The smaller source inside `(RFS.20)' is
\[
\boxed{\texttt{ReturnClockActiveNumeratorLowerGate.A}.}
\tag{RFS.22}
\]
It is the return-fibre version of the \(WLF.60\) route-measure bound.

No proof of \(\varepsilon_*>0\) or \(c_0>0\) is claimed.
