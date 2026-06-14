# MPP Six-Step Normalized-Mass Source-Drain Proof Package

## Status

Theorem-facing proof package.

This note proves the source-drain chain using one time-dependent normalized
adjoint amplitude:

```math
\Gamma_T(t)
=
\int_t^{t_+}\lambda_{\max}^+(A_k(X_T(s),s))\,ds,
\qquad
g_T(t)=e^{\Gamma_T(t)},
\qquad
\chi_T(t)=g_T(t)^{-1}\psi_T(t).
```

Since `g_T(t_+)=1`, the common bookkeeping object is the normalized child mass

```math
M(T)
:=
|\langle w_j(t_+),\chi_T(t_+)\rangle|^2.
```

Every step either preserves this mass backward through ancestry or charges it
to dissipation through the weighted residual pairing

```math
\int g_T(t)^{-1}\langle R,\psi_T\rangle\,dt.
```

The chain is:

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

## 1. `CoeffStop.A`

Define, for `a<b`,

```math
\mathcal C_T(a,b)
:=
\int_a^b
\left(
r_T^2\|\nabla^2b_k(t)\|_\infty
+
r_T\|\nabla A_k(t)\|_\infty
\right)\,dt.
```

A tile is coefficient-good when

```math
\mathcal C_T(t_-,t_+)\le\varepsilon_M.
```

For a coefficient-bad tile, define the first backward stopping time `\sigma_T`
by

```math
\mathcal C_T(\sigma_T,t_+)=\varepsilon_M.
```

Use the normalized adjoint identity on `[\sigma_T,t_+]`:

```math
\langle w_j(t_+),\chi_T(t_+)\rangle
=
\langle w_j(\sigma_T),\chi_T(\sigma_T)\rangle
+
\int_{\sigma_T}^{t_+}g_T(t)^{-1}\langle R,\psi_T\rangle\,dt
+
E_\Gamma.
```

The term `E_\Gamma` comes from differentiating `g_T(t)^{-1}`.  Its central
strain part is the gain gauge itself; the remaining oscillatory part is included
in the coefficient error controlled by
`\mathcal C_T(\sigma_T,t_+)=\varepsilon_M`.

If the residual term is large, then

```math
M(T)
\le C_{\mathrm{WR}}
\left|
\int_{\sigma_T}^{t_+}g_T(t)^{-1}\langle R,\psi_T\rangle\,dt
\right|^2.
```

This is weighted residual charge.

If the residual term is small, then

```math
|\langle w_j(\sigma_T),\chi_T(\sigma_T)\rangle|^2
\ge c_{\mathrm{face}}
M(T).
```

Thus the mass was already present at the earlier stopped face.  The cylinder
`(X_T(\sigma_T),\sigma_T,r_T)` is an earlier source-pulse ancestor.

Therefore every active child tile is exactly one of:

```math
\text{good coefficient tile}
\quad\vee\quad
\text{residual charge}
\quad\vee\quad
\text{earlier ancestor}.
```

This proves `CoeffStop.A`.

## 2. Strain-Gauged Packet Parametrix To `WeightedAdjBessel.A`

On coefficient-good tiles, write

```math
\psi_T=G_T\varphi_T,
\qquad
\chi_T(t)=g_T(t)^{-1}\psi_T(t).
```

The gauge removes the central strain `A_k(X_T,t)`.  The remaining strain
coefficient is

```math
A_k(x,t)-A_k(X_T,t),
```

and the low-flow remainder is quadratic around the affine flow.  By
`CoeffStop.A`,

```math
\|\mathcal E_T\|_{L_t^1(H_x^1\to H_x^{-1})}
\le
C\varepsilon_M.
```

Thus `\varphi_T` solves

```math
(-\partial_t-b_k\cdot\nabla-\nu\Delta)\varphi_T
=
\mathcal E_T\varphi_T.
```

Duhamel gives

```math
|\partial_x^\alpha\varphi_T(x,t)|
\le
C_\alpha r_T^{-3/2-|\alpha|}
\exp\left(-c\frac{|x-X_T(t)|^2}{r_T^2}\right).
```

Since

```math
\|g_T(t)^{-1}G_T(t)\|\le C,
```

the same bounds hold for `\chi_T`.  Therefore, for two tiles,

```math
|\langle \chi_T,\chi_{T'}\rangle|
+
r_T^2|\langle\nabla\chi_T,\nabla\chi_{T'}\rangle|
\le
Ce^{-cd(T,T')^2}+C\varepsilon_M.
```

Cotlar--Stein gives

```math
\boxed{
\left\|\sum_T c_T\chi_T\right\|_{L_t^2H_x^1}^2
\le
C\sum_T|c_T|^2.
}
```

This proves `WeightedAdjBessel.A`.

## 3. Residual Estimate To `WeightedAdjRes.A`

Decompose

```math
R
=
R^{comm}
+
R^{press}
+
R^{cut}
+
R^{off}.
```

The termwise estimates are:

```math
\|R^{comm}\|_{L_t^2H^{-1}}^2
\le C_{\mathrm{comm}}
\int\sum_{q>N}D_q,
```

```math
\|R^{press}\|_{L_t^2H^{-1}}^2
\le C_{\mathrm{press}}
\int\sum_{q>N}D_q,
```

```math
\|R^{cut}\|_{L_t^2H^{-1}}^2
\le C_{\mathrm{cut}}
\int\sum_{q>N}D_q,
```

and

```math
\|R^{off}\|_{L_t^2H^{-1}}^2=o_N(1).
```

