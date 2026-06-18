# Direct Fixed-Viscosity Euler-Smooth to NS-Smooth Hierarchy

## Status

Hardened conjecture / theorem target with proved reductions.

This file states the direct class-ordering target exactly. It does not use a
`nu->0` escape, a zero-viscosity fallback, a retained-budget bridge, or an
Euler-mirror promotion into live Navier--Stokes authority.

CM-exit boundary: this is a separate fixed-`nu` transfer target. It is not a
child theorem for the CM-exit program unless a later bridge proves that failure
of the transfer claim lands in `Pack`, `Part`, or `Field`.

## Conjecture `DirectFixedNuEulerSmoothBridge.A`

Let `u_0` be smooth, divergence-free, and mean-zero on the torus. Fix `T>0` and
`nu>0`.

Assume the incompressible Euler equation with datum `u_0` has a smooth classical
solution on `[0,T]`:

```math
EulerSmooth(u_0,[0,T]).
```

Then the incompressible Navier--Stokes equation with the same datum and fixed
viscosity `nu` has a smooth classical solution on `[0,T]`:

```math
EulerSmooth(u_0,[0,T])
\Longrightarrow
NSSmooth_\nu(u_0,[0,T]).
```

This is a scenario-inclusion claim:

```math
\mathsf{SmoothScenarios}(Euler)
\subseteq
\mathsf{SmoothScenarios}(NS_\nu)
\qquad(\nu>0\text{ fixed}).
```

Interpretation: viscosity should not downgrade smoothness on a scenario where
the inviscid equation is already smooth.

## Non-claims

The conjecture does not assert global Euler smoothness.

It does not assert global Navier--Stokes smoothness from arbitrary data without
an Euler-smooth scenario.

It does not assert that a fixed-positive-viscosity Navier--Stokes failure must
be a `nu->0` Euler boundary or defect-boundary object.

It does not use the Euler mirror as live Navier--Stokes authority.

## Theorem 1: continuation reduction

Fix `s>5/2`. Let `u^nu` be the maximal classical Navier--Stokes solution with
datum `u_0` and viscosity `nu>0`, on maximal interval `[0,T_nu)`.

If

```math
\sup_{0\le t<\min(T,T_\nu)}\|u^\nu(t)\|_{H^s}<\infty,
```

then

```math
NSSmooth_\nu(u_0,[0,T]).
```

### Proof

The classical local well-posedness and continuation criterion for
Navier--Stokes in `H^s`, `s>5/2`, says that a maximal classical solution can
fail before `T` only if its `H^s` norm blows up. The displayed bound prevents
that blowup. Hence the solution continues smoothly through `[0,T]`. `\square`

Thus `DirectFixedNuEulerSmoothBridge.A` is equivalent to proving the a priori
bound

```math
EulerSmooth(u_0,[0,T])
\Longrightarrow
\sup_{0\le t<T}\|u^\nu(t)\|_{H^s}<\infty
\qquad(\nu>0).
```

## Theorem 2: relative sufficient condition

Let `u^E` be the smooth Euler solution on `[0,T]`, and set

```math
w:=u^\nu-u^E.
```

If

```math
\sup_{0\le t<\min(T,T_\nu)}\|w(t)\|_{H^s}<\infty,
```

then

```math
NSSmooth_\nu(u_0,[0,T]).
```

### Proof

Euler smoothness gives

```math
\sup_{0\le t\le T}\|u^E(t)\|_{H^s}<\infty.
```

Since

```math
u^\nu=u^E+w,
```

the assumed bound on `w` gives a bound on `u^\nu` in `H^s` up to
`min(T,T_nu)`. Theorem 1 then continues the Navier--Stokes solution through
`[0,T]`. `\square`

## Theorem 3: relative energy identity

On every common classical interval, `w=u^\nu-u^E` obeys

```math
\partial_t w
+\mathbb P(u^E\cdot\nabla w)
+\mathbb P(w\cdot\nabla u^E)
+\mathbb P(w\cdot\nabla w)
=
\nu\Delta w+\nu\Delta u^E.
```

For `s>5/2`,

```math
{d\over dt}\|w\|_{H^s}^2
+\nu\|\nabla w\|_{H^s}^2
\le
C_E(t)\|w\|_{H^s}^2
+C_s\|w\|_{H^s}^3
+C_s\nu^2\|u^E\|_{H^{s+2}}^2,
```

where `C_E(t)` is finite on `[0,T]` by Euler smoothness.

### Proof

Subtract Euler from Navier--Stokes and apply the Leray projection. Apply
`\Lambda^s` and pair with `\Lambda^s w`.  The estimates being spent are the
following, for `s>5/2` and smooth divergence-free fields on the same whole-space
or periodic surface:

