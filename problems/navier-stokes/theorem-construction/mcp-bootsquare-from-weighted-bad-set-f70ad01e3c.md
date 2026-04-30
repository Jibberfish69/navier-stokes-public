# BootSquare From Weighted Bad Set

## Status

Conditional theorem.

Let

```math
\beta_J:=\Lambda_J^{boot}\eta_J^{boot},
\qquad
d\nu_J:=M_J^2d\mu_J.
```

BootSquare is

```math
\int_{\mathcal G_J}|\beta_J|^2d\nu_J=o_J(1).
```

Assume

```math
\operatorname{supp}\beta_J\subseteq B_J,
\qquad
\nu_J(B_J)\to0,
\qquad
\|\beta_J\|_{L^p(d\nu_J)}\le C_p,
\qquad p>2.
```

Then Holder gives

```math
\int_{\mathcal G_J}|\beta_J|^2d\nu_J
=
\int_{B_J}|\beta_J|^2d\nu_J
\le
C_p^2\nu_J(B_J)^{1-2/p}	o0.
```

Thus BootSquare holds.

The installed `SSC-D7mb-collapse` surface then gives

```text
BootSquare
=> SSC-D7mb-collapse
=> SSC.
```

## Remaining obligations

```text
weighted support localization for beta_J,
nu_J(B_J) -> 0,
uniform Lp(dnu_J) control for beta_J with p > 2.
```