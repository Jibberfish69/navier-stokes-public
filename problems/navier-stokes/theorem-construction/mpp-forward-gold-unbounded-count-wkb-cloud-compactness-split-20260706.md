---
theorem_id: forward-gold-unbounded-count-wkb-cloud-compactness-split-20260706
status: exact-compactness-split-tight-cloud-profile-or-nontight-escape-count-only-fragmentation-false
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / unbounded-count WKB bath
target_object:
  - AtomicWKBUnboundedCountCloudBranch
  - MicrolocalDefectProfileAdmission.A
  - WKBPhaseLabelTightnessOrEscape.A
  - CountOnlyNoFreeFragmentation.False
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-many-cell-wkb-quantization-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-atomic-wkb-prelimit-quantization-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-atomic-diffuse-admission-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-actual-wkb-carrier-extraction-finite-menu-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-admission-microlocal-profile-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-microlocal-defect-positive-carrier-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-moment-continuity-criterion-20260706.md
completion_truth: >-
  Exact split and countermodel only. The surviving beta-small WKB bath is
  unbounded-count. Encode its positive retained pressure-service moment as
  finite positive phase-label measures nu_j. If the phase-label measures are
  tight after the angular quadrature reduction, weak-* compactness gives a
  nonzero WKB/microlocal profile measure nu. The atomic part routes to the
  already named atomic reconstruction / neighborhood-cloud branch; the diffuse
  non-angular part routes to DiffuseWKBProfileAdmission.A. If the measures are
  not tight, the missing mass is domain/label/rung escape, i.e. selected-carrier
  tightness / Body-III defect, not invisible retained supply. The uniform
  fragmentation model on a compact label interval has total mass c0, maximum
  atom c0/M_j -> 0, and same-cell square sum c0^2/M_j -> 0 while converging to
  a nonzero diffuse profile; therefore count-only no-free-fragmentation and
  same-cell square coercivity are false without additional PDE, uncertainty,
  cross-cell, or admission structure. The profile moment-continuity follow-up
  pays the scalar pressure-service moment-passage subclause when the service
  readout is continuous or uniformly stabilized, and gives a moving-spike
  countermodel when it is not. This proves no profile admission theorem, no WKB
  construction/exclusion, no confinement constant, and no MPP closure.
---

# Unbounded-count WKB cloud compactness split

## 1. Object

The bounded-count branch is paid. In the beta-small WKB bath, cutoff/Hodge
neutrality forces
\[
  N_{\rm eff}\gtrsim\beta^{-12/5},
  \tag{UC.1}
\]
so the hidden branch is necessarily unbounded-count.

The question here is what that unbounded count can still mean. It is not one
actual packet by pigeonhole. It is either a phase-profile object or escaped
phase-label mass.

## 2. Phase-measure encoding

After the angular-continuum quadrature reduction, the remaining WKB labels are
not diffuse directions. They are material, center, envelope, scale, bank, time,
weight, and related carrier labels.

Let \(X\) be the selected WKB phase-label space for one normalized terminal
bank, with the active scalar pressure-service functional included in the label
or already used to define the positive weights. On the \(j\)-th terminal
window, write the unbounded packet cloud as
\[
  \nu_j
  =
  \sum_{b=1}^{M_j} A_j(P_{j,b})\,\delta_{\ell_{j,b}},
  \qquad
  A_j(P_{j,b})\ge0,
  \tag{UC.2}
\]
with retained positive moment
\[
  \nu_j(X)
  =
  \sum_{b=1}^{M_j} A_j(P_{j,b})
  \ge c_0>0.
  \tag{UC.3}
\]

The unbounded-count case is
\[
  M_j\to\infty.
  \tag{UC.4}
\]
The no-actual-packet subcase is stronger:
\[
  \max_{1\le b\le M_j}A_j(P_{j,b})\to0.
  \tag{UC.5}
\]

## 3. Tight clouds give profiles

Assume the measures \(\nu_j\) are tight in the selected phase-label space. After
passing to a compact exhaustion and a terminal subtail, weak-* compactness gives
\[
  \nu_j \stackrel{*}{\rightharpoonup}\nu,
  \qquad
  \nu(X)\ge c_0.
  \tag{UC.6}
\]

Thus tight unbounded fragmentation is not invisible. It produces a nonzero WKB
or microlocal profile measure. The follow-up moment-continuity criterion says
when this profile also carries the retained scalar pressure-service moment:
continuous or uniformly stabilized service readouts pass to the limit, while
moving spike readouts are label/weight/rung escape.

Decompose
\[
  \nu=\nu_{\rm at}+\nu_{\rm diff}.
  \tag{UC.7}
\]

