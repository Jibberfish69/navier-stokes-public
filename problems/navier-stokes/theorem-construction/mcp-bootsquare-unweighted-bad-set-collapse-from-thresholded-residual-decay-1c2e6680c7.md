# BootSquare Unweighted Bad-Set Collapse From Thresholded Residual Decay

## Status

Conditional theorem.

Let the BootSquare bad set be thresholded by the residual variable, for example

```math
B_J:=\{ |\beta_J|>\theta_J\},
```

or assume the selected bad set is contained in this threshold set.

For any `q>0`, Markov gives

```math
\mu_J(B_J)
\le
\theta_J^{-q}\|\beta_J\|_{L^q(d\mu_J)}^q.
```

Therefore

```math
\|\beta_J\|_{L^q(d\mu_J)}^q=o(\theta_J^q)
```

implies

```math
\mu_J(B_J)\to0.
```

If

```math
\beta_J=\Lambda_J^{boot}\eta_J^{boot}
```

and `Lambda_J^boot` is uniformly bounded, it is enough to prove

```math
\|\eta_J^{boot}\|_{L^q(d\mu_J)}^q=o(\theta_J^q).
```

## Source theorem retained

For an independently fixed `B_J`, the required theorem is direct unweighted collapse:

```text
mu_J(B_J)->0.
```

For a thresholded `B_J`, the required theorem is residual decay at the chosen threshold scale.