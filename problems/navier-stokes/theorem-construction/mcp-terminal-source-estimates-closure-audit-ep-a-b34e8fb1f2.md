# Terminal Source Estimates Closure Audit

## Status

Failed as an unconditional proof from current canonical surfaces.

The displayed implication chain is conditional on the following source
estimates. These estimates remain unproved from the current canonical surfaces:

```text
Err_cmp^frame / gamma_J -> 0,
in-plane anisotropy drain,
relative Gramian error control,
lower singular-value floor on positive mass,
weighted support localization for beta_J,
nu_J(B_J) -> 0,
uniform Lp(dnu_J) control for beta_J with p > 2.
```

## BridgeA

Current surfaces reduce BridgeA to:

```math
Err_{cmp}^{frame}/\gamma_J\to0.
```

Then Davis-Kahan gives:

```math
\|P_{al}-P_J^{CG}\|_F\to0.
```

## DG-Line sharp

Current surfaces reduce DG-Line sharp to:

```text
in-plane anisotropy drain,
relative Gramian error control,
lower singular-value floor on positive mass.
```

Together these yield:

```math
\sigma_2(H_J)/\sigma_1(H_J)\le q<1.
```

## BootSquare

Current surfaces reduce BootSquare to:

```math
\beta_J:=\Lambda_J^{boot}\eta_J^{boot},
\qquad d\nu_J:=M_J^2d\mu_J,
```

plus

```text
supp beta_J subset B_J,
nu_J(B_J) -> 0,
||beta_J||_{Lp(dnu_J)} <= C, p > 2.
```

Holder then gives:

```math
\int |\beta_J|^2d\nu_J=o_J(1).
```

## Terminal handoff

```text
BridgeA + DG-Line sharp + BootSquare
=> D.7mq + SSC-EP.A
=> D.7mr2
=> RPC.3
=> SG.4B.
```

## Exact remaining source boundary

```text
Err_cmp^frame / gamma_J -> 0,
in-plane anisotropy drain,
relative Gramian error control,
lower singular-value floor on positive mass,
weighted support localization for beta_J,
nu_J(B_J) -> 0,
uniform Lp(dnu_J) control for beta_J with p > 2.
```
