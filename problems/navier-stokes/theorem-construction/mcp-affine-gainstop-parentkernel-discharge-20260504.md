# Affine gain-stop and parent-kernel discharge `AGP.A`

## Status

Claimed local discharge of `GainStop.A` and the quiet parent-kernel contraction in the affine packet metric.

## Statement

For a child tile `T`, define

```math
\Gamma_T(t)=\int_t^{t_+}\lambda_{\max}^+(A_k(X_T(s),s))ds,
\qquad
h_T(t)=\nu r_T^{-2}(t_+-t),
\qquad
g_T(t)=e^{\Gamma_T(t)}.
```

Let

```math
a_T(t)=g_T(t)^{-1}|\langle w_j(t),\psi_T(t)\rangle|.
```

If the edge is active at `t_+` and satisfies

```math
2\Gamma_T>2h_T-\eta_0,
```

then the edge is routed into exactly one of two legal outputs:

```math
\text{weighted residual charge}
\quad\text{or}\quad
\text{earlier source-pulse ancestor}.
```

After these gain-stop and coefficient-stop edges are removed from the inherited kernel, every remaining quiet edge satisfies

```math
2\Gamma_T\le2h_T-\eta_0.
```

For the quiet family,

```math
\sum_{T:P\prec T}g_T^2S(P\to T)
\le(1-\delta)S(P).
```

This is `ParentKernel.A` in the affine packet metric.

## Proof

The normalized adjoint identity gives, for any `t\in I_T`,

```math
 g_T(t)^{-1}\langle w_j(t_+),\psi_T(t_+)\rangle
=
\langle w_j(t),\chi_T(t)\rangle
+g_T(t)^{-1}\int_t^{t_+}\langle R,\psi_T\rangle ds.
```

Fix the first crossing time

```math
\tau_T=\inf\{t\in I_T:a_T(t)^2\ge A_*/4\}.
```

If

```math
 g_T(\tau_T)^{-1}\left|\int_{\tau_T}^{t_+}\langle R,\psi_T\rangle ds\right|
\ge \frac12 a_T(t_+),
```

then active terminal mass gives

```math
A_*\le C_A
 g_T(\tau_T)^{-2}\left|\int_{\tau_T}^{t_+}\langle R,\psi_T\rangle ds\right|^2.
```

This is exactly the weighted residual charge controlled by `WeightedAdjRes.A`.

If the displayed residual inequality fails, the same identity gives

```math
a_T(\tau_T)\ge\frac12a_T(t_+),
```

hence

```math
a_T(\tau_T)^2\ge A_*/4.
```

The affine heat cylinder centered at `(X_T(\tau_T),\tau_T)` with scale `r_T` is an earlier active source-pulse ancestor. This proves `GainStop.A`.

The same representation with `\sigma_T` in place of `\tau_T` proves the coefficient-stop dichotomy: coefficient-stopped tiles enter the residual charge ledger or the earlier ancestor ledger.

For a surviving quiet edge,

```math
2\Gamma_T\le2h_T-\eta_0.
```

Affine heat leakage gives

```math
\|\chi_T(t_-)\|_2^2
\le e^{-2h_T}+C\varepsilon_M+C2^{-cM}.
```

Multiplying by `g_T^2=e^{2\Gamma_T}` yields

```math
 g_T^2\|\chi_T(t_-)\|_2^2
\le e^{-\eta_0}+C\varepsilon_M+C2^{-cM}.
```

The affine Bessel estimate for outgoing child packets gives

```math
\sum_{T:P\prec T}^{quiet} |\langle\phi_P,\widetilde\chi_T(t_-)\rangle|^2
\le1+C\varepsilon_M+C2^{-cM}.
```

Therefore

```math
\sum_{T:P\prec T}^{quiet}g_T^2S(P\to T)
\le(e^{-\eta_0}+C\varepsilon_M+C2^{-cM})S(P).
```

Choose `M` so the parenthesis is at most `1-\delta`. This proves the quiet parent-kernel contraction.

## Consequence

`AGP.A` supplies the exact parent-kernel input for the source-drain assembly:

```math
WeightedAdjRes.A+AGP.A+FPK.A\Longrightarrow LemmaB.SourceDrain.
```
