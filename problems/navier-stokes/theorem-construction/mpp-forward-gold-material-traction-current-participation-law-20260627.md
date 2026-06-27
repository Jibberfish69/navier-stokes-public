---
theorem_id: forward-gold-material-traction-current-participation-law-20260627
status: material-current-stress-test-bessel-plus-active-storage-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - ParentSubtractedInheritedActionSquarePacking.A
  - ResetAngleSelectorVariationPayment.A
  - SelectedActionParentSubtractedCurrentAdmission.A
  - StoppedSelectorBoundedProjectionOfOriginalParticipationLaw.A
  - OriginalParticipationStorageCoercivity.A
  - OriginalHistoryRoutedCurrentEnergyFinite.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-inherited-action-square-packing-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-readout-parent-subtracted-current-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-stress-test-frame-qr-realization-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bounded-projection-original-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-energy-stable-routed-current-projection-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-routed-current-energy-subledger-full-clock-boundary-20260627.md
effect: >-
  Installs the physical mechanism behind the corrected Gold hinge.  The routed
  current J^S is the stopped-atlas projection of the original material boundary
  traction current from the Navier-Stokes energy identity.  Pressure has no bulk
  production because tr S = 0, convection has no material production because the
  regions are transported by the flow, and viscosity is dissipative.  Selected
  scale-action can only be incoming interface traction plus variation of the
  same material capacity/current record.  The routed-current estimate is dual:
  lift selected readouts to stopped divergence-free material test fields, kill
  pressure exactly, subtract the parent-known inherited projection, and
  square-pack only the fresh QR residual.  Exact inherited reuse is parent
  current.  Changed inherited reuse is reset/angle/selector/frame/collar/stop/
  legal variation inside the same full-action/no-free-reset law.
---

# Material traction current participation law

Gold is the material energy law read as a network current before selected
readout.

For every transported material region \(A(t)\),

```math
\frac{d}{dt}\int_{A(t)}\frac12 |u|^2
+
2\nu\int_{A(t)}|S|^2
=
\int_{\partial A(t)}u\cdot Tn,
\qquad
T=-pI+2\nu S.
\tag{1}
```

This identity is the pressure-viscosity-incompressibility participation law.
Since \(S\) is trace-free,

```math
T:S=(-pI+2\nu S):S=2\nu |S|^2.
\tag{2}
```

Pressure does no bulk energy creation.  Convection does no material energy
creation because \(A(t)\) moves with the fluid.  Viscosity is one-way loss.  The
only way one material shell gains energy is boundary traction from another
material shell.

## 1. Stopped atlas current

Put a stopped material atlas on top of the transported regions.  Each shell has
a material capacity \(B_Q\).  Each interface traction is an oriented edge current

```math
J_{P\to Q}(t)
=
\int_{\partial Q\cap \partial P}
u\cdot Tn_{P\to Q}.
\tag{3}
```

The stopped local law is

```math
dB_Q+D_Q\,dt
=
(D_AJ)_Q\,dt+dR_Q^{legal}+dStop_Q.
\tag{4}
```

Here \(D_Q\ge0\) is the viscous dissipation in shell \(Q\), and \(D_AJ\) is the
oriented incidence divergence of the interface traction current in the stopped
atlas.  This is why \(J^S\) exists before selected readout: it is not an invented
scalar packet.  It is the original boundary traction exchange current projected
onto the stopped routing atlas.

## 2. Original finiteness

Summing `(4)` over the material tree cancels internal interface currents
pairwise.  The remaining bulk term is dissipative:

```math
\sum_Q \int D_Q\,dt
\le
C(u_0)+R_{\rm legal}+Stop.
\tag{5}
```

Thus a positive selected burst in a child is not new production.  It is incoming
traction current from its parent plus a recorded change of the same capacity.
Repeated selected bursts force repeated variation of that same
capacity/current record.

This gives the noncircular source of

```math
\nu^S
=
D_AJ^S+\nu^S_{\rm stop}+\nu^S_{\rm legal}.
\tag{6}
```

The source factorization is physical before the selector reads scalar action.

## 3. Dual stopped stress test

The current estimate is dual.  Do not differentiate the physical traction
current \(J=u\cdot Tn\).  For each stopped child \(Q\), lift the selected readout
functional before selection to a material test field \(v_Q\) satisfying

```math
D_A\cdot v_Q=0.
\tag{7}
```

Define the routed current increment by stress pairing:

```math
\Delta_QJ^S
:=
\int_{\operatorname{Hist}(Q)}
T:\nabla_A v_Q.
\tag{8}
```

The pressure term vanishes exactly:

```math
\int_{\operatorname{Hist}(Q)}
pI:\nabla_Av_Q
=
\int_{\operatorname{Hist}(Q)}
p\,D_A\cdot v_Q
=0.
\tag{9}
```

