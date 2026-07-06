---
theorem_id: forward-gold-wkb-material-ancestry-volume-preserving-not-density-gap-20260706
status: exact-obstruction-material-ancestry-alone-does-not-force-density-anti-equidistribution
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB legal anti-equidistribution
target_object:
  - DensityLevelAntiEquidistribution.NECESSARY
  - MaterialAncestry.NO-DENSITY-GAP-BY-ITSELF
  - NonlinearSamePacketLaw.GAP-OR-CONSTRUCTION
  - NearUniformWKBPressureBath.CONSTRUCTION-EXCLUSION
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-nonlinear-same-packet-law-gap-or-construction-dichotomy-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-finite-range-nonlinear-laws-local-gap-or-periodic-bath-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-material-ancestry-transport-defect-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-transport-defect-current-variation-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-gram-gap-anti-equidistribution-necessary-condition-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-material-phase-service-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-service-coordinate-mismatch-row-distance-reduction-20260706.md
completion_truth: >-
  Exact obstruction to one possible nonlinear/global same-packet source, not a
  WKB construction or exclusion theorem. Incompressible material ancestry is
  volume-preserving on material labels. Therefore the uniform WKB density is
  invariant under the ancestry map: if the legal density set is constrained only
  by being the pushforward of an initially uniform same-packet density under the
  incompressible flow, then the uniform density is legal and its distance from
  uniform is zero. More generally, any measure-preserving relabeling is unitary
  in the density \(L^2\) norm, so ancestry compatibility by itself cannot
  create the density anti-equidistribution needed by the cross-cell Gram gap.
  If material history helps, it must do so through an additional non-volume
  service-coordinate row: carrier-scale drift / phase shear, a fixed service
  moment mismatch, a transport defect with current variation, custody or bank
  variation, or actual construction/exclusion of the near-uniform bath. This
  proves no positive service row-distance floor for the actual WKB bath, no
  transport-defect vanishing or carriage theorem, no WKB
  construction/exclusion theorem, no confinement constant, and no MPP closure.
---

# Material ancestry alone is not density anti-equidistribution

## 1. Kill question

The nonlinear same-packet reduction left the dense WKB crowd branch as a
positive density gap
\[
  \liminf_M \operatorname{dist}_{L^2_\omega}(1,\mathcal C_M)>0
  \tag{MAV.1}
\]
or construction/exclusion of a near-uniform legal bath.

One tempting source for that gap is material ancestry: perhaps requiring every
cell to come from the same fluid packet forbids the near-uniform cloud.

This note checks that source. Material ancestry by itself does not forbid the
uniform cloud, because incompressible transport preserves volume.

## 2. Volume-preserving ancestry model

Let \(X\) be the material label space for the WKB cloud, with normalized
reference measure \(\omega\). Let
\[
  \Phi_t:X\to X_t
  \tag{MAV.2}
\]
be the flow map of the smooth incompressible Navier-Stokes branch on the
selected packet, before terminal limiting.

Since \(\nabla\cdot u=0\),
\[
  (\Phi_t)_\#\omega=\omega_t
  \tag{MAV.3}
\]
with no density Jacobian factor. In label coordinates this says that
\(\Phi_t\) is measure-preserving.

Write a WKB population density as
\[
  d\mu=f\,d\omega,\qquad f\ge0,\qquad \int_X f\,d\omega=1 .
  \tag{MAV.4}
\]
Under material relabeling,
\[
  f_t=f\circ\Phi_t^{-1}.
  \tag{MAV.5}
\]

The uniform density \(f\equiv1\) is invariant:
\[
  f_t\equiv1 .
  \tag{MAV.6}
\]

Therefore a legality condition saying only "this density is carried by the
same incompressible material packet" admits the uniform density.

## 3. No \(L^2\) separation from ancestry alone

Measure-preserving relabeling is unitary on \(L^2\):
\[
  \|f_t-1\|_{L^2_{\omega_t}}
  =
  \|f-1\|_{L^2_\omega}.
  \tag{MAV.7}
\]

So material ancestry cannot turn a near-uniform density into an
order-one-separated density. In particular, if the initial legal population can
be chosen with
\[
  \|f_M-1\|_{L^2_\omega}\to0,
  \tag{MAV.8}
\]
then its materially transported population stays near-uniform.

