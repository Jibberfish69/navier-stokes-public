# Aligned Square Budget And SSC Assembly

## Status

Conditional assembly.

Let

```math
\alpha_J=\eta_{al}/g_{al},
\qquad d\nu_J=M_J^2d\mu_J.
```

The threshold square-budget theorem gives

```math
\int \alpha_J^2d\nu_J\to0
```

from

```text
theta_J^2 nu_J(G_J) -> 0,
nu_J({alpha_J > theta_J}) -> 0,
||alpha_J||_{Lp(dnu_J)} <= C, p > 2.
```

The aligned residual estimate gives

```math
\|P_{al}-P_{top}^{seg}\|_F^2\le C_{al}\alpha_J^2.
```

Hence

```math
\int \|P_{al}-P_{top}^{seg}\|_F^2d\nu_J\to0.
```

This is aligned selector-strain compatibility with

```math
\Pi_J^{ref}:=P_{al}.
```

Under the aligned reference convention

```math
C_{CG}:=C_{al}:=W_J^{coc}\Pi_{N_a}(W_J^{coc})^*,
```

we get

```math
Err_{cmp}^{frame}=0.
```

Thus BridgeA closes on the aligned-reference branch.

## Remaining SG.4/TPS source queue

```text
in-plane anisotropy drain,
relative Gramian error control,
lower singular-value floor on positive mass,
nu_J(B_J) -> 0,
beta_J Lp control.
```
