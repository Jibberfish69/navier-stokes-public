# Same-Scale Model Edge Estimate and Weak Lift Note

## Purpose

This note records the strongest same-scale theorem that is honestly available
after the same-scale side is split into its three exact pieces:

1. the frozen upper-boundary family reduction from
   [upper-boundary-frozen-edge-family-reduction-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/upper-boundary-frozen-edge-family-reduction-note.md);
2. the finite-family lift from
   [same-scale-family-lift-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-family-lift-lemma.md);
3. the still-open coefficient-free same-scale edge theorem.

What is proved here is the coefficient-bearing edge estimate that is currently
reachable on the Euclidean surface, and the weak upper-boundary / moving-spill
bounds that it implies. What is **not** proved here is the stronger coefficient-free theorem
`(SS)`.

## Same-scale coefficient package

Fix a finite same-scale width `C_{ss}\ge 1` and define

```math
\Gamma_N^{ss}(t)
:=
\sum_{|m-N|\le C_{ss}}2^{3m/2}\|\Delta_m u(t)\|_{L_x^2},
\tag{1}
```

and the corresponding quadratic same-scale coefficient

```math
\Theta_N^{ss,\sharp}(t)
:=
2^{3N}\sum_{|m-N|\le C_{ss}}\|\Delta_m u(t)\|_{L_x^2}^2.
\tag{2}
```

Because the band width is finite,

```math
(\Gamma_N^{ss}(t))^2
\le
C_{\Gamma,ss}\Theta_N^{ss,\sharp}(t),
\qquad
C_{\Gamma,ss}:=(2C_{ss}+1)2^{3C_{ss}}.
\tag{3}
```

The same-scale energies are

```math
E_N(t):=\sum_{j\ge N}2^{2j}\|\Delta_j u(t)\|_{L_x^2}^2,
\qquad
D_N(t):=\sum_{j\ge N}2^{4j}\|\Delta_j u(t)\|_{L_x^2}^2.
\tag{4}
```

## Proposition A: coefficient-bearing same-scale edge estimate

Let `M_a(\ell D)` be a smooth annular order-zero multiplier family with bounded
symbol seminorms and bounded relative offset from the active scale. Assume the
transport field

```math
b_{\ell,a}:=M_a(\ell D)u
\tag{5}
```

is divergence-free.

Let `\Pi_{N,a}^{edge}(t)` denote the associated same-scale edge packet in the
scalarized pairing channel.

Then for almost every `t`,

```math
|\Pi_{N,a}^{edge}(t)|
\le
C_{\Pi,a}
\Gamma_N^{ss}(t)\,E_N(t)^{1/2}D_N(t)^{1/2},
\tag{6}
```

and hence, for every `\varepsilon>0`,

```math
\int_0^T |\Pi_{N,a}^{edge}(t)|\,dt
\le
\varepsilon \nu\int_0^T D_N(t)\,dt
+
C_{\varepsilon,a,\nu}\int_0^T \Theta_N^{ss,\sharp}(t)\,E_N(t)\,dt.
\tag{SS^\sharp\text{-}model}
```

### Proof

Because `b_{\ell,a}` is divergence-free and annularly localized at the active
scale, the scalarized edge pairing reduces to shell interactions with
`|j-N|\le C_a` for some fixed width `C_a`. On each such shell,

```math
2^{2j}
\big|
\langle \Delta_j((b_{\ell,a}\cdot\nabla)\Delta_j u),\Delta_j u\rangle
\big|
\le
C_{edge,a}
\|b_{\ell,a}(t)\|_{L_x^\infty}\,E_j(t)^{1/2}D_j(t)^{1/2}.
\tag{7}
```

Since `b_{\ell,a}` is supported in an annulus whose shell indices obey
`|m-N|\le C_a^{ann}` for a fixed constant `C_a^{ann}`, Bernstein gives

```math
\|b_{\ell,a}(t)\|_{L_x^\infty}
\le
C_{B,a}
\sum_{|m-N|\le C_a^{ann}}2^{3m/2}\|\Delta_m u(t)\|_{L_x^2}
\le
C_{\Gamma,a}
\Gamma_N^{ss}(t).
\tag{8}
```

Summing `(7)` over the finite shell set `|j-N|\le C_a` and using
Cauchy-Schwarz,

```math
|\Pi_{N,a}^{edge}(t)|
\le
C_{sum,a}
\Gamma_N^{ss}(t)\sum_{|j-N|\le C_a}E_j(t)^{1/2}D_j(t)^{1/2}
\le
C_{\Pi,a}
\Gamma_N^{ss}(t)\,E_N(t)^{1/2}D_N(t)^{1/2},
\tag{9}
```

which is `(6)`.

Integrating in time and applying Young,

