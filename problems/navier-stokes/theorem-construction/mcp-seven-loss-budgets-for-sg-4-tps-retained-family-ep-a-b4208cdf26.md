# Seven Loss Budgets For SG.4/TPS Retained Family

## Status

Conditional loss-budget theorem. This note proves the seven retained-mass losses from explicit measurable defect ledgers.

## Setup

Let `G` be the starting selector-good family with finite positive mass

```math
\mu(G)=m_0>0.
```

For each packet define a bad set `B_i` and loss

```math
\varepsilon_i:=\mu(B_i).
```

The retained family is

```math
G^{com}=G\setminus(B_{dens}\cup B_{stop}\cup B_{shell}\cup B_{C2}\cup B_{cmp}\cup B_{gap}\cup B_{ssc}).
```

## 1. Density-center loss

Use the density-selected rule: in each active parent cell `Q`, choose `a_Q` as a Lebesgue point in

```math
\{a\in Q:\delta_{j,Q}(a)\ge \bar\delta_j(Q)\}.
```

Then the center lower bound holds on every active parent cell. Hence

```math
B_{dens}=\varnothing,
\qquad
\varepsilon_{dens}=0.
```

## 2. Stopping / oscillation loss

Define the normalized oscillation defect on a fixed parent family by

```math
R_{stop}(Q)
:=
\frac{[\delta_{j,Q}]_{C^\alpha(Q)}\operatorname{diam}(Q)^\alpha}{\bar\delta_j(Q)}.
```

For threshold `\gamma>0`, set

```math
B_{stop}:=\{Q:R_{stop}(Q)>\gamma\}.
```

If a ledger satisfies

```math
\int_G R_{stop}^p\,d\mu\le A_{stop}^p,
```

then Markov gives

```math
\varepsilon_{stop}\le A_{stop}^p\gamma^{-p}.
```

With density-adapted stopping that refines until `R_stop<=gamma`, one has

```math
\varepsilon_{stop}=0
```

inside the stopped family, with retained mass handled by the stopping selection theorem.

## 3. Shell loss

Let the finite shell list be indexed by `r=1,...,R` and signs `±`. Define

```math
D_{r}^{\pm}(a):=|\delta_{J,r}^{\pm}(a)-s_{\pm,r}^{shell}|.
```

For threshold `\theta_{shell}>0`, set

```math
B_{shell}:=\{a:\max_{r,\pm}D_r^{\pm}(a)>\theta_{shell}\}.
```

If

```math
\sum_{r,\pm}\int_G D_r^{\pm}(a)d\mu(a)\le A_{shell},
```

then the finite union bound and Markov give

```math
\varepsilon_{shell}\le A_{shell}/\theta_{shell}.
```

For shrinking regular shells, `A_shell->0` is the following finite-measure
selection statement.  The shell list is finite.  Choose the inner and outer
shell boundary radii outside the atom sets of the active radial measures.  If
`S_{r,h}^{\pm}` is the thickness-`h` shell around one chosen boundary, then
continuity from above for finite measures gives

```math
\eta_{r,\pm}(S_{r,h}^{\pm})\to0,
\qquad
\sigma_{r,\pm}(S_{r,h}^{\pm})\to0
\qquad (h\downarrow0),
```

where `\eta_{r,\pm}` is the active averaged shell measure and
`\sigma_{r,\pm}` is the spherical shell measure.  Therefore

```math
A_{shell}(h)
:=
\sum_{r,\pm}
\int_{G_J}|\delta_{J,r}^{\pm}(a)-s_{\pm,r}^{shell}(h)|\,d\mu_j(a)
\to0.
```

The shell loss then obeys

```math
\varepsilon_{shell}(h)
\le
A_{shell}(h)/\theta_{shell}
\to0
```

for fixed `\theta_{shell}>0`.

## 4. C2 collar loss

Define the collar derivative-continuity defect

```math
R_{C2}(a):=h_JH(a)\tau(a)\exp(2M(a)\tau(a)).
```

