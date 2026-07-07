---
theorem_id: forward-gold-c0-return-clock-active-density-rn-split-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / selected return admission / inverse-weight clock
status: checked-strict-reduction-and-failed-shortcut-no-c0-closure
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
target_object:
  - ReturnIntervalActiveFibreJacobianDomination.A
  - ReturnClockParentAnnouncedRNDerivative.A
  - ReturnClockActiveDensityAbsoluteContinuity.A
  - ReturnClockRNDerivativeBound.A
  - ActiveCoordinateJacobianCurrentDomination.A
  - ParentKnownNestedActiveDetector.A
  - SameEdgeSelectedReturnInverseWeightCapacity.A
  - ReturnClockActiveNumeratorLowerGate.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-return-fibre-active-density-projection-split-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-return-fibre-before-clipping-admission-direct-test-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-selected-return-inverse-weight-capacity-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-inverse-weight-capacity-parent-active-entropy-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tower-feedback-entropy-l1-attempt-20260630.md  # TFE.1974--2003, 2031--2052, 2459--2504, 2561--2588
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-announceable-active-weight-reset-carleson-cauchy-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-active-weight-compensator-from-scale-memory-storage-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-return-clock-active-weight-compensator-pressure-test-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-return-clock-active-numerator-wlf60-route-measure-reduction-20260707.md
completion_truth: >-
  Strict reduction and failed shortcut only. This note does not prove
  ReturnIntervalActiveFibreJacobianDomination.A, inverse-weight capacity,
  uniform cascade termination, epsilon_* > 0, or c_0 > 0. It proves the
  measure-theoretic form of the current first failed line and blocks one
  tempting false shortcut: ActiveCoordinateJacobianCurrentDomination.A and the
  parent-known entropy chain rule control log-density/coordinate-change
  currency after the active density is parent announced; they do not by
  themselves imply that the harmonic inverse-weight return clock
  w^{-1}d sigma is absolutely continuous with respect to the same
  before-clipping active density. The smaller live theorem is
  ReturnClockParentAnnouncedRNDerivative.A: every retained return clock must be
  pushed forward to the parent active fibre before clipping as a bounded
  Radon-Nikodym submeasure of R_P^+ d mathfrak m_P, with singular clock atoms
  routed to paid first-entry, terminal no-residue, legal, stop, or CM route-out.
  The active-weight compensator pressure test rules out another shortcut:
  StoppedPredictableActiveWeightCompensator.A controls H_I||D||^2 and high-H_I
  upcrossings, where H_I=|I|^2/int_I w^{-1}; it does not dominate the reciprocal
  clock int_I w^{-1}. The remaining producer is the lower active-numerator /
  route-measure gate ReturnClockActiveNumeratorLowerGate.A. The follow-up
  active-numerator reduction classifies that gate as the local return-clock
  coordinate of SelectedLinearRouteMeasureCarleson.A / WLF.60 / ODP.91, not a
  solved producer below that wall.
---

# Return-clock Radon-Nikodym split

## 1. Same physical object

The selected return branch uses two currencies for the same stopped material
score. The square currency is paid by weighted Cauchy along the original
history; the linear BV branch needs the inverse-weight clock

\[
\mu_I:=w^{-1}\,d\sigma\!\restriction_I,
\qquad
A_I=\mu_I(I).
\tag{RCRN.1}
\]

The parent active-density branch controls a different-looking measure:

\[
\nu_P:=R_P^+\,d\mathfrak m_P
\tag{RCRN.2}
\]

on the before-clipping parent active fibre. The current first failed line is
precisely the claim that the return clock in `(RCRN.1)' is already a bounded
submeasure of `(RCRN.2)' on the same retained fibre, before selected return
readout.

## 2. Exact measure split

For each retained return interval \(I\), let

\[
\pi_I:I\longrightarrow F_I\subset\mathfrak S_P
\tag{RCRN.3}
\]

be the parent-announced fibre map supplied by same-edge custody, stopped-line
ancestry, and no-detachment. Push the inverse-weight clock to the fibre:

