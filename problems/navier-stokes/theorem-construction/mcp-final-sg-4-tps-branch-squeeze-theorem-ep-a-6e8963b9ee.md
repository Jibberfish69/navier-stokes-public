# Final SG.4/TPS Branch Squeeze Theorem

## Status

Conditional branch-local closure. The remaining blockers reduce to four explicit compatibility inputs after choosing the aligned tensor-comparison route.

## 1. Positive-mass entrance CG gap subfamily

Let

```math
g_0(a)=\lambda_1(C_J^{CG}(t_0,a))-\lambda_2(C_J^{CG}(t_0,a)).
```

If

```math
\mu\{a:g_0(a)>0\}>0,
```

then since

```math
\{g_0>0\}=\bigcup_{n\ge1}\{g_0\ge 1/n\},
```

there exists `kappa>0` such that

```math
\mu\{g_0\ge kappa\}>0.
```

So positive-mass entrance gap follows from any positive-mass anisotropy witness for the entrance CG tensor.

## 2. Exact-potential tensor comparison route

Choose the aligned finite-frame reference convention

```math
C_J^{CG,align}:=W_J^{coc}\Pi_{N_a}(W_J^{coc})^*.
```

Then

```math
\|W_J^{coc}\Pi_{N_a}(W_J^{coc})^*-C_J^{CG,align}\|_{op}=0.
```

Thus

```math
A_{cmp}=0.
```

This closes the tensor-comparison loss on the finite-frame branch. The remaining compatibility requirement is that the selector-strain packet consume this same aligned reference object, or provide a bridge from the aligned reference to the strain projector.

## 3. Selector-strain residual smallness

Use the installed sufficient route

```math
D.7mp+D.7mo+D.7mm\Longrightarrow SSC\text{-}EP.A.
```

Let

```math
A_{ssc}=\|\eta_{mb}\|_{L^p(G)}.
```

If the installed packet gives `A_ssc -> 0`, then Markov gives

```math
\varepsilon_{ssc}\le A_{ssc}^p\theta_{ssc}^{-p}\to0.
```

## 4. Persistence integrability

The CG persistence budget is

```math
E_{J,t_0}^{CG}(t,a)=2\int_{t_0}^{t}|W_J^N(s,a)|_{op}^2|S_J^N(s,a)|ds.
```

Set

```math
f(s,a)=2|W_J^N(s,a)|_{op}^2|S_J^N(s,a) |.
```

If `f in L^1_tL^p_a` on the selected strip family, then for a strip of length `tau`,

```math
\|E_{J,t_0}^{CG}\|_{L^p_a}
\le\int_{t_0}^{t_0+\tau}\|f(s,\cdot)\|_{L^p_a}ds\to0
```

as `tau -> 0`. Hence

```math
A_{pers}\to0.
```

Together with `g_0>=kappa`, restricted CG persistence gives

```math
g_J^{CG}(t)\ge kappa/2.
```

## 5. Finite-frame scale freedom

Let the finite list of geometric upper constraints be

```math
h_J\le h_{J,1},...,h_J\le h_{J,N}.
```

Let

```math
\Lambda_{C2}=H\tau e^{2M\tau}.
```

Choose

```math
h_J\le \min_{1\le k\le N}h_{J,k},
\qquad
h_J\Lambda_{C2}\to0.
```

This is possible when the finite-frame geometry imposes no conflicting positive lower scale. Then `A_C2 -> 0` and finite-frame `PTC-Lin` holds.

## 6. Final retained-family check

Start with the positive-mass gap subfamily `G_gap`. Choose thresholds and strip length so

```math
\varepsilon_{dens}+\varepsilon_{stop}+\varepsilon_{shell}+\varepsilon_{C2}+\varepsilon_{cmp}+\varepsilon_{gap}+\varepsilon_{ssc}<\frac12\mu(G_{gap}).
```

Then the retained common family satisfies

```math
\mu(G^{com})\ge\frac12\mu(G_{gap})>0.
```

## Final branch handoff

On `G_com`, all packets share the same selector-good family, finite frame, strip, core-cap family, aligned CG reference object, and selector-strain packet. Therefore

```text
retained family
=> QSP.11r + shell comparability + C2 transport
=> PTC-Shape + PTC-Lin
=> D.7mq
=> D.7mr2
=> RPC.3
=> SG.4B
```

## Remaining compatibility inputs

```text
positive-mass anisotropy witness for g0,
compatibility of the aligned reference with SSC-EP.A,
Lp smallness of eta_mb,
Lp integrability of the persistence integrand,
finite-frame scale freedom.
```