The remaining part is viscous:

```math
\Delta_QJ^S
=
\int_{\operatorname{Hist}(Q)}
2\nu S_A:\nabla_Av_Q
+dR_Q^{legal}+dStop_Q.
\tag{10}
```

For a fixed stopped parent \(P\), put the lifted readouts in

```math
\mathfrak H_P
=
L^2_{\rm sym,tr}(\operatorname{Hist}(P))
\tag{11}
```

by writing

```math
a_i
=
\sqrt{\mathcal R(Q_i)}
\,1_{\operatorname{Hist}(Q_i)}
P_{\rm sym,tr}\nabla_Av_i
\in \mathfrak H_P,
\qquad
\sqrt{\mathcal R(Q_i)}\,\Delta J_i
=
\langle 2\nu S_A,a_i\rangle_{\mathfrak H_P}.
\tag{12}
```

Let \(E_{i-1}\) be the parent-known span of inherited directions and already
admitted fresh directions.  Split

```math
a_i=b_i+d_i,
\qquad
b_i=\Pi_{E_{i-1}}a_i,
\qquad
d_i=(I-\Pi_{E_{i-1}})a_i .
\tag{13}
```

The current consumed by the selected child readout is the new current

```math
\sqrt{\mathcal R(Q_i)}\,\Delta J_i^{new}
:=
\langle 2\nu S_A,a_i\rangle
-
\langle 2\nu S_A,b_i\rangle
=
\langle 2\nu S_A,d_i\rangle .
\tag{14}
```

Exact inherited reuse has \(d_i=0\), hence zero new child action.  It remains
parent current in the same material record.

For \(d_i\ne0\), set \(e_i=d_i/\|d_i\|\).  Parent-known QR makes the \(e_i\)
orthonormal, and the normalized stopped lifts have \(\|d_i\|\le C_N\).  Thus

```math
\sum_i
\mathcal R(Q_i)|\Delta J_i^{new}|^2
=
\sum_i |\langle 2\nu S_A,d_i\rangle|^2
\le
C_N^2\,4\nu^2
\int_{\operatorname{Hist}(P)}|S_A|^2 .
\tag{15}
```

The material energy identity gives

```math
2\nu\int_0^T\int |S|^2
\le
\|u_0\|_2^2.
\tag{16}
```

So the fresh parent-subtracted current is original-data finite:

```math
\sum_i
\mathcal R(Q_i)|\Delta J_i^{new}|^2
\le
C_N(u_0).
\tag{17}
```

When the parent-known projection changes, the inherited channel has changed.
The changed-reuse term is

```math
\rho_i
=
\langle 2\nu S_A,(\Pi_i-\Pi_{i-1})a_i\rangle .
\tag{18}
```

With

```math
\operatorname{Var}^{stop}_P
:=
\sum_i\|(\Pi_i-\Pi_{i-1})a_i\|_{\mathfrak H_P}^2
+Stop(P)+R_{\rm legal}(P),
\tag{19}
```

one has

```math
\sum_i|\rho_i|^2
\le
C_N(u_0)\operatorname{Var}^{stop}_P .
\tag{20}
```

Equations `(17)` and `(20)` are the mathematical form of the no-free-reset
story.  The original Navier-Stokes law supplies the stress \(2\nu S_A\) and its
finite strain norm; the stopped selector must count only the parent-subtracted
new current, while projection changes are charged as reset/angle/selector/
frame/collar/stop/legal variation in the same full-action measure.

## 4. Noncircularity

The proof is noncircular for one reason: the current is original material
traction current.

Pressure can move energy across shell boundaries, but it cannot create bulk
energy because \(\operatorname{tr}S=0\).  Viscosity removes energy.  Material
transport removes convective creation.  Internal edge currents cancel in the
tree sum.  A selected shell can only gain by receiving cancellable interface
traction from another shell.  The parent-subtracted read prevents the selector
from counting the same original current again as fresh child action.

## 5. Closure form

The full action being read is

```math
d\Omega_N
=
d\Omega_N^{fresh}
+d\Omega_N^{reset}
+d\Omega_N^{stop/legal}.
\tag{21}
```

Here \(d\Omega_N^{fresh}\) is paid by `(17)`, and \(d\Omega_N^{reset}\) is the
projection-change variation in `(20)`.  In the no-free-reset storage notation,
the Gold form is

```math
d\mathscr A_N
+c\,d\Omega_N
\le
dR_N,
\qquad
\mathscr A_N(t)\ge -C(u_0),
\qquad
\int_0^{T^*}dR_N<\infty .
\tag{22}
```

With selected readout admitted in the parent-subtracted form `(14)`, `(22)`
turns the material current estimate into finite full same-material action.  Any
surface that still asks for a raw inherited-value estimate or a raw
\(\{\langle G,a_i\rangle\}\) Bessel theorem is stale.