```math
\|[\Lambda^s,a\cdot\nabla]b\|_2
\le
C_s\big(
\|\nabla a\|_{L^\infty}\|b\|_{H^s}
+\|a\|_{H^s}\|\nabla b\|_{L^\infty}
\big),
```

and

```math
\|a\cdot\nabla b\|_{H^s}
\le
C_s\big(
\|a\|_{H^s}\|\nabla b\|_{L^\infty}
+\|a\|_{L^\infty}\|b\|_{H^{s+1}}
\big),
```

together with the embedding `H^s\hookrightarrow W^{1,\infty}`.  Since
`\nabla\cdot u^E=0`,

```math
\langle u^E\cdot\nabla\Lambda^s w,\Lambda^s w\rangle=0,
```

so

```math
|\langle \Lambda^s(u^E\cdot\nabla w),\Lambda^s w\rangle|
=
|\langle [\Lambda^s,u^E\cdot\nabla]w,\Lambda^s w\rangle|
\le C_E(t)\|w\|_{H^s}^2.
```

The product estimate gives

```math
|\langle \Lambda^s(w\cdot\nabla u^E),\Lambda^s w\rangle|
\le C_E(t)\|w\|_{H^s}^2,
```

with `C_E(t)` depending on a finite smooth Euler norm, for example
`\|u^E(t)\|_{H^{s+2}}`.  For the perturbation nonlinearity,

```math
|\langle \Lambda^s(w\cdot\nabla w),\Lambda^s w\rangle|
\le C_s\|\nabla w\|_{L^\infty}\|w\|_{H^s}^2
\le C_s\|w\|_{H^s}^3.
```

The viscous term gives

```math
\langle \Lambda^s\nu\Delta w,\Lambda^s w\rangle
=-\nu\|\nabla w\|_{H^s}^2.
```

The forcing term satisfies

```math
2\nu|\langle\Lambda^s\Delta u^E,\Lambda^s w\rangle|
\le
C_s\nu^2\|u^E\|_{H^{s+2}}^2
+C_s\|w\|_{H^s}^2.
```

Combining the estimates proves the inequality. `\square`

## Current proof wall

The full conjecture is not proved by Theorem 3 alone. The inequality still
contains

```math
C_s\|w\|_{H^s}^3.
```

Euler smoothness controls the background `u^E`; it does not, by itself, supply
an arbitrary fixed-`nu` upper bound for the Navier--Stokes perturbation `w`.

Therefore the exact missing theorem is:

```math
EulerSmoothFixedNuRelativeBound.A:
\quad
EulerSmooth(u_0,[0,T])
\Longrightarrow
\sup_{0\le t<T}\|u^\nu(t)-u^E(t)\|_{H^s}<\infty
\qquad(\nu>0).
```

Equivalently:

```math
EulerSmoothToNSTowerBound.A:
\quad
EulerSmooth(u_0,[0,T])
\Longrightarrow
\sup_{0\le t<T}\|u^\nu(t)\|_{H^s}<\infty
\qquad(\nu>0).
```

## Consequence if the conjecture is proved

For every smooth Euler scenario, viscosity is certified not to cause loss of
smoothness on the same datum and interval:

```math
EulerSmooth(u_0,[0,T])
\Longrightarrow
\neg\bigl(\text{viscosity causes }NS_\nu\text{ blowup on }[0,T]\bigr).
```

The contrapositive is only the same-datum, same-interval statement:

```math
NS_\nu\text{ blows up before }T
\Longrightarrow
EulerSmooth(u_0,[0,T])\text{ is false}.
```

It is not a `nu->0` class-exit statement.

## What to do next

The next theorem work should target the missing fixed-`nu` relative bound. The
three useful routes are:

1. `RelativeBoundByEulerNorms.A`: close the `w` energy inequality using a
   damping/absorbing mechanism that works for every fixed `nu>0`.
2. `NSTowerFromEulerScenario.A`: derive a direct Navier--Stokes `H^s` tower
   bound from the smooth Euler scenario, without first controlling `w`.
3. `ViscosityCannotCreateSingularity.A`: prove that any first NS singularity
   under an Euler-smooth scenario contradicts parabolic smoothing plus the smooth
   inviscid carrier.

The first-failure reduction is recorded in
`mpp-viscosity-cannot-create-first-failure-reduction-20260509.md`: proving
`ViscosityCannotCreateFirstFailure.A` yields the direct hierarchy
theorem.

Any counterexample to the conjecture would be equally valuable: it would exhibit
a datum, interval, and fixed viscosity for which Euler remains smooth while
viscosity itself creates a Navier--Stokes smoothness failure.
