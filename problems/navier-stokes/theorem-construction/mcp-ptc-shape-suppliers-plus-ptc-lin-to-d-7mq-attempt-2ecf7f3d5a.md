# PTC-Shape Suppliers Plus PTC-Lin To `D.7mq`

## Status

Conditional reduction, not a source-level discharge. If the four requested
packets hold on the same selector-good strip, and if the exact-potential
comparison packet and reference Cauchy-Green spectral gap hold on that same
strip, then the displayed tensor defect and Davis-Kahan estimate imply `D.7mq`.
The analytic source estimates that instantiate those packets remain the active
upstream work.

## Target

Prove and assemble:

```text
sectorwise diagonal-density oscillation
+ finite shell comparability on the same core-cap family
+ active-segment transport stability on the same selector-good strip
+ PTC-Lin
=> D.7mq.
```

## 1. Sectorwise relative oscillation of diagonal density

A sufficient realization is the anchored average-density plus Holder packet.
Assume each terminal entrance-sector cell `Q_s^{ent} subset Q` has a reference label `a_{Q,s}` and constants `beta_diag,gamma_diag >= 0` with `beta_diag+gamma_diag < 1` such that

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

Then every `a in Q_s^{ent}` obeys

```math
|\delta_{j,Q}(a)-\bar\delta_j(Q)|
\le
(\beta_{diag}+\gamma_{diag})\bar\delta_j(Q).
```

Thus sectorwise relative oscillation holds with

```math
\sigma_{diag}=\beta_{diag}+\gamma_{diag}<1.
```

Integrating the lower bound

```math
\delta_{j,Q}(a)\ge (1-\sigma_{diag})\bar\delta_j(Q)
```

over `Q_s^{ent}` gives diagonal restriction stability:

```math
d_j^{diag}(Q_s^{ent})
\ge
(1-\sigma_{diag})d_j^{diag}(Q)
\frac{\mu_j(Q_s^{ent})}{\mu_j(Q)}.
```

This supplies the selector-side diagonal half of the entrance-sector sign primitive once the inherited bounded-multiplicity sector graph supplies the edge half.

## 2. Finite shell comparability on the same core-cap family

Assume the finite shell-comparability estimate

```math
\int_{G_J}|\delta_{J,r}^{\pm}(a)-s_{\pm,r}^{shell}|\,d\mu_j(a)
\le
\varepsilon_J^{shell},
```

and the shell size bound

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

Hence shell leakage is controlled by

```math
\eta_J^{shell}:=\varepsilon_J^{shell}+\varsigma_J\mu_j(G_J)=o_J(1)
```

on the same core-cap family.

## 3. Active-segment gradient / transport-stability control

Let the balanced frame directions be `omega_l` and the segment scale be `h_J`. Segment-collar derivative continuity gives

```math
\sup_{|s|\le h_J}\|D_aX_t(a+s\omega_l)-D_aX_t(a)\|_{op}
\le
\rho_{J,lin}(a,t;h_J).
```

Then the finite-frame linearization estimate holds:

```math
|z_l(t,a)-W_J^{coc}(t,a)\omega_l|
\le
\rho_{J,lin}(a,t;h_J).
```

A regular-window `C^2` sufficient realization is:

```math
\sup_{I_0}\|\nabla v_J\|_{L^\infty}\le M_*,
\qquad
\sup_{I_0}\|\nabla^2 v_J\|_{L^\infty}\le H_*.
```

For `tau_0=|I_0|`, this yields

```math
\rho_{J,lin}(a,t;h_J)
\le
h_JH_*\tau_0e^{2M_*\tau_0}.
```

Thus the transport-stability packet closes whenever

```math
h_JH_*\tau_0e^{2M_*\tau_0}\to0
```

uniformly on the active selector-good family.

## 4. Pair with `PTC-Lin` to feed `D.7mq`

The selector-side diagonal packet plus shell leakage plus active-segment transport stability feed the constructive QSP chain. This gives two-sided quadratic sign separation on the selector-good directional support:

```math
\omega^TA\omega \ge \kappa\|A\|_{op}
\quad\text{and}\quad
\omega^TA\omega \le -\kappa\|A\|_{op}
```

on positive sign families for every nonzero traceless symmetric `A` on `N_a`.

By the balanced-frame lemma, the normalized identity lies in the interior of the convex hull of the rank-one selector tensors. Hence there are finitely many selector directions and positive weights with

```math
\sum_l w_l\omega_l\otimes\omega_l=\Pi_{N_a}.
```

This is the finite-frame form of `PTC-Shape`.

Now pair it with `PTC-Lin`. In the finite-frame route, `PTC-Lin` is the estimate

```math
\max_l |z_l-W_J^{coc}\omega_l|\le\varepsilon_{J,lin}^{frame}.
```

Expanding the frame tensor gives

```math
\left\|\mathcal K_J^{frame}-W_J^{coc}\Pi_{N_a}(W_J^{coc})^*\right\|_{op}
\le
 d\left(2|W_J^{coc}|_{op}\varepsilon_{J,lin}^{frame}
 +(\varepsilon_{J,lin}^{frame})^2\right).
```

Define the finite-frame tensor defect

```math
E_{J,frame}:=
d\left(2|W_J^{coc}|_{op}\varepsilon_{J,lin}^{frame}
+(\varepsilon_{J,lin}^{frame})^2\right).
```

Let `E_{J,EP}` be the exact-potential comparison error between the reference
Cauchy-Green tensor and `W_J^{coc}\Pi_{N_a}(W_J^{coc})^*`, and let
`\gamma_{J,CG}` be the simple-top spectral gap of the reference Cauchy-Green
tensor.  The Davis-Kahan step is licensed only under the exact hypothesis

```math
\varepsilon_{J,CG}:=E_{J,frame}+E_{J,EP},
\qquad
2\varepsilon_{J,CG}\le\gamma_{J,CG}.
```

Then Davis-Kahan gives the projector comparison

```math
\|\widehat P_J^{frame}-P_J^{CG}\|_F^2
\le
4\varepsilon_{J,CG}^2/\gamma_{J,CG}^2.
```

This is exactly the `D.7mq` conclusion on the finite-frame branch.

## Conclusion

The requested composite closes in the following conditional form:

```text
anchored average-density + Holder packet
=> sectorwise diagonal-density oscillation
=> diagonal restriction stability

finite shell comparability
=> shell leakage

regular-window C2 flow control
=> segment-collar derivative continuity
=> finite-frame PTC-Lin

sector sign + shell leakage + transport stability
=> finite balanced selector frame
=> PTC-Shape

PTC-Shape + PTC-Lin + exact-potential comparison + CG gap
+ 2(E_frame+E_EP) <= gamma_CG
=> D.7mq
```

The remaining source estimates are:

```text
anchored average-density / Holder control for the diagonal density,
finite shell comparability on the chosen core-cap family,
regular-window C2 or equivalent derivative-continuity control,
exact-potential comparison and reference CG gap on the same strip.
```
