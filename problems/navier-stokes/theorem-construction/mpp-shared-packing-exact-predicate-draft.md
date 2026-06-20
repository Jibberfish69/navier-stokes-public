# MPP Shared Packing Exact Predicate Draft

## Status

First exact analytic predicate draft.

This note formalizes only the first primitive class law: the shared packing law.
It does **not** yet formalize the shared participation law or the shared
one-field law.

## Purpose

The route burden is to turn each primitive class law into an exact analytic
predicate without replacing the route by a generic substitute.

This note does the first of those jobs:

```math
\boxed{
\text{make the shared packing law exact in route-faithful geometric language.}
}
```

## Fixed PDE

Let `\Omega=\mathbf R^3` or `\mathbf T^3`. Consider a smooth Navier--Stokes
solution on `\Omega\times[0,T)`:

```math
\partial_t u+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0,
\qquad
\nu>0.
\tag{SP.0}
```

Let `\Phi(a,t)` be the Lagrangian flow map:

```math
\partial_t\Phi(a,t)=u(\Phi(a,t),t),
\qquad
\Phi(a,0)=a.
\tag{SP.1}
```

Write

```math
F(a,t):=D_a\Phi(a,t).
\tag{SP.2}
```

## Route-Faithful Reading

The primitive shared packing law is:

```math
\boxed{
\text{the solution evolves through one common smooth volume-preserving motion map.}
}
```

The exact predicate should therefore speak directly about:

1. one common motion map,
2. volume preservation,
3. non-collapse and non-blowout of the deformation class.

## Packing Predicate

Define the packing distortion gauge

```math
\Gamma_{\mathrm{pack}}(t):=
\max\Big\{
\|F(t)\|_{L^\infty_a},
\|F(t)^{-1}\|_{L^\infty_a}
\Big\}.
\tag{SP.3}
```

Define the shared packing predicate on `[0,T)` by

```math
\mathrm{Pack}_{[0,T)}(u)
```

to mean that for every `t<T`:

1. the flow map `\Phi_t:\Omega\to\Omega` exists as one global `C^1`
   diffeomorphism;
2. the incompressible packing law holds:
   ```math
   \det D_a\Phi(a,t)=1
   \quad\text{for all }a\in\Omega;
   \tag{SP.4}
   ```
3. the deformation class remains nondegenerate:
   ```math
   \Gamma_{\mathrm{pack}}(t)<\infty.
   \tag{SP.5}
   ```

Equivalently, in singular-value form, if `\sigma_{\min}` and `\sigma_{\max}`
denote the smallest and largest singular values of `F(a,t)`, then

```math
\mathrm{Pack}_{[0,T)}(u)
\Longleftrightarrow
\forall t<T,\ \forall a\in\Omega,\ 
0<\sigma_{\min}(F(a,t))\le \sigma_{\max}(F(a,t))<\infty,
\ \det F(a,t)=1.
\tag{SP.6}
```

This is the first exact analytic form of the primitive shared packing law.

## Exact Meaning Of The Blown Endpoint

Under this predicate, the route-faithful meaning of the blown endpoint, in its
packing-side local form, is:

```math
\boxed{
\text{the solution has left the common volume-preserving deformation class.}
}
\tag{SP.7}
```

So the exact analytic failure modes on the packing channel are:

1. loss of a single global flow map;
2. loss of volume preservation;
3. collapse of the inverse deformation bound;
4. blowout of the deformation bound.

Equivalently:

```math
\neg \mathrm{Pack}_{[0,T)}(u)
```

means that at some first finite time, one of those four failures has occurred.

## First Packing Theorem Shape

The first theorem-level consequence is now exact:

```math
\boxed{
\mathrm{Pack}_{[0,T)}(u)
\Longrightarrow
\text{no blown endpoint occurs on }[0,T).
}
\tag{SP.8}
```

This is not a new closure theorem. It is the exact analytic restatement of what
the shared packing law means on this route.

## Why This Predicate Is The Right First Move

This predicate is a good first formalization step because it stays close to the
live terminal record.

1. It uses the common motion map directly.
2. It uses incompressibility directly through `\det D\Phi=1`.
3. It names collapse/blowout as failure of the deformation class itself.
4. It does **not** require an unspecified witness bundle.
5. It does **not** yet collapse the route into the classical continuation wall.

## Honest Limitation

This note does **not** prove that `\mathrm{Pack}_{[0,T)}(u)` holds for all
finite times.

It also does **not** prove that every candidate singularity must first fail the
packing predicate rather than the participation or one-field predicate.

So the live burden after this note is:

1. the shared participation predicate is now formalized separately and the
   no-drop theorem is already installed;
2. the shared one-field predicate is now formalized separately;
3. the surviving packing-side theorem burden is the separate no-blown-endpoint
   exclusion, as recorded in
   [mpp-law13-surviving-endpoint-exclusion-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-law13-surviving-endpoint-exclusion-program.md).

## Comparison Boundary

The classical continuation wall

```math
\int_0^T \|\nabla u(\tau)\|_{L^\infty}\,d\tau
```

may later be used as a sufficient condition implying `\mathrm{Pack}_{[0,T)}(u)`,
but that implication is downstream comparison, not the definition of the packing
predicate itself.
