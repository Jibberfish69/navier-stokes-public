# BootSquare Multiplier And Residual Lp Control Criterion

## Status

Conditional theorem.

Let

```math
\beta_J=\Lambda_J^{boot}\eta_J^{boot}.
```

## Bounded multiplier route

If

```math
\|\Lambda_J^{boot}\|_{L^\infty(d\nu_J)}\le C_\Lambda
```

and

```math
\|\eta_J^{boot}\|_{L^p(d\nu_J)}\le C_\eta,
\qquad p>2,
```

then

```math
\|\beta_J\|_{L^p(d\nu_J)}
\le C_\Lambda C_\eta.
```

## Mixed Holder route

If

```math
\|\Lambda_J^{boot}\|_{L^r(d\nu_J)}\le C_\Lambda,
\qquad
\|\eta_J^{boot}\|_{L^s(d\nu_J)}\le C_\eta,
```

and

```math
1/p=1/r+1/s,
\qquad p>2,
```

then Holder gives the same conclusion:

```math
\|\beta_J\|_{L^p(d\nu_J)}\le C_\Lambda C_\eta.
```

## Source estimates retained

```text
Lambda_J^boot multiplier control,
eta_J^boot compatible weighted Lp control,
same retained weighted family.
```