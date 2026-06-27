---
theorem_id: forward-gold-stopped-current-square-packing-root-reserve-branch-lock-20260627
status: current-square-packing-reduced-to-original-history-current-capacity-and-selected-root-reserve-branch-lock
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped routed current square-packing
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - StoppedRoutedParticipationCurrentCarleson.A
  - StoppedRoutedCurrentSquarePacking.A
  - RoutedCurrentCapacityDrop.A
  - StoppedFullExchangeActionCarleson.A
reduces_to:
  - SelectedCompressionRootReserve.A
  - CriticalFreshSourceTentCarleson.A
  - NativeBirthChargePacking.A
branch_defects:
  - SignedStoppedPLSEvolutionIdentity.A
  - StoppedReturnBVFiniteFromOriginalData.A
  - CriticalWeightedResetBVFromOriginalHistory.A
  - LogScaleResetDerivativeCarrierBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-martingale-local-step-inclusion-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-origin-normal-form-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-augmented-parent-drop-silent-source-relay-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-routed-current-square-packing-branch-gates-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-reselection-root-reserve-convergence-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-source-carrier-to-critical-fresh-source-tent-carleson-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-forward-native-reserve-birth-packing-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-global-full-clock-equivalence-to-continuation-criterion-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-payback-physical-frame-completion-boundary-20260625.md
---

# Stopped current square-packing to root reserve branch lock

The current Gold route should no longer be described as a silent-source
observability problem, a pure Schur parent-drop problem, or a local full-clock
lemma.  After the silent-source normal form, the stopped routed current has one
nonduplicate production burden: build a noncircular original-history current
capacity, or equivalently prove the selected root reserve / critical fresh
source tent bound that supplies that capacity.

## 1. Current object after the silent-source correction

The selected routed source is no longer treated as a static elliptic invisible
child.  The current source is routed through the same-material participation
current

```math
\nu^S
=D_AJ^S+\nu^S_{\rm stop}+\nu^S_{\rm legal},
\tag{1}
```

with

```math
J^S
=J^S_{\rm vis}
 +J^S_{\rm sil/ex}
 +J^S_{\rm reset}
 +J^S_{\rm collar}
 +J^S_{\rm legal}.
\tag{2}
```

The silent coordinate is dynamic.  Boundary-flat pressure-Hodge material that is
selected by the top-strain reading is either gauge/constraint material or is
paid by top-strain exchange, material service, viscous/radius service, and legal
terms.  Its local martingale contribution is therefore a coordinate of
`J^S`, not an independent Schur gap.

For a stopped parent \(Q\), the installed local step has the form

```math
|\Delta_Q\rho_{\rm sel}|^2\mu(Q)
\lesssim
\langle U_Q,\mathsf S_QU_Q\rangle
 +E_Q^{top/ex}
 +S_Q^{mat}
 +D_Q^{vis/rad}
 +R_Q^{legal}.
\tag{3}
```

This is support for the routed current.  It is not yet a global square-packing
theorem.

## 2. Stopped current capacity is the required noncircular drop

The stopped square-packing target is

```math
\sum_{Q\subset P}
\left[
\int_{\widehat Q}|J^S|^2\,d\mathcal R
+Stop(Q)
\right]
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{4}
```

The repo does not currently install `(4)`.  Raw original-history \(L^2\) control
does not beat the selected critical half-tail, and a Bellman reserve defined as
the future selected tail would be circular.

The smallest noncircular current theorem is:

```text
RoutedCurrentCapacityDrop.A
```

For every stopped parent \(Q\), after \(J^S\) is constructed from the original
pressure-viscosity-incompressibility-velocity material history, there is a
nonnegative current capacity

```math
B_{\rm cur}
=B_{\rm vis}
 +B_{\rm sil/ex}
 +B_{\rm ret}
 +B_{\rm reset}
 +B_{\rm collar}
\tag{5}
```

built before scalar selected-tail readout, with root bound

```math
B_{\rm cur}(P)\le C_N(u_0)\mathcal R(P)+R_{\rm legal}(P),
\tag{6}
```

and parent-child drop

```math
\sum_{Q'\in\mathcal C(Q)}
\int_{\widehat {Q'}} |J^S|^2\,d\mathcal R
+
\sum_{Q'\in\mathcal C(Q)}B_{\rm cur}(Q')
\le
B_{\rm cur}(Q)
+C\,RetBV(Q)
+C\,ResetBV(Q)
+C\,R_{\rm legal}(Q).
\tag{7}
```

Summing `(7)` proves `(4)` only after the return and reset branch defects are
paid.

## 3. Branch defects after silent support is consumed

The routed-current branch audit leaves exactly two non-legal defects:

```math
Def_{\rm test}(P)
\le
C\,RetBV(P)+C\,ResetBV(P)+C\,R_{\rm legal}(P).
\tag{8}
```

The fixed stopped-core return side remains blocked at

```text
SignedStoppedPLSEvolutionIdentity.A
StoppedReturnBVFiniteFromOriginalData.A
```

The strict reset side remains blocked at

```text
CriticalWeightedResetBVFromOriginalHistory.A
LogScaleResetDerivativeCarrierBound.A
```

