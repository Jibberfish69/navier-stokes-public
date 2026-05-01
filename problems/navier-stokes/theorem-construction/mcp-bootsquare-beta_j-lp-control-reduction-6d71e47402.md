# BootSquare beta_J Lp Control Reduction

## Status

Conditional reduction.

Recall

```math
\beta_J:=\Lambda_J^{boot}\eta_J^{boot},
\qquad d\nu_J:=M_J^2d\mu_J.
```

The BootSquare higher-integrability target is

```math
\|\beta_J\|_{L^p(d\nu_J)}\le C,
\qquad p>2.
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
\le
C_\Lambda C_\eta.
```

## Holder factorization route

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
\|\beta_J\|_{L^p(d\nu_J)}
\le
C_\Lambda C_\eta.
```

## Consequence

Together with

```math
\nu_J(B_J)\to0,
```

this `Lp` control gives BootSquare by the weighted bad-set theorem.

## Exact source estimates

```text
control Lambda_J^boot as a multiplier,
control eta_J^boot in compatible Lp,
all on the same retained weighted family.
```