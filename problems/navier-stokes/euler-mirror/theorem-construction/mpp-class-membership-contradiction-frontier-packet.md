# MPP Euler Membership / Regularity Frontier Packet

## Status

Route repair packet for the Euler mirror contradiction stack.

This packet supersedes the older mirror posture that treated Euler
non-smoothness as automatic class exit through copied `Pack / Part / Field`
faces.

## Fixed Target

The mirror equation is:

```math
\partial_t u+\nabla\cdot(u\otimes u)+\nabla p=0,
\qquad
\nabla\cdot u=0.
\tag{ECFP.0}
```

The target remains Euler regularity / smoothness, but the base class is no
longer a smooth class.

## Repaired Core Claim

Euler has a smaller primitive membership object than Navier-Stokes:

```math
\boxed{
\mathrm{Member}_E(Q)
=
\mathrm{EVol}_Q(u)
\wedge
\mathrm{EMom}_Q(u,p).
}
\tag{ECFP.1}
```

`EVol` is Eulerian flux-volume balance. `EMom` is the weak
momentum-pressure law. Neither term contains viscosity-level participation,
one-field coherence, a Lagrangian carrier, or smoothness.

Pressure/incompressibility participation is allowed only in this weak sense:
it enforces volume and normal compatibility, not one-carrier shear response.
Thus a jet-driven slip layer or vortex-sheet-like jump can remain compatible
with `Member_E` until a stronger Euler regularity class has been chosen and
proved.

## Endpoint Vocabulary Demotion

The old words

```math
\text{dead},\qquad \text{blown},\qquad \text{jump}
```

are now parent-route comparison labels only.

They may describe live failures of stronger regularity structures:

1. a Lagrangian-carrier failure;
2. a pressure-viscosity-style carrier failure that Euler pressure does not
   repair;
3. a positive-scale coherence failure;
4. a continuation / compactness failure.

They do not define primitive Euler membership exits.

## Correct Route Chain

The repaired Euler theorem chain is:

1. define `Member_E` by flux-volume and weak momentum-pressure fidelity;
2. define any desired smoothness class separately, for example through
   Lagrangian carrier, positive-scale coherence, or a continuation criterion;
3. prove that the desired regularity class propagates from Euler controls;
4. only then interpret loss of that stronger class as a regularity failure.

The invalid copied chain was:

```math
\mathrm{Pack}\wedge\mathrm{Part}\wedge\mathrm{Field}
\Longrightarrow
\text{Euler membership.}
```

The valid Euler split is:

```math
\boxed{
\mathrm{Member}_E
\quad\text{first,}
\qquad
\mathrm{ELag},\ \mathrm{EReg},\ \text{one-field coherence}
\quad\text{only as extra regularity layers.}
}
\tag{ECFP.2}
```

## Terminal Role Map

The current contradiction-family files now have these roles:

1. [mpp-euler-class-membership-flux-volume-definition.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-euler-class-membership-flux-volume-definition.md)
   is the membership authority.
2. [mpp-class-membership-forward-invariance-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-class-membership-forward-invariance-theorem-program.md)
   is demoted to a regularity-forward-invariance boundary.
3. [mpp-one-field-forward-preservation-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-one-field-forward-preservation-theorem-program.md)
   is demoted to an optional one-field regularity theorem.
4. [mpp-one-field-forward-preservation-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-one-field-forward-preservation-reduction-note.md)
   records supplier ledgers only after one-field coherence has been separately
   selected as the regularity target.
5. [mpp-lower-carrier-interval-integrability-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md)
   is closed as conditional regularity support, not a membership theorem.

## Parent Receiver Chain Boundary

The parent Navier-Stokes receiver chain

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
LCI.A
\tag{ECFP.3}
```

is comparison authority only. On Euler, `ACT.KX` still marks the sharp
non-importable point because its installed proof spends `c_\nu N`, the
absorption seed, and top-viscous readout. Even if an Euler replacement is found,
it would support a regularity upgrade, not primitive `Member_E`.

## Terminal Current Posture

The Euler mirror no longer claims that roughness exits the Euler object. The
branch-local classification is that any proof of a flux-volume Euler member
gaining or preserving the extra regularity needed for smoothness is an external
regularity program.
