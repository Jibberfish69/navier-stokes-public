---
theorem_id: forward-gold-c0-curvature-spike-spatial-thickness-temporal-admission-reduction-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / exact-projector chart curvature spike
status: strict-reduction-spatial-thickness-proved-temporal-chart-payer-admission-open
target_object:
  - RetainedCurvatureSpikeThicknessOrCharge.A
  - RetainedCurvatureSpikeChartPayerAdmission.A
  - TemporalRecordThicknessChargeBillCurrency.A
  - SameParentRecordPositiveSelectionStorage.A
  - RetainedRecordEdgeExactProjectorChartLicense.A
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
  corrected_terms:
    - incompressible
    - viscous
    - dissipative
    - pressure-constrained
    - irreversible
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-morrey-envelope-thickness-charge-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-curvature-lowpass-collapses-to-higher-projector-service-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-flow-curvature-tower-bill-or-exit-direct-test-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-c11-metric-tower-or-exit-direct-test-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-temporal-thin-theta-payer-lsc-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-E4-temporal-pinch-charge-bill-currency-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-theta-payer-measure-lift-gate2-admission-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-local-thickness-charge-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-prereturn-face-trace-local-thickness-reduction-20260704.md
completion_truth: >-
  Strict reduction only. For the retained exact-projector chart row, the
  low-pass spatial half of RetainedCurvatureSpikeThicknessOrCharge.A is not an
  independent producer: once coefficient curvature is represented below the
  active shell, Bernstein geometry gives active spatial thickness at each
  retained interior record time, modulo boundary/collar/chart-transfer service.
  The remaining non-formal part is temporal and admissive: the low-pass
  curvature superlevel must be admitted before readout as a same-chart
  nonnegative payer/charge coordinate, and then temporal thinning is the
  already-open TemporalRecordThicknessChargeBillCurrency.A /
  SameParentRecordPositiveSelectionStorage.A wall. This does not prove the
  chart payer admission theorem, does not prove the temporal bill-currency
  theorem, and does not close c_0.
---

# Curvature spike thickness splits into spatial Bernstein and temporal admission

## 1. Same-fluid chart object

The object is one retained future-positive signed-height record edge at active
shell \(2^j\). Its exact pressure projector is governed by the same material
metric

\[
G=AA^\top,\qquad A=(D_aX)^{-1}.
\tag{CST.1}
\]

After the high-frequency coefficient-curvature branch has been assigned to
higher-projector service, the remaining metric-side object is the low-pass
curvature readout

\[
K_j^{lo}=P_{<j-C}^{mat}
\left(2^{-j}|\nabla^2u|+2^{-2j}|\nabla^3u|\right)\circ X.
\tag{CST.2}
\]

This is still the same fluid-field-object. It is not a scalar proxy detached
from the record edge: it measures how fast the material chart of that same high
packet bends while the exact pressure/incompressibility projector is trying to
follow it.

## 2. Fixed-time spatial thickness is forced by low-pass

At one retained interior record time, suppose

\[
\|K_j^{lo}(\cdot,t)\|_{L^\infty(e_t)}\ge \lambda.
\tag{CST.3}
\]

Because \(K_j^{lo}\) is material-frequency \(<j-C\), Bernstein gives

\[
\|\nabla_aK_j^{lo}(\cdot,t)\|_{L^\infty}
\le C\,2^j\|K_j^{lo}(\cdot,t)\|_{L^\infty}.
\tag{CST.4}
\]

At a point \(a_*\) with \(K_j^{lo}(a_*,t)\ge\lambda\), the ball

\[
B(a_*,c2^{-j})
\tag{CST.5}
\]

has \(K_j^{lo}\ge\lambda/2\), after shrinking \(c\) by the Bernstein constant.
Thus the retained interior branch gives

\[
\left|\{a\in e_t:K_j^{lo}(a,t)\ge\lambda/2\}\right|
\ge c_e2^{-3j}.
\tag{CST.6}
\]

If the ball in `(CST.5)' leaves the retained chart, hits a cutoff boundary, or
uses a collar where the exact projector is no longer the same retained symbol,
that is not a failure of spatial thickness. It is chart-transfer, collar,
higher-projector service, legal material, stop, or exit. Those are already the
other side of the exact-projector chart row.

So the spatial half of `RetainedCurvatureSpikeThicknessOrCharge.A' is not a
new c0 producer. Low-pass coefficient curvature either has active spatial
thickness at the record scale or has left the retained chart story.

## 3. The surviving issue is temporal and admissive

The remaining escape is a time pinch. A sequence can have fixed-time spatial
thickness as in `(CST.6)' while the record-relevant times shrink:

\[
I_n\to\{t_*\},\qquad |I_n|\to0.
\tag{CST.7}
\]

Then the averaged Field/viscous bill can still miss the positive chart service
unless that service has already been admitted as a same-chart nonnegative payer
coordinate before readout.

This is the exact same measure mechanism as the temporal-thin theta row. Once a
positive service measure is admitted on a compact material-time window, a unit
amount on shrinking intervals survives as a nonzero time atom. The temporal-thin
lemma proves that compact measure step. It does not construct the payer.

Thus the required chart bridge is:

\[
\texttt{RetainedCurvatureSpikeChartPayerAdmission.A}.
\tag{CST.8}
\]

It says that a retained low-pass curvature superlevel selected by the exact
projector chart is, before readout, either carried as the same retained edge's
nonnegative chart payer/charge in parent bill currency, or is routed to
higher-projector service, legal, stop, chart-transfer, Pack/Part/Field, or
parentless post-readout loss.

## 4. Reduction of the thickness theorem

Combining the fixed-time spatial argument with the temporal-pinch bill-currency
row gives:

\[
\begin{aligned}
&\texttt{RetainedCurvatureSpikeChartPayerAdmission.A}\\
&+\texttt{TemporalRecordThicknessChargeBillCurrency.A}
\end{aligned}
\Longrightarrow
\texttt{RetainedCurvatureSpikeThicknessOrCharge.A},
\tag{CST.9}
\]

modulo the already-separated higher-projector, legal, stop, chart-transfer, and
exit branches.

The temporal-pinch file further reduces

\[
\texttt{TemporalRecordThicknessChargeBillCurrency.A}
\quad\text{to}\quad
\texttt{SameParentRecordPositiveSelectionStorage.A}
\tag{CST.10}
\]

for the bill branch. Therefore the exact-projector chart residue rejoins the
same parent-owned positive-record bill-currency wall once the curvature spike is
admitted as the same retained edge's chart payer.

## 5. Current truth state

Installed here:

\[
\text{low-pass chart curvature}
\Longrightarrow
\text{fixed-time spatial thickness or chart service/exit}.
\tag{CST.11}
\]

Still open:

\[
\texttt{RetainedCurvatureSpikeChartPayerAdmission.A}
\quad\text{and}\quad
\texttt{TemporalRecordThicknessChargeBillCurrency.A}.
\tag{CST.12}
\]

So `RetainedCurvatureSpikeThicknessOrCharge.A' should no longer be treated as a
raw spatial-thickness wall. Its non-formal content is the pre-readout admission
of the low-pass chart-curvature spike into the same parent-owned positive
record bill currency, followed by the existing temporal bill-currency/storage
problem. This is a shrink, not a proof of \(c_0\).
