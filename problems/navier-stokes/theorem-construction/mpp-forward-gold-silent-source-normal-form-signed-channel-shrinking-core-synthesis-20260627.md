---
theorem_id: forward-gold-silent-source-normal-form-signed-channel-shrinking-core-synthesis-20260627
status: branch-synthesis-two-global-obligations-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / critical fresh-source tent Carleson
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-origin-normal-form-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-origin-support-to-record-return-live-edge-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-signed-lift-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-signed-channel-decomposition-repair-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-nozeno-record-return-branch-routing-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-compression-root-reserve-synthesis-20260626.md
attacks_hinge:
  - CriticalFreshSourceTentCarleson.A
  - NoZenoReuseEscapeDichotomyStrictCharge.A
  - RepeatedCoreRecordReturnStorageBound.A
  - NativeBirthChargePacking.A
  - SelectedCompressionRootReserve.A
---

# Silent-source normal form to branch synthesis

The invisible-child branch should not be treated as boundary observability.
Elliptic theory already allows boundary-flat sources of the form

```math
f=L_Aw
```

with boundary-flat \(w\).  The right question is source-origin classification:
can such a boundary-flat pressure-Hodge source also be a retained selected
critical-strain carrier at zero same-material charge?

The local normal form is:

```math
\ker(\mathsf S_{\rm parent})
\cap
\{\text{retained selected pressure-Hodge carriers}\}
\subseteq
\{\text{hidden-potential unselected material}\}
\cup
\{\text{top-strain/exchange charged material}\}.
\tag{1}
```

Thus zero parent-child Schur trace gives a fork, not a direct boundary
detection theorem.

First, if the silent source is only pressure-potential / constraint material,
then it is not selected:

```math
f=L_Aw,\quad w|_{\partial}=0,\quad
f\in \text{hidden-potential material}
\quad\Longrightarrow\quad
A_\infty=0.
\tag{2}
```

Second, if it is genuinely selected, then the same material packet has created
top-strain / exchange service:

```math
f=L_Aw,\quad
f\in \text{retained selected carrier}
\quad\Longrightarrow\quad
d\Omega^{top/ex}_{\rm same\ packet}>0.
\tag{3}
```

So the silent source escape is not a third branch.  It either vanishes from the
selected action, or it becomes charged material inside the repeated-core
record/return branch.

## Repeated-core branch

The previous one-channel input

```text
PrimitivePLSDriverToSignedCommutatorIdentity.A
```

was too narrow.  The repaired input is the full same-packet signed-channel
decomposition:

```math
d\Omega_S^{PLS,primitive,+}
\le
C_N\sum_{\kappa\in\mathcal K_N}
[Y_{\kappa,S}]_+\,d\sigma dt
+dR_S^{paid},
\tag{4}
```

where

```math
Y_{\kappa,S}
=
\partial_\sigma\Psi_{\kappa,S}
+S_{\kappa,S}^{spill}
+E_{\kappa,S}.
\tag{5}
```

The finite channel set \(\mathcal K_N\) consists of same-packet coordinates:
strain/top-eigenframe, pressure-Hessian through the strain equation,
Hodge/Stokes projector motion, coefficient/frame motion, transported collar
motion, annular stress work, viscous/radius graph service, and low-high
transport commutator.

The remaining repeated-core proof obligations are:

```math
[\Theta_\kappa]=0
\quad\text{or}\quad
d\Theta_\kappa\le dR^{paid},
\tag{6}
```

and the channel boundary/remainder barrier:

```math
\sum_{\kappa\in\mathcal K_N}
\int_0^T
\left(
|\mathfrak B_{\kappa,N}^{upper}(t)|
+|\mathfrak R_{\kappa,N}^{mid}(t)|
\right)dt
\le
\eta\nu\int_0^TD_N(t)\,dt
+C_*2^{-2\delta N}
+R_{\rm legal}.
\tag{7}
```

The upper-boundary piece is still an open barrier estimate.  The middle residual
piece must be proved through the source-balanced far-corona reduction, not raw
LPAS.

Once `(4)`--`(7)` hold, the repeated-core record/return bound is:

```math
\sum_{Q_k\subset\mathcal A}A_{\rm sel}^{fresh}(Q_k)
\lesssim
\sum_{\kappa\in\mathcal K_N}
\left(
\operatorname{Rec}_\infty(\Psi_{\kappa,\mathcal A})
+V_-^{return}(\Psi_{\kappa,\mathcal A})
\right)
+R_{\rm legal}(\mathcal A).
\tag{8}
```

The global repeated-core storage target is:

```math
\int_{\mathcal F_{\rm lam}}
\sum_{\kappa\in\mathcal K_N}
\left(
\operatorname{Rec}_\infty(\Psi_{\kappa,\mathcal A})
+V_-^{return}(\Psi_{\kappa,\mathcal A})
\right)
d\mathcal R_{\rm ancestry}(\mathcal A)
\le
C_N(u_0)+R_{\rm legal}.
\tag{9}
```

## Shrinking-core branch

Repeated-core record/return does not close shrinking-core escape, because the
signed potentials can reset on smaller transported cores.  The shrinking-core
branch needs an original-history reserve, not another local capacity lower
bound.

The current root-reserve form is:

```math
\sum_{Q\in\mathcal T_{\rm sel}}
\left(
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal S_{\rm normal}(Q)
+\mathcal S_{\rm covector}(Q)
+\mathcal B_{\rm select}(Q)
\right)
\le
C_N(u_0)+R_{\rm legal}.
\tag{10}
```

This is `SelectedCompressionRootReserve.A`.  The checked nonreuse part is no
longer the live obstruction: after lower-band carry, paid reselection,
silent-source exchange, full-exchange refund, entrance, and legal carry are
removed, a strict selected descendant must read a genuinely fresh source
increment.

The noncircular producer left in the shrinking-core branch is the selected-scale
fresh root upper bound:

```math
\sum_{Q\subset P}
w(Q)\|F_Q\|_{\mathcal H_{\rm raw}}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P),
\tag{11}
```

where \(F_Q\) is the genuinely fresh original-history visible/silent/exchange
increment after spent-source projection and paid removals, and \(w(Q)\) is the
selected first-ratio / heat-scale weight.

Equivalently, construct a bounded multiplicity map from each retained selected
high-ratio fresh source atom into a finite native original-history reserve atom,

```math
\iota:\Gamma_N(P)\to\mathcal R_N^{nat}(u_0;P),
\tag{12}
```

with

```math
\omega_\gamma
\le
C_N\rho_{\iota(\gamma)}
+R_{\rm legal}(\gamma),
\qquad
\operatorname{mult}(\iota)\le C_N,
\tag{13}
```

and

```math
\sum_{\rho\in\mathcal R_N^{nat}(u_0;P)}\rho
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{14}
```

## Current Gold state

The local silent-source escape is handled by source-origin normal form:
boundary-flat hidden potential material is unselected, while genuinely selected
silent material is charged to same-material top-strain/exchange.

The global critical fresh-source tent Carleson theorem is still open and now
splits cleanly as:

```math
\text{CriticalFreshSourceTentCarleson.A}
\Leftarrow
\text{RepeatedCoreChannelRecordReturnStorageBound.A}
+
\text{FreshNativeRootUpperBound.A},
\tag{15}
```

where the repeated-core branch first requires

```text
PrimitivePLSSignedChannelDecomposition.A
```

and the shrinking-core branch first requires the selected-critical fresh root
upper bound above.  This is not Gold closure.  It is the current sharp branch
synthesis after the silent-source normal form repair, the repeated-core signed
channel audit, and the spent-source nonreuse audit.
