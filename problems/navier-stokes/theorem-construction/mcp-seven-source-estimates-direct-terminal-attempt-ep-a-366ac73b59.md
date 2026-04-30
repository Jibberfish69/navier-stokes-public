# Seven Source Estimates Direct Terminal Attempt

## Status

Current canonical surfaces treat the seven estimates as terminal source theorems for the local SG.4/TPS branch.

## 1. BridgeA comparison

The exact-potential comparison ledger gives

```math
\|C_{al}-C_{CG}\|_{op}\le Err_{cmp}^{frame}.
```

With shared gap floor `gamma_J`, Davis-Kahan gives

```math
\|P_{al}-P_J^{CG}\|_F\le C Err_{cmp}^{frame}/gamma_J.
```

Thus `Err_cmp^frame/gamma_J -> 0` proves BridgeA.

## 2-4. DG-Line sharp

For `A_J=H_J^*H_J`, the reduced Gramian evolution gives the log-ratio estimate

```math
\frac{d}{dt}\log(\lambda_2/\lambda_1)\le -2\delta_*+2r_J+C\varepsilon_A.
```

The in-plane anisotropy drain supplies `delta_*`, the relative Gramian error supplies `epsilon_A`, and the lower singular-value floor converts ratio contraction into

```math
\sigma_2(H_J)/\sigma_1(H_J)\le q<1.
```

## 5-7. BootSquare

Let

```math
\beta_J:=\Lambda_J^{boot}\eta_J^{boot},
\qquad d\nu_J:=M_J^2d\mu_J.
```

If

```math
supp\,\beta_J\subset B_J,
\qquad \nu_J(B_J)\to0,
\qquad \|\beta_J\|_{L^p(d\nu_J)}\le C,
\qquad p>2,
```

then Holder gives

```math
\int |\beta_J|^2d\nu_J\le C^2\nu_J(B_J)^{1-2/p}\to0.
```

So BootSquare holds.

## Terminal assembly

```text
BridgeA + DG-Line^sharp + BootSquare
=> D.7mq + SSC-EP.A
=> D.7mr2
=> RPC.3
=> SG.4B.
```

## Source boundary

```text
Err_cmp^frame/gamma_J -> 0,
in-plane anisotropy drain,
relative Gramian error control,
lower singular-value floor on positive mass,
weighted support localization for beta_J,
nu_J(B_J) -> 0,
uniform Lp(dnu_J) control for beta_J with p > 2.
```