---
theorem_id: forward-gold-signed-polar-saturation-fourbody-supplement-criterion-20260621
status: supplement-criterion-proved-polar-retention-production-not-installed
logical_landing_node: signed_polar_saturation_fourbody_supplement_criterion
edge_effect: "Assembles the signed-polar saturation supplement inside the upgraded four-body loop. If the selected positive local carrier is the positive part of the same signed local participation density and the negative local partner is retained, legally charged, or consumed by true loss/storage, then Body-II signed participation pays the selected positive carrier. The finite-packet algebra is exact: dJ=dA-dN and dA is paid only after the missing negative partner dN_miss vanishes or is charged. This proves the supplement criterion, not the Navier-Stokes production theorem that the rescaled localized tower actually gives dN_miss=0 or a legal charge."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-current-positive-activity-domination-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-local-positive-selection-signed-current-gap-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-packet-selector-polar-retention-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-precauchy-to-gauge-quotient-tower-bridge-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Signed-Polar Saturation Four-Body Supplement Criterion

Date: 2026-06-21

## 0. Aim

The native bridge test left signed polar saturation as one of the surviving
same-carrier supplements.  The finite-packet algebra for this supplement is
already installed in the signed-current, local-positive-selection, and
packet-selector polar-retention notes.

This note assembles that algebra into the exact four-body criterion:

\[
\boxed{
\text{same local density}
+
\text{retained or charged negative partner}
\Longrightarrow
\text{selected positive carrier is paid by Body II.}
}
\tag{SPS.1}
\]

It does not prove the Navier-Stokes production theorem that the localized
rescaled tower always retains or charges that negative partner.

## 1. Local polar identity

Let \(h_P\) be the signed local participation density on a selected packet
\(P\).  Define

\[
dA_P=[h_P]_+\,dy\,ds,
\qquad
dN_P=[h_P]_-\,dy\,ds,
\qquad
dJ_P=h_P\,dy\,ds .
\tag{SPS.2}
\]

Then exactly

\[
\boxed{
dJ_P=dA_P-dN_P.
}
\tag{SPS.3}
\]

For a selected family \(\mathcal S\), summing over \(P\in\mathcal S\) gives

\[
dJ_{\mathcal S}=dA_{\mathcal S}-dN_{\mathcal S},
\qquad
dA_{\mathcal S}=dJ_{\mathcal S}+dN_{\mathcal S}.
\tag{SPS.4}
\]

This is the local polar accounting identity.  It is not an estimate.

## 2. Negative-part decomposition

Decompose the selected negative local partner as

\[
dN_{\mathcal S}
=
dN_{\rm ret}
+
dN_{\rm legal}
+
dN_{\rm miss},
\tag{SPS.5}
\]

where \(dN_{\rm ret}\) is retained on the same signed carrier,
\(dN_{\rm legal}\le dR_{\rm legal}\) is legally charged, and \(dN_{\rm miss}\)
is the unretained negative partner.

Using the Jordan decomposition

\[
dJ_{\mathcal S}=dJ_{\mathcal S}^+-dJ_{\mathcal S}^-,
\tag{SPS.6}
\]

the polar identity gives

\[
\boxed{
dA_{\mathcal S}
\le
dJ_{\mathcal S}^+
+
dN_{\rm ret}
+
dR_{\rm legal}
+
dN_{\rm miss}.
}
\tag{SPS.7}
\]

Thus signed polar saturation is exactly the statement

\[
\boxed{
dN_{\rm miss}=0
\quad\text{or}\quad
dN_{\rm miss}\le dR_{\rm legal}+dK_{\rm charged}.
}
\tag{SPS.8}
\]

Without `(SPS.8)`, signed current cancellation can coexist with an unpaid
positive selected carrier.

## 3. Coupling to Body-II participation

If the selected signed current in `(SPS.6)` is the same current appearing in
the Body-II participation identity

\[
dM_{\mathcal S}+dD_{\mathcal S}=dJ_{\mathcal S},
\qquad
dD_{\mathcal S}\ge0,
\tag{SPS.9}
\]

then

