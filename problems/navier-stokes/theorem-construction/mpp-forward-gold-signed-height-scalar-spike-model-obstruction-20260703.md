---
theorem_id: forward-gold-signed-height-scalar-spike-model-obstruction-20260703
status: checked-scalar-obstruction-installed
created: 2026-07-03
problem: navier-stokes
route: forward-gold-signed-critical-height-restart
logical_landing_node: SignedHeightScalarSpikeModelObstruction.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-ns-unified-physical-roof-control-synthesis-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-peak-control-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-upcrossing-criterion-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-thin-record-upcrossing-production-obstruction-20260703.md
completion_truth: >-
  This is a checked obstruction, not Gold closure. It constructs a scalar
  signed-height model satisfying the signed height equation, the critical product
  bound, and finite L^2_t height, while still allowing unbounded record peaks.
  Therefore scalar signed-height information alone cannot prove the Gold peak
  bound; the missing theorem must use the same-fluid spatial packet structure.
---

# Signed-height scalar spike model obstruction

## 1. Physical boundary

The actual Navier-Stokes problem has one evolving velocity field, pressure,
transport, viscosity, incompressibility, dissipation, scale, sign, alignment, and
time. The signed scalar readout is

\[
H(t)={1\over2}\|\Lambda^{1/2}u(t)\|_2^2,
\qquad
{dH\over dt}=P(t)-\nu D(t),
\qquad
D(t)=\|\Lambda^{3/2}u(t)\|_2^2.
\tag{SSM.1}
\]

The scalar route keeps only \(H,P,D\). It forgets the same-fluid carrier that
would say where the nonlinear work lived before the record was read.

This note checks whether the scalar data alone can rule out high thin records.
It cannot.

## 2. Scalar axioms being tested

Fix \(C>0\) and \(\nu>0\). The direct scalar route uses:

\[
H'(t)=P(t)-\nu D(t),
\qquad
D(t)\ge0,
\qquad
|P(t)|\le C H(t)^{1/2}D(t),
\tag{SSM.2}
\]

and the original-data shadow

\[
\int_0^T H(t)^2\,dt<\infty .
\tag{SSM.3}
\]

The question is whether `(SSM.2)' and `(SSM.3)' force
\(\sup_{t<T}H(t)<\infty\).

## 3. Spike construction

Choose \(H_*>0\) so that

\[
C H_*^{1/2}>2\nu .
\tag{SSM.4}
\]

Let \(M_j\to\infty\), for example \(M_j=2^jH_*\). Choose disjoint time intervals
\(I_j\subset[0,T)\) with lengths \(\varepsilon_j\) such that

\[
\sum_j M_j^2\varepsilon_j<\infty .
\tag{SSM.5}
\]

For instance, take \(\varepsilon_j=M_j^{-4}\) and place the intervals with
summable total length.

Define a nonnegative piecewise smooth function \(H\) that is equal to \(H_*\)
outside the intervals, rises from \(H_*\) to \(M_j\) on the first half of
\(I_j\), and falls from \(M_j\) back to \(H_*\) on the second half. Then

\[
\int_0^T H(t)^2\,dt
\le
T H_*^2+\sum_j M_j^2\varepsilon_j
<\infty,
\tag{SSM.6}
\]

while

\[
\sup_{t<T}H(t)=\infty .
\tag{SSM.7}
\]

Now define \(D\) and \(P\) from \(H\). On rising portions, set

\[
D(t)={H'(t)\over C H(t)^{1/2}-\nu},
\qquad
P(t)=C H(t)^{1/2}D(t).
\tag{SSM.8}
\]

This is legitimate by `(SSM.4)'. It gives

\[
P(t)-\nu D(t)
=
\bigl(C H(t)^{1/2}-\nu\bigr)D(t)
=H'(t),
\tag{SSM.9}
\]

and the product bound is saturated.

On falling portions, set

\[
D(t)=-{H'(t)\over\nu},
\qquad
P(t)=0.
\tag{SSM.10}
\]

Then again

\[
P(t)-\nu D(t)=H'(t),
\qquad
|P(t)|\le C H(t)^{1/2}D(t).
\tag{SSM.11}
\]

On flat portions set \(D=P=0\). A smooth version is obtained by smoothing the
corners inside each \(I_j\); the definitions above still give the same scalar
equation and product inequality after replacing \(H'\) by the smoothed
derivative.

Thus the scalar signed-height equation, critical product bound, and finite
\(L^2_tH\) shadow allow unbounded peaks.

## 4. Record interpretation

Each large spike contains a record upcrossing from \(M_j/2\) to \(M_j\). On that
record, the scalar identities reproduce the already installed forced-service
fact:

\[
\int D(t)\,dt
\gtrsim M_j^{1/2}.
\tag{SSM.12}
\]

The construction simply lets that critical service become arbitrarily
concentrated in time. Since \(\int D(t)\,dt\) is not an original-data finite
budget, the scalar route has no contradiction.

## 5. Consequence for Gold

This is not a Navier-Stokes counterexample. It is a proof-theoretic obstruction.
It says that the Gold proof cannot close from:

\[
\text{signed scalar equation}
+
\text{critical product estimate}
+
\text{finite }L^2_tH.
\tag{SSM.13}
\]

The missing theorem must use information discarded by the scalar model: the same
velocity field, same material packet, parent-known source admission, pressure and
transport geometry, incompressibility, viscosity, and a finite same-fluid charge
or storage law.

Equivalently, the scalar model is the shape the true proof must rule out inside
Navier-Stokes:

\[
\text{infinitely many high, thin signed-height records with no finite
same-fluid charge landing.}
\tag{SSM.14}
\]

The live noncircular burden remains the record-upcrossing thickness-or-charge
theorem, in its current sharper form: record-net signed work must be admitted to
the parent packet and spent by a finite same-fluid charge before the record is
counted.
