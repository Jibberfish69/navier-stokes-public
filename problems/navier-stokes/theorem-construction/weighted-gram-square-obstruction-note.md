# Weighted Gram Square Obstruction Note

## Purpose

Answer the sharp question:

```text
can the nonlinear term reorganize into a coercive square-type defect under a
purely quadratic weighted Gram functional of the spatial derivative family?
```

The answer proved here is:

```text
not under a fixed quadratic weighted Gram functional by itself.
```

What such a functional does give exactly is:

1. an exact matrix identity for the nonlinear source;
2. a clean reduction of the problem to a weighted mixed-source matrix;
3. an obstruction to turning that source into a nontrivial square defect
   without adding higher-order correction terms or changing variables.

## 1. Spatial derivative family and commutator defect

Let

```math
U_\alpha := \partial_x^\alpha u,
\qquad 1\le |\alpha|\le r,
\tag{1}
```

for a smooth divergence-free Navier--Stokes solution on `\mathbb R^3`.

Write the spatially differentiated equation as

```math
\partial_t U_\alpha
+
u\cdot\nabla U_\alpha
+
\widetilde T_\alpha
+
\nabla P_\alpha
=
\nu \Delta U_\alpha,
\tag{2}
```

where

```math
\widetilde T_\alpha
:=
\sum_{\substack{0<\beta\le\alpha}}
\binom{\alpha}{\beta}
(U_\beta\cdot\nabla)U_{\alpha-\beta}
\tag{3}
```

is the spatial transport commutator defect, i.e. the failure of transport to
commute with the derivative family:

```math
\widetilde T_\alpha
=
\partial^\alpha(u\cdot\nabla u)-u\cdot\nabla(\partial^\alpha u).
\tag{4}
```

## 2. Weighted Gram functional

Let `I_r:=\{\alpha\in\mathbb N^3:1\le |\alpha|\le r\}` and let
`W=(w_{\alpha,\beta})_{\alpha,\beta\in I_r}` be a fixed symmetric real matrix.

Define the quadratic weighted Gram functional

```math
\mathcal K_W[u]
:=
\sum_{\alpha,\beta\in I_r}
w_{\alpha,\beta}\,\langle U_\alpha,U_\beta\rangle.
\tag{5}
```

Define the corresponding Dirichlet form

```math
\mathcal D_W[u]
:=
\sum_{\alpha,\beta\in I_r}
w_{\alpha,\beta}\,\langle \nabla U_\alpha,\nabla U_\beta\rangle.
\tag{6}
```

## 3. Exact weighted-Gram identity

### Proposition 1

For every smooth divergence-free solution and every fixed symmetric weight
matrix `W`,

```math
\frac{d}{dt}\mathcal K_W[u(t)]
+
2\nu\,\mathcal D_W[u(t)]
=
-\mathcal N_W[u(t)],
\tag{7}
```

where

```math
\mathcal N_W[u]
:=
\sum_{\alpha,\beta\in I_r}
w_{\alpha,\beta}
\Big(
\langle \widetilde T_\alpha,U_\beta\rangle
+
\langle U_\alpha,\widetilde T_\beta\rangle
\Big).
\tag{8}
```

#### Proof

Differentiate `(5)`:

```math
\frac{d}{dt}\mathcal K_W[u]
=
\sum_{\alpha,\beta}w_{\alpha,\beta}
\big(
\langle \partial_t U_\alpha,U_\beta\rangle
+
\langle U_\alpha,\partial_t U_\beta\rangle
\big).
\tag{9}
```

Insert `(2)` for `\partial_t U_\alpha,\partial_t U_\beta`.

Because `\nabla\cdot u=0`,

```math
\langle u\cdot\nabla U_\alpha,U_\beta\rangle
=
-\langle U_\alpha,u\cdot\nabla U_\beta\rangle,
\tag{10}
```

so the base transport terms cancel pairwise in `(9)`.

Because `\nabla\cdot U_\alpha=\nabla\cdot U_\beta=0`,

```math
\langle \nabla P_\alpha,U_\beta\rangle
=
\langle U_\alpha,\nabla P_\beta\rangle
=
0.
\tag{11}
```

Finally,

```math
\langle \Delta U_\alpha,U_\beta\rangle
+
\langle U_\alpha,\Delta U_\beta\rangle
=
-2\langle \nabla U_\alpha,\nabla U_\beta\rangle.
\tag{12}
```

Summing with weights `w_{\alpha,\beta}` yields `(7)` and `(8)`.
` \square `

## 4. What Proposition 1 gives

Proposition 1 proves the exact reorganization that is currently available.

