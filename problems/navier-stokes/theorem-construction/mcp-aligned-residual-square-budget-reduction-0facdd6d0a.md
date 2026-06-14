# Aligned Residual Square-Budget Reduction

## Status

Failed as an unconditional proof from the current surfaces.

## Aligned residual square budget

From the aligned residual packet,

```math
\|P_{al}-P_{top}^{seg}\|_F^2
\le C_{al}
\eta_{al}^2/g_{al}^2.
```

Therefore aligned selector-strain compatibility follows from

```math
\int M_J^2\frac{\eta_{al}^2}{g_{al}^2}\,d\mu_J=o_J(1).
```

Let

```math
\alpha_J:=\eta_{al}/g_{al},
\qquad d\nu_J:=M_J^2d\mu_J.
```

A sufficient weighted bad-set route is:

```math
supp\,\alpha_J\subset B_{al},
\qquad
\nu_J(B_{al})\to0,
\qquad
\|\alpha_J\|_{L^p(d\nu_J)}\le C,
\qquad p>2.
```

Then Holder gives

```math
\int \alpha_J^2d\nu_J
\le C^2\nu_J(B_{al})^{1-2/p}\to0.
```

## Synchronization route

The alternate route is

```math
Err_{sync}^{al}\to0.
```

This is a non-circular aligned-to-current projector synchronization theorem. It cannot be proved by invoking BridgeA, since BridgeA is the comparison currently under construction.

## Source boundary

The aligned reference route requires one of:

```text
aligned square budget for eta_al/g_al,
```

or

```text
non-circular Err_sync^al -> 0.
```

The installed `eta_mb` and `BootSquare` packets control the current CG residual. They do not supply the aligned residual budget automatically.
