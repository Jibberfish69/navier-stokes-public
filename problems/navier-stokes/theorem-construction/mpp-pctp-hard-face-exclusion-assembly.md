# PCTP.hard Face Exclusion Assembly

## Status

Conditional assembly theorem.

This note assembles the endpoint-face reductions proved in the PCTP.hard loop. It does not yet prove the final terminal tower bound from `OriginalSmoothData`.

## Inputs

Use the following conditional lemmas on the same retained terminal tail:

```math
packing\text{-}detached\Longrightarrow Dead\vee Jump\vee tower\text{-}blown,
```

```math
Dead\Longrightarrow Jump\vee tower\text{-}blown,
```

```math
Jump\Longrightarrow Dead\vee packing\text{-}detached\vee tower\text{-}blown.
```

These are supplied by the pack-detachment absorption, participation persistence, and field/jump absorption notes.

## Theorem

For a first finite endpoint face in the PCTP.hard endpoint vocabulary, every non-tower first face reduces to `tower-blown`.

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

then pack-detachment absorption gives

```math
Dead\vee Jump\vee tower\text{-}blown.
```

The first two alternatives would occur no later than the alleged first pack face, contradicting first-face minimality unless they coincide as already-present failures. Hence the only compatible first-face alternative is `tower-blown`.

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

field/jump absorption gives

```math
Dead\vee packing\text{-}detached\vee tower\text{-}blown.
```

The `Dead` and `packing-detached` alternatives contradict first-face minimality unless a non-jump failure has already occurred. Thus the compatible first-face alternative is `tower-blown`.

Therefore every first finite endpoint face reduces to `tower-blown`.

## Consequence

The four-face version of PCTP.hard is reduced to one analytic theorem:

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