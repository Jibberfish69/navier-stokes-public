---
theorem_id: forward-gold-original-history-routed-current-energy-bessel-producer-20260627
status: conditional-on-scale-critical-stopped-frame-carleson-embedding
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - OriginalHistoryRoutedCurrentEnergyFinite.A
  - StoppedSelectorBoundedProjectionOriginalParticipationLaw.A
  - ScaleCriticalStoppedFrameCarlesonEmbedding.A
uses:
  - ParentSubtractedInheritedActionSquarePacking.A
  - ParentAnnouncedFirstExitResetVariation.A
  - MaterialTractionCurrentParticipationLaw.A
leaves_open:
  - ScaleCriticalStoppedFrameCarlesonEmbedding.A
  - active route metric Bessel/Carleson embedding before selected readout
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-frame-bessel-critical-weight-fork-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-announced-reset-variation-to-routed-energy-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bounded-projection-original-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-energy-stable-routed-current-projection-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-traction-current-participation-law-20260627.md
effect: >-
  Identifies the only way the remaining routed-current energy line could be
  proved by stopped-frame Bessel: the covariant stopped annular frame must be
  Bessel for the same active route metric consumed by selected action. Raw L2
  Bessel for a parent-known material wavelet frame is support, but it does not
  pay the scale-critical Gold weight. The open theorem is the scale-critical
  stopped-frame Carleson/Bessel embedding before selected readout.
---

# Original-history routed-current energy from the stopped Bessel frame

The routed-current energy is finite from the stopped frame only if the stopped
frame is Bessel in the active route metric. This note records the conditional
mechanism and the exact remaining embedding theorem.

Let

```math
G=2\nu S_A\in
\mathfrak H_P=L^2_{\rm sym,tr}(\operatorname{Hist}(P)).
\tag{1}
```

For a stopped annular test \(w_{\sigma,t}\) with \(D_A\cdot w_{\sigma,t}=0\),
the pressure part cancels:

```math
\Delta J_{\sigma,t}
=
\langle T_A,\nabla_A w_{\sigma,t}\rangle
=
\langle 2\nu S_A,
P_{\rm sym,tr}\nabla_Aw_{\sigma,t}\rangle
=
\langle G,a_{\sigma,t}\rangle_{\mathfrak H_P}.
\tag{2}
```

Here

```math
a_{\sigma,t}
=
\sqrt{\mathcal R(\sigma,t)}
1_{\operatorname{Hist}(\sigma,t)}
P_{\rm sym,tr}\nabla_Aw_{\sigma,t}.
\tag{3}
```

## 1. Covariant routed derivative

The routed derivative of the current is not the bare derivative of a scalar
readout.  It is the derivative of the parent-known stopped test frame.  Define
the covariant stopped-route derivative by

```math
\mathcal D_\sigma a_{\sigma,t}
=
\partial_\sigma a_{\sigma,t}
+T_\sigma a_{\sigma,t}
+E_\sigma a_{\sigma,t}
+C_\sigma a_{\sigma,t},
\tag{4}
```

where the three correction terms are the parent-known turnstile, exchange, and
covector/connection motions.  With this definition,

```math
\mathcal G_{\sigma,t}
:=
\partial_\sigma Z
+\operatorname{turnstile}_\sigma
+\operatorname{exchange}_\sigma
+\operatorname{covector}_\sigma
=
\langle G,\mathcal D_\sigma a_{\sigma,t}\rangle_{\mathfrak H_P}
+Err_{\rm legal}+Err_{\rm stop}.
\tag{5}
```

So the routed-current energy is

```math
\mathcal E_{\rm route}(P)
=
\int_{\operatorname{Hist}(P)}
w(\sigma,t)|\mathcal G_{\sigma,t}|^2\,d\sigma dt
+R_{\rm legal}(P)+Stop(P).
\tag{6}
```

## 2. Parent-known Bessel estimate

Gold would close if the stopped selector produced a Bessel family

```math
\sqrt{w(\sigma,t)}\,\mathcal D_\sigma a_{\sigma,t}
\tag{7}
```

in \(\mathfrak H_P\). Equivalently, for every
\(F\in\mathfrak H_P\),

```math
\int_{\operatorname{Hist}(P)}
w(\sigma,t)
|\langle F,\mathcal D_\sigma a_{\sigma,t}\rangle_{\mathfrak H_P}|^2
d\sigma dt
\le
C_N\|F\|_{\mathfrak H_P}^2
+R_{\rm legal}(P)+Stop(P).
\tag{8}
```

This is not a consequence of parent-knownness, finite aperture, or ordinary raw
Littlewood-Paley Bessel alone. It is the active-metric stopped-frame embedding:

```text
ScaleCriticalStoppedFrameCarlesonEmbedding.A.
```

The heat-scale compatibility test shows the gap. Raw energy/dissipation can
have scale cost \(\ell_m\), while the normalized Gold clock has cost \(1\) on
the same critical sample. Therefore raw \(L^2\) Bessel can be finite while the
active selected clock diverges. The weight \(w\) in `(8)` must already contain
the scale-critical admission, and proving Bessel for that weighted family is
the remaining theorem.

If `(8)` is proved, apply it to \(F=G\). Using `(5)` gives

```math
\mathcal E_{\rm route}(P)
\le
C_N\|G\|_{\mathfrak H_P}^2
+R_{\rm legal}(P)+Stop(P).
\tag{9}
```

## 3. Original Navier--Stokes payment

The original material energy law gives

```math
\|G\|_{\mathfrak H_P}^2
=
4\nu^2
\int_{\operatorname{Hist}(P)}
|S_A|^2
\le
C_\nu E_0(u_0),
\tag{10}
```

with the parent restriction handled by monotonicity and bounded stopped overlap.
Therefore, conditionally on `(8)`,

```math
\boxed{
\mathcal E_{\rm route}(P)
\le
C_N(u_0)+R_{\rm legal}(P)+Stop(P).
}
\tag{11}
```

This proves `OriginalHistoryRoutedCurrentEnergyFinite.A` at the stopped-current
level only after `ScaleCriticalStoppedFrameCarlesonEmbedding.A` is proved.

## 4. Consequence for the selected action

The previous reset-reduction note proved

```math
\sum_{Q\subset P}
\mathcal R(Q)|\Delta J_Q^{sel}|^2
\le
C(u_0)
+C_N\mathcal E_{\rm route}(P)
+R_{\rm legal}(P)+Stop(P).
\tag{12}
```

Combining conditional `(11)` and `(12)` gives

```math
\sum_{Q\subset P}
\mathcal R(Q)|\Delta J_Q^{sel}|^2
\le
C_N(u_0)+R_{\rm legal}(P)+Stop(P).
\tag{13}
```

Thus the parent-subtracted stopped selected-current square packing is finite
from original smooth data only under the active-metric stopped-frame embedding.

## 5. Remaining verification before claiming full MPP closure

This does not close the stopped-current producer by itself. The downstream
relays can be audited against the corrected currency only after the active
embedding `(8)` is proved:

```text
parent-subtracted selected current square packing
-> parent drop / selected action
-> finite same-material full action
-> H^s continuation.
```

Those relays must consume `(13)` after `(8)` is installed. Any relay that still
consumes raw inherited child stress, a future selected tail, downstream full-clock
finiteness, raw \(L^2\) Bessel in place of the active metric, or a stale scalar
primitive clock remains stale.
