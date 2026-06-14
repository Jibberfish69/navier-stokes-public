# Ordered QSP.11r-To-SG.4B Branch-Local Completion Attempt

## Status

Conditional branch-local theorem-note artifact.

The ordered chain closes from explicit source packets. The source packets remain the active mathematical inputs.

## Ordered proof

### 1. Diagonal-density source

Assume each parent stopped cell `Q` carries a center `a_Q`, each terminal sector cell `Q_s^{ent}` lies inside `Q`, and the diagonal density obeys

```math
\delta_{j,Q}(a_Q)\ge c_{diag}^{par}\,\bar\delta_j(Q)
```

and

```math
[\delta_{j,Q}]_{C^\alpha(Q)}\operatorname{diam}(Q)^\alpha
\le \gamma_{diag}^{par}\,\bar\delta_j(Q),
\qquad c_{diag}^{par}>\gamma_{diag}^{par}.
```

For each terminal sector center `a_{Q,s}`, the Holder estimate gives

```math
\delta_{j,Q}(a_{Q,s})
\ge (c_{diag}^{par}-\gamma_{diag}^{par})\bar\delta_j(Q).
```

The same Holder estimate restricts to `Q_s^{ent}`. Therefore the terminal sector-center lower-density plus local Holder packet holds, hence `QSP.11q`, and the parent-center formulation supplies the stronger canonical route `QSP.11r`. This gives diagonal restriction stability and the selector-side part of `PTC-Shape`.

### 2. Finite shell comparability

Assume for each selected shell cap

```math
\int_{G_J}|\delta_{J,r}^{\pm}(a)-s_{\pm,r}^{shell}|\,d\mu_j(a)
\le \varepsilon_J^{shell},
```

with

```math
\max_{r,\pm}s_{\pm,r}^{shell}\le\varsigma_J,
\qquad \varepsilon_J^{shell}\to0,
\qquad \varsigma_J\to0.
```

Then

```math
\int_{G_J}\delta_{J,r}^{\pm}(a)\,d\mu_j(a)
\le \varepsilon_J^{shell}+\varsigma_J\mu_j(G_J).
```

Thus finite shell comparability supplies shell leakage on the same core-cap family.

### 3. Regular-window transport control

Assume on the selected frame collars over `I_0=[t_0,t_1]`:

```math
\sup_{I_0}\|\nabla v_J\|_{L^\infty}\le M_* ,
\qquad
\sup_{I_0}\|\nabla^2 v_J\|_{L^\infty}\le H_* .
```

Let `tau_0=|I_0|`. The variational equations give

```math
\|D_aX_t\|_{op}\le e^{M_*\tau_0},
```

and

```math
\|D_a^2X_t\|_{op}\le H_*\tau_0 e^{2M_*\tau_0}.
```

For segment length `h_J`, this yields the collar derivative modulus

```math
\rho_{J,lin}
\le h_JH_*\tau_0e^{2M_*\tau_0}.
```

If this tends to zero uniformly, segment-collar derivative continuity holds and finite-frame `PTC-Lin` follows.

### 4. Exact-potential comparison

Finite-frame `PTC-Shape` and `PTC-Lin` give

```math
\|\mathcal K_J^{frame}-W_J^{coc}\Pi_{N_a}(W_J^{coc})^*\|_{op}
\le d(2|W_J^{coc}|_{op}\varepsilon_{lin}+\varepsilon_{lin}^2).
```

Assume the exact-potential comparison packet gives

```math
\|W_J^{coc}\Pi_{N_a}(W_J^{coc})^*-\mathcal C_J^{CG}\|_{op}
\le \operatorname{Err}_{cmp}.
```

Then the frame tensor is close to the CG tensor with total error

```math
E_{frame}=d(2|W_J^{coc}|_{op}\varepsilon_{lin}+\varepsilon_{lin}^2)+\operatorname{Err}_{cmp}.
```

### 5. Reference CG simple-top gap

Assume the CG reference tensor has simple-top gap

```math
g_J^{CG}\ge g_*>0
```

on the same strip. Davis-Kahan gives

```math
\|\widehat P_J^{frame}-P_J^{CG}\|_F^2
\le C_{DK}E_{frame}^2/g_*^2.
```

This is the `D.7mq` pair-to-CG projector comparison on the finite-frame branch.

### 6. Same-strip synchronization and handoff

Assume the packets above use the same selector-good family, core-cap family, entrance-sector refinement, time strip, and finite frame. Then the existing branch-local handoff fires:

```text
QSP.11r + shell comparability + C2 transport
=> PTC-Shape + PTC-Lin
=> D.7mq
=> D.7mr2
=> RPC.3
=> SG.4B
```

## Boundary

The chain is formally complete from the listed source packets. The remaining proof work is to supply those source packets on the same strip:

```text
parent stopped-cell center lower density,
parent-cell Holder control,
finite shell comparability,
regular-window C2 collar control,
exact-potential comparison,
reference CG simple-top gap,
same-strip synchronization.
```

This artifact records a local TPS/SG.4 branch completion attempt under explicit source hypotheses.
