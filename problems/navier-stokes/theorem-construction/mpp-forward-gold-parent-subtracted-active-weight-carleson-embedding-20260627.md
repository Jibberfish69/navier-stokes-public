---
theorem_id: forward-gold-parent-subtracted-active-weight-carleson-embedding-20260627
status: overclaim-demoted-active-route-metric-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
corrects:
  - raw-ScaleCriticalStoppedFrameCarlesonEmbedding.A
  - stopped-frame-bessel-producer-as-unconditional-raw-active-clock
uses:
  - ParentSubtractedInheritedActionSquarePacking.A
  - ParentAnnouncedFirstExitResetVariation.A
  - AnnounceableActiveWeightResetCarleson.A
  - MaterialTractionCurrentParticipationLaw.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-frame-bessel-critical-weight-fork-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-inherited-action-square-packing-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-announced-reset-variation-to-routed-energy-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-announceable-active-weight-reset-carleson-cauchy-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-stress-test-frame-qr-realization-20260627.md
effect: >-
  The note correctly identifies the parent-subtracted selected current: fresh
  residuals are Bessel and exact inherited reuse is zero new action. It overclaims
  when it treats changed inherited reuse as already paid. Parent-announced first-exit
  reset variation is paid only relative to E_route. The remaining theorem is still
  active route metric Carleson/storage before selected readout.
---

# Parent-subtracted active-weight Carleson embedding: demotion

The active-weight fork exposed a real correction: selected action should not
count raw inherited parent directions again.  The raw embedding

```math
\int w(\sigma,t)
|\langle F,\mathcal D_\sigma a_{\sigma,t}\rangle|^2\,d\sigma dt
\le
C\|F\|_{\mathfrak H_P}^2 .
\tag{1}
```

counts inherited parent directions again.  The selected action has already been
corrected to the parent-subtracted current, so the quotient object below is the
right readout.  That correction does not by itself prove the active route metric
finite.

For each stopped child or reset edge, let

```math
c_e
=
\sqrt{H_{I_e}}\,
D_e
\tag{2}
```

be the active weighted stopped increment after the harmonic Cauchy reduction.
Let \(E_{e^-}\) be the parent-known span of inherited directions and previously
admitted fresh directions.  Split

```math
c_e=b_e+d_e,
\qquad
b_e=\Pi_{E_{e^-}}c_e,
\qquad
d_e=(I-\Pi_{E_{e^-}})c_e .
\tag{3}
```

The active selected increment is

```math
\Delta_eJ^{act,new}
=
\langle G,d_e\rangle_{\mathfrak H_P},
\qquad
G=2\nu S_A .
\tag{4}
```

Exact inherited reuse has \(d_e=0\).  It is the parent current being read again,
not new child action.

## Fresh part

For \(d_e\ne0\), put \(e_e=d_e/\|d_e\|\).  The parent-known QR construction makes
the \(e_e\) orthonormal.  Hence, for every \(F\in\mathfrak H_P\),

```math
\sum_e|\langle F,d_e\rangle|^2
=
\sum_e\|d_e\|^2|\langle F,e_e\rangle|^2
\le
C_N\|F\|_{\mathfrak H_P}^2 .
\tag{5}
```

This is the scale-critical Bessel estimate for the fresh parent-subtracted
active frame.

## Changed inherited reuse

The inherited component can contribute only when the parent-known projection
changes.  For a reset edge,

```math
\rho_e
=
\langle F,(\Pi_e-\Pi_{e^-})c_e\rangle .
\tag{6}
```

The reset edge is represented as a parent-announced first exit:

```math
D_e(t)
=
|I_e|^{-1}\int_{I_e}\mathcal G_e(\sigma,t)\,d\sigma
+Err_e^{legal}(t),
\tag{7}
```

with

```math
\mathcal G_e
=
\partial_\sigma Z
+\operatorname{turnstile}_\sigma
+\operatorname{exchange}_\sigma
+\operatorname{covector}_\sigma .
\tag{8}
```

Using

```math
H_{I_e}(t)=
{|I_e|^2\over\int_{I_e}w(\sigma,t)^{-1}\,d\sigma},
\tag{9}
```

weighted Cauchy gives

```math
H_{I_e}(t)\|D_e(t)\|^2
\le
\int_{I_e}w(\sigma,t)\|\mathcal G_e(\sigma,t)\|^2\,d\sigma
+Err_e^{legal}(t).
\tag{10}
```

The witness slabs are parent-announced first-exit slabs and have bounded stopped
overlap.  Summing `(10)` gives

```math
\sum_e\|(\Pi_e-\Pi_{e^-})c_e\|_{\mathfrak H_P}^2
\le
C_N
\int_{\operatorname{Hist}(P)}
w\Bigl(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\Bigr)
+R_{\rm legal}+Stop .
\tag{11}
```

This term is not raw inherited reuse.  It is changed inherited reuse, and the
parent-announced first-exit representation is exactly the route ledger that pays
it.

## Quotient active estimate

Combining `(5)` and `(11)` gives only the conditional estimate actually used by
selected action:

```math
\sum_{Q\subset P}
\mathcal R(Q)|\Delta_QJ^{new}|^2
\le
C_N\|G\|_{\mathfrak H_P}^2
+C_N\mathcal E_{\rm route}^{reset}(P)
+R_{\rm legal}+Stop .
\tag{12}
```

The remaining \(\mathcal E_{\rm route}^{reset}\) is not a free quotient artifact.
It is the active route energy appearing in the parent-announced reset reduction.
It is paid only after the stopped route metric is proved to be an original-history
Carleson/storage measure.

Therefore the corrected conditional theorem is:

```math
\boxed{
\text{ParentSubtractedActiveWeightCarlesonEmbedding.A}
\ \text{relative to}\
\text{ScaleCriticalStoppedFrameCarlesonEmbedding.A}
}
\tag{13}
```

The parent-subtracted quotient prevents exact inherited reuse from being counted
twice.  It does not remove the need to prove active route metric Carleson
finiteness.

## Consequence

If the active route metric is admitted as an original-history Carleson measure,
for example by `HighActiveDensityForcesStopOrLegalReselection.A`, then applying
`(12)` with \(G=2\nu S_A\) and the material energy identity gives

```math
\sum_{Q\subset P}
\mathcal R(Q)|\Delta_QJ^{new}|^2
\le
C_N(u_0)+R_{\rm legal}+Stop .
\tag{14}
```

This restores the relay to selected action and \(H^s\) continuation without
counting a raw inherited active tail.  Without the active metric admission, this
note is a quotient-readout reduction, not a Gold closure.
