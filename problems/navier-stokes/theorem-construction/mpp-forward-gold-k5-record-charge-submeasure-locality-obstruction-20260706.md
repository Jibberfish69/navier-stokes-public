---
theorem_id: forward-gold-k5-record-charge-submeasure-locality-obstruction-20260706
status: strict-obstruction-record-charge-submeasure-does-not-force-k5-locality
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / K5 high-Re edge route-out
target_object:
  - K5DistributedLowDensityRecord.RECORD-CHARGE-COMPATIBLE-WITNESS
  - RecordChargeSubmeasure.NotLocalityOrDiameter
  - K5RecordLocalityOrAdmissibility.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-record-charge-submeasure-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-f3-p1-record-demand-lands-by-signed-to-forward-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-signed-net-to-forward-record-demand-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-f3-p1-srp-throughput-front-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-selected-throughput-local-density-alias-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-distributed-low-density-riesz-admission-obstruction-20260706.md
completion_truth: >-
  Strict obstruction only. The installed record-demand and record-charge rows
  place retained record demand as a positive submeasure of retained weighted
  admission: \(0\le C^w\le A_{\rm ret}^w\), with total retained record mass
  \(\Lambda_{\rm ret}\). They do not impose support diameter, bounded-cell
  mass, or a local-density floor. The uniform witness
  \(dA_L=dC_L=(\Lambda/L)\mathbf 1_{[0,L]}\,dz\) satisfies the domination and
  total-mass identities exactly while every bounded effective cell has mass
  \(O(L^{-1})\). Thus record-charge placement and P1(ii) bookkeeping do not
  kill the distributed low-density K5 survivor. Excluding K5 still requires a
  genuine record-locality/admission theorem, an actual-NS route-out, a
  dynamic/geometric route-out, or construction/exclusion of the bath itself.
  This proves no K5 cap, no retained Navier-Stokes construction, no confinement
  constant, and no MPP closure.
---

# K5 record charge: submeasure placement does not force locality

## 1. Object

The distributed low-density K5 survivor passed the bounded-Riesz selected-unit
test. The next shortcut is whether the installed record-demand and record-charge
rows themselves force bounded selected support:

\[
  \Lambda_{\rm record}
  \le
  A_{\rm ret}^{w}+{\mathcal R}_{+,\rm routed},
  \qquad
  0\le C^{w}\le A_{\rm ret}^{w}
  \tag{RCL.1}
\]

on the retained channel-cell family.

The tested implication is

\[
  \text{record-charge submeasure placement}
  \Longrightarrow
  \text{bounded effective support or fixed local record density}.
  \tag{RCL.2}
\]

The kill condition is a retained positive measure carrying the full record mass
while spreading it over an arbitrarily long effective carrier.

## 2. What the installed rows actually say

The record-charge submeasure note assumes that retained weighted forward
admission carries the retained record demand:

\[
  A_{\rm ret}^w(I)\ge \Lambda_{\rm ret}.
  \tag{RCL.3}
\]

Since \(A_{\rm ret}^w\) is a finite positive measure on a standard Borel space,
it chooses \(0\le\chi\le1\) with

\[
  \int_I\chi\,dA_{\rm ret}^w=\Lambda_{\rm ret},
  \qquad
  dC_{\rm ret}^{w}:=\chi\,dA_{\rm ret}^{w}.
  \tag{RCL.4}
\]

Thus

\[
  0\le C_a^w\le A_a^w,
  \qquad
  \sum_a C_a^w(I)=\Lambda_{\rm ret}.
  \tag{RCL.5}
\]

The signed-net and P1(ii) reductions supply the same type of statement from the
record-demand side: after retained localization and routing of the positive
residue,

\[
  \Lambda_{\rm record}
  \le
  A_{\rm ret}^{w}+{\mathcal R}_{+,\rm routed}.
  \tag{RCL.6}
\]

On the retained pass branch this is a total-mass domination statement for the
retained channel-cell measure. It is not a diameter condition.

## 3. Uniform spread witness

Work on the retained ordered channel/effective-carrier coordinate after fixing
the record interval. Let

\[
  X_L=[0,L],
  \qquad
  dA_L={\Lambda\over L}\mathbf 1_{X_L}(z)\,dz,
  \qquad
  dC_L=dA_L .
  \tag{RCL.7}
\]

Then

\[
  A_L(X_L)=C_L(X_L)=\Lambda,
  \qquad
  0\le C_L\le A_L.
  \tag{RCL.8}
\]

So the record-demand and record-charge identities are satisfied with no routed
positive residue:

\[
  \Lambda\le A_L(X_L),
  \qquad
  C_L(X_L)=\Lambda.
  \tag{RCL.9}
\]

But for every bounded effective cell \(J\subset X_L\) with \(|J|\le\ell_*\),

\[
  A_L(J)=C_L(J)
  \le
  {\Lambda\ell_*\over L}
  \longrightarrow 0 .
  \tag{RCL.10}
\]

Thus the row can reserve full record mass while every bounded cell carries
vanishing charge.

## 4. K5 translation

In K5 language, the witness is the measure version of the long diluted carrier:

\[
  p_L(z)\sim {s\Pi A^2\over L},
  \qquad
  P_L\sim s\Pi A^2,
  \qquad
  A_L(J)\lesssim s\Pi A^2 {|J|\over L}.
  \tag{RCL.11}
\]

The total retained record work can be order one, and the record-charge row can
be chosen as an admitted submeasure of that total work. Nothing in the checked
rows says that the selected record must sit in a bounded \(J\), that the support
diameter of \(C^w\) is bounded, or that some bounded cell must carry an
order-one portion of the charge.

Therefore the record-charge row does not turn distributed admission into local
admission. It only says that once retained record work exists, the consumer
charge can be placed inside already-admitted work.

## 5. Consequence

The K5 route-out cannot be:

\[
  0\le C^w\le A_{\rm ret}^w,
  \quad
  C^w(I)=\Lambda_{\rm ret}
  \Longrightarrow
  \text{bounded selected support or fixed local density}.
  \tag{RCL.12}
\]

That implication is false by (RCL.7)--(RCL.10).

The remaining live targets are exactly the stronger ones:

1. a record-locality/admission theorem saying a retained record event cannot be
   a global low-density read over growing effective length;
2. an actual-Navier-Stokes admission failure for the distributed bath;
3. a dynamic/geometric route-out that destroys the bath;
4. construction or exclusion of the dense overlap bath itself.

No K5 cap or confinement constant is proved here. The shortcut is closed.
