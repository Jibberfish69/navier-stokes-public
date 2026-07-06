---
theorem_id: forward-gold-k5-distributed-low-density-riesz-admission-obstruction-20260706
status: strict-obstruction-bounded-riesz-admission-does-not-cap-distributed-k5
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / K5 high-Re edge route-out
target_object:
  - K5DistributedLowDensityRecord.BOUNDED-RIESZ-ADMITTED-WITNESS
  - K5RecordLengthCap.NotFromSelectedUnitAdmissionAlone
  - K5RecordLocalityOrAdmissibility.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-record-length-density-dilution-dichotomy-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-selected-throughput-local-density-alias-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-action-currency-bounded-original-packet-enforcement-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-unit-riesz-representative-source-graph-admission-20260627.md
completion_truth: >-
  Strict obstruction only. The bounded original-packet/Riesz selected-unit
  admission rule does not by itself force a K5 record/effective-length cap.
  A long low-density carrier with fixed total packet production proxy is read
  by a norm-one original-packet functional spread over the same long support:
  \(G_L=A L^{-1/2}\chi_{[0,L]}e\), \(A_L=L^{-1/2}\chi_{[0,L]}e\), so
  \(\|A_L\|_2=1\) and \(|\langle G_L,A_L\rangle|^2=A^2\) while every bounded
  subpacket sees only \(O(L^{-1})\) throughput. Thus source-graph admission is
  compatible with the distributed low-density K5 survivor; it does not supply
  local density, bounded selected length, endpoint return, or crowd
  contamination. Excluding K5 still requires a record-locality theorem saying
  that such a global spread read is not a retained record event, or another
  dynamic/geometric route-out. This proves no retained Navier-Stokes K5
  construction, no route-out theorem, no confinement constant, and no MPP
  closure.
---

# K5 distributed low density: bounded Riesz admission does not cap length

## 1. Object

The selected-throughput alias note reduced one possible cap source:

\[
  \text{bounded selected throughput}
  \quad\Longleftrightarrow\quad
  \text{local density/concentration on the selected cell}.
  \tag{DRA.1}
\]

The surviving K5 branch is different. It spreads fixed total packet production
over a growing endpoint-delay carrier, so every bounded cell sees vanishing
throughput.

This note checks the next shortcut:

\[
  \text{bounded original-packet/Riesz selected-unit admission}
  \quad\Longrightarrow\quad
  \text{record/effective-length cap}.
  \tag{DRA.2}
\]

The kill condition is a distributed low-density carrier that is still a
norm-one original-packet read.

## 2. The Riesz admission rule being tested

The installed selected-unit source rule says that a retained selected unit in
the bounded channel is read through a bounded original-packet functional:

\[
  A_Q\in \mathfrak H_P,
  \qquad
  \|A_Q\|_{\mathfrak H_P}\le 1,
  \qquad
  \Theta_Q=|\langle G,A_Q\rangle_{\mathfrak H_P}|^2.
  \tag{DRA.3}
\]

Reads without such a bounded representative are measuring-rule creation of
participation and exit the retained branch. The question here is whether
(DRA.3) also prevents the K5 record from being distributed across length
\(L\).

It does not.

## 3. Exact distributed witness in the source graph

Work in the one-dimensional carrier coordinate of the K5 packet, suppressing
the fixed transverse/profile factors. In the parent Hilbert packet take

\[
  \mathfrak H_L=L^2([0,L];\mathbb R e),
  \tag{DRA.4}
\]

where \(e\) is the fixed producing direction.

Let the stress packet and selected test be

\[
  G_L(z)=A L^{-1/2}\chi_{[0,L]}(z)e,
  \qquad
  A_L(z)=L^{-1/2}\chi_{[0,L]}(z)e.
  \tag{DRA.5}
\]

Then

\[
  \|G_L\|_{\mathfrak H_L}^2=A^2,
  \qquad
  \|A_L\|_{\mathfrak H_L}=1,
  \tag{DRA.6}
\]

and

\[
  |\langle G_L,A_L\rangle_{\mathfrak H_L}|^2
  =
  \left|A L^{-1}\int_0^L dz\right|^2
  =
  A^2.
  \tag{DRA.7}
\]

So the selected unit is bounded-Riesz admitted uniformly in \(L\).

But on any bounded cell \(J\) with \(|J|\le \ell_*\),

\[
  \int_J |G_L(z)|^2\,dz
  \le
  A^2{\ell_*\over L}
  \to 0.
  \tag{DRA.8}
\]

This is exactly the K5 density-dilution geometry: total packet work remains
fixed, while bounded-cell work vanishes.

Adding the K5 production constants just changes names:

\[
  p_L\sim s\Pi {A^2\over L},
  \qquad
  P_L\sim s\Pi A^2,
  \qquad
  A_J\lesssim s\Pi A^2{\ell_*\over L}.
  \tag{DRA.9}
\]

Thus the distributed carrier is not rejected by bounded original-packet
admission. It is rejected only by a further locality rule saying that a
selected record event must be carried by a bounded effective subpacket or by a
fixed local density on the endpoint-delay carrier.

## 4. Endpoint-delay compatibility

Choose

\[
  kL\gtrsim \operatorname{Re}
  \tag{DRA.10}
\]

or even \(kL=\operatorname{Re}^{1+\delta}\). The bounded-Riesz facts
(DRA.6)--(DRA.7) are unchanged, while bounded-cell throughput in (DRA.8) tends
to zero at least like \(O(\operatorname{Re}^{-1})\) on the minimal endpoint
length.

Therefore source-graph admission does not force endpoint contact, local record
density, or bounded selected length. It allows a single global low-density
read over the long packet.

## 5. Consequence for K5

The K5 route-out cannot be:

\[
  \text{retained selected unit is bounded-Riesz admitted}
  \quad\Longrightarrow\quad
  kL\lesssim \operatorname{Re}.
  \tag{DRA.11}
\]

The exact witness (DRA.5)--(DRA.9) satisfies the left side and violates the
right side as \(L\) grows.

The remaining legal ways to kill the distributed branch are now sharper:

1. prove record locality: a retained K5 record cannot be a global spread read
   and must localize to a bounded effective cell or fixed-density endpoint
   carrier;
2. prove dynamic route-out: non-affine transport, endpoint return, curve/core
   instability, or crowd contamination is forced during the residence;
3. prove admission failure for the actual Navier-Stokes K5 packet by a
   condition stronger than bounded-Riesz source admission.

## 6. Four-sentence result

Bounded original-packet/Riesz selected-unit admission does not exclude the K5
distributed low-density carrier. A norm-one test spread over length \(L\) reads
order-one total selected action from a stress packet of fixed \(L^2\) norm,
while every bounded cell sees only \(O(L^{-1})\) work. Thus source-graph
admission alone does not imply local density, bounded selected length, or a
record/effective-length cap. K5 now needs a true record-locality/admissibility
theorem or a dynamic/geometric route-out.
