# BootSquare Multiplier And Residual Lp Criterion

## Status

Conditional theorem.

Recall

```math
\beta_J=\Lambda_J^{boot}\eta_J^{boot}.
```

A simple sufficient route is:

```math
\|\Lambda_J^{boot}\|_{L^\infty(d\nu_J)}\le C_\Lambda,
\qquad
\|\eta_J^{boot}\|_{L^p(d\nu_J)}\le C_\eta,
\qquad p>2.
```

Then

```math
\|\beta_J\|_{L^p(d\nu_J)}
\le C_\Lambda C_\eta.
```

More generally, if

```math
\|\Lambda_J^{boot}\|_{L^r(d\nu_J)}\le C_\Lambda,
\qquad
\|\eta_J^{boot}\|_{L^s(d\nu_J)}\le C_\eta,
```

with

```math
1/p=1/r+1/s,
\qquad p>2,
```

then Holder gives

```math
\|\beta_J\|_{L^p(d\nu_J)}\le C_\Lambda C_\eta.
```

## Source estimates retained

```text
multiplier control for Lambda_J^boot,
compatible Lp control for eta_J^boot,
same retained weighted family.
```