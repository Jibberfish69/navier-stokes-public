# BootSquare Unweighted Bad-Set Collapse Criterion

## Status

Conditional theorem.

Assume the BootSquare bad set is contained in a residual threshold set:

```text
B_J subset {|beta_J| > theta_J}.
```

For any exponent q greater than zero, Chebyshev gives:

```text
mu_J(B_J) <= theta_J^(-q) ||beta_J||_Lq(mu_J)^q.
```

Therefore:

```text
||beta_J||_Lq(mu_J)^q = o(theta_J^q)
=> mu_J(B_J) -> 0.
```

For a fixed threshold, ordinary convergence of beta_J to zero in mu_J-measure is enough.

## Source estimate retained

```text
prove beta_J residual decay in unweighted measure at the selected threshold,
or construct B_J directly with mu_J(B_J)->0.
```