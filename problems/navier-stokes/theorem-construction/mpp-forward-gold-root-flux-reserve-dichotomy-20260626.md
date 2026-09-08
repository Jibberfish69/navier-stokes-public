# Root flux reserve dichotomy

Status: root finiteness test failed for the strong Bellman reserve; exact dichotomy isolated.

## 1. Target

The parent-child Bellman route needs a nonnegative root reserve `B(Q_root)` such that

```math
\sum_{Q'\in ch(Q)}A(Q')+\sum_{Q'\in ch(Q)}B(Q')
\le B(Q)+R_{legal}(Q)
```

and

```math
B(Q_root)<\infty
```

from original data and legal ledgers.

## 2. Finite raw reserve option

If `B(Q_root)` is chosen from raw energy, viscous dissipation, fixed-annulus stress action, or fixed-collar service, then root finiteness follows from the installed ledgers.

Such a reserve controls only the zeroth ratio moment:

```math
\sum_\ell \nu_\ell<\infty.
```

It lacks the ratio weight needed for

```math
\sum_\ell 2^\ell\nu_\ell<\infty.
```

Therefore a raw finite root reserve cannot satisfy the parent-child inheritance inequality for high-ratio children.

## 3. Strong positive-flux reserve option

If `B(Q)` is strong enough to satisfy monotone inheritance,

```math
\sum_{Q'}A(Q')+\sum_{Q'}B(Q')\le B(Q)+R_{legal}(Q),
```

then it contains the first ratio moment across the laminar tree. Root finiteness of that same `B(Q_root)` becomes equivalent to the missing full-action estimate.

Thus the Bellman route has a clean split:

```math
\text{raw root reserve: finite, too weak;}
```

```math
\text{strong positive-flux reserve: useful, root finiteness open.}
```

## 4. Exact remaining hinge

The better target remains valid, but its true core is narrower:

```math
\boxed{\text{LaminarPositiveFluxInheritance.A}}
```

Statement:

Construct a gauge-reduced positive-flux reserve `B(Q)` that satisfies monotone parent-child inheritance and whose root value is controlled by original data through a new same-packet coercivity law.

## 5. Result

The parent-child Bellman idea is stronger than a broad forest-variation reserve because it gives a telescoping mechanism. The unresolved theorem is the construction of a positive-flux reserve that is both inheritable and finite at the root.