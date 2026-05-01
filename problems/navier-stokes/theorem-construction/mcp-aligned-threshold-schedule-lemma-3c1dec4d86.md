# Aligned Threshold Schedule Lemma

## Status

Conditional lemma.

Let `N_J` be the total weighted mass of the retained family:

```math
N_J = \nu_J(G_J).
```

Assume `N_J` is finite for each `J`. Choose

```math
theta_J = (J^2(1+N_J))^{-1/2}.
```

Then

```math
theta_J^2 N_J = N_J/(J^2(1+N_J)) \le J^{-2}.
```

Therefore

```math
theta_J^2\nu_J(G_J) \to 0.
```

This controls the outside-threshold part of the aligned square-budget split.

## Remaining source estimates

```text
nu_J({alpha_J > theta_J}) -> 0,
||alpha_J||_{Lp(dnu_J)} <= C for some p > 2.
```