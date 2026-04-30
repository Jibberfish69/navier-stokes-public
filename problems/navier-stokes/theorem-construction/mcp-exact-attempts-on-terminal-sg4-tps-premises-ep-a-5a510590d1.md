# Exact Attempts On Terminal SG4 TPS Premises

## Status

Conditional terminal theorem.

The local branch closes from three analytic premises:

```text
BridgeA,
DG-Line^sharp,
BootSquare.
```

## 1. BridgeA

Let

```math
\delta_J:=\|C_{al}-C_{CG}\|_{op},
```

and let `gamma_J` be a shared top-gap floor for both tensors on the retained family.
For the corresponding top projectors, Davis-Kahan gives

```math
\|P_{al}-P_J^{CG}\|_F
\le C\,\delta_J/\gamma_J.
```

Therefore

```math
\delta_J/\gamma_J\to0
\Longrightarrow
BridgeA.
```

The remaining BridgeA proof obligation is the tensor-comparison estimate

```math
\delta_J/\gamma_J\to0.
```

## 2. DG-Line sharp

Let `H_J` be the reduced cocycle on the transported two-plane. Assume on a positive-mass subfamily

```math
\sigma_2(H_J)/\sigma_1(H_J)\le q<1.
```

Then

```math
\sigma_1(H_J)^2-\sigma_2(H_J)^2
\ge
(1-q^2)\sigma_1(H_J)^2.
```

With a positive lower singular-value floor on that subfamily, this gives a positive aligned entrance gap. Hence `DG-Line^sharp` follows.

The remaining DG-Line proof obligation is positive-mass dominated splitting of `H_J`, including the lower singular-value floor needed to extract a quantitative gap.

## 3. BootSquare

Let

```math
\beta_J:=\Lambda_J^{boot}\eta_J^{boot},
qquad
d\nu_J:=M_J^2d\mu_J.
```

BootSquare is

```math
\int_{\mathcal G_J}|\beta_J|^2d\nu_J=o_J(1).
```

A sufficient route is the weighted bad-set theorem: if

```math
\operatorname{supp}\beta_J\subseteq B_J,
\qquad
\nu_J(B_J)\to0,
\qquad
\|\beta_J\|_{L^p(d\nu_J)}\le C_p,
\qquad p>2,
```

then Holder gives

```math
\int |\beta_J|^2d\nu_J
\le
C_p^2\nu_J(B_J)^{1-2/p}	o0.
```

A second sufficient route is weighted reverse Holder: reverse Holder on the active doubling window gives `L^{2+epsilon}` control by Gehring; with weighted bad-set support, the previous argument gives BootSquare.

The remaining BootSquare proof obligation is one of these sufficient routes, or another proof of the weighted square packet.

## Terminal handoff

Once the three premises hold on one retained family,

```text
BridgeA + DG-Line^sharp + BootSquare
=> D.7mq + SSC-EP.A
=> D.7mr2
=> RPC.3
=> SG.4B.
```

## Exact remaining proof obligations

```text
delta_J/gamma_J -> 0,
positive-mass dominated splitting of H_J with a quantitative gap floor,
BootSquare through weighted bad-set Lp control or weighted reverse Holder.
```