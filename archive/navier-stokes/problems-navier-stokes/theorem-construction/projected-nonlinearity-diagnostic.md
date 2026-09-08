# Projected Nonlinearity Diagnostic

## Status

Lane-local extracted derivation note. This file records the exact algebraic
pressure point that the projected NC-flow route must clear before D.2 can close.

## Core issue

The projected transport term

```text
N_D(X) := 1/2 (X \nabla X + (\nabla X)X)
```

is too weak if `\nabla` acts as an ordinary derivation on the admissible core.
On a naive Leibniz reading,

```text
\nabla(X^2) = X \nabla X + (\nabla X)X,
```

so the symmetrized transport term becomes

```text
N_D(X) = 1/2 \nabla(X^2).
```

If the projector kills exact gradients on that same core, then

```text
\mathbb P_D N_D(X) = 0.
```

That would collapse the projected nonlinearity entirely.

## D.2 consequence

This means D.2 is not just an energy estimate.
It is also a transport-law realization problem.

The projected route must therefore use one of the following structural
repairs:

1. a covariant derivative realization on the transport sector,
2. a curvature-bearing convective term built into the operator,
3. a graded or form-level product structure that prevents the Leibniz collapse.

## Safe reading

The correct lane-local takeaway is:

- do not assume the current symmetric projected nonlinearity is already
  sufficient;
- treat curvature or covariant structure as part of the D.2 hypothesis set;
- keep the projected nonlinearity nontrivial after projection.

## Source Anchors

- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ontic-nc-ns-operator-tilt-note.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/projected-nonlinearity-diagnostic.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ontic-nc-ns-ymg-hodge-program.md`

## Honest Status

The transport-law wall is now explicit in the NS lane. The algebraic collapse
is the exact reason D.2 remains open.
