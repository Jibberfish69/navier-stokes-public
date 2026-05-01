# Official Target Scope: Torus-Surface Final Theorem

## Status

Closed scope surface.

## Decision

The final theorem is the periodic `T^3` theorem:

```math
u_0\in C^\infty(\mathbb T^3),\quad \nabla\cdot u_0=0,\quad \int_{\mathbb T^3}u_0=0
\Longrightarrow
u\in C^\infty([0,\infty)\times\mathbb T^3).
```

## Official-target compatibility

The official Navier-Stokes target admits a periodic `T^3` formulation. The final proof therefore stays on the torus surface and requires no silent export to `R^3`.

## Whole-space branch

Any whole-space statement on `R^3` requires a separately named export theorem. The final theorem and manuscript must phrase the result as the periodic theorem unless that export theorem is installed.

## Boundary

This scope choice prevents a hidden branch switch. The theorem proves the torus-surface global smoothness statement and leaves whole-space export as a separately labeled item.