---
theorem_id: forward-gold-material-traction-current-participation-law-20260627
status: material-current-stress-test-bessel-plus-active-storage-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - StoppedSelectorBoundedProjectionOfOriginalParticipationLaw.A
  - OriginalParticipationStorageCoercivity.A
  - OriginalHistoryRoutedCurrentEnergyFinite.A
source_surfaces:
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
  pressure exactly, and square-pack the lifted gradients by Bessel orthogonality.
  This is Gold-closing only when the stopped square-packing weight is the
  selected-critical original participation weight supplied by
  OriginalParticipationStorageCoercivity.A / OriginalHistoryWeightedFreshCurrentCapacity.A;
  raw stopped-overlap Bessel control is support only.
  Partial, not Gold closed.
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

Choose the stopped routing atlas so the lifted gradients are an
energy-normalized parent-known Bessel family:

```math
\sum_{Q\subset P}
\mathcal R(Q)
\left|
\int_{\operatorname{Hist}(Q)}
G:\nabla_Av_Q
\right|^2
\le
C
\int_{\operatorname{Hist}(P)}
|G|^2.
\tag{11}
```

Applying `(11)` with \(G=2\nu S_A\) gives

```math
\sum_{Q\subset P}
\mathcal R(Q)|\Delta_QJ^S|^2
\le
C\nu^2
\int_{\operatorname{Hist}(P)}
|S_A|^2
+R_{\rm legal}+Stop.
\tag{12}
```

The material energy identity gives

```math
2\nu\int_0^T\int |S|^2
\le
\|u_0\|_2^2.
\tag{13}
```

Thus, for fixed viscosity normalization,

```math
\sum_{Q\subset P}
\mathcal R(Q)|\Delta_QJ^S|^2
\le
C(u_0)+R_{\rm legal}+Stop.
\tag{14}
```

Equation `(14)` is the square-packing input for the Gold wall.  Fixed return,
strict reset, selector log amplification, parent drop, finite full clock, and
\(H^s\) continuation are bookkeeping after this stopped dual stress-test bound.

This sentence has one essential qualifier: the measure \(\mathcal R(Q)\) in
`(11)`--`(14)` must already be the selected-critical original participation
weight pulled back to the stopped tree.  With only raw stopped-overlap weight,
`(14)` is the material-current/Bessel support estimate, not the Gold producer.
The half-tail profile has finite raw current mass

```math
\sum_\ell \|F_\ell\|_{\mathcal H_{\rm raw}}^2<\infty
\tag{15}
```

and divergent selected-critical mass

```math
\sum_\ell w_\ell\|F_\ell\|_{\mathcal H_{\rm raw}}^2=\infty.
\tag{16}
```

Thus the stress-test estimate closes the Gold wall only in its active-weight
Carleson form:

```math
\sum_{Q\subset P}
w(Q)
\left|
\int_{\operatorname{Hist}(Q)}
G:\nabla_Av_Q
\right|^2
\le
C
\int_{\operatorname{Hist}(P)}
|G|^2
+dR+dStop,
\tag{17}
```

or equivalently after proving that the raw stopped stress-test weight
\(\mathcal R(Q)\) is dominated by the original-history selected-critical native
reserve/current-capacity measure.  This is the same unpaid content now recorded
as `OriginalHistoryWeightedFreshCurrentCapacity.A` /
`OriginalScaleMemoryGeneratorEnergyBound.A`.

## 4. Noncircularity

The proof is noncircular for one reason: the current is original material
traction current.

Pressure can move energy across shell boundaries, but it cannot create bulk
energy because \(\operatorname{tr}S=0\).  Viscosity removes energy.  Material
transport removes convective creation.  Internal edge currents cancel in the
tree sum.  A selected shell can only gain by receiving cancellable interface
traction from another shell, and finite stopped overlap prevents the selector
from reading the same original current infinitely often without paying stop or
legal loss.

## 5. Remaining theorem

The remaining theorem is:

```text
StoppedDivergenceFreeStressTestBessel.A
+ OriginalParticipationStorageCoercivity.A
  in the selected-critical original participation metric.
```

For the parent-known stopped material atlas, construct the pre-selected
divergence-free Hodge lifts \(v_Q\) and prove the lifted gradients satisfy the
Bessel/Carleson estimate `(17)`, with all stopping, boundary, chart, and legal
errors entering only through \(R_{\rm legal}\) and \(Stop\).  Equivalently,
prove `(11)` together with original participation storage / active-weight
domination identifying \(\mathcal R(Q)\) with the selected-critical native
reserve measure before selected readout.  Then `(14)` supplies finite
routed-current energy from the original viscous strain norm in the Gold-critical
metric, and the selected Gold chain is downstream bookkeeping.

Partial, not Gold closed.