\[
dJ_{\mathcal S}^+
\le
dJ_{\mathcal S}^-
+
dD_{\mathcal S}
+
(dM_{\mathcal S})^+.
\tag{SPS.10}
\]

Combining `(SPS.7)` and `(SPS.10)` gives the four-body payment inequality

\[
\boxed{
dA_{\mathcal S}
\le
dJ_{\mathcal S}^-
+
dD_{\mathcal S}
+
(dM_{\mathcal S})^+
+
dN_{\rm ret}
+
dR_{\rm legal}
+
dN_{\rm miss}.
}
\tag{SPS.11}
\]

If `(SPS.8)` holds, the selected positive carrier is paid by retained
counter-current, true loss, positive storage jump/readout failure, retained
negative local partner, or legal/charged residual.

## 4. Terminal atom form

At a terminal endpoint \(\tau\), `(SPS.11)` gives

\[
\begin{aligned}
A_{\mathcal S}(\{\tau\})
\le{}&
J_{\mathcal S}^-(\{\tau\})
+D_{\mathcal S}(\{\tau\})
+(dM_{\mathcal S})^+(\{\tau\})\\
&+N_{\rm ret}(\{\tau\})
+R_{\rm legal}(\{\tau\})
+N_{\rm miss}(\{\tau\}).
\end{aligned}
\tag{SPS.12}
\]

Therefore a positive selected terminal atom with no counter-current, no true
loss, no positive storage jump, no retained negative partner, and no legal
residual is exactly a polar-retention defect:

\[
\boxed{
A_{\mathcal S}(\{\tau\})>0
\Longrightarrow
N_{\rm miss}(\{\tau\})>0.
}
\tag{SPS.13}
\]

Under signed polar saturation, \(N_{\rm miss}\) is zero or charged, so this
terminal atom is either impossible or already visible as a named defect.

## 5. Four-body role

Inside the upgraded loop, this supplement belongs to Body II and the
Body-II-to-Body-III interface.

Body I supplies the weighted derivative tower and radius spend.  It does not
decide whether a positive local piece kept by selection retained its negative
partner.

Body II supplies the signed density \(h_P\) and signed current \(J_{\mathcal S}\).
The polar identity `(SPS.4)` is the exact local accounting that connects the
signed current to the selected positive carrier.

Body III must retain the triple

\[
\boxed{
(dA_{\mathcal S},dN_{\mathcal S},dJ_{\mathcal S})
}
\tag{SPS.14}
\]

as the same carrier.  Retaining only \(dJ_{\mathcal S}\) is insufficient,
because opposite signs can cancel in the signed current while \(dA_{\mathcal S}\)
survives.

Body IV must return the same selected packet geometry.  If the material/geometric
return changes the selected packet so that the negative partner is no longer in
the same carrier, the mismatch is a geometry/selector defect, not a silent
payment.

Thus the signed-polar saturation supplement does not replace the four-body
loop.  It is the exact condition under which the Body-II signed participation
exchange is allowed to pay the native selected positive activity inside that
loop.

## 6. Current state

The signed-polar saturation supplement is proved as a criterion:

\[
\boxed{
dN_{\rm miss}=0\text{ or charged}
\Longrightarrow
dA_{\mathcal S}
\le
dJ_{\mathcal S}^-
+dD_{\mathcal S}
+(dM_{\mathcal S})^+
+dN_{\rm ret}
+dR_{\rm legal}
+dK_{\rm charged}.
}
\tag{SPS.15}
\]

The Navier-Stokes production theorem is not proved.

The exact missing input is

\[
\boxed{
\text{SourceWeightedPolarSaturation.A}
:
\text{the rescaled localized velocity-pressure-viscosity-incompressibility
tower produces }dN_{\rm miss}=0\text{ or a legal/charged defect.}
}
\tag{SPS.16}
\]

If `(SPS.16)` fails, the surviving object is no longer hidden; it is the
explicit selector polar defect \(dN_{\rm miss}\), which must then be routed to
source-square/no-waste, critical-density/CKN, rigid source-residue production,
or full pre-Cauchy remainder reduction.