\[
\lambda_I:=\pi_{I\#}\mu_I .
\tag{RCRN.4}
\]

Then `ReturnIntervalActiveFibreJacobianDomination.A' is exactly

\[
\boxed{
\lambda_I
\le
C_N\,R_P^+\,d\mathfrak m_P\!\restriction_{F_I}
+Paid_I+Legal_I+Stop_I+RouteOut_I .}
\tag{RCRN.5}
\]

Equivalently, after Lebesgue decomposition against \(d\mathfrak m_P\),

\[
\lambda_I
=g_I\,d\mathfrak m_P+\lambda_I^\perp ,
\tag{RCRN.6}
\]

the theorem requires

\[
\lambda_I^\perp=0
\quad\text{or paid/routed out,}
\tag{RCRN.7}
\]

and

\[
g_I\le C_NR_P^+
\quad d\mathfrak m_P\text{-a.e. on }F_I
\tag{RCRN.8}
\]

up to paid, legal, stop, and typed route-out terms.

Thus the current first failed line splits as

\[
\begin{aligned}
&\texttt{ReturnClockActiveDensityAbsoluteContinuity.A}\\
&+\texttt{ReturnClockRNDerivativeBound.A}\\
&\Longrightarrow
\texttt{ReturnIntervalActiveFibreJacobianDomination.A}.
\end{aligned}
\tag{RCRN.9}
\]

This is a real reduction because `(RCRN.7)' and `(RCRN.8)' are different
failure modes. A singular return clock is a zero-baseline or terminal-entry
problem. An absolutely continuous but too-large density is an active-coordinate
Jacobian/current domination problem in the same parent measure.

## 3. Why the entropy/Jacobian shortcut does not prove it

Sections 167--168 and 173 of the tower-feedback entropy note prove an exact
entropy mechanism once the active detector is parent-known. In that language,
the selected active density \(F\,d\Lambda_P\) has parent-known conditional
densities \(F_\sigma\), admitted ratios

\[
r_i={F_{\sigma_i}\over F_{\sigma_{i-1}}},
\tag{RCRN.10}
\]

and the Radon-Nikodym chain rule gives

\[
\sum_i\int F_{\sigma_{i-1}}\Phi(r_i)\,d\Lambda_P
\le
\operatorname{Ent}_{\Lambda_P}(F).
\tag{RCRN.11}
\]

The feedback-coordinate change contributes the log-Jacobian term

\[
\mathcal J^+_{P\to Q}
=
\int_Q
\left(\log{d\widehat{\mathcal R}_Q\over d\mathcal R_Q}\right)_+
d\mu_Q^{act},
\tag{RCRN.12}
\]

and `ActiveCoordinateJacobianCurrentDomination.A' says this log-coordinate
cost is paid by same-parent current, legal, or stop material.

That is not yet `(RCRN.5)'. The entropy theorem controls density ratios and
positive log-coordinate growth after the parent active measure has been
announced. The return theorem asks that the separate harmonic Cauchy clock
\(w^{-1}d\sigma\) itself be a bounded submeasure of that same active density.
Without `(RCRN.5)', the proof has only shown that admitted density ratios do
not recount; it has not shown that the inverse-weight clock was admitted.

A countercheck makes the distinction sharp. Let \(F_\ell\) be disjoint parent
fibres, set \(R_P^+=1\), and let

\[
\mathfrak m_P(F_\ell)={2^{-\ell}\over \ell+1}.
\tag{RCRN.13}
\]

Then the parent active mass is finite and the active-coordinate Jacobian can be
trivial:

\[
\int R_P^+\,d\mathfrak m_P<\infty,
\qquad
J_{P\to Q}=1,
\qquad
\mathcal J^+_{P\to Q}=0.
\tag{RCRN.14}
\]

But if the retained inverse-weight clocks push forward with

\[
\lambda_I(F_\ell)={1\over \ell+1},
\tag{RCRN.15}
\]

then

\[
\sum_\ell\lambda_I(F_\ell)=\infty
\tag{RCRN.16}
\]

while the entropy/Jacobian shortcut sees no positive coordinate-change cost.
The failure is exactly the missing Radon-Nikodym domination
\(\lambda_I\le C_NR_P^+d\mathfrak m_P\).

So `ActiveCoordinateJacobianCurrentDomination.A' is relevant only after the
return clock has been identified as the coordinate-change/readout measure of
the same parent active fibre. It is not a standalone proof of inverse-weight
capacity.

## 4. Active-weight compensator pressure test

The active-weight/root-weight route also does not prove `(RCRN.5)' by itself.
It controls the reciprocal square currency

\[
H_I={|I|^2\over\int_Iw^{-1}d\sigma},
\qquad
H_I\|D_I\|^2
\lesssim
\int_Iw\|G_I\|^2+Legal,
\tag{RCRN.17}
\]

plus the paid upcrossing compensator for \(H_I\). This is the correct high-weight
reset theorem, but it is pointed at the opposite side of the ratio: large
\(H_I\) means small inverse clock. The return-clock RN theorem asks for control
of

\[
A_I:=\int_Iw^{-1}d\sigma
\tag{RCRN.18}
\]

itself after pushforward to the parent active fibre.

A bounded active-weight square charge can coexist with divergent inverse-clock
mass. For instance, with \(|I_\ell|=(\ell+1)^{-2}\),
\(A_\ell=(\ell+1)^{-1}\), and \(\|D_\ell\|\simeq1\), one has

\[
H_\ell={|I_\ell|^2\over A_\ell}=(\ell+1)^{-3},
\qquad
\sum_\ell H_\ell\|D_\ell\|^2<\infty,
\qquad
\sum_\ell A_\ell=\infty.
\tag{RCRN.19}
\]

Thus the compensator can pay the square/reset side while the linear return clock
still fails parent-active domination. The surviving nonduplicate producer is the
lower active-numerator gate:

\[
\boxed{\texttt{ReturnClockActiveNumeratorLowerGate.A}.}
\tag{RCRN.20}
\]

It is the return-clock form of the same-parent route-measure line
\(\texttt{WLF.60}\): the before-clipping parent active numerator may not vanish
down shrinking low-\(H_I\), large-\(A_I\) tubes.

The active-numerator follow-up sharpens this classification. Once the
parent-known return coarea map identifies \(w^{-1}d\sigma\) with the selected
first-ratio linear readout, `ReturnClockActiveNumeratorLowerGate.A' is the local
Radon-Nikodym version of `SelectedLinearRouteMeasureCarleson.A' / WLF.60 /
ODP.91. It is therefore not a new proof source below WLF.60; it is the same
linear bill in return-clock coordinates.

## 5. Smaller live theorem

The noncircular producer now has a sharper name:

\[
\boxed{\texttt{ReturnClockParentAnnouncedRNDerivative.A}.}
\tag{RCRN.21}
\]

It states that every retained selected return interval has a parent-announced
clock map `(RCRN.3)' such that `(RCRN.5)' holds before clipping. Internally it
has three clauses:

\[
\begin{array}{ll}
\text{clock map/coarea:}
&\pi_I \text{ is built from the stopped scale-memory/return coordinate before readout,}\\[1mm]
\text{no singular clock:}
&\lambda_I^\perp \text{ is zero, paid, legal, stopped, terminal no-residue, or CM route-out,}\\[1mm]
\text{density bound:}
&d\lambda_I/d\mathfrak m_P\le C_NR_P^+ \text{ plus paid/legal/stop material.}
\end{array}
\tag{RCRN.22}
\]

The first clause is custody/coarea. The second is the zero-baseline or terminal
first-entry branch from Sections 222--224 of the tower-feedback entropy note:
singular entry must be admitted as endpoint/native-birth capacity before it is
counted. The third is where `ActiveCoordinateJacobianCurrentDomination.A' can
enter: once the return clock has been identified with the same parent
coordinate change, the log-Jacobian/current theorem pays the nontrivial
density amplification.

Thus the sharper reduction is

\[
\begin{aligned}
&\texttt{ReturnClockParentAnnouncedRNDerivative.A}\\
&+\texttt{RetainedReturnIntervalSameEdgeCustodyInjection.A}\\
&+\texttt{ReturnFibreBoundedOverlapFromFiniteMenu.A}\\
&+\texttt{ReturnFibreNoDetachmentClosedGraph.A}\\
&\Longrightarrow
\texttt{ReturnFibreBeforeClippingActiveDensityProjection.A}.
\end{aligned}
\tag{RCRN.23}
\]

Together with the existing parent-active entropy source package,

\[
\begin{aligned}
&\texttt{ReturnClockParentAnnouncedRNDerivative.A}\\
&+\texttt{BeforeClippingActiveDensityComparison.A}
+\texttt{FullExchangeCriticalDepletionStorage.A}\\
&\Longrightarrow
\texttt{SameEdgeSelectedReturnInverseWeightCapacity.A}\\
&\Longrightarrow
\texttt{SameEdgeSelectedReturnAdmissionToLinearBV.A}.
\end{aligned}
\tag{RCRN.24}
\]

The producer itself is now split as

\[
\begin{aligned}
&\texttt{ReturnClockParentKnownCoarea.A}\\
&+\texttt{ReturnClockNoSingularEntryOrPaidRouteOut.A}\\
&+\texttt{ReturnClockActiveNumeratorLowerGate.A}\\
&\Longrightarrow
\texttt{ReturnClockParentAnnouncedRNDerivative.A}.
\end{aligned}
\tag{RCRN.25}
\]

The first two clauses are custody and routing. The third clause is the
unproved weighted linear service theorem.

## 6. Current proof truth

This does not prove \(\varepsilon_*>0\). It replaces the broad phrase
"return-fibre Jacobian domination" by the exact clock-measure theorem that must
be proved from the original packet.

The first failed line is now:

\[
\boxed{\texttt{ReturnClockParentAnnouncedRNDerivative.A}.}
\tag{RCRN.26}
\]

The older entropy/Jacobian surfaces are not discarded. They are the likely
ac/density part of `(RCRN.18)'. The missing part is the admission of the
harmonic inverse-weight clock \(w^{-1}d\sigma\) itself into the same
before-clipping parent active measure, with singular clock mass paid or routed
before selected return readout.

Inside that theorem, the first producer to attack is now
\[
\boxed{\texttt{ReturnClockActiveNumeratorLowerGate.A}.}
\tag{RCRN.27}
\]
The stopped active-weight compensator remains support for the reset/high-\(H_I\)
side; it does not prove this low-\(H_I\), large inverse-clock admission gate.
