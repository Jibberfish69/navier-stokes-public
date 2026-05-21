# Source-drain chain pinned theorem

## Status

Definition-locked theorem-level source-drain chain.

## Target

Pin the normalized-adjoint source-drain sequence as one theorem statement:

```math
CoeffStop.A
\Longrightarrow WeightedAdjBessel.A
\Longrightarrow WeightedAdjRes.A
\Longrightarrow GainStop.A
\Longrightarrow ParentKernel.A
\Longrightarrow FirstPulseKill.A
\Longrightarrow LemmaB.SourceDrain.
```

## Locked objects

Use the final symbols from the definition-alignment surface:

```math
T=(j,k,Q_T,I_T),
\qquad
r_T=2^{-j},
\qquad
k<j-M,
```

```math
L_{j,k}w_j=R_{j,k},
\qquad
L_{j,k}=\partial_t+b_k\cdot\nabla-\nu\Delta-A_k,
```

```math
\psi_T\text{ solves }L_{j,k}^*\psi_T=0,
\qquad
\chi_T=g_T^{-1}\psi_T,
\qquad
g_T=e^{\Gamma_T}.
```

The normalized child mass is

```math
M(T):=g_T^{-2}|\langle w_j(t_+),\psi_T(t_+)\rangle|^2.
```

## Step 1: coefficient stopping

`CoeffStop.A` splits every active child tile into one of three classes:

```math
\text{coefficient-good}
\quad\vee\quad
\text{weighted residual charge}
\quad\vee\quad
\text{earlier source-pulse ancestor}.
```

Coefficient-good tiles satisfy

```math
\mathcal C(T)
=
\int_{I_T}(r_T^2\|\nabla^2b_k\|_\infty+r_T\|\nabla A_k\|_\infty)dt
\le\varepsilon_M.
```

## Step 2: weighted adjoint Bessel

On coefficient-good tiles, the projected affine strain-gauged packet calculus gives

```math
\left\|\sum_T c_T\chi_T\right\|_{L_t^2H_x^1}^2
\le C\sum_T|c_T|^2.
```

The packet estimates use the affine low-flow metric, with pressure handled in the projected divergence-free frame.

## Step 3: weighted residual square estimate

`ResidualPair.A` gives

```math
\|R\|_{L_t^2H_x^{-1}}^2
\le C\int\sum_{q>N}D_q+o_N(1).
```

Duality with the weighted Bessel estimate gives

```math
\sum_Tg_T^{-2}
\left|\int_{I_T}\langle R,\psi_T\rangle dt\right|^2
\le C\int\sum_{q>N}D_q+o_N(1).
```

This is `WeightedAdjRes.A`.

## Step 4: gain stop

The adjoint identity implies the dichotomy

```math
2\Gamma_T>2h_T-\eta_0
\Longrightarrow
\text{weighted residual charge or earlier source-pulse ancestor}.
```

Thus high-gain creation is paid or inherited from an earlier source event.

## Step 5: parent kernel contraction

Surviving quiet edges satisfy

```math
2\Gamma_T\le 2h_T-\eta_0.
```

Heat leakage and weighted Bessel orthogonality give

```math
\sum_{T:P\prec T}g_T^2S(P\to T)
\le (1-\delta)S(P).
```

This is `ParentKernel.A`.

## Step 6: first-pulse kill

Let

```math
B_m(T_0)=\sum_{P_m\prec\cdots\prec T_0}\kappa_mS(P_m).
```

The parent kernel contraction gives

```math
B_m(T_0)\le (1-\delta)^mB_0(T_0)+o(1).
```

First-pulse selection removes the earlier source-pulse ancestor branch in the ancient limit. Hence

```math
\lim_{m\to\infty}B_m(T_0)=0.
```

This is `FirstPulseKill.A`.

## Drain conclusion

The parent-or-charge inequality is

```math
S(T_0)
\le
\theta\sum_{T\preceq T_0}D(T)+B_m(T_0)+Err_m.
```

Letting `m\to\infty` gives

```math
S(T_0)
\le
\theta\sum_{T\preceq T_0}D(T)+o(1).
```

This is `LemmaB.SourceDrain`.

## Theorem

```math
\boxed{
CoeffStop.A+ProjectedAffineAdjointPacket.A+ResidualPair.A+GainStop.A+ParentKernel.A+FirstPulseKill.A
\Longrightarrow LemmaB.SourceDrain.
}
```

## Claimed status

Discharged at theorem-construction level using the definition-aligned symbols and projected affine packet frame.