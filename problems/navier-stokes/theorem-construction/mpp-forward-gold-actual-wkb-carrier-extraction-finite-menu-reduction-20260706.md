---
theorem_id: forward-gold-actual-wkb-carrier-extraction-finite-menu-reduction-20260706
status: finite-phase-menu-extraction-proved-general-wkb-carrier-extraction-open
created: 2026-07-06
problem: navier-stokes
route: forward-gold / terminal WKB admission / actual carrier extraction
target_object:
  - ActualWKBCarrierExtraction.A
  - WKBPhasePacketFiniteMenuExtraction.A
  - WKBPhaseLabelTightnessOrEscape.A
  - MicrolocalDefectProfileAdmission.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-admission-microlocal-profile-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-heredity-finite-menu-reduction-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-tightness-decomposition-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-tightness-defect-as-bodyiii-relay-defect-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-measure-persistence-production-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-microlocal-defect-positive-carrier-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-many-cell-wkb-parameter-window-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-angular-continuum-quadrature-reduction-20260706.md
completion_truth: >-
  Strict reduction with one proved case. ActualWKBCarrierExtraction.A is proved
  for a fixed finite menu of actual same-solution WKB phase-packet carrier
  families carrying nonzero retained pressure-Hessian moment: pigeonhole gives
  one fixed phase-packet family on an infinite terminal subtail, and the
  same-solution packet hypotheses then supply the synchronized WKB witness
  ledger consumed by the Sobolev Field-face theorem. The general extraction
  theorem is not proved. If the WKB label moves through a compact continuum, the
  nonzero retained moment gives a nonzero phase-space/microlocal defect profile,
  not necessarily one fixed material packet; that routes to
  MicrolocalDefectProfileAdmission.A. The angular-continuum follow-up shows
  that diffuse direction labels alone are not an independent pressure-service
  escape: at each bank/station, the Beltrami pressure moment has an exact
  three-axis quadrature. If the phase-packet measures are not tight in domain,
  label, or rung coordinates, the escaped positive moment is a selected-carrier
  tightness defect / Body-III escape, not an invisible admission. Therefore the
  open general burden is WKB phase-label tightness plus atomic packet capture in
  the material/center/scale/bank variables, or microlocal-profile admission, or
  construction / exclusion. This note proves no continuum selector theorem, no
  microlocal admission theorem, no WKB construction/exclusion, and no MPP
  closure.
---

# Actual WKB carrier extraction: finite menu and the remaining escape

## 1. Object

The previous terminal WKB admission note reduced the nonvanishing horn to
actual same-solution admission:
\[
  \lambda_j\to\infty,
  \qquad
  \phi_jD_j^3|K_j|\ge c_0>0.
\]
The question here is whether this produces an actual WKB carrier.

The physical object is not an external WKB ansatz. It is a high-frequency
population inside the same velocity-pressure solution, seen on terminal
packets, with actual pressure-Hessian moment and the same Navier-Stokes law
through the chosen readout depth.

## 2. Finite phase-packet menu theorem

Let \(\mathcal I\) be an infinite terminal tail. Assume that on this tail the
candidate WKB pressure moment is represented by a fixed finite menu of actual
same-solution phase-packet carrier families
\[
  \mathfrak P=\{P_1,\ldots,P_M\}.
\]
Each \(P_a\) is a packet rule applied to the actual solution, with the required
material ancestry or licensed original-participation record, finite overlap,
readout-compatible localization, and same-law tower.

Let
\[
  A_j(P_a)\ge0
\]
be the normalized retained WKB pressure-Hessian moment assigned to \(P_a\) on
the \(j\)-th terminal window. Assume
\[
  \sum_{a=1}^M A_j(P_a)\ge c_0>0
  \qquad(j\in\mathcal I).
\]

Choose \(a(j)\) with
\[
  A_j(P_{a(j)})=\max_{1\le a\le M}A_j(P_a).
\]
Then
\[
  A_j(P_{a(j)})\ge {c_0\over M}.
\]
Since the menu is finite, one label \(a_\ast\) occurs on an infinite subtail
\(\mathcal I_\ast\subset\mathcal I\). Therefore
\[
  A_j(P_{a_\ast})\ge {c_0\over M}
  \qquad(j\in\mathcal I_\ast).
\]

Thus one actual same-solution WKB phase-packet carrier family survives with a
nonzero retained moment on an infinite terminal subtail.

Because each \(P_a\) was assumed to be an actual same-solution packet rule, the
surviving \(P_{a_\ast}\) supplies the carrier clauses required by the previous
admission note:

