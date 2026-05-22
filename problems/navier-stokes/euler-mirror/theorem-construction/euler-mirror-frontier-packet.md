# Euler Mirror Frontier Packet

## Identity

This is the theorem-facing frontier packet for the Euler mirror after the May 16
ontology repair and the May 21 Euler/NS viscosity scenario separation.

Role:

1. keep the governing PDE literally Euler;
2. define Euler membership by flux-volume and weak momentum-pressure fidelity;
3. demote copied Navier-Stokes `Part` / `Field` faces to optional regularity
   structures;
4. expose every exact place where a smoothness proof needs a real Euler estimate.

## Equation Lock

The mirror branch replaces Navier-Stokes by incompressible Euler:

```math
\partial_t u+\nabla\cdot(u\otimes u)+\nabla p=0,
\qquad
\nabla\cdot u=0.
\tag{EMF.0}
```

The base object is the weak / distributional Euler equation with local
flux-volume balance. It is not assumed smooth.

## Membership Lock

The authoritative membership predicate is:

```math
\boxed{
\mathrm{Member}_E(Q)
=
\mathrm{EVol}_Q(u)
\wedge
\mathrm{EMom}_Q(u,p).
}
\tag{EMF.1}
```

Authority:
[mpp-euler-class-membership-flux-volume-definition.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-euler-class-membership-flux-volume-definition.md).

This means:

1. incompressible flux-volume balance is primitive;
2. the Euler momentum-pressure law is primitive;
3. pressure/incompressibility participation is only volume and normal-force
   compatibility;
4. tangential no-slip / viscous shear participation is not primitive;
5. one-field smooth coherence is not primitive;
6. Lagrangian flow-map control is not primitive.

The jet/slip diagnostic is now part of the frontier: a sharp injection can
obey the weak pressure-volume laws while failing to entrain neighboring material
into one smooth field. That behavior is an Euler regularity problem, not a base
membership contradiction.

## Vanishing-Viscosity Boundary

A vanishing-viscosity sequence lands on this Euler membership surface only when the
viscous carrier vanishes in the theorem-facing topology:

```math
\nu_j\Delta u^{\nu_j}\longrightarrow 0.
\tag{EMF.2}
```

If a nonzero viscous, energy, Reynolds, or boundary-layer defect remains, the
limit is a separate defect object, not the Euler member defined above.

## Correct Frontier

The live frontier is no longer "copy `Pack / Part / Field` and close
dead/blown/jump." The live frontier is:

```math
\boxed{
\mathrm{Member}_E
+ \text{chosen admissibility layer}
+ \text{Euler-native controls}
\Longrightarrow
\text{the desired smooth / coherent regularity class.}
}
\tag{EMF.3}
```

The admissibility layer may be energy equality/inequality, local energy balance,
Kelvin circulation, or another explicitly named selection rule. It is optional
theorem structure above weak membership, not hidden viscosity.

The old mirror files now have this status:

1. `ECFI`: boundary note for regularity forward-invariance above membership;
2. `EL13`: endpoint vocabulary demotion note;
3. `EOFP` / `EOFR`: optional one-field regularity program and supplier
   reduction;
4. `ELCI`: possible receiver-side support for a regularity theorem, not
   membership.

## Parent Receiver Chain Boundary

The parent chain remains useful only for locating non-Euler proof labor:

```math
RSCB.NKF
\Longrightarrow
NKF.Native
\Longrightarrow
ACT.KX
\Longrightarrow
ACT.X\text{-Readout}
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
\tag{EMF.4}
```

`ACT.KX` is still the sharp comparison break because it spends `c_\nu N`, a
viscous absorption seed, and top-viscous readout. Replacing that step would
support a smoothness/regularity theorem, not a primitive Euler membership
theorem.

## Closed Receiver Theorem Target

The branch-local receiver target inside `ELCI.A` has now been closed by the May
22 separation theorem, with the May 21 scenario map still governing the
comparison boundary:

```math
\boxed{\mathrm{ELCI.CP.A\text{-}Separation}}
```

The May 19 direct attempt proved the Euler packet inequality and Gronwall
closure once the center/oscillation/pressure ledger is integrable. The May 22
closure note proves the exact split for

```math
\mathfrak A^{E,ctr}
+
\Omega^{E,osc}
+
\Pi^{E,ctr}
\in L^1(I)
```

on the same finite transported Euler cover:

1. explicit same-cover Euler center, oscillation, and pressure-return envelopes
   give `L^1`;
2. base `Member_E` alone does not force `L^1`, with stationary unbounded shear
   as the clean ledger-failure witness.

This is still the local replacement for the parent
`ACT.X-Cut + ACT.X-Press + ACT.X-MidRaw + ACT.X-TopVisc => ACT.KX` and
`ACT.KX + ACT.X-Scale + RWS.C_scale => ACT.X-Readout` receiver chain. Those
parent cells remain comparison order rather than Euler inputs.

Scenario authority:
[euler-ns-viscosity-scenario-separation-map-20260521.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/euler-ns-viscosity-scenario-separation-map-20260521.md).

Closure authority:
[mpp-elci-cp-a-separation-closure-20260522.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-elci-cp-a-separation-closure-20260522.md).

## Current Stop Line

The Euler mirror cannot prove smoothness by declaring non-smoothness outside the
Euler object. Non-smooth base Euler equation behavior can still satisfy
`Member_E`, so the terminal stop line is classification rather than target
motion: conditional controls give conditional regularity, base membership does
not give smoothness or the ledger, and viscous parent steps are non-Euler
imports. No live frontier remains on this branch.
