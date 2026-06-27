---
theorem_id: forward-gold-stopped-primitive-pls-balance-law-block-20260627
status: fixed-stopped-core-branch-blocked-on-signed-pls-balance-law
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - StoppedPrimitivePLSBalanceLaw.A
  - StoppedReturnBVFiniteFromOriginalData.A
  - StoppedNegativeScaleReturnCharge.A
---

# Stopped primitive PLS balance law block

## 1. Target

The fixed stopped-core branch is reduced to proving a one-sided BV bound for a primitive PLS record \(P\):

```math
\sum_k [P(Q_k)-P(Q_{k+1})]_+
\le C(u_0)+R_{legal}.
```

The only noncircular way identified so far is a material balance law:

```math
D_tP = \mathcal P_{prod}-\mathcal R_{ret}+Err,
```

with

```math
[D_tP]_-
\lesssim \mathcal R_{ret}+Err_{legal},
\qquad
\int \mathcal R_{ret}\,dt\le C(u_0).
```

## 2. Direct test

The stopped-core data currently gives:

1. a fixed stopped material carrier;
2. a fixed signed selector cone;
3. a primitive PLS record candidate;
4. positive fresh selected transactions controlled by positive record increments.

It does not, by itself, give a signed evolution identity for \(P\). In particular, it does not prove that downward motion of \(P\) is a physical return/service event rather than uncharged scalar oscillation.

Thus the desired implication

```math
\text{stopped primitive record}
\Rightarrow
\operatorname{Var}^{-}(P)<\infty
```

is not currently justified.

## 3. Exact missing identity

The missing theorem must be an actual stopped-material balance law:

```text
SignedStoppedPLSEvolutionIdentity.A
```

Statement:

For the fixed stopped carrier and signed primitive channel, the primitive record satisfies a material evolution equation whose negative part is controlled by an original-data finite return/service term:

```math
D_tP_{\mathfrak R}
=\mathcal P_{fresh}^{+}-\mathcal R_{return}+Err_{legal},
```

with

```math
\int [D_tP_{\mathfrak R}]_-\,dt
\le C\int\mathcal R_{return}\,dt+C R_{legal}
\le C(u_0)+C R_{legal}.
```

## 4. Result

The fixed stopped-core branch is now blocked on a precise balance-law theorem:

```math
\boxed{\text{SignedStoppedPLSEvolutionIdentity.A / StoppedReturnBVFiniteFromOriginalData.A}.}
```

Without this identity, the stopped record can oscillate and reuse the same finite range to pay infinitely many positive selected increments.

Therefore the live route should either:

1. prove this signed stopped-material PLS balance law; or
2. pivot to the reset branch:

```text
FreshSelectedCoefficientOverrunPayment.A / CriticalWeightedParentChildResetCarleson.A.
```