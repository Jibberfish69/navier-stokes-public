# SCFBase defect measure upper carrier

## Next targets

The next targets for `jump-avg-branch-elimination` are ordered as follows.

1. Define a canonical nonnegative charge on terminal bad or radius-collapse windows.
2. Prove `Jump_avg` produces nonzero terminal mass for that charge.
3. Prove separated lower accumulation on a terminal scale schedule.
4. Prove a finite-energy / pressure-source upper bound for the same charge.
5. Rerun `jump-avg-branch-elimination` only after the lower and upper estimates use one shared charge.

This note completes the finite upper-carrier part for the canonical `SCF_base` dissipation/local-pressure charge.

## Setup

Work on a terminal interval `[t_0,T_*)` and a finite transported cutoff atlas with bounded overlap. For each pack-stabilized same-fluid cylinder `Q_r^Phi(a,t)`, keep the analytic part of

```math
SCF_{base}=E_u+D_u+P+G_\Phi.
```

The geometric term `G_Phi` is governed by pack stabilization. The analytic charge carrier is

```math
\nu_{SCF}:=\mu_D+\sum_\chi \mu_{P,\chi},
```

where

```math
\mu_D:=|\nabla u|^2\,dx\,dt,
\qquad
\mu_{P,\chi}:=|p^{loc}_\chi|^{3/2}\,dx\,dt.
```

For a terminal window family `Q_k=Q_{r_k}^\Phi(a_k,t_k)`, define

```math
D_k^{SCF}:=\nu_{SCF}(Q_k).
```

## Lemma

For every separated or bounded-overlap terminal window family `{Q_k}` contained in the finite atlas domain,

```math
\sum_k D_k^{SCF}
\le C_{atlas}\,\nu_{SCF}([t_0,T_*)\times\mathbb T^3)<\infty.
```

More explicitly,

```math
\sum_kD_k^{SCF}
\le C_{atlas}
\left(
\int_{t_0}^{T_*}\int_{\mathbb T^3}|\nabla u|^2\,dx\,dt
+
\sum_\chi\int_{t_0}^{T_*}\int_{\operatorname{supp}\chi}|p^{loc}_\chi|^{3/2}\,dx\,dt
\right).
```

## Proof

The energy inequality gives

```math
\nabla u\in L^2_{t,x}([t_0,T_*)\times\mathbb T^3),
```

so `mu_D` is a finite Radon measure.

On each cutoff chart, the local pressure split satisfies

```math
-\Delta p^{loc}_\chi=\partial_i\partial_j(\chi u_i u_j).
```

The Leray bounds give
`u\in L^\infty_tL^2_x\cap L^2_t\dot H^1_x`; interpolation gives
`u\in L^{10/3}_{t,x}` on finite-measure cylinders, hence
`\chi u_i u_j\in L^{5/3}_{t,x}`.  Calderon-Zygmund estimates for
`-\Delta p^{loc}_\chi=\partial_i\partial_j(\chi u_i u_j)` give
`p^{loc}_\chi\in L^{5/3}_{t,x}`.  Since `5/3>3/2` on a finite-measure cylinder,
this gives

```math
\int |p^{loc}_\chi|^{3/2}<\infty.
```

Thus every `mu_{P,chi}` is a finite local Radon measure. The atlas is finite, so `nu_SCF` is finite on the terminal atlas domain.

If `{Q_k}` has overlap at most `Omega`, countable additivity and bounded overlap give

```math
\sum_k\nu_{SCF}(Q_k)
\le \Omega\,\nu_{SCF}\left(\bigcup_k Q_k\right)
\le \Omega\,\nu_{SCF}([t_0,T_*)\times\mathbb T^3).
```

Geometry constants from pack stabilization and the finite atlas are absorbed into `C_atlas`. This proves the upper-carrier estimate.

## Consequence

The `SCF_base` analytic defect has a canonical finite upper carrier:

```math
D_k^{SCF}=\nu_{SCF}(Q_k).
```

Any future branch-native no-escape proof may use this object for the upper-bound side, provided the lower-bound side also uses `D_k^{SCF}`.

## Boundary

This lemma supplies only the finite upper-carrier estimate. It leaves three live targets:

```math
Jump_{avg}\Longrightarrow \text{nonzero terminal }\nu_{SCF}\text{ mass},
```

```math
\text{nonzero terminal }\nu_{SCF}\text{ mass}\Longrightarrow \text{separated lower accumulation},
```

and any comparison between the `h/F` survivor charge and `nu_SCF` if the route continues to use the `h/F` object.