For threshold `\theta_{C2}>0`, set

```math
B_{C2}:=\{a:R_{C2}(a)>\theta_{C2}\}.
```

If

```math
\int_G R_{C2}^p d\mu\le A_{C2}^p,
```

then

```math
\varepsilon_{C2}\le A_{C2}^p\theta_{C2}^{-p}.
```

On `G\setminus B_C2`, the finite-frame linearization modulus is at most `theta_C2`.

## 5. Exact-potential comparison loss

Define

```math
R_{cmp}(a):=\|W_J^{coc}\Pi_{N_a}(W_J^{coc})^*-\mathcal C_J^{CG}\|_{op}.
```

For threshold `\theta_{cmp}>0`, set

```math
B_{cmp}:=\{a:R_{cmp}(a)>\theta_{cmp}\}.
```

If

```math
\int_G R_{cmp}^p d\mu\le A_{cmp}^p,
```

then

```math
\varepsilon_{cmp}\le A_{cmp}^p\theta_{cmp}^{-p}.
```

If the CG reference is defined as `W_J^{coc}\Pi_{N_a}(W_J^{coc})^*`, then `R_cmp=0` and `epsilon_cmp=0`.

## 6. CG gap loss

Let

```math
g_0(a):=\lambda_1(\mathcal C_J^{CG}(t_0,a))-\lambda_2(\mathcal C_J^{CG}(t_0,a)).
```

For a gap threshold `\kappa>0`, define

```math
B_{gap}^{entr}:=\{a:g_0(a)\le \kappa\}.
```

Let `E_{J,t0}^{CG}(a)` be the persistence budget and set

```math
B_{gap}^{pers}:=\{a:E_{J,t0}^{CG}(a)>\kappa/4\}.
```

Then

```math
B_{gap}=B_{gap}^{entr}\cup B_{gap}^{pers}.
```

If

```math
\mu(B_{gap}^{entr})\le A_{gap}(\kappa)
```

and

```math
\int_G (E_{J,t0}^{CG})^p d\mu\le A_{pers}^p,
```

then

```math
\varepsilon_{gap}\le A_{gap}(\kappa)+4^pA_{pers}^p\kappa^{-p}.
```

On the complement, restricted CG persistence gives

```math
g_J^{CG}(t,a)\ge \kappa/2.
```

## 7. Selector-strain loss

Let `eta_mb(a)` be the selector-strain residual ledger for `SSC-EP.A`. For threshold `theta_ssc>0`, set

```math
B_{ssc}:=\{a:\eta_{mb}(a)>\theta_{ssc}\}.
```

If

```math
\int_G \eta_{mb}^p d\mu\le A_{ssc}^p,
```

then

```math
\varepsilon_{ssc}\le A_{ssc}^p\theta_{ssc}^{-p}.
```

On `G\setminus B_ssc`, `SSC-EP.A` holds with residual at most `theta_ssc`.

## Retained-family consequence

The retained-mass lemma gives

```math
\mu(G^{com})
\ge
m_0-
(\varepsilon_{dens}+\varepsilon_{stop}+\varepsilon_{shell}+\varepsilon_{C2}+\varepsilon_{cmp}+\varepsilon_{gap}+\varepsilon_{ssc}).
```

Therefore `G_com` has usable mass whenever the right-hand loss is less than `m0`.

## Branch handoff

On `G_com`, all packets share the same family, strip, finite frame, core-cap family, CG reference object, and selector-strain packet. Hence the branch handoff fires:

```text
QSP.11r + shell comparability + C2 transport
=> PTC-Shape + PTC-Lin
=> D.7mq

D.7mq + SSC-EP.A
=> D.7mr2
=> RPC.3
=> SG.4B
```

## Remaining analytic ledgers

The loss theorem reduces the source work to proving small ledgers:

```text
A_stop, A_shell, A_C2, A_cmp, A_gap(kappa), A_pers, A_ssc.
```
