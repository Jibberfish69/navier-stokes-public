# Laminar parent-child flux Bellman target

Status: sharper live target proposed; proof open.

## 1. Why this target is sharper

`GlobalLaminarAncestryVariationReserve.A` asks for finite integrated Cauchy-Green variation, complete-frame variation, and nonlaminar exit charge across the full laminar forest. That reserve has nearly the same strength as finite full action.

The sharper target is a parent-child telescoping law on the laminar material ancestry tree.

## 2. Tree objects

Let `Q` be a node in the laminar high-ratio ancestry tree. Its children are the maximal retained subnodes `Q' subset Q` carrying deeper high-ratio service. Define:

```math
A(Q)=\text{full positive PLS action carried inside }Q,
```

and define a nonnegative same-packet boundary reserve

```math
B(Q)=\text{gauge-reduced annular pressure-Helmholtz--Leray-stress flux available across the material boundary of }Q.
```

The reserve must be defined on the original transported material history, not on detached packets.

## 3. Desired Bellman inequality

The target inequality is

```math
\sum_{Q'\in\operatorname{ch}(Q)} A(Q')
\le
C\Bigl(B(Q)-\sum_{Q'\in\operatorname{ch}(Q)}B(Q')\Bigr)
+R_{legal}(Q).
\tag{LFB.1}
```

This is the exact replacement for the broad global variation reserve. It says deeper high-ratio service must be paid by parent-to-child loss of a same-material boundary flux reserve.

## 4. Telescoping consequence

Summing `(LFB.1)` over a finite subtree gives

```math
\sum_{Q\in\mathcal T} A(Q)
\le
C B(Q_{root})+\sum_{Q\in\mathcal T}R_{legal}(Q).
```

If the root reserve is finite from original data and the legal terms are summable, then

```math
\sum_\ell 2^\ell\nu_\ell<\infty.
```

This pays the Gold first ratio moment without separately postulating total forest variation.

## 5. Why laminarity matters

For unrelated packets, positive boundary flux can be counted repeatedly. For a laminar material tree, parent-child fluxes telescope. A child high-ratio packet has to pass through the parent's transported material boundary or spend nonlaminar exit/collar charge. Thus the same-history ancestry gives the tree structure needed for a Bellman inequality.

## 6. New exact hinge

```math
\boxed{\text{LaminarParentChildFluxBellmanCarleson.A}}
```

Statement:

For the original smooth Navier-Stokes material history, after paid nonlaminar exits, construct a nonnegative gauge-reduced annular pressure-Helmholtz--Leray-stress boundary reserve `B(Q)` on each laminar ancestry node such that `(LFB.1)` holds with summable legal error and finite root reserve.

This would imply the first high-ratio moment and discharge the full-action edge.