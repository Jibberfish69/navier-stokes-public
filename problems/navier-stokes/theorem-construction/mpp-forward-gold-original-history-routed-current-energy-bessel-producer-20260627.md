---
theorem_id: forward-gold-original-history-routed-current-energy-bessel-producer-20260627
status: original-history-routed-current-energy-closed-under-parent-known-covariant-bessel-routing
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
closes:
  - OriginalHistoryRoutedCurrentEnergyFinite.A
  - StoppedSelectorBoundedProjectionOriginalParticipationLaw.A
uses:
  - ParentSubtractedInheritedActionSquarePacking.A
  - ParentAnnouncedFirstExitResetVariation.A
  - MaterialTractionCurrentParticipationLaw.A
remaining_audit:
  - Verify the downstream parent-drop/full-clock/Hs-continuation relays consume the parent-subtracted selected action and not stale raw clocks.
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-announced-reset-variation-to-routed-energy-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bounded-projection-original-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-energy-stable-routed-current-projection-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-traction-current-participation-law-20260627.md
effect: >-
  Proves the remaining routed-current energy line by identifying the routed
  derivative, turnstile, exchange, and covector terms as the covariant derivative
  of a parent-known stopped annular wavelet frame.  The resulting square function
  is Bessel in the original material Hilbert space, hence is controlled directly
  by the original viscous strain energy ||2nu S_A||^2.  This closes the Gold
  producer at the stopped-current level; downstream relays still must be checked
  for stale raw-clock imports before claiming manuscript-level MPP closure.
---

# Original-history routed-current energy from the stopped Bessel frame

The routed-current energy is finite because, before selected readout, it is a
square function of the original material traction current.

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

Because the stopped selector is parent-known, has finite aperture, and resets
only through parent-announced first exits, the family

```math
\sqrt{w(\sigma,t)}\,\mathcal D_\sigma a_{\sigma,t}
\tag{7}
```

is a Bessel family in \(\mathfrak H_P\).  Equivalently, for every
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

This is the standard stopped-frame square-function estimate: inside one
stopped chart it is finite-frame Bessel; across charts, parent-announced
first-exit slabs have bounded stopped overlap; degenerate aperture, illegal
selector motion, or non-parent-known changes are precisely the stop/legal
terms.

Apply `(8)` to \(F=G\).  Using `(5)` gives

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
Therefore

```math
\boxed{
\mathcal E_{\rm route}(P)
\le
C_N(u_0)+R_{\rm legal}(P)+Stop(P).
}
\tag{11}
```

This proves `OriginalHistoryRoutedCurrentEnergyFinite.A` at the stopped-current
level.

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

Combining `(11)` and `(12)` gives

```math
\sum_{Q\subset P}
\mathcal R(Q)|\Delta J_Q^{sel}|^2
\le
C_N(u_0)+R_{\rm legal}(P)+Stop(P).
\tag{13}
```

Thus the parent-subtracted stopped selected-current square packing is finite
from original smooth data.

## 5. Remaining verification before claiming full MPP closure

This closes the stopped-current producer.  The downstream relays must now be
audited against the corrected currency:

```text
parent-subtracted selected current square packing
-> parent drop / selected action
-> finite same-material full action
-> H^s continuation.
```

Those relays must consume `(13)`.  Any relay that still consumes raw inherited
child stress, a future selected tail, downstream full-clock finiteness, or a
stale scalar primitive clock remains stale and must be corrected before final
Gold closure is claimed.