```math
\Gamma_N^{ss}E_N^{1/2}D_N^{1/2}
\le
\varepsilon \nu D_N
+
C_{\varepsilon,\nu}(\Gamma_N^{ss})^2E_N.
\tag{10}
```

Using `(3)` and absorbing `C_{\Gamma,ss}` and `C_{\Pi,a}` into
`C_{\varepsilon,a,\nu}` gives `(SS^\sharp\text{-}model)`.

## Corollary B: weak lift to upper boundary and moving spill

Assume the upper-boundary family reduction from
[upper-boundary-frozen-edge-family-reduction-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/upper-boundary-frozen-edge-family-reduction-note.md)
has been made explicit:

```math
\mathfrak B_N^{upper}(t)
=
\sum_{a\in\mathcal A_{ub}} c_a\,\Pi_{N,a}^{edge}(t)
+
\mathcal E_N^{ub,collar}(t),
\tag{11}
```

and the moving-spill reduction has been made explicit:

```math
\Pi_N^{mov\text{-}spill,L}(t)
\le
\sum_{a\in\mathcal A_{sp}} \Pi_{N,a}^{edge}(t)
+
\mathcal E_N^{sp,collar}(t).
\tag{12}
```

Assume also the collar residuals are already absorbable:

```math
\int_0^T |\mathcal E_N^{ub,collar}(t)|\,dt
\le
\varepsilon_{ub}^{res}\nu\int_0^T D_N(t)\,dt
+
C_{ub,*}^{res}2^{-2\delta N},
\tag{13}
```

```math
\int_0^T |\mathcal E_N^{sp,collar}(t)|\,dt
\le
\varepsilon_{sp}^{res}\nu\int_0^T D_N(t)\,dt
+
C_{sp,*}^{res}2^{-2\delta N}.
\tag{14}
```

Then the coefficient-bearing estimate `(SS^\sharp\text{-}model)` lifts to

```math
\int_0^T |\mathfrak B_N^{upper}(t)|\,dt
\le
\Big(\varepsilon_{ub}^{res}+\varepsilon\Big)\nu\int_0^T D_N(t)\,dt
+
C_{\varepsilon,\nu,ub}\int_0^T \Theta_N^{ss,\sharp}(t)\,E_N(t)\,dt
+
C_{ub,*}^{res}2^{-2\delta N},
\tag{UB^\sharp}
```

and

```math
\int_0^T \Pi_N^{mov\text{-}spill,L}(t)\,dt
\le
\Big(\varepsilon_{sp}^{res}+\varepsilon\Big)\nu\int_0^T D_N(t)\,dt
+
C_{\varepsilon,\nu,sp}\int_0^T \Theta_N^{ss,\sharp}(t)\,E_N(t)\,dt
+
C_{sp,*}^{res}2^{-2\delta N}.
\tag{MS^\sharp}
```

### Proof

Integrate `(11)` in time and apply `(SS^\sharp\text{-}model)` termwise over the
finite set `\mathcal A_{ub}`. With
`A_{ub}:=|\mathcal A_{ub}|`, all packet constants are absorbed into the displayed
coefficient `C_{\varepsilon,\nu,ub}`. Then use `(13)` to obtain
`(UB^\sharp)`.

The moving-spill estimate is identical: integrate `(12)`, apply
`(SS^\sharp\text{-}model)` over the finite set `\mathcal A_{sp}`, absorb
`A_{sp}:=|\mathcal A_{sp}|` and the packet constants into
`C_{\varepsilon,\nu,sp}`, and then use `(14)` to obtain `(MS^\sharp)`.

## What this does and does not prove

This note proves:

1. one coefficient-bearing same-scale edge estimate with the same-scale coefficient
   `\Theta_N^{ss,\sharp}E_N`;
2. the weak lift of that estimate to both the upper-boundary and moving-spill
   sides, once the already-separated family-reduction and collar-residual inputs
   are inserted.

It does **not** prove the stronger target

```math
\int_0^T \Pi_{N,a}^{edge}(t)\,dt
\le
\varepsilon_a \nu\int_0^T D_N(t)\,dt
+
C_{a,*}2^{-2\delta N},
\tag{SS}
```

because `(SS^\sharp\text{-}model)` still carries the unresolved same-scale coefficient term

```math
\int_0^T \Theta_N^{ss,\sharp}(t)\,E_N(t)\,dt.
\tag{15}
```

So the exact remaining same-scale theorem debt is now sharp:

```math
\text{kill the same-scale coefficient term in `(UB^\sharp)` and `(MS^\sharp)` at barrier scale.}
\tag{16}
```

That is the missing strengthening from the currently proved coefficient-bearing estimate to the
coefficient-free theorem `(SS)`, and therefore to the final same-scale bounds
`(UB)` and `(MS)`.
