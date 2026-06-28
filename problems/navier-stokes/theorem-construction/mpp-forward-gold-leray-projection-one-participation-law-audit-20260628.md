---
theorem_id: forward-gold-leray-projection-one-participation-law-audit-20260628
status: audit-installed-not-closure
created: 2026-06-28
problem: navier-stokes
route: forward-gold same-material pressure-viscosity-incompressibility participation law
supports:
  - MaterialTractionCurrentParticipationLaw.A
  - StoppedSelectorBoundedProjectionOfOriginalParticipationLaw.A
  - SelectedActionCurrencyBoundedOriginalPacketEnforcement.A
  - PositiveCriticalTransferDyadicFluxReduction.A
  - HighHighParentCurrentAdmissionIdentityAttempt.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-traction-current-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bounded-projection-original-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-action-currency-bounded-original-packet-enforcement-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-high-parent-current-admission-identity-attempt-20260628.md
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-creation.yaml
completion_truth: >-
  This audits Leray/Hodge shorthand against the main participation algebra. It
  does not prove the full-output net-flux parent-current split or close Gold.
---

# Leray projection and the one participation law

This note records the safe reading of Leray/Hodge notation in the Gold
same-material participation algebra.

The physical object is the whole coupled pressure-viscosity-incompressibility
law carried by the velocity field and the material stress.  The symbol
\(\mathbb P\) is only compressed notation for solving the pressure constraint
and reading the tangent divergence-free part of that same law.  It is not a
separate transported substance, a detached source, or a standalone
participation mechanism.

## 1. What the projection actually abbreviates

Start from the original Navier-Stokes system

```math
\partial_t u+u\cdot\nabla u+\nabla p=\nu\Delta u+f,
\qquad
\nabla\cdot u=0.
\tag{1}
```

Taking divergence gives the pressure constraint

```math
-\Delta p
=
\partial_i\partial_j(u_i u_j)-\nabla\cdot f
\tag{2}
```

up to the usual normalization and boundary/periodic convention.  Thus pressure
is the multiplier that enforces the incompressibility constraint on the
acceleration.  Applying the Leray projector gives the reduced tangent equation

```math
\partial_t u+\mathbb P\nabla\cdot(u\otimes u)
=
\nu\Delta u+\mathbb P f.
\tag{3}
```

Equation `(3)` is not a new physical law.  It is equation `(1)` after the
pressure constraint has been solved inside the same coupled system.

The clean first-order rest example shows the distinction.  If \(u(0)=0\), then

```math
u_t(0)=f(0)-\nabla p(0)=\mathbb P f(0),
\qquad
\Delta p(0)=\nabla\cdot f(0).
\tag{4}
```

So the whole field acceleration is constrained immediately by the pressure
solve, while material energy is still carried by velocity, stress, boundary
traction, and dissipation:

```math
u(t)=t\,\mathbb P f(0)+O(t^2),
\qquad
\frac12 |u(t)|^2=\frac{t^2}{2}|\mathbb P f(0)|^2+O(t^3).
\tag{5}
```

This is the correct meaning of an "instant" projection readout: the constraint
selects the allowed acceleration field, while physical payment remains in the
same material participation law.

## 2. Where the physical transport/payment lives

The repo's main Gold algebra already stores the physical mechanism in the
material traction identity.  For a transported material region \(A(t)\),

```math
\frac{d}{dt}\int_{A(t)}\frac12 |u|^2
+
2\nu\int_{A(t)} |S|^2
=
\int_{\partial A(t)} u\cdot Tn,
\qquad
T=-pI+2\nu S.
\tag{6}
```

This is the one participation law.  Convection disappears from bulk production
because \(A(t)\) moves with the fluid.  Pressure contributes through boundary
traction and constraint geometry.  Viscosity contributes through strain and
dissipation.  The trace-free identity

```math
T:S=(-pI+2\nu S):S=2\nu |S|^2
\tag{7}
```

is the local algebraic reason pressure has no bulk strain production while
still participating in the boundary and constraint part of the law.

In the stopped atlas the interface current is

```math
J_{P\to Q}(t)
=
\int_{\partial Q\cap\partial P}u\cdot Tn_{P\to Q},
\tag{8}
```

and the stopped local balance is

```math
dB_Q+D_Q\,dt
=
(D_AJ)_Q\,dt+dR_Q^{legal}+dStop_Q.
\tag{9}
```

That is the physical "how" behind any selected pulse: it is boundary traction,
viscous strain/dissipation, material-frame constraint service, and legal/stop
motion of the same carried packet before scalar readout.

## 3. Hodge/Leray audit rule for Gold

Every use of \(\mathbb P\), a Hodge projector, or a pressure-killing
divergence-free test in the Gold route must satisfy this audit.

1. The projected object must be attached to the original material packet before
   scalar selected readout.
2. The physical contribution must be represented as one of the existing
   participation-law terms: material stress current, material Hodge/projector
   service, collar/frame/route motion, viscous absorption, legal remainder, or
   stop.
3. A pressure-elimination identity may remove pressure from a bulk test only
   after the test is divergence-free in the relevant material chart:

```math
\int pI:\nabla_A v
=
\int p\,D_A\cdot v
=0.
\tag{10}
```

4. Projector motion is charged as material geometry.  In material coordinates
   the schematic Hodge form is

```math
\mathbb P_A=I-\mathcal G_A L_A^{-1}D_A,
\tag{11}
```

   and differentiating a stopped chart produces strain/metric/frame service
   terms.  Those terms belong to route/collar/connection/legal/stop accounting;
   they are not free propagation.
5. A selected scale-action readout has retained Gold force only after it is
   admitted as a bounded projection of original participation energy:

```math
w\left(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\right)d\sigma
\le
C\,\Theta_{\rm part}^{orig}
+dR_{\rm legal}
+dStop.
\tag{12}
```

This is the repository-level guard against a decoupled Leray participation
oversight.

## 4. Downstream effect on the current Gold wall

The full-output parent-current identity is admissible only in the whole
output-local stress form

```math
B_m^{full}
=
\Lambda^{-1/2}P_m\mathbb P\nabla\cdot(u\otimes u),
\qquad
\langle B_m^{full},\phi\rangle
=
-\int (u\otimes u):\nabla\Phi_\phi\,dx,
\tag{13}
```

with \(\Phi_\phi=\mathbb P P_m\Lambda^{-1/2}\phi\).  After material pullback,
this is a one-point parent stress-current read plus Hodge, collar, frame, and
adjoint errors.

Individual input-coloured high-high triads are a different object: they require
two input carriers and therefore a two-point/product-current capacity theorem.
They cannot be used as one-point parent-current participation without that
extra branch.

Consequently the current Gold wall remains the full-output net-flux
parent-current split:

```math
T_Q^+
\lesssim
\int_Q \langle G^{-1}m,p_Q\rangle_+
+dA_Q^-
+\mathfrak S_Q\,d\mathcal K_Q
+\theta\nu D_Q
+Legal_Q
+Stop_Q,
\qquad
\theta<1.
\tag{14}
```

The Leray/Hodge audit does not close `(14)`.  It fixes the ontology of every
projection step feeding `(14)`: projection is constraint geometry inside the
one participation law, and every selected pulse must still pay through the
same material packet.