1. same original datum and fixed viscosity;
2. actual velocity-pressure evolution and pressure Hessian;
3. material ancestry or licensed original participation;
4. finite-overlap / readout-compatible localization;
5. differentiated same-law tower through the chosen depth;
6. nonvanishing normalized retained moment.

So in the finite-menu case,
\[
  \text{ActualWKBCarrierExtraction.A}
\]
is paid by the same pigeonhole mechanism as selected-carrier finite-menu
heredity.

## 3. What this does not prove

The proof used the fixed finite menu. It does not prove that the WKB terminal
selector has finite complexity.

The WKB labels include phase-space data: packet center, envelope, direction,
relative carrier scale, Beltrami polarization/sign, bank coordinate, and
possibly time-dependent weight or refresh label. A terminal branch can move
through these labels without repeating any one finite packet family.

That is not a small bookkeeping caveat. It is the same moving-selector problem
already isolated for selected carriers, now in phase space.

## 4. Compact continuum labels give a profile, not automatically a packet

If the WKB phase-packet measures are tight in the selected carrier space but no
single phase-packet label carries a nonzero atomic subtail, compactness gives a
nonzero limiting phase-space measure \(\mu\). This is exactly the microlocal
or WKB-profile object:
\[
  \mu\ne0,
  \qquad
  \mu\ \text{carries the terminal pressure-Hessian moment.}
\]

That is useful, but it is not the same as actual packet extraction. A diffuse
phase-space measure can encode a continuum of directions, centers, scales, or
weights. It must be admitted as a terminal witness through
\[
  \text{MicrolocalDefectProfileAdmission.A},
\]
or else typed as limit-of-class / original-participation failure.

The existing microlocal-defect test already blocks the cheap upgrade:
defect visibility does not by itself supply selected positive-carrier payment
or same-witness admission.

Angular-direction diffuseness is now also separated from the material
admission problem by
`mpp-forward-gold-overlap-bath-angular-continuum-quadrature-reduction-20260706.md`.
For a positive Beltrami angular profile with total weight \(W\) and
\[
  M=\int n\otimes n\,d\mu(n),
\]
the pressure moment is
\[
  K={W\over3}I-M.
\]
Diagonalizing
\[
  M=\sum_{a=1}^3m_a e_a\otimes e_a
\]
gives the exact identity
\[
  K=\sum_{a=1}^3m_aQ_{e_a}.
\]
Thus diffuse direction labels do not add a new active pressure-service
mechanism beyond finite angular moment algebra. The remaining continuum escape
is material packet admission, microlocal/profile admission, or motion in
center, scale, bank, envelope, weight, and time.

## 5. Nontight labels are not invisible

If the WKB phase-packet measures are not tight, the selected-carrier tightness
decomposition says the escape is one of:
\[
  E^{\rm dom}\not\to0,
  \qquad
  E^{\rm lab}\not\to0,
  \qquad
  E^{\rm rung}\not\to0.
\]

For the WKB branch these mean, respectively:

1. domain/envelope/gauge/collar escape of the WKB packet;
2. phase-label escape through direction, scale, bank, polarization, weight, or
   refresh labels;
3. tower-rung or high-readout escape.

The tightness-defect theorem says escaped selected carrier mass is a Body-III
positive relay defect. It is not lost silently. Thus nontight WKB extraction
failure routes to paid escape, Body-III defect, or construction/exclusion.

## 6. Reduced burden

The general theorem has been narrowed to:
\[
  \boxed{
  \text{finite or atomic WKB phase-label capture}
  \quad\vee\quad
  \text{microlocal/profile admission}
  \quad\vee\quad
  \text{typed tightness escape}.
  }
\]

Equivalently:

```text
ActualWKBCarrierExtraction.A
```

is proved for fixed finite phase-packet menus, and remains open exactly at:

```text
WKBMaterialScaleBankLabelTightnessPlusAtomCapture.A
MicrolocalDefectProfileAdmission.A
WKBConstructionOrExclusion.A
```

## 7. State

This note proves one case and rejects one overclaim. The WKB carrier is actual
when the retained moment stays in a fixed finite menu of actual same-solution
phase-packet families. A diffuse or moving phase-space object is not promoted
to an actual material packet by wording; it is a microlocal/profile admission
problem, typed tightness escape, or material/scale/bank motion. Diffuse
directions alone have been reduced to exact three-axis pressure-moment
quadrature and are not a separate WKB service reservoir.

No general WKB carrier extraction theorem, no continuum selector theorem, no
microlocal-profile admission theorem, no WKB construction/exclusion theorem, and
no MPP closure is claimed.
