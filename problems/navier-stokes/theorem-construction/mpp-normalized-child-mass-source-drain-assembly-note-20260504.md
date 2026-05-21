# MPP Normalized Child Mass Source-Drain Assembly Note

## Status

Discharged proof assembly.

This note records the clean chain proving the local source-drain estimate using
the time-dependent normalized adjoint amplitude

```math
\Gamma_T(t)
=
\int_t^{t_+}\lambda_{\max}^+(A_k(X_T(s),s))\,ds,
\qquad
g_T(t)=e^{\Gamma_T(t)},
\qquad
\chi_T(t)=g_T(t)^{-1}\psi_T(t).
```

Since `g_T(t_+)=1`, the conserved bookkeeping object is the normalized child
mass

```math
M(T)
:=
|\langle w_j(t_+),\chi_T(t_+)\rangle|^2.
```

The normalization removes central strain gain from the child amplitude and
sends that gain into the parent kernel, where quiet-edge contraction can see it.

## Chain

The target chain is:

```math
CoeffStop.A
\Longrightarrow
WeightedAdjBessel.A
\Longrightarrow
WeightedAdjRes.A
\Longrightarrow
GainStop.A
\Longrightarrow
ParentKernel.A
\Longrightarrow
FirstPulseKill.A
\Longrightarrow
LemmaB.SourceDrain.
```

This remains a supplier route toward `SOURCE.NO-PULSE.A`, not the governing
contrapositive primitive by itself.

## 1. `CoeffStop.A -> WeightedAdjBessel.A`

Coefficient stopping keeps only tiles with

```math
\mathcal C(T)
=
\int_{I_T}
\left(
r_T^2\|\nabla^2b_k\|_\infty
+
r_T\|\nabla A_k\|_\infty
\right)\,dt
\le
\varepsilon_M.
```

On these tiles, after central strain gauging,

```math
\psi_T=G_T\varphi_T,
\qquad
\chi_T(t)=g_T(t)^{-1}\psi_T(t),
```

the equation for `\varphi_T` is an affine heat packet equation plus perturbation

```math
\|\mathcal E_T\|_{L_t^1(H_x^1\to H_x^{-1})}
\le
C\varepsilon_M.
```

Duhamel gives Gaussian packet bounds and almost orthogonality:

```math
|\langle \chi_T,\chi_{T'}\rangle|
+
2^{-2j}|\langle\nabla\chi_T,\nabla\chi_{T'}\rangle|
\le
Ce^{-cd(T,T')^2}+C\varepsilon_M.
```

Cotlar--Stein then gives

```math
\left\|\sum_Tc_T\chi_T\right\|_{L_t^2H_x^1}^2
\le
C\sum_T|c_T|^2.
```

Stopped tiles do not enter the Bessel family.  They are routed to weighted
residual charge or earlier ancestry by the stopped-segment adjoint identity.

## 2. `WeightedAdjBessel.A -> WeightedAdjRes.A`

Use duality.  For `\sum_T|c_T|^2=1`, set

```math
\Xi=\sum_Tc_T\chi_T.
```

Then

```math
\sum_T c_T
\int_{I_T}g_T(t)^{-1}\langle R,\psi_T\rangle\,dt
=
\int\langle R,\Xi\rangle\,dt.
```

`WeightedAdjBessel.A` gives

```math
\|\Xi\|_{L_t^2H_x^1}\le C.
```

The residual estimate is

```math
\|R\|_{L_t^2H_x^{-1}}^2
\le
C\int\sum_{q>N}D_q+o_N(1).
```

Therefore

```math
\sum_T
\left|
\int_{I_T}g_T(t)^{-1}\langle R,\psi_T\rangle\,dt
\right|^2
\le
C\int\sum_{q>N}D_q+o_N(1).
```

This is `WeightedAdjRes.A`.

## 3. `WeightedAdjRes.A -> GainStop.A`

For a high-gain tile define

```math
a_T(t)
=
|\langle w_j(t),\chi_T(t)\rangle|.
```

Let `\tau_T` be the first time

```math
a_T(\tau_T)^2\ge A_*/4.
```

The adjoint identity gives

```math
a_T(t_+)
\le
a_T(\tau_T)
+
\left|
\int_{\tau_T}^{t_+}g_T(s)^{-1}\langle R,\psi_T\rangle\,ds
\right|.
```

Large residual gives weighted residual charge.  Small residual gives

```math
a_T(\tau_T)^2\ge A_*/4,
```

so `(X_T(\tau_T),\tau_T,r_T)` is an earlier active ancestor.  Thus high-gain
edges become charge or ancestry.

## 4. `GainStop.A -> ParentKernel.A`

After removing high-gain stopped edges, surviving quiet edges satisfy

```math
2\Gamma_T\le2h_T-\eta_0.
```

Heat leakage gives

```math
\|\chi_T(t_-)\|_2^2
\le
e^{-2h_T}+C\varepsilon_M+C2^{-cM}.
```

Therefore

```math
g_T(t_-)^2\|\chi_T(t_-)\|_2^2
\le
e^{-\eta_0}+C\varepsilon_M+C2^{-cM}.
```

Bessel orthogonality over children of one parent gives

```math
\sum_{T:P\prec T}g_T(t_-)^2S(P\to T)
\le
(e^{-\eta_0}+C\varepsilon_M+C2^{-cM})S(P).
```

Choose `M` large so

```math
e^{-\eta_0}+C\varepsilon_M+C2^{-cM}\le1-\delta.
```

Then

```math
\sum_{T:P\prec T}g_T(t_-)^2S(P\to T)
\le
(1-\delta)S(P).
```

This is `ParentKernel.A`.

## 5. `ParentKernel.A -> FirstPulseKill.A`

Let

```math
B_m(T_0)
=
\sum_{P_m\prec\cdots\prec T_0}\kappa_mS(P_m)
```

be depth-`m` inherited mass.  `ParentKernel.A` gives

```math
B_m(T_0)
\le
(1-\delta)^mB_0(T_0)
+
\text{charge/ancestor terms}.
```

`GainStop.A` sends stopped branches to charge or earlier ancestry.
First-pulse selection removes earlier ancestry in the ancient limit.  Weighted
residual charge is already paid by dissipation.  Therefore

```math
\lim_{m\to\infty}B_m(T_0)=0.
```

## Assembly

The parent-or-charge inequality has the form

```math
S(T_0)
\le
\theta\sum_{T\preceq T_0}D(T)
+
B_m(T_0)
+
Err_m.
```

Letting `m\to\infty` gives

```math
S(T_0)
\le
\theta\sum_{T\preceq T_0}D(T)+o(1).
```

This is the source-drain estimate behind `LemmaB.SourceDrain`.

The six-step proof package
`mpp-six-step-normalized-mass-source-drain-proof-package-20260504.md` expands
these arrows into proof steps for `CoeffStop.A`, `WeightedAdjBessel.A`,
`WeightedAdjRes.A`, `GainStop.A`, `ParentKernel.A`, and `FirstPulseKill.A`.
The analytic verification certificates are recorded in
`mpp-four-layer-analytic-verification-certificates-20260504.md`.
The normalized-adjoint-amplitude discharge is recorded in
`mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md`.
The definition alignment and discharge note is
`mpp-source-drain-definition-alignment-and-discharge-20260504.md`.
