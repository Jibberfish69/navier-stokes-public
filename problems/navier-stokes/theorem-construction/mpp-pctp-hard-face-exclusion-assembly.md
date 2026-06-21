# PCTP.hard Face Exclusion Assembly

## Status

Conditional assembly theorem.

This note assembles the endpoint-face reductions proved in the PCTP.hard loop. It does not yet prove the final terminal tower bound from `OriginalSmoothData`.

## Inputs

Use the following conditional lemmas on the same retained terminal tail, after
the repaired Part row has excluded `response-margin-collapse` by closed terminal
Part predicates or retained strict response margins:

```math
packing\text{-}detached\Longrightarrow Dead\vee Jump\vee tower\text{-}blown,
```

```math
Dead\Longrightarrow Jump\vee tower\text{-}blown,
```

```math
Jump\Longrightarrow Dead\vee packing\text{-}detached\vee tower\text{-}blown.
```

These are supplied by the pack-detachment endpoint reduction, participation persistence, and field/jump endpoint reduction notes.

## Theorem

For a first finite endpoint face in the old PCTP.hard endpoint submatrix, every
non-tower first Part/Field reduces to `tower-blown`.  The response-margin subface is a
separate Part-row input and is not reduced by this theorem.

Equivalently,

```math
Dead\vee packing\text{-}detached\vee Jump
\Longrightarrow
 tower\text{-}blown
```

as a first-face alternative on the retained terminal tail.

## Proof

Let `F_*` be the first finite endpoint face.

If

```math
F_*=packing\text{-}detached,
```

then pack-detachment endpoint reduction gives

```math
Dead\vee Jump\vee tower\text{-}blown.
```

First-face ordering gives an exact dichotomy for the `Dead` and `Jump`
alternatives: their endpoint time is either earlier than the alleged first pack
face, which contradicts minimality, or equal to it, in which case a non-pack
face is already present at the first endpoint. After those two subcases are
removed from the retained first-pack branch, the only compatible first-face
alternative is `tower-blown`.

If

```math
F_*=Dead,
```

participation persistence gives

```math
Jump\vee tower\text{-}blown.
```

Again, the `Jump` alternative contradicts first-face minimality unless the failure has already left the dead channel. Thus the compatible first-face alternative is `tower-blown`.

If

```math
F_*=Jump,
```

field/jump endpoint reduction gives

```math
Dead\vee packing\text{-}detached\vee tower\text{-}blown.
```

The `Dead` and `packing-detached` alternatives contradict first-face minimality unless a non-jump failure has already occurred. Thus the compatible first-face alternative is `tower-blown`.

Therefore every first finite endpoint face reduces to `tower-blown`.

## Consequence

After the response-margin subface has been removed, the old-face version of
PCTP.hard is reduced to one analytic theorem:

```math
OriginalSmoothData\Longrightarrow \neg tower\text{-}blown.
```

Equivalently,

```math
OriginalSmoothData\Longrightarrow \mathfrak A_{N,Q}\in L^\infty(0,T_*).
```

for the required finite tower depth and retained terminal tail.

## Boundary

This note closes the endpoint grammar reduction. It does not prove the terminal tower bound. The remaining mathematical burden is exactly the noncircular production of terminal tower control from the original periodic Navier-Stokes dynamics.
