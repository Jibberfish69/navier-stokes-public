# BridgeA DG-Line BootSquare Terminal Proof Packet

## Status

Conditional terminal proof packet for the local SG.4/TPS branch.

The branch closes from these three analytic hypotheses:

```text
BridgeA tensor comparison,
DG-Line^sharp dominated splitting,
BootSquare weighted square packet.
```

## 1. BridgeA tensor comparison

Define

```math
\Delta_J:=C_{al}-C_{CG},
\qquad
\delta_J:=\|\Delta_J\|_{op}.
```

Assume `C_al` and `C_CG` are symmetric tensors on the same retained family and both have simple-top gap at least `gamma_J>0`. Let `P_al` and `P_J^CG` denote their top projectors. Davis-Kahan gives

```math
\|P_{al}-P_J^{CG}\|_F
\le
C\frac{\delta_J}{\gamma_J}.
```

Thus

```math
\delta_J/\gamma_J\to0
\Longrightarrow
BridgeA.
```

The remaining concrete BridgeA task is to prove

```math
\|C_{al}-C_{CG}\|_{op}=o(\gamma_J)
```

for the chosen definitions of the aligned and current CG tensors.

## 2. DG-Line^sharp dominated splitting

Let `H_J` be the fixed-frame reduced cocycle on the transported two-plane, and set

```math
A_J:=H_J^*H_J.
```

Assume

```math
\partial_t H_J=K_{\parallel,J}H_J+E_{H,J}.
```

Then

```math
\partial_t A_J
=H_J^*(K_{\parallel,J}^*+K_{\parallel,J})H_J+E_{A,J}.
```

Let `lambda_1>=lambda_2>0` be the eigenvalues of `A_J`. Under the in-plane anisotropy drain

```math
\langle u_1,S_{\parallel,J}u_1\rangle
-
\langle u_2,S_{\parallel,J}u_2\rangle
\ge
\delta_*-r_J(t),
```

and the relative Gramian error bound

```math
\|E_{A,J}\|_{op}\le \varepsilon_{A,J}\lambda_2,
```

one obtains

```math
\frac{d}{dt}\log\frac{\lambda_2}{\lambda_1}
\le
-2\delta_*+2r_J(t)+C\varepsilon_{A,J}(t).
```

If on a positive-mass subfamily

```math
\int_I(2r_J+C\varepsilon_{A,J})dt
\le
\delta_*|I|,
```

then

```math
\frac{\lambda_2(t)}{\lambda_1(t)}
\le
\frac{\lambda_2(t_0)}{\lambda_1(t_0)}e^{-\delta_*|I|}.
```

Hence, after threshold extraction on positive mass,

```math
\sigma_2(H_J)/\sigma_1(H_J)
\le q<1.
```

This proves `DG-Line^sharp` under the drain and Gramian-error hypotheses.

## 3. BootSquare by weighted bad set

Let

```math
\beta_J:=\Lambda_J^{boot}\eta_J^{boot},
\qquad
d\nu_J:=M_J^2d\mu_J.
```

BootSquare is

```math
\int_{\mathcal G_J}|\beta_J|^2d\nu_J=o_J(1).
```

Assume

```math
\operatorname{supp}\beta_J\subseteq B_J,
\qquad
\nu_J(B_J)\to0,
\qquad
\|\beta_J\|_{L^p(d\nu_J)}\le C_p,
\qquad p>2.
```

Holder gives

```math
\int_{\mathcal G_J}|\beta_J|^2d\nu_J
=
\int_{B_J}|\beta_J|^2d\nu_J
\le
C_p^2\nu_J(B_J)^{1-2/p}	o0.
```

Thus the weighted bad-set theorem proves BootSquare.

## 4. Terminal assembly

On the retained family:

```text
BridgeA + DG-Line^sharp + BootSquare
=> D.7mq + SSC-EP.A
=> D.7mr2
=> RPC.3
=> SG.4B.
```

## Exact live proof obligations

```text
1. Prove ||C_al-C_CG||_op = o(gamma_J).
2. Prove the in-plane anisotropy drain and Gramian error bounds for H_J on positive mass.
3. Prove the weighted bad-set theorem for beta_J = Lambda_J^boot eta_J^boot.
```