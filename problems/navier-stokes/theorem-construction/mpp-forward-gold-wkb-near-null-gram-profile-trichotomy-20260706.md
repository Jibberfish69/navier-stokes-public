---
theorem_id: forward-gold-wkb-near-null-gram-profile-trichotomy-20260706
status: exact-trichotomy-near-null-gram-cloud-is-profile-escape-or-construction
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB cross-cell Gram gap
target_object:
  - CrossCellWKBGramGap.AbsentBranch
  - NearNullWKBCloudTrichotomy
  - MicrolocalDefectProfileAdmission.A
  - WKBConstructionOrExclusion.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-cross-cell-gram-gap-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-metric-entropy-collapse-fragmentation-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-unbounded-count-wkb-cloud-compactness-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-moment-continuity-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-service-modulus-or-selector-escape-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-witness-closed-graph-admission-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-no-supplier-trichotomy-20260706.md
completion_truth: >-
  Exact trichotomy only. If the cross-cell Gram gap is absent, there are
  admissible positive WKB clouds with retained normalized service and vanishing
  Gram square charge. Such near-null clouds do not by themselves construct an
  evading Navier-Stokes bath. If the cloud measures are nontight, the retained
  mass is domain/label/rung escape. If they are tight but the service readout
  is not uniformly stabilized, the branch is moving service-selector escape. If
  they are tight with stabilized service, compactness gives a nonzero WKB /
  microlocal profile; then closed legal certificates admit it and the Field
  consumer applies, while the first failed certificate gives Pack/Part
  limit-of-class failure. Therefore Gram-gap failure is not a retained supplier
  branch; it leaves profile admission, typed certificate failure, or actual WKB
  construction/exclusion. This proves no Gram gap, no profile admission
  theorem, no WKB construction/exclusion theorem, no confinement constant, and
  no MPP closure.
---

# Near-null Gram clouds are profile, escape, or construction

## 1. Object

The cross-cell Gram criterion says that a count-free square reserve for an
unbounded WKB cloud is exactly a uniform lower bound
\[
  \inf_{\substack{a\in\mathcal C_j\\ A_j(a)=1}}a^TG_ja\ge c>0
  \tag{NGT.1}
\]
on the normalized admissible positive cloud cone.

This note tests the opposite branch:
\[
  \inf_{\substack{a\in\mathcal C_j\\ A_j(a)=1}}a^TG_ja\to0 .
  \tag{NGT.2}
\]

The question is whether this failure of the square route already builds an
evasion. It does not. It builds near-null clouds, and those clouds still have
to pass the profile/admission/certificate tests.

## 2. Near-null cloud sequence

Assume (NGT.2). Choose \(a^{(j)}\in\mathcal C_j\) such that
\[
  A_j(a^{(j)})=1,
  \qquad
  (a^{(j)})^TG_ja^{(j)}\to0 .
  \tag{NGT.3}
\]

Realize the cloud as a positive phase-label measure
\[
  \nu_j=\sum_ba^{(j)}_b\delta_{\ell_{j,b}}
  \tag{NGT.4}
\]
on the WKB label space, after the angular quadrature reduction and the
service weights have been included in the positive mass coordinate.

The sequence has retained normalized service, but no Gram square charge:
\[
  \nu_j(X)=1,
  \qquad
  (a^{(j)})^TG_ja^{(j)}\to0.
  \tag{NGT.5}
\]

This is the exact output of Gram-gap failure. It is not yet an admitted WKB
bath.

## 3. Trichotomy

There are three possible outcomes.

### A. Nontight cloud

If \(\nu_j\) is not tight in the selected WKB phase-label topology, the
retained mass escapes in one of the already typed coordinates:
\[
\text{domain / envelope / gauge / collar, label / bank / scale / time, or rung}.
\tag{NGT.6}
\]

That is selected-carrier tightness escape / Body-III defect, not retained WKB
supply.

### B. Tight cloud without stabilized service

If \(\nu_j\) is tight but the scalar service readout has no continuous or
uniformly stabilized limit, then the moment-continuity criterion does not
apply. The service is moving through the label topology:
\[
  \text{material, center, envelope, time, scale, bank, weight, or rung selector
  motion}.
  \tag{NGT.7}
\]

That branch is the service-modulus failure already routed to variation/custody,
profile-admission, or construction/exclusion. It is not retained profile
supply.

### C. Tight cloud with stabilized service

If \(\nu_j\) is tight and the service readouts stabilize uniformly, then after
passing to a subtail
\[
  \nu_j\stackrel{*}{\rightharpoonup}\nu,
  \qquad
  \nu(X)>0,
  \tag{NGT.8}
\]
and the retained service passes to the profile:
\[
  \int F\,d\nu>0 .
  \tag{NGT.9}
\]

The near-null Gram property now has only profile-level meaning. The cloud has
become a WKB/microlocal profile candidate.

If the legal witness graph is closed and the row certificates persist, the
profile is admitted as a same-solution terminal WKB witness. Then the installed
terminal Field consumer applies when the retained high-frequency moment is
nonvanishing.

If the legal witness graph is not closed, or one row certificate fails, the
first failed row gives the typed limit-of-class landing:
\[
\begin{array}{ll}
\text{cover / carrier failure}
  &\Rightarrow \text{Pack-side profile failure},\\[1mm]
\text{actual law, ancestry, or tower failure}
  &\Rightarrow \text{Part-side participation failure}.
\end{array}
\tag{NGT.10}
\]

So the tight stabilized near-null cloud is not a retained supplier. It is an
admitted Field witness, a Pack/Part certificate failure, or an admission
problem.

## 4. What remains after the trichotomy

Failure of the Gram gap eliminates one proof route: the square reserve is not
available from that Gram form. It does not supply the enemy with a free exit.

The remaining live alternatives are exactly:
\[
\begin{array}{ll}
\text{prove the Gram gap after all}
  &\Rightarrow \text{square reserve / no-free-fragmentation},\\[1mm]
\text{near-null cloud becomes admitted profile}
  &\Rightarrow \text{Field consumer},\\[1mm]
\text{near-null cloud loses a certificate}
  &\Rightarrow \text{Pack/Part limit-of-class failure},\\[1mm]
\text{near-null cloud never stabilizes/admissibly forms}
  &\Rightarrow \text{selector/custody/profile escape},\\[1mm]
\text{actual dynamic bath is built}
  &\Rightarrow \text{construction/exclusion branch}.
\end{array}
\tag{NGT.11}
\]

Thus the absent-Gram branch is not a theorem of evasion. A proved evasion still
requires an actual same-fluid WKB construction that preserves production,
evades all certificate landings, and avoids Field readout.

## 5. Four-sentence result

If the cross-cell Gram gap fails, one gets near-null WKB clouds with retained
service and vanishing square charge. Nontight near-null clouds are
domain/label/rung escape; tight clouds without service stabilization are moving
selector escape. Tight stabilized near-null clouds become WKB profiles, and
then closed legality sends them to Field while the first failed certificate
sends them to Pack/Part. Therefore Gram-gap failure is not itself an evasion;
it leaves profile admission, typed certificate failure, or actual
construction/exclusion.

## 6. State

This note decides the absent-Gram interpretation. It is a trichotomy, not a
Gram-gap theorem and not a WKB-bath construction.

It proves no `CrossCellWKBGramGap.A`, no service-modulus theorem, no legal
profile-admission theorem, no WKB construction/exclusion theorem, no
confinement constant, and no MPP closure.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
