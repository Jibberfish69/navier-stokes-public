---
theorem_id: forward-gold-signed-stopped-pls-evolution-identity-not-installed-20260627
status: not-installed-fixed-core-branch-blocked
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - SignedStoppedPLSEvolutionIdentity.A
  - StoppedPrimitivePLSBalanceLaw.A
  - StoppedReturnBVFiniteFromOriginalData.A
---

# Signed stopped PLS evolution identity not installed

## 1. Required identity

The fixed stopped-core branch needs an actual material evolution identity for the stopped primitive record:

```math
D_tP_{\mathfrak R}
=\mathcal P_{fresh}^{+}-\mathcal R_{return}+Err_{legal},
```

with one-sided control

```math
[D_tP_{\mathfrak R}]_-
\lesssim
\mathcal R_{return}+Err_{legal}
```

and original-data finiteness

```math
\int \mathcal R_{return}\,dt\le C(u_0).
```

This would imply finite negative variation of the primitive record and close the stopped-core branch.

## 2. Direct test

The current stopped-core construction supplies:

```math
\mathfrak R=(\mathfrak C,\sigma,\chi,P,\kappa),
```

plus selector cone alignment and positive-increment representation. It does not supply a PDE/material identity for \(D_tP_{\mathfrak R}\).

Thus the transition

```math
\text{primitive bookkeeping}
\Rightarrow
\text{finite negative BV}
```

is not valid.

## 3. Consequence

The fixed stopped-core branch is blocked at exactly this theorem:

```text
SignedStoppedPLSEvolutionIdentity.A / StoppedReturnBVFiniteFromOriginalData.A
```

This is a genuine new balance-law obligation, not a formal consequence of the stopped selector, signed channel, or bounded record.

## 4. Result

The fixed stopped-core branch has been reduced to one hard missing theorem. Since it is not installed, the live relay should pivot to the other branch:

```text
FreshSelectedCoefficientOverrunPayment.A / CriticalWeightedParentChildResetCarleson.A
```

for strict fresh resets.