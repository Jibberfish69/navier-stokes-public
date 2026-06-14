# Four-Estimate Supplier Proof For `D.7mq`

## Status

Conditional supplier proof. The four requested estimates close the formal path to `D.7mq` once their source hypotheses are supplied on the same selector-good strip.

## Target

```text
anchored density / Holder control
+ finite shell comparability
+ regular-window C2 derivative control
+ exact-potential comparison and CG gap
=> D.7mq
```

## Estimate 1. Anchored average-density / Holder control

Assume each terminal entrance-sector cell `Q_s^{ent} subset Q` carries a reference point `a_{Q,s}` and constants `beta_diag,gamma_diag >= 0` with

```math
\beta_{diag}+\gamma_{diag}<1,
```

such that

```math
|\delta_{j,Q}(a_{Q,s})-\bar\delta_j(Q)|
\le
\beta_{diag}\bar\delta_j(Q),
```

and

```math
[\delta_{j,Q}]_{C^\alpha(Q_s^{ent})}\operatorname{diam}(Q_s^{ent})^\alpha
\le
\gamma_{diag}\bar\delta_j(Q).
```

Then every `a in Q_s^{ent}` satisfies

```math
|\delta_{j,Q}(a)-\bar\delta_j(Q)|
\le
(\beta_{diag}+\gamma_{diag})\bar\delta_j(Q).
```

Thus sectorwise relative oscillation holds with

```math
\sigma_{diag}=\beta_{diag}+\gamma_{diag}<1.
```

Consequently,

```math
\delta_{j,Q}(a)\ge (1-\sigma_{diag})\bar\delta_j(Q)
```

on the terminal sector, and integration gives diagonal restriction stability:

```math
d_j^{diag}(Q_s^{ent})
\ge
(1-\sigma_{diag})d_j^{diag}(Q)
\frac{\mu_j(Q_s^{ent})}{\mu_j(Q)}.
```

This proves the selector-side estimate from the anchored density and Holder inputs.

## Estimate 2. Finite shell comparability

Assume for each shell cap in the finite core-cap family that

```math
\int_{G_J}|\delta_{J,r}^{\pm}(a)-s_{\pm,r}^{shell}|\,d\mu_j(a)
\le
\varepsilon_J^{shell},
```

and

```math
\max_{r,\pm}s_{\pm,r}^{shell}\le\varsigma_J,
\qquad
\varepsilon_J^{shell}\to0,
\qquad
\varsigma_J\to0.
```

Then

```math
\int_{G_J}\delta_{J,r}^{\pm}(a)d\mu_j(a)
\le
\varepsilon_J^{shell}+\varsigma_J\mu_j(G_J).
```

So shell leakage is controlled by

```math
\eta_J^{shell}:=\varepsilon_J^{shell}+\varsigma_J\mu_j(G_J).
```

When `\eta_J^{shell}->0`, the finite shell side of the constructive shape packet is discharged on that same core-cap family.

## Estimate 3. Regular-window C2 / derivative-continuity control

Let `I_0=[t_0,t_1]`, `tau_0=|I_0|`, and assume on every selected frame collar:

```math
\sup_{s\in I_0}\|\nabla v_J(s)\|_{L^\infty}\le M_* ,
\qquad
\sup_{s\in I_0}\|\nabla^2 v_J(s)\|_{L^\infty}\le H_* .
```

The variational equations are

```math
\partial_t U_t=\nabla v_J(X_t,t)U_t,
\qquad
\partial_t V_t=\nabla^2v_J(X_t,t)[U_t,U_t]+\nabla v_J(X_t,t)V_t,
```

with `U_{t_0}=I` and `V_{t_0}=0`. Gronwall gives

```math
\|U_t\|_{op}\le e^{M_*\tau_0},
```

and variation of constants gives

```math
\|D_a^2X_t\|_{op}\le H_*\tau_0e^{2M_*\tau_0}.
```

Therefore, for a selected frame direction `omega_l` and segment scale `h_J`,

```math
\|D_aX_t(a+s\omega_l)-D_aX_t(a)\|_{op}
\le
h_JH_*\tau_0e^{2M_*\tau_0},
\qquad |s|\le h_J.
```

Thus the finite-frame linearization modulus is

```math
\rho_{J,lin}\le h_JH_*\tau_0e^{2M_*\tau_0}.
```

The transport-stability estimate closes when this quantity tends to zero uniformly on the active family.

## Estimate 4. Exact-potential comparison and reference CG gap

The finite-frame shape and linearization outputs give

```math
\left\|\mathcal K_J^{frame}-W_J^{coc}\Pi_{N_a}(W_J^{coc})^*\right\|_{op}
\le
 d\left(2|W_J^{coc}|_{op}\varepsilon_{J,lin}^{frame}
 +(\varepsilon_{J,lin}^{frame})^2\right).
```

Assume the exact-potential comparison packet gives

```math
\left\|W_J^{coc}\Pi_{N_a}(W_J^{coc})^*-\\mathcal C_J^{CG}\right\|_{op}
\le
\operatorname{Err}_{J,cmp}^{frame}.
```

Assume the reference CG simple-top gap satisfies

```math
g_J^{CG}\ge g_* >0.
```

Then Davis-Kahan gives

```math
\|\widehat P_J^{frame}-P_J^{CG}\|_F^2
\le
C_{\mathrm{DK}}
\frac{
\left(
 d(2|W_J^{coc}|_{op}\varepsilon_{J,lin}^{frame}
 +(\varepsilon_{J,lin}^{frame})^2)
 +\operatorname{Err}_{J,cmp}^{frame}
\right)^2
}{g_*^2}.
```

This is the `D.7mq` pair-to-CG projector comparison on the finite-frame branch.

## Assembly

Estimate 1 supplies the diagonal restriction side of the entrance-sector sign primitive. Estimate 2 supplies shell leakage. Estimate 3 supplies finite-frame transport stability. These feed the constructive QSP route, hence two-sided quadratic sign separation, hence a finite balanced selector frame:

```math
\sum_l w_l\omega_l\otimes\omega_l=\Pi_{N_a}.
```

Paired with finite-frame `PTC-Lin`, this gives tensor control of `\mathcal K_J^{frame}` against `W_J^{coc}\Pi_{N_a}(W_J^{coc})^*`. Estimate 4 converts that tensor control to the projector comparison `D.7mq`.

## Source primitives still required

The proof requires these source packets on the same strip:

```text
parent or terminal center density lower control,
Holder control of the diagonal density,
finite shell comparability for the selected shell caps,
regular-window C2 or equivalent derivative-continuity control,
exact-potential comparison packet,
reference CG simple-top gap.
```

This is the sharpest complete conditional proof presently visible from the canonical surfaces.
