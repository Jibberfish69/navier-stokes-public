---
theorem_id: forward-gold-c0-fixed-stopped-score-square-to-linear-bv-gap-audit-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / stopped primitive record-return / root-geometry currency
status: checked-correction-root-geometry-square-not-linear-bv-without-admission
target_objects:
  - StoppedReturnBVFiniteFromOriginalData.A
  - StoppedNegativeScaleReturnCharge.A
  - StoppedPredictableRootGeometryCompensator.A
  - OriginalHistorySelectedPotentialAmplificationBV.A
  - OriginalHistorySelectedAmplificationBV.A
  - SelectedGeneratorStorageCoercivity.A
  - FixedStoppedScoreReturnBVClosure.ScopeCorrection
source_refs:
  - problems/navier-stokes/spine.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fixed-stopped-score-return-bv-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-packet-return-bv-producer-test-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-negative-scale-return-bv-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-pls-no-free-oscillation-balance-law-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-stopped-primitive-lift-consumer-producer-scope-audit-20260707.md
completion_truth: >-
  Strict correction, not c_0 closure.  The fixed stopped score P_R=Gamma_R Z^S
  supplies a noncircular derivative identity and a root-weighted square payment
  for stopped returns.  It does not by itself supply raw linear BV of the
  retained one-way record.  Linear BV requires selected return admission, a
  lower-size/thickness clause, or bounded inverse-weight length in the same
  parent-owned currency.  Thus the older fixed-stopped-score closure is valid
  only relative to those admission clauses; it cannot remove the c_0
  record/return branch by root-geometry square control alone.
---

# Fixed stopped score: square-to-linear BV gap audit

The physical object is the same stopped material score

\[
P_R=\Gamma_R Z^S
\tag{1}
\]

on the same pressure-viscosity-incompressibility history.  The useful part of
the fixed-score branch is real: if the parent-known channel \(\Gamma_R\) exists
before positive readout, return of the score is not a detached scalar
oscillation.  Moving \(P_R\) spends original rooted carrier, selector, frame,
exchange, covector, connection, legal, or stop motion.

The correction is about currency.  The root geometry pays a square action.  The
c0 record counts retained one-way BV linearly.  Those are not equivalent without
an admission theorem saying every retained reset is visible to the square
currency.

## 1. What the fixed score proves

On a fixed stopped core the derivative identity is

\[
\partial_\sigma P_R
=
\Gamma_R(\partial_\sigma Z^S)
+(\partial_\sigma\Gamma_R)Z^S .
\tag{2}
\]

The second term is selector/frame/connection motion, not a free scalar error.
For a stopped return interval \(I\),

\[
\Delta_I^-P_R=[P_R(\sigma_-)-P_R(\sigma_+)]_+ .
\tag{3}
\]

Weighted Cauchy gives

\[
(\Delta_I^-P_R)^2
\le
\left(\int_I w^{-1}\,d\sigma\right)
\left(\int_I w|\partial_\sigma P_R|^2\,d\sigma\right).
\tag{4}
\]

With

\[
H_I={|I|^2\over\int_Iw^{-1}\,d\sigma},
\tag{5}
\]

this is the harmonic square return estimate

\[
H_I\left({\Delta_I^-P_R\over |I|}\right)^2
\le
\int_I w|\partial_\sigma P_R|^2\,d\sigma .
\tag{6}
\]

After bounded stopped overlap and the derivative identity, the available
original-history payment is

\[
\sum_I
H_I\left({\Delta_I^-P_R\over |I|}\right)^2
\le
C_N\int_{\operatorname{Hist}(P)}
w|G_{\rm root}|^2
+R_{\rm legal}(P)+Stop(P).
\tag{7}
\]

This is the correct noncircular content of the fixed stopped score.  It says
negative return is not an independent scalar signal once the parent-known
channel is already fixed.

## 2. What it does not prove

The linear record/return statement is

\[
\sum_I\Delta_I^-P_R
\le
C_N(u_0)+R_{\rm legal}+Stop .
\tag{8}
\]

Equation `(8)` does not follow from `(7)` alone.  Define the normalized return
quanta

\[
a_I=\sqrt{H_I}\,{\Delta_I^-P_R\over |I|}.
\tag{9}
\]

The square estimate gives

\[
\sum_I a_I^2<\infty .
\tag{10}
\]

But the linear BV reads

\[
\sum_I\Delta_I^-P_R
=
\sum_I { |I|\over \sqrt{H_I}}\,a_I .
\tag{11}
\]

Thus square control implies linear BV only after the coefficient sequence
\(|I|/\sqrt{H_I}\) is summable in the relevant selected family, or after a
selected lower-size/thickness rule turns each retained return into a square-paid
event.  Without that admission, the abstract sequence \(a_k=1/k\) is already the
warning: \(\sum a_k^2<\infty\) while \(\sum a_k=\infty\).  The exact interval
weights decide how this warning is realized in the stopped family, but the
logical gap is independent of the model sequence.

Physically, root geometry sees quadratic motion of the score.  The c0 branch
counts one-way retained resets.  Infinitely many tiny resets can have finite
quadratic action unless the same parent-owned selector admits those resets as
thick, retained, bill-visible events.

## 3. The older closure note must be read conditionally

The older note
`mpp-forward-gold-fixed-stopped-score-return-bv-closure-20260627.md` writes, in
effect,

\[
\text{fixed parent-known channel}
+
\text{root-weighted derivative currency}
\Longrightarrow
\texttt{StoppedReturnBVFiniteFromOriginalData.A}.
\tag{12}
\]

The later original-packet producer test corrects this.  The valid reading is

\[
\begin{gathered}
\text{fixed parent-known channel}
+\text{root-weighted square currency}\\
+\text{selected return admission / lower thickness / bounded inverse-weight length}
\end{gathered}
\Longrightarrow
\texttt{StoppedReturnBVFiniteFromOriginalData.A}.
\tag{13}
\]

The missing admission can be stated in any of the equivalent local forms used
there:

\[
\Delta_I^-P_R\ge \eta |I|
\quad\text{on retained selected returns,}
\tag{14}
\]

or

\[
\sum_I\int_I w^{-1}\,d\sigma
\le
C_N\mathcal R(P)+R_{\rm legal}+Stop,
\tag{15}
\]

or the selected normalization saying retained returns are counted in the
harmonic square currency `(7)`.

## 4. Consequence for c0

The repeated-core record/return branch is not an independent source of \(c_0\),
but it is also not already solved by the fixed stopped score.  It collapses to
the same selected generator/root-geometry producer named in the current spine:

\[
\texttt{MaterialAdjointAccretiveTestingData.A}
/
\texttt{StoppedAdjointTestingEnergyCarleson.A}
\Longrightarrow
\texttt{SelectedGeneratorStorageCoercivity.A}
\Longrightarrow
\texttt{StoppedPredictableRootGeometryCompensator.A}.
\tag{16}
\]

In physical words: the score exists before readout only after the same parent
owns the channel, and the square motion of that score becomes linear one-way
record payment only after the selected returns are admitted as retained
bill-visible events.  This is the same c0 epsilon-extraction wall, not a
discharged side branch.