If \(\nu_{\rm at}\ne0\), the branch is atomic profile mass. The atomic direct
test and quantization criterion already say what remains:

- bounded effective prelimit packet count gives atomization / finite-menu
  extraction;
- unbounded effective prelimit count is an atomic neighborhood-cloud admission
  problem or a typed atomic fragmentation/admission defect.

If \(\nu_{\rm diff}\ne0\), the branch is diffuse non-angular profile mass. It
routes to
\[
  \text{DiffuseWKBProfileAdmission.A}.
  \tag{UC.8}
\]

In both cases, compactness gives the profile. It does not admit that profile as
a same-solution terminal witness ledger.

## 4. Nontight clouds are escaped carrier mass

If the \(\nu_j\) are not tight, the failure is exactly the phase-space version
of selected-carrier tightness escape. The escaped mass is in one of the already
named coordinates:

1. domain / envelope / gauge / collar escape;
2. phase-label escape through material, center, scale, bank, weight, or time;
3. tower-rung / high-readout escape.

That is not retained WKB supply. It is Body-III / selected-carrier escape,
outside actual WKB carrier extraction unless a separate routing theorem admits
the escaped object.

## 5. Count-only no-free-fragmentation is false

The count-only theorem one might hope for is
\[
  \nu_j(X)\ge c_0,\quad M_j\to\infty
  \Longrightarrow
  \exists b(j)\ \ A_j(P_{j,b(j)})\ge c_1>0.
  \tag{UC.9}
\]

This is false.

Let \(X=[0,1]\), \(M_j=j\), and
\[
  \nu_j={c_0\over j}\sum_{b=1}^{j}\delta_{b/j}.
  \tag{UC.10}
\]
Then
\[
  \nu_j(X)=c_0,
  \qquad
  \max_b\nu_j(\{b/j\})={c_0\over j}\to0,
  \tag{UC.11}
\]
but
\[
  \nu_j\stackrel{*}{\rightharpoonup} c_0\,dx.
  \tag{UC.12}
\]

So unbounded fragmentation can retain all positive mass while producing no
packet atom. What survives is a diffuse profile, not a selected packet.

The same model kills same-cell square coercivity in packet-moment currency:
\[
  \sum_{b=1}^{j}\left({c_0\over j}\right)^2
  =
  {c_0^2\over j}
  \to0.
  \tag{UC.13}
\]
Therefore a square-coercivity proof cannot be a square-sum lower bound on the
individual packet moments alone. It must use extra PDE structure: orthogonality
in the actual field, an uncertainty-cell lower bound, cross-cell interaction,
or profile admission.

## 6. Split result

The unbounded-count WKB branch is now:
\[
\begin{array}{ll}
\text{tight phase-label cloud}
  &\Rightarrow
  \text{nonzero WKB/microlocal profile,}\\
  &\quad\text{atomic cloud branch or diffuse profile admission},\\[2mm]
\text{nontight phase-label cloud}
  &\Rightarrow
  \text{domain/label/rung escape, i.e. Body-III / tightness defect}.
\end{array}
\tag{UC.14}
\]

The remaining theorem is not count-only no-free-fragmentation. That theorem is
false by (UC.10). It is also not scalar moment passage once the pressure-service
readout is continuous or uniformly stabilized; that subclause is paid by the
moment-continuity criterion. The remaining theorem must be one of:
\[
\begin{gathered}
\text{MicrolocalDefectProfileAdmission.A},\\
\text{AtomicWKBNeighborhoodCarrierAdmission.A},\\
\text{a PDE uncertainty/cross-cell square-coercivity law},\\
\text{or WKB construction/exclusion.}
\end{gathered}
\tag{UC.15}
\]

## 7. Four-sentence result

Unbounded packet count does not make the WKB bath invisible. If the positive
phase-label measures are tight, they have a nonzero WKB/microlocal profile
limit; the atomic part routes to the atomic cloud branch and the diffuse part
routes to profile admission, with scalar moment passage paid when the service
readout is continuous or uniformly stabilized. If they are not tight, the missing mass is
selected-carrier domain/label/rung escape, not retained supply. The uniform
fragmentation model shows that count-only no-free-fragmentation and same-cell
packet-moment square coercivity are false without additional PDE structure.

## 8. State

This note proves the compactness split for the unbounded-count WKB cloud and
the count-only countermodel.

It proves no `MicrolocalDefectProfileAdmission.A`, no
`DiffuseWKBProfileAdmission.A`, no `AtomicWKBNeighborhoodCarrierAdmission.A`,
no PDE uncertainty-cell theorem, no cross-cell square-coercivity theorem, no
same-solution witness-legality theorem, no WKB construction/exclusion, no
confinement constant, and no MPP closure.
