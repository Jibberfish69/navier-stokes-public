# Shrinking-core escape capacity lower-bound direct test

Status: direct lower-bound test failed; scale-invariant obstruction isolated.

## 1. Branch tested

The shrinking-core escape branch assumes that a terminal high-ratio affine/material-time burst family avoids repeated use of one material core. Instead, the bursts occur on smaller transported cores

```math
Q_k,
\qquad r_k\downarrow 0,
```

while retaining unit selected pressure-Hodge / critical-strain action:

```math
A(Q_k)\simeq 1.
```

To close this branch one needs a non-summable lower bound for the same-history pressure-Hodge, collar, or turnstile capacity cost of these escaping cores.

## 2. Raw capacity scaling

For a localized affine-type core of physical/material radius `r`, the raw costs scale like a capacity or boundary-size currency:

```math
R_{raw}(Q_r)\lesssim r.
```

This includes the same obstruction already seen for raw energy, dissipation, fixed-collar, and fixed-annulus ledgers: a dyadic terminal chain may satisfy

```math
\sum_k r_k<\infty
```

while the normalized selected material-time action satisfies

```math
\sum_k A(Q_k)=\infty.
```

Thus ordinary elliptic capacity, collar area, or raw pressure-Hodge boundary cost is too weak to pay the first-ratio action.

## 3. Required stronger statement

The lower bound must be scale-invariant in the selected action, not raw capacity:

```math
\operatorname{Cost}_{selected}(Q_k)\gtrsim 1
```

for every retained burst, with the total selected cost controlled from original data.

But this is precisely the missing first-ratio / weight-tail theorem unless one proves an independent no-escape mechanism preventing infinitely many selected unit bursts on shrinking cores.

## 4. Exact obstruction

The shrinking-core branch is therefore not closed by standard capacity. It needs:

```math
\boxed{\text{ScaleInvariantSelectedCapacityNoEscape.A}}
```

Statement:

For one original smooth Navier-Stokes material history, an infinite terminal family of shrinking material cores cannot each carry unit selected pressure-Hodge / critical-strain action with summable raw pressure-Hodge/collar/turnstile capacity cost.

Equivalently, either the selected capacity itself has a finite original-data root bound, or shrinking-core escape is impossible by a same-history compactness/packing law stronger than raw capacity.

## 5. Result

The no-Zeno dichotomy now has both branches reduced to exact missing strict-gain statements:

```math
\text{RepeatedCorePositiveVariationRootBound.A}
```

or

```math
\text{ScaleInvariantSelectedCapacityNoEscape.A}.
```

Installed ledgers do not prove either branch. Raw capacity scales too weakly to defeat the dyadic shrinking-core escape.