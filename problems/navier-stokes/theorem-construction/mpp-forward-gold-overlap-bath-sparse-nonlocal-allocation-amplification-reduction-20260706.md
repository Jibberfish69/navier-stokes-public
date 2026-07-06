---
theorem_id: forward-gold-overlap-bath-sparse-nonlocal-allocation-amplification-reduction-20260706
status: strict-reduction-sparse-nonlocal-allocation-needs-unbounded-amplification-or-compensator
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - SparseWKBBranch.NonlocalMomentAllocation
  - FixedDensityCompensator.MeasureEquivalence
  - AllocationAmplification.ProductLaw
  - ManyCellWKBBranch.SupportDensitySplit
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-many-cell-wkb-support-density-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-gate8-tax-density-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-fixed-density-compensator-routing-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-same-packet-raw-allocation-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-uniform-mode-charge-compensator-reduction-20260706.md
completion_truth: >-
  Strict reduction only. The sparse WKB branch cannot back a fixed retained
  pressure-tax density by saying "nonlocal moment allocation" unless that
  allocation has explicit unbounded amplification. If the WKB support fraction
  is \(\phi\) and the pressure-service backing density on that support is only
  \(C\beta^{4/5}\), then any positive allocation operator with total-mass
  amplification \(B\) can back at most \(BC\beta^{4/5}\phi\) of a full-bank
  retained density. To dominate a fixed tax density \(\theta_0\), it must obey
  \(B\ge \theta_0/(C\beta^{4/5}\phi)\). In the sparse WKB window
  \(\phi\to0\), this diverges; using the window upper bound
  \(\phi\lesssim\beta^{12/5}\theta^{-2}\), the required amplification is at
  least order \(\theta^2\beta^{-16/5}\). Therefore bounded nonlocal allocation
  does not rescue the sparse branch. The branch is now: explicit unbounded
  allocation/custody payer, fixed-density compensator/residue, producer
  suppression or beta-edge failure, or construction/exclusion of the sparse
  dynamic bath. This proves no unbounded allocation theorem, no compensator
  routing theorem, no WKB construction/exclusion, no confinement constant, and
  no MPP closure.
---

# Sparse nonlocal allocation needs amplification

## 1. Kill question

The support-density split leaves a sparse WKB branch:
\[
  \phi=N\theta^3\to0,
  \tag{SNA.1}
\]
where \(\phi\) is the occupied fraction of the producer \(D\)-bank.

The note routed that branch to compensator, nonlocal allocation, or
construction/exclusion. The kill question here is whether "nonlocal
moment-allocation" can back a fixed retained tax density while the actual WKB
support fraction tends to zero.

The checked answer is no for any bounded allocation. Sparse support can back a
full-bank fixed density only by an explicit amplification factor.

## 2. Sparse backing measure

Let \(\mu_{\rm prod}\) be the normalized producer-throughput measure on the
retained \(D\)-bank. Let \(E\) be the occupied WKB support with
\[
  \mu_{\rm prod}(E)=\phi\,\mu_{\rm prod}(Q).
  \tag{SNA.2}
\]

The pressure-service row supplies only \(q=4/5\) density on its support:
\[
  \beta_{\rm sp}
  \le
  C\beta^{4/5}\,\mu_{\rm prod}\!\restriction_E .
  \tag{SNA.3}
\]

A fixed retained tax row would require
\[
  T\ge\theta_0\mu_{\rm prod}
  \tag{SNA.4}
\]
on the full retained bank, for some fixed \(\theta_0>0\).

## 3. Allocation amplification law

Let \(\mathcal A\) be a positive nonlocal allocation operator that moves sparse
pressure-service backing into the retained tax row. Measure its total-mass
amplification by
\[
  \mathcal A\nu(Q)\le B\,\nu(E)
  \tag{SNA.5}
\]
for positive source measures \(\nu\) supported on \(E\).

