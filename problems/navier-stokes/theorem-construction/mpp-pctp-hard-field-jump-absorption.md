# PCTP.hard Terminal Field / Jump Endpoint Reduction

## Status

Conditional theorem installed for the `PCTP.hard` terminal-tail program.

This note proves the derived-face lemma:

```math
Part_{N,Q}+\Gamma_{pack,Q}\in L^\infty(0,T_*)+\mathfrak A_{N+1,Q}\in L^\infty(0,T_*)
\Longrightarrow
Field_{N,r_*,Q}
```

for some `r_*>0`. Equivalently,

```math
Jump\Longrightarrow Dead\vee packing\text{-}detached\vee tower\text{-}blown
```

as a first terminal face on the retained same-fluid tail after the repaired Part
row has excluded `response-margin-collapse`.

## Setup

Fix a finite depth `N` and a retained same-fluid terminal tail for the smooth periodic solution on `[0,T_*)`. Assume:

1. `Part_{N,Q}` persists on the tail with closed terminal response predicates or
   retained strict response margins.
2. The pack gauge is bounded:

```math
\Gamma_{pack,Q}(t)\le M_P.
```

3. The tower amplitude is bounded one rung higher:

```math
\mathfrak A_{N+1,Q}(t)\le M_A.
```

## Lemma

Under these hypotheses, there exists a positive scale `r_*>0` and a finite constant `C_*` such that

```math
Field^{\le C_*}_{N,r_*,Q}(u,p)
```

holds along the whole terminal tail.

## Proof

By `Part_{N,Q}`, the retained family is represented by finitely many same-fluid labels and the label family stays active on the terminal tail. By the pack bound, the image of each sufficiently small label ball contains and is contained in physical balls with radii comparable through `M_P`. Hence a finite label radius gives a positive physical radius

```math
r_*>0
```

valid on the whole terminal tail.

By the tower bound to depth `N+1`, every spatial derivative needed to control finite differences of `U_k`, `0<=k<=N`, is uniformly bounded on the retained physical packet. For any two points `x,y` in the same retained packet cell with `|x-y|<=r_*`, the mean-value estimate gives

```math
|U_k(x,t)-U_k(y,t)|\le M_A |x-y|,
\qquad 0\le k\le N.
```

The pressure/forcing components that enter the class-membership field predicate are included through the same tower amplitude and the `K_k` readout. Therefore the finite one-field coherence modulus is bounded by a constant depending only on `N`, `M_A`, `M_P`, and the finite retained label cover.

Thus `Field_{N,r_*,Q}` holds throughout the terminal tail.

## First-face consequence

Suppose `Jump` is the first endpoint face. Before that first time, `Part`, `Pack`, and the tower amplitude remain controlled. At the first time, their terminal limits remain controlled by the hypotheses of first failure. The lemma then supplies a positive field scale at that same terminal tail, contradicting the claim that the first face is `Jump`.

Hence a terminal `Jump` face can occur first only after one of the three supplier controls has already failed, on the branch where the response-margin subface has already been removed:

```math
Jump\Longrightarrow Dead\vee packing\text{-}detached\vee tower\text{-}blown.
```

## Consequence

Together with pack-detachment endpoint reduction and participation persistence, every non-tower first face reduces to the tower face under first-face minimality. The remaining primitive endpoint face for `PCTP.hard` is therefore

```math
tower\text{-}blown.
```

## Boundary

This note proves field persistence from `Part`, bounded pack gauge, and bounded tower. It does not prove the unconditional terminal tower bound from `OriginalSmoothData`. That tower bound remains the live analytic burden.
