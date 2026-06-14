# Adjoint strain-gauge parent-kernel conditional discharge packet

## Status

This packet gives a conditional discharge of the five requested gates.  It proves the chain under explicit admissibility hypotheses on the tile atlas, strain-gauged packet parametrix, residual decomposition, and first-pulse selection.  These hypotheses are recorded as live proof obligations for an unconditional source-pulse discharge.

## Setup

Let

```math
L_{j,k}=\partial_t+b_k\cdot\nabla-\nu\Delta-A_k,
\qquad b_k=u_{\le k},
```

and let the localized packet equation be

```math
L_{j,k}w_j=R_{j,k}.
```

For each positive-alignment child tile `T`, let `\psi_T` solve

```math
L_{j,k}^*\psi_T=0
```

with terminal wave-packet data at `t_+(T)`.  Let

```math
\Gamma_T=\int_{I_T}\lambda_{\max}^+(A_k(X_T(t),t))\,dt,
\qquad g_T=e^{\Gamma_T},
\qquad \chi_T=g_T^{-1}\psi_T.
```

The adjoint identity is

```math
\langle w_j(t_+),\psi_T(t_+)\rangle
=
\langle w_j(t_-),\psi_T(t_-)\rangle
+\int_{I_T}\langle R_{j,k},\psi_T\rangle\,dt.
```

Equivalently,

```math
g_T^{-1}\langle w_j(t_+),\psi_T(t_+)\rangle
=
\langle w_j(t_-),\chi_T(t_-)\rangle
+g_T^{-1}\int_{I_T}\langle R_{j,k},\psi_T\rangle\,dt.
```

## 1. Conditional proof of `WeightedAdjBessel.A`

Assume the strain-gauged packet parametrix.  Namely, after writing

```math
\psi_T(x,t)=G_T(t)\varphi_T(x,t),
```

where `G_T` removes the central matrix coefficient along `X_T`, the packet `\varphi_T` obeys Gaussian heat-tube bounds

```math
|\partial_x^\alpha\varphi_T(x,t)|
\le C_\alpha 2^{(3/2+|\alpha|)j_T}
\exp(-c2^{2j_T}|x-X_T(t)|^2)
```

and its oscillatory strain errors contribute at most `C_M2^{-M}`. Since

```math
\|g_T^{-1}G_T(t)\|\le C,
```

the normalized packets `\chi_T=g_T^{-1}\psi_T` obey the same frame bounds up to fixed constants.

For two tiles, the heat-tube estimates give

```math
|\langle\chi_T(t),\chi_{T'}(t)\rangle|
+2^{-2j_T}|\langle\nabla\chi_T(t),\nabla\chi_{T'}(t)\rangle|
\le C\exp(-c d(T,T')^2)+C2^{-cM}.
```

The tile atlas has bounded phase-space overlap.  Cotlar--Stein yields

```math
\left\|\sum_T c_T\chi_T\right\|_{L_t^2H_x^1}^2
\le C\sum_T|c_T|^2.
```

This is `WeightedAdjBessel.A` under the packet-parametrix hypothesis.

## 2. Conditional proof of `WeightedAdjRes.A`

For arbitrary coefficients with `\sum_T|c_T|^2=1`, define

```math
\Xi=\sum_T c_T\chi_T.
```

Then

```math
\sum_T c_T g_T^{-1}\int_{I_T}\langle R,\psi_T\rangle\,dt
=\int\langle R,\Xi\rangle\,dt.
```

By `WeightedAdjBessel.A`,

```math
\|\Xi\|_{L_t^2H_x^1}\le C.
```

Assume the residual estimate

```math
\|R\|_{L_t^2H_x^{-1}}^2
\le C\int\sum_{q>N}D_q+o_N(1).
```

Then duality gives

```math
\left|\int\langle R,\Xi\rangle\,dt\right|^2
\le C\int\sum_{q>N}D_q+o_N(1).
```

Taking the supremum over unit `\ell^2` coefficient families gives

```math
\sum_T g_T^{-2}
\left|\int_{I_T}\langle R,\psi_T\rangle\,dt\right|^2
\le C\int\sum_{q>N}D_q+o_N(1).
```

This is `WeightedAdjRes.A`, conditional on the residual `L_t^2H_x^{-1}` estimate.

## 3. Proof of `GainStop.A` from the adjoint identity

For a tile `T`, define partial gain and heat damping