These are not proved by the silent-source correction.  They are the two branch
payments needed after the current capacity drop has been stated correctly.

## 4. Why the full-clock frame is not the next smaller lemma

The annular/full-clock material picture has the right same-material object, but
the installed facts are fixed-carrier or conditional.  They show attachment,
center-to-annulus domination, and fixed-annulus consequences.  They do not
install the one-way moving storage/coercivity inequality

```math
d\mathfrak L_N+c\,d\Omega_N^{full}+d\mathcal L_N
\le
dR_N,\qquad
\mathfrak L_N\ge -C_N(u_0),\qquad
\int dR_N<\infty.
\tag{9}
```

Proving finite full clock from original smooth finite-energy data is already
the Gold continuation-strength theorem.  It should not be repackaged as a
small local lemma.

A useful bridge can still be stated:

```text
FullClockRoutedCurrentSquarePackingBridge.A
```

It would prove that the stopped current square-packing and the parent-drop
remainders are genuine stopped samples of the full same-material action:

```math
\sum_{Q\subset P}
\left[
\int_{\widehat Q}|J^S|^2\,d\mathcal R
+Stop(Q)
\right]
\le
C\int_{\operatorname{Hist}(P)}d\Omega_N^{full}
+C\,RetBV(P)
+C\,ResetBV(P)
+C\,R_{\rm legal}(P).
\tag{10}
```

That bridge is a coordinate identity.  It does not by itself prove
\(\int d\Omega_N^{full}<\infty\).

## 5. Root-reserve equivalence

The stopped parent-drop side leaves

```math
\sum_{S\subset P}
\bigl(
\Omega_S^{strain/ex}+D_S^{vis/rad}
\bigr)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)
\tag{11}
```

as the unpaid production estimate.  The stopped reselection audit shows that
unpaid strict reselection is not independent: it is the terminal selected-density
atom / selected root-reserve branch in stopped coordinates.

Thus the current route has the reduction chain

```text
StoppedRoutedCurrentSquarePacking.A
  <= RoutedCurrentCapacityDrop.A + RetBV + ResetBV
  <= StoppedFullExchangeActionCarleson.A + RetBV + ResetBV
  <= SelectedCompressionRootReserve.A
  <= CriticalFreshSourceTentCarleson.A
  <= NativeBirthChargePacking.A.
```

The sharp nonduplicate producer is the critical fresh source tent bound:

```math
\sum_{Q\subset P}
w(Q)\|F_Q\|_{\mathcal H_{\rm raw}}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P),
\tag{12}
```

where \(F_Q=(I-\Pi_{\rm spent(<Q)})\Delta_QZ_P^{orig}\) is defined from the
original-history visible/silent/exchange carrier before future selected-tail
readout.  Ordinary Bessel control gives only the unweighted raw sum, and the
half-tail profile

```math
\sum_\ell \nu_\ell<\infty,
\qquad
\sum_\ell 2^\ell\nu_\ell=\infty
\tag{13}
```

shows why freshness and orthogonality alone do not close the estimate.

## 6. Branch lock

The route is now locked to this proof-method split:

1. Prove `RoutedCurrentCapacityDrop.A` with an original-history
   \(B_{\rm cur}\), and pay the remaining `RetBV` and `ResetBV` branches; or
2. Prove the equivalent producer `SelectedCompressionRootReserve.A` through
   `CriticalFreshSourceTentCarleson.A / NativeBirthChargePacking.A`.

The better immediate mathematical attack is the second form, because it targets
the exact missing critical factor without pretending that the full clock has
already been made finite.  In proof-method terms, this should be a first-birth /
no-reuse or minimal bad tree argument:

```math
\text{first selected high-ratio birth}
\longrightarrow
\text{native reserve atom}
\longrightarrow
\text{spent once or refunded through paid exchange}.
\tag{14}
```

The missing assertion is bounded multiplicity of this native reserve assignment
from original history:

```math
\iota:\Gamma_N(P)\to\mathcal R_N^{nat}(u_0;P),
\qquad
\omega_\gamma\le C_N\rho_{\iota(\gamma)}+R_{\rm legal}(\gamma),
\qquad
\operatorname{mult}(\iota)\le C_N.
\tag{15}
```

with

```math
\sum_{\rho\in\mathcal R_N^{nat}(u_0;P)}\rho
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{16}
```

Equations `(15)`--`(16)` are the noncircular root-reserve map.  They are the
next useful Gold target.  Schur-only coercivity, terminal anti-atom exclusion,
silent-source observability, raw freshness, and full-clock restatement should
not be promoted again unless they prove this map or the current capacity drop
above.

## 7. Relay consequence

`RoutedSelectedSourceDivergenceForm.A` remains a valid consumer once the routed
current is square-packed.  The silent-source dynamic correction supplies one
coordinate of that current.  The live producer is now:

```text
NativeBirthChargePacking.A
  / CriticalFreshSourceTentCarleson.A
  / SelectedCompressionRootReserve.A
```

as the noncircular source of `RoutedCurrentCapacityDrop.A`.

Gold is not closed.  The route is narrowed: close the native reserve
birth-packing map, or prove an equivalent original-history current capacity
drop with the return/reset defects paid separately.
