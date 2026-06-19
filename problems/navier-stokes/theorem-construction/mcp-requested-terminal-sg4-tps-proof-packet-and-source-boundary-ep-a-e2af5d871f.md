# Requested Terminal SG4 TPS Proof Packet And Source Boundary

## Status

Conditional proof packet.

## Conditional closure under the listed source estimates

The requested terminal branch closes under the following source estimates:

```text
Err_cmp^frame / gamma_J -> 0,
in-plane anisotropy drain,
relative Gramian error control,
lower singular-value floor on positive mass,
supp beta_J subset B_J,
nu_J(B_J) -> 0,
||beta_J||_{Lp(dnu_J)} <= C with p > 2.
```

## 1. BridgeA tensor comparison

`C_al-C_CG` is exactly

```math
W_J^{coc}\Pi_{N_a}(W_J^{coc})^* - \mathcal C_J^{CG}.
```

The exact-potential comparison ledger gives

```math
\|C_al-C_CG\|_{op}\le Err_{cmp}^{frame}.
```

With shared simple-top gap floor `gamma_J`, Davis-Kahan gives

```math
\|P_al-P_J^{CG}\|_F\le C Err_{cmp}^{frame}/gamma_J.
```

Thus `Err_cmp^frame/gamma_J -> 0` proves BridgeA.

## 2. DG-Line sharp

For the reduced cocycle `H_J`, set `A_J=H_J^*H_J`. The reduced evolution gives a Gramian equation. The in-plane anisotropy drain and relative Gramian error yield

```math
\frac{d}{dt}\log(\lambda_2/\lambda_1)
\le -2\delta_*+2r_J+C\varepsilon_{A,J}.
```

If the integrated defect is below the drain on a positive-mass family, then

```math
\sigma_2(H_J)/\sigma_1(H_J)\le q<1.
```

This proves `DG-Line^sharp` from the drain packet.

## 3. BootSquare

Let

```math
\beta_J:=\Lambda_J^{boot}\eta_J^{boot},
\qquad d\nu_J:=M_J^2d\mu_J.
```

If

```math
supp\,\beta_J\subset B_J,
\qquad
\nu_J(B_J)\to0,
\qquad
\|\beta_J\|_{L^p(d\nu_J)}\le C,
\qquad p>2,
```

then Holder gives

```math
\int |\beta_J|^2d\nu_J
\le C^2\nu_J(B_J)^{1-2/p}\to0.
```

This proves BootSquare.

## 4. Terminal assembly

```text
BridgeA + DG-Line^sharp + BootSquare
=> D.7mq + SSC-EP.A
=> D.7mr2
=> RPC.3
=> SG.4B.
```

## Remaining source estimates

```text
Err_cmp^frame/gamma_J -> 0,
in-plane anisotropy drain,
relative Gramian error control,
lower singular-value floor on positive mass,
weighted support localization for beta_J,
weighted bad-set mass collapse,
Lp(dnu_J) control for beta_J with p>2.
```