```math
\Gamma_T(t)=\int_t^{t_+}\lambda_{\max}^+(A_k(X_T(s),s))\,ds,
\qquad h_T(t)=\nu 2^{2j_T}(t_+-t),
```

and

```math
a_T(t)=e^{-\Gamma_T(t)}|\langle w_j(t),\psi_T(t)\rangle|.
```

Let `A_*` be the active threshold at the child face and let

```math
\tau_T=\inf\{t\in I_T:a_T(t)^2\ge A_*/4\}.
```

If

```math
e^{-\Gamma_T(\tau_T)}
\left|\int_{\tau_T}^{t_+}\langle R,\psi_T\rangle\,ds\right|
\ge \frac12 a_T(t_+),
```

then

```math
A_*\le C_Ae^{-2\Gamma_T(\tau_T)}
\left|\int_{\tau_T}^{t_+}\langle R,\psi_T\rangle\,ds\right|^2,
```

so the tile is paid by the weighted residual charge.

If the displayed residual inequality fails, the adjoint identity gives

```math
a_T(\tau_T)\ge \frac12 a_T(t_+),
```

and hence

```math
a_T(\tau_T)^2\ge A_*/4.
```

The heat cylinder centered at `(X_T(\tau_T),\tau_T)` at scale `2^{-j_T}` is therefore an earlier active ancestor.  Thus every high-gain stopped edge satisfies

```math
2\Gamma_T>2h_T-\eta_0
\Longrightarrow
\text{weighted residual charge or earlier source-pulse ancestor}.
```

This proves `GainStop.A` once the active-threshold selection and ancestor-cylinder measurability are fixed.

## 4. Conditional proof of `QuietEdgeBesselContraction.A`

A surviving quiet edge satisfies

```math
2\Gamma_T\le 2h_T-\eta_0.
```

The normalized backward packet obeys the heat leakage estimate

```math
\|\chi_T(t_-)\|_2^2\le e^{-2h_T}+C2^{-cM}.
```

Therefore

```math
g_T^2\|\chi_T(t_-)\|_2^2
\le e^{2\Gamma_T}e^{-2h_T}+C2^{-cM}
\le e^{-\eta_0}+C2^{-cM}.
```

The outgoing child packets from a fixed parent obey Bessel almost-orthogonality.  Hence

```math
\sum_{T:P\prec T}g_T^2S(P\to T)
\le (e^{-\eta_0}+C2^{-cM})S(P).
```

Choose `M` so large that

```math
e^{-\eta_0}+C2^{-cM}\le 1-\delta.
```

Then

```math
\sum_{T:P\prec T}g_T^2S(P\to T)
\le (1-\delta)S(P).
```

This is `QuietEdgeBesselContraction.A`.

## 5. Conditional proof of `FirstPulseKill.A`

Let `B_m(T_0)` denote the total weighted mass of depth-`m` ancestors in the backward iteration:

```math
B_m(T_0)=\sum_{P_m\prec\cdots\prec T_0}\kappa_m S(P_m).
```

After `GainStop.A`, all high-gain branches are converted into residual charges or earlier source-pulse ancestors.  First-pulse selection removes the earlier source-pulse ancestor alternative in the ancient limit.  The remaining branches are quiet and contractive, so

```math
B_m(T_0)\le (1-\delta)^m B_0(T_0)+o(1).
```

Local energy compactness gives a finite bound for `B_0(T_0)` on every fixed backward cylinder.  Therefore

```math
\lim_{m\to\infty}B_m(T_0)=0.
```

This is `FirstPulseKill.A` under first-pulse selection and finite local source-mass compactness.

## Consequence

Combining the five gates gives the conditional drain estimate

```math
S(T_0)
\le \theta\sum_{T\preceq T_0}D(T)+o(1).
```

This is the desired local form of `LemmaB.SourceDrain`.

## Gap ledger

The conditional proof depends on four live analytic obligations:

1. construction of the strain-gauged adjoint packet parametrix from the localized Navier-Stokes coefficients;
2. proof that oscillatory strain errors after gauging are bounded by `C_M2^{-M}` in the heat-scale packet calculus;
3. termwise proof of the residual `L_t^2H_x^{-1}` estimate for commutator, pressure, cutoff, and off-packet pieces;
4. measurable first-crossing / ancestor selection compatible with source-residue compactness in the ancient limit.

The five requested gates are therefore conditionally linked, and the unconditional proof is reduced to the four obligations above.