For the cross-cell Gram problem, this means:
\[
  \text{same material ancestry}
  \not\Longrightarrow
  \operatorname{dist}_{L^2_\omega}(1,\mathcal C_M)\ge c .
  \tag{MAV.9}
\]

The condition records same-fluid custody. It does not supply the density
anti-equidistribution radius.

## 4. What an ancestry-based gap would have to add

Material history can still matter, but only through a coordinate beyond
volume-preserving ancestry itself.

First, the service coordinate may fail to be volume-preserving. For a Beltrami
carrier in producer strain,
\[
  S:Q_n=D_t\log\lambda ,
  \tag{MAV.10}
\]
so active pressure service is carrier-scale drift. A density gap could come
from a fixed service-moment mismatch in the carrier-scale coordinate. That is a
named row payment, not ancestry alone.

The service-coordinate follow-up makes this exact. If the active service row is
\(\int m f\,d\omega=a\), then the mismatch
\[
  \delta=a-\int m\,d\omega
\]
forces only the standard row-distance bound
\[
  \|f-1\|_{L^2_\omega}
  \ge
  {|\delta|\over\|m-\int m\,d\omega\|_{L^2_\omega}}.
\]
Thus service mismatch is an explicit payer when the uniform bath misses the
demanded service. When the mismatch vanishes, this coordinate leaves the
near-uniform bath legal.

Second, the material transport relation may fail to close in the terminal
profile. The ancestry fork writes the defect as
\[
  A=J-u\rho .
  \tag{MAV.11}
\]
If \(A\) is carried by the same packet mass, then
\[
  A=w\rho,\qquad |A|=|w|\rho .
  \tag{MAV.12}
\]
If \(A\) is singular relative to \(\rho\), it needs added legal ancestry
mass/current. Those are current-variation or certificate rows, not a free
density gap.

Third, material custody may force population variation, bank variation, or
refresh/reassembly. Those ledgers are already separate WKB service currencies.
They can price service, but they do not follow from the word "ancestry" before
the corresponding variation is shown.

Thus an ancestry-based anti-equidistribution theorem must be one of:
\[
\begin{array}{ll}
\text{fixed service-coordinate mismatch}
  &\text{explicit row-distance payer},\\[1mm]
\text{transport defect carried}
  &\text{current-variation / added-ancestry payer},\\[1mm]
\text{custody or bank variation}
  &\text{refresh/reassembly currency},\\[1mm]
\text{no near-uniform same-fluid bath}
  &\text{construction/exclusion theorem}.
\end{array}
\tag{MAV.13}
\]

## 5. Relation to the nonlinear/global branch

The finite-range nonlinear note removed bounded local laws. This note removes
the bare volume-preserving ancestry reading of the global law.

What remains under "global same-packet law" is sharper: a law that ties the
uniform bath to a non-volume service coordinate, a transport-current defect, a
bank/custody variation ledger, a nonlocal pressure/Hodge row with explicit
row-distance, or actual construction/exclusion.

With the service-coordinate follow-up, the first item in that list is no longer
an untyped refuge: it is a row-distance payer or no density gap. The genuinely
global residue is the nonlinear forbidden-ball theorem or construction/exclusion
of the near-uniform same-fluid WKB bath, after explicit service rows have been
pulled out.

Closed same-packet identity and material ancestry are still required for
admission. They are not the anti-uniform payer.

## 6. Four-sentence result

Incompressible material ancestry preserves volume, so the uniform WKB density
is carried to the uniform WKB density. Measure-preserving relabeling is
unitary in density \(L^2\), hence same-fluid ancestry alone cannot separate a
legal cloud from the uniform zero mode. If ancestry helps the Gram gap, it must
add a non-volume service-coordinate mismatch, a transport-current defect with
variation, custody/bank variation, or construction/exclusion. Thus "same
material history" is an admission coordinate, not a density
anti-equidistribution payer. A service-coordinate mismatch is priced by the
follow-up row-distance formula, so it is an explicit payer only after a
scale-uniform nonzero mismatch is proved.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
