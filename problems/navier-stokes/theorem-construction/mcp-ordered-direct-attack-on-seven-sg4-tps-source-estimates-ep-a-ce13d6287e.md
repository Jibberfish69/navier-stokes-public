# Ordered Direct Attack On Seven SG4 TPS Source Estimates

## Status

Conditional theorem packet.

The seven requested estimates imply the terminal SG.4/TPS handoff. The estimates themselves remain analytic source inputs in the current repo state.

## 1. BridgeA comparison

The tensor difference is

```math
C_{al}-C_{CG}
=
W_J^{coc}\Pi_{N_a}(W_J^{coc})^* - \mathcal C_J^{CG}.
```

The exact-potential comparison ledger gives

```math
\|C_{al}-C_{CG}\|_{op}\le Err_{cmp}^{frame}.
```

With a shared simple-top gap floor `gamma_J`, Davis-Kahan gives

```math
\|P_{al}-P_J^{CG}\|_F
\le C Err_{cmp}^{frame}/gamma_J.
```

Thus

```math
Err_{cmp}^{frame}/gamma_J\to0
\Longrightarrow BridgeA.
```

## 2. DG-Line drain

Let `A_J=H_J^*H_J`, and let `lambda_1>=lambda_2` be its eigenvalues. The reduced Gramian equation gives

```math
\frac{d}{dt}\log(\lambda_2/\lambda_1)
=
2(\langle u_2,S_{\parallel,J}u_2\rangle-\langle u_1,S_{\parallel,J}u_1\rangle)+error.
```

The in-plane drain

```math
\langle u_1,S_{\parallel,J}u_1\rangle-\langle u_2,S_{\parallel,J}u_2\rangle
\ge \delta_*-r_J
```

supplies the negative drift in the singular-value ratio.

## 3. DG-Line error

The relative Gramian error estimate

```math
\|E_A\|_{op}\le \varepsilon_A\lambda_2
```

gives

```math
\frac{d}{dt}\log(\lambda_2/\lambda_1)
\le -2\delta_*+2r_J+C\varepsilon_A.
```

If the integrated defect is smaller than the drain on a positive-mass retained family, the ratio contracts.

## 4. DG-Line nondegeneracy

A lower singular-value floor on that positive-mass family converts ratio contraction into

```math
\sigma_2(H_J)/\sigma_1(H_J)\le q<1.
```

This proves `DG-Line^sharp`.

## 5. BootSquare support

Let

```math
\beta_J:=\Lambda_J^{boot}\eta_J^{boot},
\qquad d\nu_J:=M_J^2d\mu_J.
```

If

```math
supp\,\beta_J\subset B_J,
```

then the BootSquare integral is localized to `B_J`.

## 6. BootSquare mass

If

```math
\nu_J(B_J)\to0,
```

then the support factor collapses in weighted measure.

## 7. BootSquare higher integrability

If

```math
\|\beta_J\|_{L^p(d\nu_J)}\le C,
\qquad p>2,
```

then Holder gives

```math
\int |\beta_J|^2d\nu_J
\le C^2\nu_J(B_J)^{1-2/p}\to0.
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

## Remaining source inputs

```text
Err_cmp^frame/gamma_J -> 0,
in-plane anisotropy drain,
relative Gramian error control,
lower singular-value floor on positive mass,
weighted support localization for beta_J,
nu_J(B_J) -> 0,
uniform Lp(dnu_J) control for beta_J with p > 2.
```