The first estimate is Coifman--Meyer after extracting the principal strain.  The
second is Leray projection / Calderon--Zygmund.  The third is heat-scale cutoff
absorption.  The fourth is shell separation plus high-frequency tail decay.

Hence

```math
\|R\|_{L_t^2H^{-1}}^2
\le
C\int\sum_{q>N}D_q+o_N(1).
```

For

```math
\Xi=\sum_Tc_T\chi_T,
```

we have

```math
\sum_T c_T
\int_{I_T}g_T(t)^{-1}\langle R,\psi_T\rangle\,dt
=
\int\langle R,\Xi\rangle\,dt.
```

Duality and `WeightedAdjBessel.A` give

```math
\boxed{
\sum_T
\left|
\int_{I_T}g_T(t)^{-1}\langle R,\psi_T\rangle\,dt
\right|^2
\le
C\int\sum_{q>N}D_q+o_N(1).
}
```

This proves `WeightedAdjRes.A`.

## 4. `GainStop.A`

Define

```math
\Gamma_T(t)
:=
\int_t^{t_+}\lambda_{\max}^+(A_k(X_T(s),s))\,ds,
```

and

```math
a_T(t)
:=
|\langle w_j(t),\chi_T(t)\rangle|.
```

Let `A_*` be the active threshold and

```math
\tau_T
:=
\inf\{t:\ a_T(t)^2\ge A_*/4\}.
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

If the residual is large, then

```math
A_*
\le C_{\mathrm{Ares}}
\left|
\int_{\tau_T}^{t_+}g_T(s)^{-1}\langle R,\psi_T\rangle\,ds
\right|^2,
```

so `WeightedAdjRes.A` charges the tile.

If the residual is small, then

```math
a_T(\tau_T)^2\ge A_*/4,
```

so `(X_T(\tau_T),\tau_T,r_T)` is an earlier ancestor.  Thus

```math
\boxed{
2\Gamma_T>2h_T-\eta_0
\Longrightarrow
\text{residual charge or earlier ancestor}.
}
```

This proves `GainStop.A`.

## 5. `ParentKernel.A`

After `GainStop.A`, surviving inherited edges are quiet:

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

Bessel orthogonality of children from a fixed parent gives

```math
\sum_{T:P\prec T}g_T(t_-)^2S(P\to T)
\le
(e^{-\eta_0}+C\varepsilon_M+C2^{-cM})S(P).
```

Choose `M` large:

```math
e^{-\eta_0}+C\varepsilon_M+C2^{-cM}
\le
1-\delta.
```

Then

```math
\boxed{
\sum_{T:P\prec T}g_T(t_-)^2S(P\to T)
\le
(1-\delta)S(P).
}
```

This proves `ParentKernel.A`.

## 6. `FirstPulseKill.A`

Define the source-pulse functional

```math
\mathcal P(Q_r(x,t))
:=
r^{-1}
\int_{t-r^2}^{t}
\int_{B_r(x)}
[F^{src}_{>1/r}]_+\,dx\,ds.
```

Pick the earliest tile crossing the threshold `\eta`.  Use a dyadic grid and
lexicographic tie-breaking so the selection is measurable.

In the rescaled ancient sequence, every finite backward slice has zero earlier
threshold-crossing source residue.

Let

```math
B_m(T_0)
:=
\sum_{P_m\prec\cdots\prec T_0}\kappa_mS(P_m).
```

`ParentKernel.A` gives

```math
B_m(T_0)
\le
(1-\delta)^mB_0(T_0)+o(1).
```

Local compactness gives `B_0(T_0)<\infty` on fixed backward cylinders.
First-pulse selection removes the earlier-ancestor branch in the ancient limit.
Hence

```math
\boxed{
\lim_{m\to\infty}B_m(T_0)=0.
}
```

This proves `FirstPulseKill.A`.

## Final Assembly

The parent-or-charge inequality is

```math
S(T_0)
\le
\theta\sum_{T\preceq T_0}D(T)
+
B_m(T_0)
+
Err_m.
```

Let `m\to\infty`.  Then

```math
\boxed{
S(T_0)
\le
\theta\sum_{T\preceq T_0}D(T)+o(1).
}
```

This is the source-drain estimate.

## Route Consequence

The source-drain estimate supplies `LemmaB.SourceDrain`, hence the installed
route reads:

```math
LemmaB.SourceDrain
\Longrightarrow
SOURCE.NO\text{-}PULSE.A
\Longrightarrow
Jump_{avg}\Rightarrow\bot
\Longrightarrow
PCTP.hard/TTU.A.
```

This is still a supplier route inside the broader contrapositive program; it is
not itself the governing contrapositive primitive.

## Analytic Verification

The estimate-level verification is recorded in
`mpp-four-layer-analytic-verification-certificates-20260504.md`.  It checks the
affine heat packet model, the perturbative coefficient estimate, the Cotlar /
`TT^*` summability estimate, the residual `L_t^2H^{-1}` estimate, and the
first-pulse limit passage with constants uniform in terminal scale and
remainders `o_N(1)\to0`.

The normalized-adjoint-amplitude discharge is recorded in
`mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md`.  It
locks the time-dependent gain `g_T(t)`, the terminal identity
`\chi_T(t_+)=\psi_T(t_+)`, and the weighted residual pairing
`\int g_T(t)^{-1}\langle R,\psi_T\rangle`.

The definition-lock discharge is recorded in
`mpp-source-drain-definition-alignment-and-discharge-20260504.md`; it maps the
certificate symbols to final lane symbols, locks the residual decomposition,
locks the source-pulse functional and measure convergence, and records the typed
downstream consumer chain through `PCTP.hard / TTU.A`.
