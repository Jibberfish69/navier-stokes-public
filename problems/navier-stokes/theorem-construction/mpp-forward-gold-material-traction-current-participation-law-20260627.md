---
theorem_id: forward-gold-material-traction-current-participation-law-20260627
status: material-current-mechanism-installed-derivative-estimate-open
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
  same material capacity/current record.  Partial, not Gold closed.
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

## 3. Stopped projection estimate

The stopped selector is admissible only because it is parent-known and
finite-overlap.  On each retained stopped shell \(Q\), the selected edge
increment must be controlled by derivative variation of the same traction
current:

```math
|\Delta_QJ^S|^2\,\mathcal R(Q)
\lesssim
\int_{\operatorname{Hist}(Q)}
w\,|\partial_\sigma J^S|^2.
\tag{7}
```

The right-hand side is original traction/strain/turnstile/covector/connection
derivative energy.  It is not a future selected tail and not a downstream full
material clock input.

After decomposing \(\partial_\sigma J^S\) into routed coordinates, `(7)` is the
pointwise shell form of

```math
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\right)
\le
C(u_0)+R_{\rm legal}(P)+Stop(P).
\tag{8}
```

Equation `(8)` is the Gold wall.  Fixed return, strict reset, selector log
amplification, parent drop, finite full clock, and \(H^s\) continuation are
bookkeeping after `(8)`.

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
MaterialTractionCurrentStoppedAtlasDerivativeBound.A.
```

For the parent-known stopped material atlas, prove that the projected interface
traction current satisfies `(7)` with derivative energy controlled by the
original strain, turnstile, exchange, covector, connection, stop, and legal
ledgers.  Then `(8)` follows, and the selected Gold chain is only downstream
bookkeeping.

Partial, not Gold closed.