If \(T\le\mathcal A\beta_{\rm sp}\), then integrating (SNA.4) gives
\[
  \theta_0\mu_{\rm prod}(Q)
  \le
  T(Q)
  \le
  B\,\beta_{\rm sp}(E).
  \tag{SNA.6}
\]
Using (SNA.3),
\[
  \beta_{\rm sp}(E)
  \le
  C\beta^{4/5}\phi\,\mu_{\rm prod}(Q).
  \tag{SNA.7}
\]
Therefore
\[
  B\ge{\theta_0\over C\beta^{4/5}\phi}.
  \tag{SNA.8}
\]

This is the exact product law for sparse nonlocal allocation:
\[
  B\,\beta^{4/5}\phi\gtrsim1.
  \tag{SNA.9}
\]

Bounded \(B\) cannot back a fixed density when \(\beta^{4/5}\phi\to0\).

## 4. Consequence in the sparse WKB window

The support-density split gives, in the sparse part of the WKB window,
\[
  \phi\lesssim\beta^{12/5}\theta^{-2}.
  \tag{SNA.10}
\]
Substituting into (SNA.8) yields
\[
  B
  \gtrsim
  \theta^2\beta^{-16/5}
  \tag{SNA.11}
\]
up to fixed constants.

In the sparse range
\[
  \beta^{6/5}\ll\theta\lesssim\beta^{24/25},
  \tag{SNA.12}
\]
this lower bound diverges. At the dense cutoff
\(\theta\sim\beta^{6/5}\) it is already \(\gtrsim\beta^{-4/5}\), and at the
upper WKB edge \(\theta\sim\beta^{24/25}\) it is
\(\gtrsim\beta^{-32/25}\).

So the sparse branch cannot be rescued by a bounded long-range allocation
kernel, a finite-multiplicity redistribution, or an unpriced no-recount
matching rule. It needs unbounded allocation strength at the scale dictated by
(SNA.8).

## 5. What unbounded allocation means

An allocation operator with
\[
  B\gtrsim(\beta^{4/5}\phi)^{-1}
  \tag{SNA.13}
\]
is not a free theorem word. It is a new payer/certificate.

It must be one of:
\[
\begin{array}{ll}
\text{same-packet custody work}
  &\text{long-range redistribution charged in Gate-8 currency},\\[1mm]
\text{new unbounded row}
  &\text{operator growth backed by a real PDE estimate},\\[1mm]
\text{side-economy/imported backing}
  &\text{routed outside the retained row},\\[1mm]
\text{construction/exclusion}
  &\text{build or rule out the sparse dynamic WKB bath}.
\end{array}
\tag{SNA.14}
\]

If no such allocation payer is supplied, the fixed-density deficit is the
already priced compensator:
\[
  \rho_{\theta_0}
  =
  \theta_0\mu_{\rm prod}-T_{\theta_0}.
  \tag{SNA.15}
\]
In the beta-small overlap regime, the fixed-density compensator note gives
\[
  {\theta_0\over2}\mu_{\rm prod}
  \le
  \rho_{\theta_0}
  \le
  \theta_0\mu_{\rm prod}.
  \tag{SNA.16}
\]

## 6. Physical meaning

The sparse WKB bath can concentrate pressure service on a small part of the
producer bank. That does not make it a fixed-density tax on the whole retained
producer row.

To use sparse support as full-bank backing, the same fluid has to redistribute
that service by a large factor. The size of that factor is exactly
\((\beta^{4/5}\phi)^{-1}\). Without that paid redistribution, the missing
full-bank tax is the compensator.

## 7. Four-sentence result

If a WKB pressure bath occupies fraction \(\phi\) of the bank and carries only
\(\beta^{4/5}\) backing density there, then bounded nonlocal allocation can
back only \(O(\beta^{4/5}\phi)\) of a full-bank retained tax density. A fixed
tax density \(\theta_0\) therefore requires allocation amplification
\[
  B\gtrsim(\beta^{4/5}\phi)^{-1}.
\]
In the sparse WKB window this amplification diverges, with lower bound
\(\theta^2\beta^{-16/5}\) under the window upper support estimate. Thus sparse
support is not a hidden fixed-density payer; it is unbounded allocation/custody,
the fixed-density compensator, producer suppression, or construction/exclusion.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
