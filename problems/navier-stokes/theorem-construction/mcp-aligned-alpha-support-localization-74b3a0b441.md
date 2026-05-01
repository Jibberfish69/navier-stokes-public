# Aligned Alpha Support Localization

## Status

Conditional support-localization step.

Let

```math
\alpha_J:=\eta_{al}/g_{al},
\qquad d\nu_J:=M_J^2d\mu_J.
```

Choose a measurable essential support carrier

```math
B_{al}:=\{|
\alpha_J|>0\}
```

up to `dnu_J`-null sets. Then

```math
supp\,\alpha_J\subset B_{al}
```

modulo null sets.

This closes the support-localization item in the aligned square-budget route.

The substantive remaining estimates are:

```text
nu_J(B_al) -> 0,
uniform Lp(dnu_J) control for alpha_J with p > 2.
```

Under those two estimates, Holder gives

```math
\int \alpha_J^2d\nu_J
\le
\|\alpha_J\|_{L^p(d\nu_J)}^2\nu_J(B_{al})^{1-2/p}
\to0.
```

## Next frontier

```text
prove weighted mass collapse for B_al
```