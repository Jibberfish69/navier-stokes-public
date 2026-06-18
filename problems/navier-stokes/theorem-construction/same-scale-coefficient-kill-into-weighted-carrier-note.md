# Same-Scale Coefficient Kill Into Weighted Carrier Note

## Purpose

This note proves the exact barrier-scale statement currently supported for the
same-scale coefficient term

```math
\int_0^T \Theta_N^{ss,\sharp}(t)\,E_N(t)\,dt.
\tag{1}
```

It does **not** prove the stronger coefficient-free same-scale theorem `(SS)`.
What it does prove is that the coefficient term appearing in the model theorem
`(SS^\sharp)` is already included in the installed weighted carrier
`\widetilde\Lambda_N^\sharp E_N` on the derivative-weighted spectral route.

So this note kills `(1)` as a **separate barrier-scale burden**, even though it
does not remove it from the algebra.

## Setup

Retain the same-scale coefficient

```math
\Theta_N^{ss,\sharp}(t)
:=
2^{3N}\sum_{|m-N|\le C_{ss}}\|\Delta_m u(t)\|_{L_x^2}^2
\tag{2}
```

from
[same-scale-edge-family-and-model-estimate-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-edge-family-and-model-estimate-note.md),
and the threshold-collar coefficient

```math
\Theta_N^\sharp(t)
:=
2^{3N}\sum_{m=N-M}^{N+M}\|\Delta_m u(t)\|_{L_x^2}^2
\tag{3}
```

with upgraded carrier

```math
\widetilde\Lambda_N^\sharp(t)
:=
\Lambda_N(t)+\Theta_N^\sharp(t)
\tag{4}
```

from
[gradient-spill-reduction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-spill-reduction-lemma.md),
[minimal-stronger-gradient-coefficient-interface-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/minimal-stronger-gradient-coefficient-interface-theorem.md),
and
[weighted-spectral-carrier-floor-leakage-reduction.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-spectral-carrier-floor-leakage-reduction.md).

The gradient-tail state is

```math
E_N(t):=\sum_{j\ge N}2^{2j}\|\Delta_j u(t)\|_{L_x^2}^2.
\tag{5}
```

Assume the same-scale width is contained in the fixed threshold collar:

```math
C_{ss}\le M.
\tag{6}
```

If the original threshold collar has width `M<C_{ss}`, replace it once and for
all by

```math
M':=\max\{M,C_{ss}\}.
```

The proposition below is then read with `M'` in place of `M`.  This changes only
the fixed collar constant; it introduces no dependence on `N`, `t`, or the
solution and it does not assert any amplitude comparability between shells.

## Proposition

Under `(6)`, for almost every `t`,

```math
\Theta_N^{ss,\sharp}(t)\le \Theta_N^\sharp(t)\le \widetilde\Lambda_N^\sharp(t).
\tag{7}
```

Consequently,

```math
\int_0^T \Theta_N^{ss,\sharp}(t)\,E_N(t)\,dt
\le
\int_0^T \widetilde\Lambda_N^\sharp(t)\,E_N(t)\,dt.
\tag{8}
```

Equivalently, on the weighted spectral surface with fixed constants
`c_T,C_T>0` satisfying

```math
c_T T_1(K,t)\le E_N(t)\le C_T\,T_1(K,t)
```

and
`\mathcal C_1^\sharp(K,t)=\widetilde\Lambda_N^\sharp(t)`,

```math
\int_0^T \Theta_N^{ss,\sharp}(t)\,E_N(t)\,dt
\le
C_T
\int_0^T \mathcal C_1^\sharp(K,t)\,T_1(K,t)\,dt.
\tag{9}
```

So the same-scale coefficient term in `(SS^\sharp)` is already on the installed
weighted carrier surface.

## Proof

By `(6)`, the index set `\{|m-N|\le C_{ss}\}` is contained in the threshold
strip `[N-M,N+M]`. Therefore

```math
\sum_{|m-N|\le C_{ss}}\|\Delta_m u(t)\|_{L_x^2}^2
\le
\sum_{m=N-M}^{N+M}\|\Delta_m u(t)\|_{L_x^2}^2.
\tag{10}
```

Multiplying by `2^{3N}` gives the first inequality in `(7)`:

```math
\Theta_N^{ss,\sharp}(t)\le \Theta_N^\sharp(t).
\tag{11}
```

The second inequality in `(7)` is `(4)` together with `\Lambda_N(t)\ge
0`:

```math
\Theta_N^\sharp(t)\le \Lambda_N(t)+\Theta_N^\sharp(t)
=
\widetilde\Lambda_N^\sharp(t).
\tag{12}
```

Multiplying `(7)` by `E_N(t)\ge 0` and integrating in time yields `(8)`.
Using the displayed Littlewood--Paley upper bound `E_N(t)\le C_T\,T_1(K,t)` on
the weighted spectral surface gives `(9)`.

## Corollary: weak same-scale closure is already on the carrier surface

Insert `(8)` into the weak model theorem
`(SS^\sharp\text{-}model)` from
[same-scale-edge-family-and-model-estimate-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-edge-family-and-model-estimate-note.md).
Then each model packet satisfies

```math
\int_0^T |\Pi_{N,a}^{edge}(t)|\,dt
\le
\varepsilon \nu\int_0^T D_N(t)\,dt
+
C_{\varepsilon,a,\nu}\int_0^T \widetilde\Lambda_N^\sharp(t)\,E_N(t)\,dt.
\tag{13}
```

Using the finite-family lift from
[same-scale-family-lift-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-family-lift-lemma.md),
the same conclusion holds for the weak upper-boundary and moving-spill bounds:

```math
\int_0^T |\mathfrak B_N^{upper}(t)|\,dt
\le
\varepsilon_{ub}\nu\int_0^T D_N(t)\,dt
+
C_{ub}\int_0^T \widetilde\Lambda_N^\sharp(t)\,E_N(t)\,dt
+
C_{ub,*}2^{-2\delta N},
\tag{UB^\sharp\text{-}carrier}
```

```math
\int_0^T \Pi_N^{mov\text{-}spill,L}(t)\,dt
\le
\varepsilon_{ms}\nu\int_0^T D_N(t)\,dt
+
C_{ms}\int_0^T \widetilde\Lambda_N^\sharp(t)\,E_N(t)\,dt
+
C_{ms,*}2^{-2\delta N}.
\tag{MS^\sharp\text{-}carrier}
```

Hence, on the weighted spectral carrier-floor-leakage surface, the same-scale
side is no longer a distinct analytic burden. It is dominated by the
already-installed carrier term `\widetilde\Lambda_N^\sharp E_N`.

## Exact meaning of “kill” here

This note proves

```math
\boxed{
\text{the same-scale coefficient term is not a new barrier-scale theorem debt;}
\text{ it is already part of the weighted carrier.}
}
\tag{14}
```

So the effect is a **carrier kill**, not a coefficient-free algebraic
elimination.

## Honest boundary

This note does **not** prove the strong model theorem

```math
\int_0^T \Pi_{N,a}^{edge}(t)\,dt
\le
\varepsilon_a\nu\int_0^T D_N(t)\,dt
+
C_{a,*}2^{-2\delta N}.
\tag{SS}
```

It proves only that the coefficient-bearing term in `(SS^\sharp)` is bounded by
the live weighted carrier through `(7)` and the carrier estimates above.

So the strong coefficient-free theorem `(SS)` remains open if one insists on a
standalone same-scale packet theorem independent of
`\widetilde\Lambda_N^\sharp E_N`.