It says:

```text
for every quadratic weighted Gram functional,
the nonlinear tower reorganizes into one symmetric weighted mixed-source matrix.
```

That is already useful, because it means the whole nonlinear burden is reduced
to the sign and structure of `\mathcal N_W[u]`.

## 5. Why the square law does not follow from quadratic Gram alone

The desired YM-style conclusion would be something like

```math
\mathcal N_W[u]
=
\mathcal F_W[u],
\qquad
\mathcal F_W[u]\ge 0,
\tag{13}
```

with `\mathcal F_W[u]` a nontrivial square-type defect, for instance one of the
following exact forms:

```math
\mathcal F_W[u]
:=
\sum_\alpha \|\widetilde T_\alpha\|_{L^2}^2
\quad\text{or}\quad
\mathcal F_W[u]
:=
\sum_{\alpha,\beta} c_{\alpha,\beta}
\langle \widetilde T_\alpha,\widetilde T_\beta\rangle.
\tag{14}
```

But this is impossible for a fixed quadratic Gram functional by homogeneity.

### Proposition 2

Under amplitude scaling `u\mapsto \lambda u`, one has

```math
\mathcal K_W[\lambda u] = \lambda^2 \mathcal K_W[u],
\qquad
\mathcal D_W[\lambda u] = \lambda^2 \mathcal D_W[u],
\qquad
\mathcal N_W[\lambda u] = \lambda^3 \mathcal N_W[u].
\tag{15}
```

#### Proof

Each derivative `U_\alpha` is linear in `u`, so `(5)` and `(6)` are quadratic.
The commutator defect `\widetilde T_\alpha` in `(3)` is quadratic in `u`.
Therefore each pairing

```math
\langle \widetilde T_\alpha,U_\beta\rangle
```

is cubic in `u`, hence `(8)` is cubic.
` \square `

### Corollary 3

No identity of the form

```math
\mathcal N_W[u] = c\,\mathcal Q[u]
\tag{16}
```

can hold for all smooth `u`, with `c\neq 0`, if `\mathcal Q[u]` is a nontrivial
square-type defect built quadratically from the transport commutators
`\widetilde T_\alpha`, because every such `\mathcal Q` is quartic:

```math
\mathcal Q[\lambda u]=\lambda^4 \mathcal Q[u].
\tag{17}
```

So a pure quadratic weighted Gram functional cannot directly yield the desired
YM-style square law.

## 6. Sharp interpretation

This proves the exact obstruction:

```math
\boxed{
\text{quadratic Gram energy } \Longrightarrow \text{ cubic transport source,}
}
```
```math
\boxed{
\text{whereas a square commutator defect would be quartic.}
}
\tag{18}
```

So the weighted Gram functional is the right place to compress the tower, but
not yet the right place to produce a nontrivial square defect by itself.

## 7. What would have to change

To actually land a YM-style dissipation law, at least one of the following must
happen:

1. **Add higher-order correction terms to the functional.**
   The energy can no longer be purely quadratic. Cubic correction terms could,
   after differentiation, produce quartic pieces capable of pairing with a
   square commutator defect.

2. **Change variables.**
   Move to a lifted or renormalized variable in which the dangerous defect is
   first-order rather than quadratic, so that its square has the right
   effective scaling.

3. **Prove an inequality instead of an identity.**
   The candidate burden is a one-sided estimate for the mixed-source matrix:
   ```math
   \mathcal N_W[u]
   \ge
   c\,\mathcal F[u] - \text{lower-order terms},
   \tag{19}
   ```
   with `\mathcal F` not literally identical to the cubic source.
   That route requires additional structure beyond the fixed quadratic Gram
   identity.

## 8. Bottom line

So the answer to the original question is:

```text
I can prove the exact weighted-Gram reorganization.
I cannot prove that it is already a coercive square law, because in that pure
quadratic setting the algebra forbids it.
```

The current weighted Gram functional gives the correct compression of the
nonlinear tower into a single symmetric mixed-source matrix.
But to obtain the Yang--Mills-style square defect, the route must be upgraded:

```math
\boxed{
\text{quadratic Gram functional is necessary bookkeeping, but not sufficient closure.}
}
\tag{20}
```

## Source anchors

- [tower-rewrite-under-ym-heat-shadow-bridge.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tower-rewrite-under-ym-heat-shadow-bridge.md)
- [transport-assisted-dissipation-target-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/transport-assisted-dissipation-target-note.md)
- [spatial-derivative-curvature-dissipation-theorem-target.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/spatial-derivative-curvature-dissipation-theorem-target.md)
