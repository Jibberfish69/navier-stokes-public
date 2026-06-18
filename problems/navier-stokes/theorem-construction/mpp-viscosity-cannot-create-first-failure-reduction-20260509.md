# Viscosity Cannot Create First Failure: Direct Reduction

## Status

Theorem-facing reduction proved.

This file writes the direct first-failure route for the hardened target

```math
EulerSmooth(u_0,[0,T])
\Longrightarrow
NSSmooth_\nu(u_0,[0,T])
```

with the same datum, same interval, and fixed `nu>0`.

## Target lemma

### `ViscosityCannotCreateFirstFailure.A`

Assume `EulerSmooth(u_0,[0,T])`. Let `u^\nu` be the fixed-viscosity
Navier--Stokes solution with the same datum on its maximal classical interval.

Then viscosity cannot be the first source of smoothness failure:

```math
\text{there is no first } \tau<T
\text{ such that }u^\nu\text{ loses classical smoothness at }\tau
\text{ while }u^E\text{ is smooth on }[0,T].
```

Equivalently:

```math
EulerSmooth(u_0,[0,T])
\Longrightarrow
\neg FirstFailure_\nu(u_0,\tau)
\qquad(0<\tau<T).
```

## Theorem `FirstFailureReduction.A`

If `ViscosityCannotCreateFirstFailure.A` holds, then

```math
EulerSmooth(u_0,[0,T])
\Longrightarrow
NSSmooth_\nu(u_0,[0,T]).
```

### Proof

Assume `EulerSmooth(u_0,[0,T])`.

Let `u^\nu` be the maximal classical Navier--Stokes solution with fixed
`nu>0` and the same datum `u_0`. Let its maximal classical interval be
`[0,T_\nu)`.

Suppose, for contradiction, that `NSSmooth_\nu(u_0,[0,T])` fails. Then
`T_\nu<T`. By maximality and the classical continuation criterion, the solution
has a first smoothness-failure time

```math
\tau:=T_\nu<T.
```

But Euler is smooth on all of `[0,T]`, hence in particular on `[0,\tau]`.
Therefore this is exactly the configuration forbidden by
`ViscosityCannotCreateFirstFailure.A`: a first fixed-viscosity Navier--Stokes
smoothness failure before `T` while the same-datum Euler scenario remains
smooth.

Contradiction. Hence `T_\nu\ge T`, and `u^\nu` is smooth on `[0,T]`.
`\square`

## What still has to be proved

The reduction above is proved. The remaining theorem is the target lemma itself:

```math
ViscosityCannotCreateFirstFailure.A.
```

The tempting one-line argument is:

```math
\nu\Delta u^\nu
\text{ is dissipative, so it cannot create first failure.}
```

That sentence captures the intended idea, but it is not yet a proof. The exact
missing estimate is a first-failure exclusion principle:

```math
EulerSmooth(u_0,[0,T])
+u^\nu\text{ smooth on }[0,\tau)
\Longrightarrow
\text{the parabolic term }\nu\Delta u^\nu
\text{ cannot generate a singularity at }\tau.
```

To discharge it, one must show that every non-viscous contribution at the first
failure is controlled by the smooth Euler scenario plus the prior smooth
Navier--Stokes evolution, while the viscous contribution has a sign / smoothing
effect strong enough to rule out creation of the first failure.

## Clean proof target

The next proof should therefore establish:

```math
EulerSmooth(u_0,[0,T])
+PriorNSSmooth_\nu(u_0,[0,\tau))
\Longrightarrow
NoFirstNSSingularity_\nu(\tau).
```

Then `FirstFailureReduction.A` gives the desired hierarchy theorem:

```math
EulerSmooth(u_0,[0,T])
\Longrightarrow
NSSmooth_\nu(u_0,[0,T]).
```

## Consequence

Once `ViscosityCannotCreateFirstFailure.A` is proved, viscosity is certified not
to downgrade smoothness on any Euler-smooth scenario:

```math
EulerSmooth(u_0,[0,T])
\Longrightarrow
\text{fixed positive viscosity does not cause blowup before }T.
```

If the target lemma fails, the failure is mathematically meaningful: it would
isolate a same-datum, same-window scenario where Euler remains smooth but the
fixed-viscosity Navier--Stokes solution loses smoothness.
