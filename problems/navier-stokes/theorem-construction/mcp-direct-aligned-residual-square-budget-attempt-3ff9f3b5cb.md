# Direct Aligned Residual Square-Budget Attempt

## Status

Failed as an unconditional proof from current surfaces.

## Target

Let

```math
\alpha_J:=\eta_{al}/g_{al},
\qquad d\nu_J:=M_J^2d\mu_J.
```

The direct aligned square budget is

```math
\int \alpha_J^2\,d\nu_J=o_J(1).
```

## Formal implication

The aligned residual calculation gives

```math
\|P_{al}-P_{top}^{seg}\|_F^2
\le C_{al}
\eta_{al}^2/g_{al}^2
=
C_{al}\alpha_J^2.
```

Hence the weighted square budget gives aligned selector-strain compatibility:

```math
\int M_J^2\|P_{al}-P_{top}^{seg}\|_F^2d\mu_J=o_J(1).
```

## Weighted bad-set sufficient theorem

If there is a measurable carrier `B_al` such that

```math
supp\,\alpha_J\subset B_{al},
\qquad
\nu_J(B_{al})\to0,
\qquad
\|\alpha_J\|_{L^p(d\nu_J)}\le C,
\qquad p>2,
```

then Holder gives

```math
\int \alpha_J^2d\nu_J
=
\int_{B_{al}}\alpha_J^2d\nu_J
\le
C^2\nu_J(B_{al})^{1-2/p}	o0.
```

So the aligned square budget follows from aligned support, weighted mass collapse, and higher integrability.

## Boundary

The installed current-CG BootSquare packet controls the current-CG residual variable. The aligned route requires the analogous estimates for `alpha_J`, or a comparison theorem linking `eta_al` to the installed current-CG bootstrap residual.

## Remaining source targets

```text
support localization for alpha_J,
weighted mass collapse for B_al,
uniform Lp(dnu_J) control for alpha_J with p>2,
```

or one of:

```text
non-circular Err_sync^al -> 0,
new independent tensor-comparison theorem.
```
