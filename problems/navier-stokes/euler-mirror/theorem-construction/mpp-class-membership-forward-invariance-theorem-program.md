# MPP Euler Membership / Regularity Forward-Invariance Boundary

## Status

Theorem-facing demotion note for the old Euler mirror `ECFI` surface.

Role: record that the copied Navier-Stokes class-membership forward-invariance
theorem is not valid as an Euler membership theorem. It can only be used as a
regularity-forward-invariance target after the extra regularity class is named.

## Governing Reading

Euler base membership is:

```math
\mathrm{Member}_E(Q)
=
\mathrm{EVol}_Q(u)
\wedge
\mathrm{EMom}_Q(u,p).
\tag{ECFI.1}
```

It is not:

```math
\mathrm{Pack}_Q
\wedge
\mathrm{Part}_{N,Q}
\wedge
\mathrm{Field}_{N,r,Q}.
\tag{ECFI.bad}
```

The old row imports three extra assumptions: a Lagrangian carrier, a
pressure-viscosity participation law, and positive-scale one-field coherence.
Euler may name pressure/incompressibility participation, but that is only
volume and normal-force compatibility. It does not rebuild the NS
pressure-viscosity row. The Lagrangian carrier and one-field coherence can be
rebuilt only as regularity upgrades rather than membership.

## What Is Trivially Forward-Invariant

If one already has a single distributional Euler solution on a spacetime region,
then `Member_E` holds on every subwindow where the weak equation and flux-volume
law are meaningful. That is restriction of the equation, not a smoothness
theorem.

```math
\boxed{
\mathrm{Member}_E(Q)
\Longrightarrow
\mathrm{Member}_E(Q')\quad (Q'\subset Q)
}
\tag{ECFI.2}
```

This does not propagate smoothness, prevent slip, create a flow map, or preserve
one-field coherence.

## What Becomes A Real Euler Theorem

Any nontrivial forward-invariance statement must first name a stronger class:

```math
\mathrm{ELag}_Q(u,\Phi),
\qquad
\mathrm{EReg}_{N,r,Q}(u,p),
\qquad
\text{or a concrete Euler continuation norm.}
\tag{ECFI.3}
```

The theorem then has the form:

```math
\boxed{
\mathrm{Member}_E
+ \text{Euler control estimates}
+ \text{initial regularity}
\Longrightarrow
\text{persistence of the chosen regularity class.}
}
\tag{ECFI.4}
```

That is a regularity theorem over Euler membership. It is not base membership
preservation.

## Kinematic Flow-Map Boundary

The old packing-side transport identity survives only after one has enough
regularity to define the flow map:

```math
\Gamma_\sharp(t_2)
\le
\Gamma_\sharp(t_1)
\exp\!\Big(
\int_{t_1}^{t_2}
\|\nabla u(\tau)\|_{L^\infty(\Phi(A_\sharp,\tau))}
\;d\tau
\Big).
\tag{ECFI.5}
```

This is useful, but it is conditional on a Lagrangian carrier. It cannot be a
primitive Euler membership clause.

## Participation Boundary

There is no NS-style `Part_E` theorem hiding here.

Without viscosity, the equation has transport, pressure projection, and
incompressibility. It does not have the pressure-viscosity participation carrier
that the Navier-Stokes row used. Pressure may couple the field globally through
the elliptic constraint, but it does not enforce tangential no-slip or viscous
shear sharing.

A jet or injection makes the distinction concrete: Euler can register the
momentum and pressure response while neighboring material fails to participate
as one smooth carrier. That is not a failure of equation fidelity unless the
weak flux-volume or momentum law itself breaks.

## Honest Stop Line

The old statement

```math
\text{lawful class membership is forward-invariant along same-fluid Euler families}
```

is stale. The repaired statement is:

```math
\boxed{
\text{Euler membership is equation fidelity; Euler smoothness requires a
separate regularity-forward-invariance theorem.}
}
\tag{ECFI.6}
```

Any stronger result therefore has to pick the exact regularity class needed for
smoothness and prove its Euler-native propagation from flux-volume membership
plus genuine Euler controls as an external regularity program.
