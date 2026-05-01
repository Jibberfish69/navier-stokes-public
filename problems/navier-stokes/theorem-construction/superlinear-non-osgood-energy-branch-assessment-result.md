# Superlinear Non-Osgood Energy Branch Assessment Result

## Target

The uniform `H_D^s` supplier used the scalar comparison

```math
E'(t)\le C\Phi_s(E(t)).
\tag{SNO.1}
```

The Osgood branch closes when

```math
\int_{E(0)}^\infty\frac{dr}{C\Phi_s(r)}=\infty.
\tag{SNO.2}
```

This note records the boundary when `\Phi_s` is superlinear and non-Osgood.

## Scalar obstruction

If

```math
\int_{E(0)}^\infty\frac{dr}{C\Phi_s(r)}<\infty,
\tag{SNO.3}
```

then the scalar comparison equation

```math
Z'(t)=C\Phi_s(Z(t)),
\qquad
Z(0)=E(0)
\tag{SNO.4}
```

can reach infinity in finite comparison time

```math
T_*=
\int_{E(0)}^\infty\frac{dr}{C\Phi_s(r)}.
\tag{SNO.5}
```

Therefore `SNO.1` alone supplies no uniform finite-time bound beyond the scalar blow-up horizon.

## Required stronger structure

The superlinear branch requires an additional structural input beyond `SNO.1`. Sufficient replacements include one of the following.

### Dissipative dominance

A coercive relation between the dissipation and the growth term:

```math
c_D\Xi(t)
\ge
C\Phi_s(E(t))-A(1+E(t))
\tag{SNO.6}
```

inside the lifted energy inequality. Then

```math
E'(t)
\le
A(1+E(t)),
\tag{SNO.7}
```

and the linear-growth Osgood branch applies.

### Subcritical renormalized energy

A modified energy `\widetilde E=\Psi(E)` satisfying

```math
\widetilde E'(t)
\le
A(1+\widetilde E(t)).
\tag{SNO.8}
```

Then `\widetilde E` is bounded on finite intervals, and `E` is bounded wherever `\Psi` is proper.

### Integrated growth budget

A direct time-integrated bound

```math
\int_0^T\Phi_s(E(t))\,dt<\infty
\tag{SNO.9}
```

combined with absolute continuity of `E` gives finite `E(t)` on `[0,T]`.

## Result

The superlinear non-Osgood branch is open at the scalar inequality level. It closes only after one of:

```text
dissipative dominance;
subcritical renormalized energy;
integrated growth budget.
```

## Boundary for the collar route

The high-shell threshold branch may use the uniform `H_D^s` supplier only on intervals where `E(t)` is controlled. In the superlinear non-Osgood case, the route must prove one of the stronger structural inputs above before claiming a global high-shell threshold.

## Source surfaces

- `problems/navier-stokes/theorem-construction/uniform-hds-supplier-result.md`
- `problems/navier-stokes/theorem-construction/lifted-carrier-energy-threshold-uniformization-and-hfg-replay.md`
- `problems/navier-stokes/theorem-construction/uniform-hds-threshold-to-speed-gate-result.md`