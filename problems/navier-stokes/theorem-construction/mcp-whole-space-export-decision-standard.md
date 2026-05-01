# Whole-Space Export Decision

## Status

Closed scope decision for the referee-facing proof.

## Decision

The final theorem remains the periodic theorem on `T^3`.

```math
u_0\in C^\infty(\mathbb T^3),\qquad \nabla\cdot u_0=0,
\qquad \int_{\mathbb T^3}u_0=0
\Longrightarrow
u\in C^\infty([0,\infty)\times\mathbb T^3).
```

## Whole-space export status

A whole-space theorem on `R^3` requires a separate export theorem with its own localization, decay, pressure normalization, and infinity-control hypotheses. The current proof does not use such an export theorem.

## Manuscript rule

The manuscript should state the result as the periodic `T^3` global smoothness theorem. Any `R^3` discussion belongs in a separate section labeled as an export problem.

## Rationale

The internal proof is torus-first: finite periodic energy, compact spatial surface, periodic pressure normalization, and periodic `H^s` local continuation are built into the final continuation readout. These are exact theorem-surface features.

## Boundary

This decision prevents theorem-surface drift. The final proof proves the periodic Clay-admissible branch and carries no silent whole-space claim.