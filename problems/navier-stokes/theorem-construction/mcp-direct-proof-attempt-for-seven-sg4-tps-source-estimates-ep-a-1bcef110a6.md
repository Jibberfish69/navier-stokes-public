# Direct Proof Attempt For Seven SG4 TPS Source Estimates

## Status

Failed as an unconditional proof from current canonical surfaces.

The seven source estimates imply the terminal SG.4/TPS branch. Current surfaces supply the implication skeleton and leave the seven estimates as analytic source theorems.

## 1. BridgeA comparison

The comparison tensor is

```math
C_{al}-C_{CG}=W_J^{coc}\Pi_{N_a}(W_J^{coc})^*-\mathcal C_J^{CG}.
```

The exact-potential ledger gives

```math
\|C_{al}-C_{CG}\|_{op}\le Err_{cmp}^{frame}.
```

With shared gap floor `gamma_J`, Davis-Kahan gives

```math
\|P_{al}-P_J^{CG}\|_F\le C Err_{cmp}^{frame}/gamma_J.
```

So BridgeA follows from

```math
Err_{cmp}^{frame}/gamma_J\to0.
```

The source theorem remains the comparison estimate itself.

## 2. DG-Line drain

For `A_J=H_J^*H_J`, the reduced cocycle evolution gives the log-ratio identity. The in-plane drain

```math
\langle u_1,S_{\parallel,J}u_1\rangle-
\langle u_2,S_{\parallel,J}u_2\rangle\ge\delta_*-r_J
```

supplies contraction of `lambda_2/lambda_1`. The drain inequality remains a deformation-side source theorem.

## 3. DG-Line error

The relative error estimate

```math
\|E_A\|_{op}\le\varepsilon_A\lambda_2
```

adds `C epsilon_A` to the log-ratio inequality. Integrated error below the drain threshold preserves contraction. The estimate on `E_A` remains a reduced-cocycle source theorem.

## 4. DG-Line nondegeneracy

A lower singular-value floor on positive mass turns ratio contraction into

```math
\sigma_2(H_J)/\sigma_1(H_J)\le q<1.
```

This floor is supplied by inverse-cocycle control on a positive-mass subfamily when available. The lower-floor theorem remains source work.

## 5. BootSquare support

Let

```math
\beta_J:=\Lambda_J^{boot}\eta_J^{boot},
\qquad d\nu_J:=M_J^2d\mu_J.
```

Support localization is

```math
supp\,\beta_J\subset B_J.
```

Once `B_J` is defined as a support carrier, the displayed support inclusion is
just `supp\,\beta_J\subset B_J`. The source theorem is that this carrier
belongs to a small weighted bad family.

## 6. BootSquare mass

The needed mass theorem is

```math
\nu_J(B_J)\to0.
```

This remains the small weighted bad-set theorem.

## 7. BootSquare higher integrability

The needed integrability theorem is

```math
\|\beta_J\|_{L^p(d\nu_J)}\le C,
\qquad p>2.
```

With support and mass collapse, Holder gives

```math
\int |\beta_J|^2d\nu_J\le C^2\nu_J(B_J)^{1-2/p}\to0.
```

So BootSquare follows.

## Terminal handoff

```text
BridgeA + DG-Line^sharp + BootSquare
=> D.7mq + SSC-EP.A
=> D.7mr2
=> RPC.3
=> SG.4B.
```

## Exact remaining source boundary

```text
Err_cmp^frame/gamma_J -> 0,
in-plane anisotropy drain,
relative Gramian error control,
lower singular-value floor on positive mass,
weighted support localization for beta_J,
nu_J(B_J) -> 0,
uniform Lp(dnu_J) control for beta_J with p > 2.
```
