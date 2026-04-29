# Analytic Ledger Smallness Scheduler For SG.4/TPS Retained Family

## Status

Conditional scheduler theorem. This note gives explicit ways to make the remaining analytic ledgers small enough for the retained-family loss theorem.

## Ledger targets

```text
A_stop,
A_shell,
A_C2,
A_cmp,
A_gap(kappa),
A_pers,
A_ssc.
```

## 1. `A_stop`

Use density-adapted stopping. For each parent cell define

```math
R_{stop}(Q)=
\frac{[\delta_{j,Q}]_{C^\alpha(Q)}\operatorname{diam}(Q)^\alpha}{\bar\delta_j(Q)}.
```

Stop/refine until

```math
R_{stop}(Q)\le \gamma.
```

Then the stopped-family oscillation loss is zero. On a fixed parent family, an `L^p` ledger gives

```math
\int R_{stop}^p\,d\mu\le A_{stop}^p
\quad\Longrightarrow\quad
\varepsilon_{stop}\le A_{stop}^p\gamma^{-p}.
```

So `A_stop` is made small by density-adapted stopping, or by proving the normalized oscillation ledger small on the fixed family.

## 2. `A_shell`

The shell family is finite. Choose shell boundary radii outside the atom sets of the active radial measures. Let shell thickness tend to zero. By continuity from above for finite measures, the active shell mass tends to zero. The spherical shell mass also tends to zero. Hence

```math
A_{shell}:=
\sum_{r,\pm}\int |\delta_{J,r}^{\pm}-s_{\pm,r}^{shell}|\,d\mu
\to0
```

for shrinking regular shells.

For fixed-width shells, `A_shell` is an equidistribution theorem rather than a selection consequence.

## 3. `A_C2`

Let

```math
\Lambda_{C2}(a)=H(a)\tau(a)e^{2M(a)\tau(a)}.
```

The collar estimate is

```math
R_{C2}(a)=h_J\Lambda_{C2}(a).
```

Choose the finite-frame scale so

```math
h_J\Lambda_{C2}\to0
```

uniformly, or in `L^p`:

```math
\int (h_J\Lambda_{C2})^p d\mu\to0.
```

Then

```math
A_{C2}:=\|R_{C2}\|_{L^p(G)}\to0.
```

## 4. `A_cmp`

If the branch reference convention is

```math
\mathcal C_J^{CG}:=W_J^{coc}\Pi_{N_a}(W_J^{coc})^* ,
```

then

```math
A_{cmp}=0.
```

If `\mathcal C_J^{CG}` is fixed independently, define

```math
R_{cmp}=\|W_J^{coc}\Pi_{N_a}(W_J^{coc})^*-\mathcal C_J^{CG}\|_{op}.
```

Then

```math
A_{cmp}=\|R_{cmp}\|_{L^p(G)}.
```

This ledger becomes small exactly when the independent exact-potential tensor comparison theorem is proved.

## 5. `A_gap(kappa)`

Let

```math
g_0(a)=\lambda_1(\mathcal C_J^{CG}(t_0,a))-\lambda_2(\mathcal C_J^{CG}(t_0,a)).
```

For threshold `kappa>0`, define

```math
A_{gap}(\kappa)=\mu\{a:g_0(a)\le \kappa\}.
```

If `g_0>0` a.e. on the selected family, then

```math
A_{gap}(\kappa)\to0
\quad\text{as}\quad \kappa\downarrow0.
```

If one selects a subfamily with `g_0>=kappa_*`, then `A_gap(kappa_*)=0` on that subfamily. The cost is the mass lost by selecting that subfamily.

## 6. `A_pers`

The CG persistence budget has the form

```math
E_{J,t_0}^{CG}(t,a)=2\int_{t_0}^{t}|W_J^N(s,a)|_{op}^2|S_J^N(s,a)|ds.
```

Since this is an integral over the strip, absolute continuity in strip length gives smallness on sufficiently short strips whenever the integrand is integrable. Define

```math
A_{pers}=\|E_{J,t_0}^{CG}\|_{L^p(G)}.
```

Choose the strip length so

```math
A_{pers}	o0.
```

Then the loss term in the retained family lemma is

```math
4^pA_{pers}^p\kappa^{-p}.
```

## 7. `A_ssc`

Let `eta_mb` be the selector-strain residual ledger in `SSC-EP.A`. Define

```math
A_{ssc}=\|\eta_{mb}\|_{L^p(G)}.
```

If the installed packet gives

```math
A_{ssc}\to0,
```

then Markov yields

```math
\varepsilon_{ssc}\le A_{ssc}^p\theta_{ssc}^{-p}.
```

## Scheduling rule

Choose thresholds in this order:

```text
1. choose kappa from the entrance-gap subfamily;
2. choose strip length so A_pers << kappa;
3. choose h_J so A_C2 is small on that strip;
4. choose shell thickness so A_shell is small;
5. choose density stopping so A_stop is zero or small;
6. choose comparison convention or prove A_cmp small;
7. choose selector-strain threshold after A_ssc is known.
```

Then ensure

```math
\varepsilon_{dens}+\varepsilon_{stop}+\varepsilon_{shell}+\varepsilon_{C2}+\varepsilon_{cmp}+\varepsilon_{gap}+\varepsilon_{ssc}<\mu(G).
```

## Remaining non-scheduler inputs

The scheduler still needs these genuine inputs when they are not made tautological by selection:

```text
positive-mass entrance CG gap subfamily,
independent exact-potential comparison theorem if C_CG is fixed independently,
Lp selector-strain residual smallness,
Lp persistence integrability,
finite-frame scale freedom.
```