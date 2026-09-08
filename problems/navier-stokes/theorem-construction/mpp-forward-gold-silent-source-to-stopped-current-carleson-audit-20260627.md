---
theorem_id: forward-gold-silent-source-to-stopped-current-carleson-audit-20260627
status: local-silent-source-included-stopped-current-carleson-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped current Carleson producer
audits:
  - user attachment 7d3acc39-1623-409f-8306-2d27b9748d7d/pasted-text.txt
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-testing-carleson-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-accretive-testing-current-factorization-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-routed-participation-current-carleson-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-routed-energy-noncircular-installation-20260627.md
referee_inputs:
  - Parfit: constructive stopped testing audit
  - Pasteur: stopped testing countermodel audit
demotes:
  - pressure-only Schur observability as a complete proof
  - local packet payment as stopped singular-transform testing
  - repeated-core projection/return payment without pre-existing root Hilbert geometry
current_hinge:
  - StoppedRoutedParticipationCurrentCarleson.A
  - NativeBirthChargePacking.A
  - CriticalFreshSourceTentCarleson.A
  - SelectedCompressionRootReserve.A
effect: >-
  Includes the user-supplied silent elliptic source normal form as the correct
  local kernel fork, records that local payment still does not produce stopped
  singular-transform testing, and moves the live Gold producer to the stopped
  same-material participation current Carleson/root-reserve problem.
---

# Silent source to stopped current Carleson audit

The supplied silent-source theorem is the right local replacement for the
false Schur-only claim.  Boundary-flat pressure-Helmholtz--Leray sources exist:

```math
f=\mathcal L_Aw,\qquad
w|_{\partial A_Q}=0,\qquad
\partial_{\nu_A}w|_{\partial A_Q}=0.
```

So the theorem may not say that the parent boundary Schur trace sees every
interior source.  The correct local kernel statement is:

```math
\mathcal K_Q^{sil}
\cap
\mathcal C_Q^{sel}
\cap
\ker\!\left(
\mathcal E_Q^{top\text{-}ex}
+\mathcal S_Q^{mat}
+R_Q^{legal}
\right)
=\{0\}.
\tag{1}
```

Plainly: an invisible elliptic source can exist, but it cannot be a free
retained selected critical-strain carrier.  It is either hidden-potential /
gauge material and unselected, or it is selected and paid by top-strain
exchange, material service, or legal loss.

This gives the local increment estimate:

```math
|\Delta_Q\rho_{sel}|^2\,\mathcal R(Q)
\lesssim
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal E_Q^{top\text{-}ex}
+\mathcal S_Q^{mat}
+R_Q^{legal}.
\tag{2}
```

## Why this is not stopped testing

The stopped selector testing theorem asks for cancellation and local transform
control:

```math
\|T_S(b_P\nu^S)\|_{L^2(P,\mathcal R)}^2
\le
C\mathcal R(P)+CR_{legal}(P).
\tag{3}
```

The local estimate `(2)` is a size/payment statement.  It does not rule out a
non-cancelling selected source concentrated in tiny cores.  A model obstruction
is a stopped packet sequence \(P_\ell\) with smooth positive bumps
\(\nu_\ell\) of mass \(m_\ell\) supported on radius \(\varepsilon_\ell\).  The
local selected action can be kept finite, while the singular lift satisfies

```math
\|T_S\nu_\ell\|_{L^2(P_\ell)}^2
\gtrsim
{m_\ell^2\over \varepsilon_\ell},
\tag{4}
```

which can exceed any stopped Carleson multiple of \(\mathcal R(P_\ell)\).

Thus the silent-source normal form must be consumed through a same-material
current factorization, not through local packet payment alone.

## Transform side after current factorization

The useful normal form is:

```math
\nu^S
=
D_AJ^S+\nu^S_{stop}+\nu^S_{legal}.
\tag{5}
```

Here \(J^S\) is the routed participation current built from the same
pressure-viscosity-incompressibility-velocity material history before scalar
selected-tail readout.  Then:

```math
T_S(D_AJ^S)=\Pi_{\nabla,A}J^S.
\tag{6}
```

After localization,

```math
D_A(\chi_PJ^S)=\chi_PD_AJ^S+(D_A\chi_P)\cdot J^S,
\tag{7}
```

so the stopped transform estimate reduces to:

```math
\|T_S(1_P\nu^S)\|_{L^2(P,\mathcal R)}^2
\le
C\int_{\widehat P}|J^S|^2\,d\mathcal R
+CStop(\widehat P)
+CR_{legal}(\widehat P).
\tag{8}
```

This discharges the abstract transform side conditionally on the routed current.

## Live producer

The remaining theorem is:

```text
StoppedRoutedParticipationCurrentCarleson.A
```

For stopped roots \(P_0\), prove:

```math
\sup_{P\subseteq P_0}
{1\over \mathcal R(P)}
\left[
\int_{\widehat P}|J^S|^2\,d\mathcal R
+Stop(\widehat P)
+R_{legal}(\widehat P)
\right]
\le C_N(u_0).
\tag{9}
```

The derivative-BV assembly gives only:

```math
\sum_{Q\subseteq P}\|\Delta_QJ^S\|^2\mathcal R(Q)
\le
C\mathcal E_{route}(P)+CR_{legal}(P)+CStop(P),
\tag{10}
```

with

```math
\mathcal E_{route}(P)
=
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\right).
\tag{11}
```

This is noncircular only if \(\mathcal E_{route}\) is produced from original
history before selected descendant readout.  The existing dependency

```math
\mathcal E_{route}(P)
\le
C\int_{\operatorname{Hist}(P)}\Theta_{full}
+CR_{legal}(P)+CStop(P)
\tag{12}
```

is not a proof when \(\Theta_{full}\) is the same continuation clock being
derived from the selected-density route.

## Current state

The attachment is included as local support.  The live Gold producer is now the
nonfuture current reserve:

```text
NativeBirthChargePacking.A
+ CriticalFreshSourceTentCarleson.A
+ SelectedCompressionRootReserve.A
  -> RoutedCurrentCapacityDrop.A
  -> StoppedRoutedCurrentSquarePacking.A
  -> StoppedRoutedParticipationCurrentCarleson.A
  -> StoppedAccretiveTestingData.A.
```

The local silent-source theorem blocks the false Schur-only route.  The stopped
current Carleson/root-reserve theorem is still open.
