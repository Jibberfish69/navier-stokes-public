# Maximal Hardening Pass On Seven SG4 TPS Source Estimates

## Status

Conditional local branch theorem.

This pass pushes each source estimate to its strongest current repo-backed form.

## 1. BridgeA comparison

`BridgeA` is exactly the normalized EPF comparison ledger:

```math
\|W_J^{coc}\Pi_{N_a}(W_J^{coc})^*-\mathcal C_J^{CG}\|_{op}
\le Err_{cmp}^{frame}.
```

With shared top-gap floor `gamma_J`, Davis-Kahan gives

```math
\|P_{al}-P_J^{CG}\|_F
\le C_{DK}Err_{cmp}^{frame}/gamma_J.
```

So the first source estimate is precisely

```math
Err_{cmp}^{frame}/gamma_J\to0.
```

## 2-4. DG-Line sharp

For the fixed-frame reduced cocycle `H_J`, set `A_J=H_J^*H_J`. The reduced Gramian equation gives the log-ratio inequality

```math
\frac{d}{dt}\log(\lambda_2/\lambda_1)
\le -2\delta_*+2r_J+C\varepsilon_A.
```

Thus `DG-Line^sharp` is reduced to exactly:

```text
in-plane anisotropy drain,
relative Gramian error control,
lower singular-value floor on positive mass.
```

These three estimates yield

```math
\sigma_2(H_J)/\sigma_1(H_J)\le q<1.
```

## 5-7. BootSquare

Let

```math
\beta_J:=\Lambda_J^{boot}\eta_J^{boot},
\qquad d\nu_J:=M_J^2d\mu_J.
```

The weighted bad-set route gives BootSquare from:

```math
supp\,\beta_J\subset B_J,
\qquad
\nu_J(B_J)\to0,
\qquad
\|\beta_J\|_{L^p(d\nu_J)}\le C,
\qquad p>2.
```

Indeed,

```math
\int |\beta_J|^2d\nu_J
\le C^2\nu_J(B_J)^{1-2/p}\to0.
```

The `PTC-Lin` surface also shows how qualitative differentiability packets such as `TPS.4u` feed averaged linearization. The frozen square route consumed by `BootSquare` asks for the stronger localized weighted-square structure above.

## Terminal handoff

```text
BridgeA + DG-Line^sharp + BootSquare
=> D.7mq + SSC-EP.A
=> D.7mr2
=> RPC.3
=> SG.4B.
```

## Exact source layer after this pass

```text
Err_cmp^frame/gamma_J -> 0,
in-plane anisotropy drain,
relative Gramian error control,
lower singular-value floor on positive mass,
weighted support localization for beta_J,
nu_J(B_J) -> 0,
uniform Lp(dnu_J) control for beta_J with p > 2.
```
