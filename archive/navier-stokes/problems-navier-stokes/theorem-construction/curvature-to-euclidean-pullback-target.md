# Curvature-To-Euclidean Pullback Target

## Purpose

This note isolates the exact remaining mathematical burden in the source-faithful
fourth bridge.

The original corpus already contains proposition-grade curvature statements. What
it does not yet contain in finished form is the pullback from that geometric fourth
bridge to the declared classical Euclidean theorem surface used by the live lane.

## Exact Source Statements Already Available

### Source theorem A

From `Section_5-_Curvature-Based_Regularity.tex`:

- geometric equation

```math
\partial_t u + \nabla_u u = -\mathrm{grad}_g(p) + \nu \Delta_g u
```

- gradient evolution

```math
\partial_t |\nabla u|^2
=
- \mathrm{Ric}(g)(\nabla u,\nabla u)
+ \nu \Delta_g |\nabla u|^2
+ C |\nabla u|^3
```

- boundedness theorem under `\mathrm{Ric}(g)\ge\kappa>0`

```math
\sup_{t\ge0}\|\nabla u(t)\|_{L^2(M)}<\infty.
```

### Source theorem B

From `Gradient_Control_Through_Geometric_Arguments.tex`:

```math
\partial_t |\nabla u|^2
\le
- \mathrm{Ric}(g)(\nabla u,\nabla u)
+ C |\nabla u|^3
```

and the theorem-level consequence

```math
|\nabla u|^2 \le C_1 e^{-\kappa t} + C_2
\qquad (t\ge0)
```

under the same positive-curvature posture.

## Missing Pullback Statement

The exact missing theorem is:

> If the curvature-based fourth bridge holds on the source-faithful carrier with
> positive Ricci lower bound, then the resulting gradient control can be translated
> into a theorem-bearing continuation statement on the declared classical Euclidean
> Navier--Stokes surface without importing extra coercive structure, stronger data,
> or a hidden branch switch.

## What The Pullback Must Prove

1. the geometric carrier is not doing theorem-critical work beyond what is being
   claimed on the Euclidean target;
2. the Ricci-damped gradient bound corresponds to a valid continuation-control
   statement for the classical Euclidean solution class fixed in the lane;
3. the loop-closing arrow

```text
Curvature-Based Regularity -> Scale-Barrier Principle
```

remains valid after that pullback rather than only on the geometric source
carrier;
4. the pullback does not silently replace the source bridge with the later
Euclidean fallback package.

## Honest Status

`exact remaining fourth-bridge theorem burden`
