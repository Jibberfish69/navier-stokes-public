---
theorem_id: forward-gold-thin-record-upcrossing-production-obstruction-20260703
status: direct-scalar-charge-attempt-fails-strict-reduction-installed
created: 2026-07-03
problem: navier-stokes
route: forward-gold-signed-critical-height-restart
logical_landing_node: RecordUpcrossingSameFluidCharge.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-upcrossing-criterion-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-upcrossing-same-fluid-charge-audit-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-peak-control-proof-pass-20260703.md
completion_truth: >-
  This note attacks the record-upcrossing charge bridge directly from the scalar
  signed-height equation. It proves that every thin record upcrossing forces
  large critical production and critical-dissipation-scale service. It also
  proves that this scalar route does not close Gold, because the forced service
  is not an original-data finite budget. The remaining work is to convert that
  forced service into one of the finite same-fluid charges identified by the
  charge audit.
---

# Thin record-upcrossing production obstruction

## 1. Physical object

The object is one smooth Navier-Stokes evolution and the signed critical height

\[
H(t)={1\over2}\|\Lambda^{1/2}u(t)\|_2^2.
\]

The signed equation is

\[
{dH\over dt}=P(t)-\nu D(t),
\qquad
P(t)=
-\langle \Lambda^{1/2}{\mathbb P}(u\cdot\nabla u),
\Lambda^{1/2}u\rangle,
\qquad
D(t)=\|\Lambda^{3/2}u(t)\|_2^2.
\tag{TRU.1}
\]

The record-upcrossing criterion already proves peak control once every high
record upcrossing has thickness or pays a finite same-fluid charge. This note
tests the direct scalar charge route from `(TRU.1)'.

## 2. What a record upcrossing forces

Let \([a,b]\) be a record upcrossing at level \(\lambda\):

\[
H(a)=\lambda,\qquad H(b)=2\lambda,\qquad
\lambda\le H(t)\le2\lambda\quad(a\le t\le b).
\tag{TRU.2}
\]

Then

\[
\lambda
=H(b)-H(a)
=\int_a^b(P-\nu D)\,dt
\le
\int_a^b P_+\,dt .
\tag{TRU.3}
\]

The critical product estimate gives, on this interval,

\[
|P(t)|
\le C\|\Lambda^{1/2}u(t)\|_2D(t)
\le C(4\lambda)^{1/2}D(t).
\tag{TRU.4}
\]

Combining `(TRU.3)' and `(TRU.4)' gives the forced-service lower bound

\[
\int_a^b D(t)\,dt
\ge c\,\lambda^{1/2}.
\tag{TRU.5}
\]

Thus a high record upcrossing cannot be scalar-free. It must draw critical
dissipation-scale service from the same fluid packet.

## 3. Why this does not close Gold

The quantity in `(TRU.5)' is

\[
\int_a^b \|\Lambda^{3/2}u(t)\|_2^2\,dt.
\]

It is physically real and same-fluid, but it is not known to be bounded on
\([0,T)\) from the original energy inequality. The original budget gives

\[
\int_0^T \|\nabla u(t)\|_2^2\,dt<\infty,
\]

not

\[
\int_0^T \|\Lambda^{3/2}u(t)\|_2^2\,dt<\infty .
\]

Therefore the direct scalar proof would close only under the extra hypothesis

\[
\int_0^T D(t)\,dt<\infty,
\tag{TRU.6}
\]

which is already a continuation-strength statement rather than an original-data
charge supplied by the basic energy law.

## 4. Strict reduction

The scalar signed-height equation reduces the record-upcrossing bridge to this
precise conversion problem:

Every thin record upcrossing forces a definite amount of critical-scale service
by `(TRU.5)'. To prove `RecordUpcrossingSameFluidCharge.A`, the repo must show
that this forced service localizes into a finite original-data same-fluid charge:

\[
\int_a^b D(t)\,dt
\quad\Longrightarrow\quad
{\mathcal C}([a,b])\ge c_*
\]

for one of the charge mechanisms already identified:

1. stopped first-exit high-weight tube escape charge;
2. affine Schur residence/thickness storage;
3. Schur-thin nonretained payment;
4. superheat acceleration clock or bounded-below same-material storage;
5. a new same-fluid charge that is proved directly from the original packet.

The conversion must be event-local and nonanticipatory. It cannot choose a child
or weight after the record spike is seen, and it cannot count raw atoms or shell
visits without proving a finite original-data budget.

## 5. Result

The scalar route proves a necessary pressure:

\[
\text{thin high record spike}
\Longrightarrow
\text{large same-fluid critical service}.
\]

It does not prove the finite charge. The remaining theorem is not another
positive \(L^1\) estimate. It is the event-local conversion of forced critical
service into a finite original-data same-fluid charge.
