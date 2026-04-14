# MPP Class-Membership Contradiction Source-Locked Note

## Status

Fresh source-locked formalization note.

This note starts only from the exact claim supplied in the current chat. It
does **not** advance to a continuation theorem, witness bundle, membership
functional, SG.4 export, selector package, or any other downstream proving
machinery.

Its job is narrower:

```math
\boxed{
\text{state the class-membership contradiction program exactly, without overstepping it.}
}
```

## Fixed Problem

The equation stays fixed:

```math
\partial_t u + (u\cdot\nabla)u + \nabla p = \nu\Delta u,
\qquad
\nabla\cdot u = 0,
\qquad
\nu>0.
\tag{SC.0}
```

The target stays fixed:

```math
\text{global smoothness for the classical incompressible Navier--Stokes problem.}
\tag{SC.1}
```

What changes is only the proof concept:

```math
\boxed{
\text{attack blowup as exit from the Navier--Stokes MPP fluid object.}
}
\tag{SC.2}
```

## The MPP Fluid Object

The present note fixes the `MPP` fluid object to mean:

1. smooth initial data;
2. one incompressible velocity field;
3. pressure enforcing the common volume constraint;
4. viscosity coupling neighboring regions through drag and damping;
5. one shared coupled smooth evolution rather than locally disconnected laws.

This is the object under discussion. The claim of this note is not about a
different PDE and not about a different fluid class.

## Core Membership Claim

The governing claim is:

```math
\boxed{
\text{every evolution that remains smooth stays inside the MPP fluid object.}
}
\tag{SC.3}
```

The class-membership contradiction program says that alleged singular scenarios
should be treated as scenarios that have already left that object.

## Endpoint-Exclusion Reading

The present route isolates three endpoint forms.

### 1. Dead Endpoint

The source claim is:

```math
\boxed{
\text{a genuinely stopped-dead point or region has ceased to participate in the coupled force dynamics carried by pressure and viscosity.}
}
\tag{SC.4}
```

So a genuinely dead endpoint is not merely small motion and not merely low
velocity. It is exit from the common coupled dynamics.

### 2. Blown Endpoint

The source claim is:

```math
\boxed{
\text{a genuinely infinite-velocity point or region has become dynamically decoupled from the shared incompressible flow.}
}
\tag{SC.5}
```

Once that happens, the point or region would pack differently from the common
incompressible evolution. So the shared packing law has already failed there.

### 3. Jump Endpoint

The source claim is:

```math
\boxed{
\text{a discontinuous jump in velocity means neighboring regions no longer share one coupled smooth field.}
}
\tag{SC.6}
```

So the fluid object has already been left there as well.

## Triad Reading

The present claim uses the three-part reading:

```math
\boxed{
\text{viscosity damps gradients and drags points through local force-coupling,}
}
```

```math
\boxed{
\text{pressure maintains the common volume constraint across the coupled motion,}
}
```

```math
\boxed{
\text{and incompressibility keeps neighboring parcels inside one shared packing law.}
}
\tag{SC.7}
```

This note treats that triad as the exact conceptual engine of the program.

## Sharpened Endpoint Claims

Under that triad reading, the sharpened claim is:

```math
\text{exact zero velocity / dead tower at a point}
\quad\Longrightarrow\quad
\text{force-coupling failure,}
\tag{SC.8}
```

and

```math
\text{infinite velocity / blown tower at a point}
\quad\Longrightarrow\quad
\text{incompressible packing failure.}
\tag{SC.9}
```

These are treated here as the same rupture viewed from opposite ends:

```math
\boxed{
\text{collapse to deadness and blowup to infinity are both pointwise decoupling events from the common incompressible viscous evolution.}
}
\tag{SC.10}
```

## Tower Reading

The tower remark is part of the source object and is recorded here exactly in
that spirit:

```math
\boxed{
\text{smoothness persists while the whole derivative tower at each point stays finite and live inside the same coupled field.}
}
\tag{SC.11}
```

So:

```math
\text{tower collapses to dead zero}
\Longrightarrow
\text{point has exited the shared coupled dynamics,}
\tag{SC.12}
```

```math
\text{tower blows to infinity}
\Longrightarrow
\text{point has exited the shared incompressible packing evolution.}
\tag{SC.13}
```

This is the source-locked meaning of the tower claim in the present note.

## Program Statement

The class-membership contradiction program is therefore:

```math
\boxed{
\text{smooth scenarios belong to the Navier--Stokes MPP object, while singular scenarios lie outside it.}
}
\tag{SC.14}
```

The theorem task is then:

```math
\boxed{
\text{show that every alleged blowup mechanism exits the MPP object before it qualifies as an MPP singularity.}
}
\tag{SC.15}
```

This is the exact program statement being formalized here.

## What This Note Does Not Yet Claim

This note does **not** yet claim any of the following.

1. an exact analytic predicate for class membership;
2. a continuation theorem;
3. a proof that viscosity by itself forbids deadness in full theorem-grade form;
4. a proof that incompressibility by itself forbids infinite-speed packing
   detachment in full theorem-grade form;
5. a closed exclusion theorem for all blowup channels;
6. any reduction into SG.4, selector packets, pair-defect packets, or other
   downstream route machinery.

Those may become later steps. They are not part of the present source-locked
formalization.

## Exact Boundary

The exact boundary of this note is:

```math
\boxed{
\text{object definition + endpoint-exclusion claim + tower reading + theorem task,}
}
```

```math
\boxed{
\text{and nothing beyond that.}
}
\tag{SC.16}
```
