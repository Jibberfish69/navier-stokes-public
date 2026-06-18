# Lemma 4B No-Loss Pressure Recovery Attack

## Purpose

This note starts the direct attack on the decisive pressure lemma in the
Lagrangian six-lemma mainline:

```math
\boxed{
\text{recover the differentiated pressure at the same derivative depth,}
}
```

```math
\boxed{
\text{with no derivative loss,}
}
```

```math
\boxed{
\text{in the explicit pairing form needed to absorb the top-order pressure coupling into the deformation-side energy law.}
}
```

The route is not to postulate a pressure square.
It is to derive the exact elliptic equation for `Q_\alpha`, identify the
precise loss mechanism, and reduce the problem to one theorem-grade no-loss
estimate.

## Starting system

Work on the Lagrangian surface

```math
\partial_t v + A^\top \nabla_a q
=
\nu\,\operatorname{div}_a(G\nabla_a v),
\qquad
G:=AA^\top,
\tag{1}
```

with differentiated variables

```math
U_\alpha:=\partial_a^\alpha v,
\qquad
Q_\alpha:=\partial_a^\alpha q.
\tag{2}
```

The differentiated equation is

```math
\partial_t U_\alpha
+
A^\top\nabla_a Q_\alpha
=
\nu\,\operatorname{div}_a(G\nabla_a U_\alpha)
+
\mathcal C_\alpha^v,
\tag{3}
```

where

```math
\mathcal C_\alpha^v
=
-\sum_{0<\beta\le \alpha}\binom{\alpha}{\beta}
(\partial_a^\beta A^\top)\nabla_a Q_{\alpha-\beta}
+
\nu\sum_{0<\beta\le \alpha}\binom{\alpha}{\beta}
\operatorname{div}_a\!\Big((\partial_a^\beta G)\nabla_a U_{\alpha-\beta}\Big).
\tag{4}
```

The differentiated incompressibility constraint is

```math
\operatorname{div}_a(AU_\alpha)=\mathcal P_\alpha,
\tag{5}
```

with

```math
\mathcal P_\alpha
:=
-\sum_{0<\beta\le \alpha}\binom{\alpha}{\beta}
\operatorname{div}_a\!\Big((\partial_a^\beta A)U_{\alpha-\beta}\Big).
\tag{6}
```

## Exact elliptic equation for the differentiated pressure

Apply `\operatorname{div}_a(A\,\cdot)` to `(3)`.
Using

```math
\operatorname{div}_a(A\,\partial_t U_\alpha)
=
\partial_t\mathcal P_\alpha
-\operatorname{div}_a\!\big((\partial_t A)U_\alpha\big),
\tag{7}
```

and `AA^\top=G`, one obtains

```math
\operatorname{div}_a(G\nabla_a Q_\alpha)
=
-\partial_t\mathcal P_\alpha
+
\operatorname{div}_a\!\big((\partial_t A)U_\alpha\big)
+
\nu\,\operatorname{div}_a\!\big(A\,\operatorname{div}_a(G\nabla_a U_\alpha)\big)
+
\operatorname{div}_a(A\mathcal C_\alpha^v).
\tag{8}
```

This is the exact pressure-recovery equation.

## Desired no-loss estimate

The target is not merely to solve `(8)`.
It is to solve it at the same top derivative depth as the energy:

```math
\|\nabla_a Q_\alpha\|_{L_a^2}
\le
C\Big(
\mathfrak R_\alpha^{Lag}
+
\mathfrak L_\alpha^{low}
\Big),
\tag{9}
```

where the right-hand side uses only the same-depth family
`\{U_\alpha,\partial^\beta G\}_{|\alpha|,|\beta|\le r}` and lower-order
terms, with no derivatives beyond depth `r`.

The form actually needed in the energy method is

```math
|\langle Q_\alpha,\mathcal P_\alpha\rangle|
\le
\varepsilon\big(\mathcal D_r^{Lag}+\mathcal C_r^{Lag}\big)
+
C_\varepsilon\,\mathcal K_r^{Lag}.
\tag{10}
```

## Why derivative loss threatens

There are three distinct pressure-loss mechanisms.

### 1. The time-differentiated constraint

From `(8)`, the first dangerous term is

```math
\partial_t\mathcal P_\alpha.
\tag{11}
```

Since

```math
\mathcal P_\alpha
=
-\sum_{0<\beta\le \alpha}\binom{\alpha}{\beta}
\operatorname{div}_a\!\Big((\partial_a^\beta A)U_{\alpha-\beta}\Big),
\tag{12}
```

its time derivative differentiates both the coefficients and the lower-order
velocity family.

This is potentially still same-depth because `\alpha-\beta<\alpha`, but it
must be proved recursively and noncircularly.

### 2. The variable-coefficient viscous forcing in the pressure equation

The second dangerous term is

```math
\nu\,\operatorname{div}_a\!\big(A\,\operatorname{div}_a(G\nabla_a U_\alpha)\big).
\tag{13}
```

As an `H^{-1}` source, this is not harmless:

```math
\|\operatorname{div}_a(F)\|_{H_a^{-1}}
\le C_{H^{-1}}
\|F\|_{L_a^2},
\tag{14}
```

so controlling `(13)` by this route demands

```math
\|\operatorname{div}_a(G\nabla_a U_\alpha)\|_{L_a^2},
\tag{15}
```

which is one derivative above the natural Dirichlet control.

This is the clearest same-order loss source.

### 3. Top-order coefficient-pressure coupling inside the commutator packet

The pressure also reenters through the top coefficient term in `(4)`:

```math
-(\partial_a^\alpha A^\top)\nabla_a q.
\tag{16}
```

This is same-depth in derivatives of `A`, but it couples top-order geometry to
base pressure and therefore must be absorbed in the same-energy ledger.

## What can already be controlled

The top coefficient term involving `G` is at least a candidate for absorption by
putting `G` into the energy:

```math
\left|
\nu\int (\partial_a^\alpha G)\,\nabla_a v:\nabla_a U_\alpha\,da
\right|
\le
\varepsilon \nu \|\nabla_a U_\alpha\|_{L_a^2}^2
+
C_{\varepsilon,\nu}\|\nabla_a v\|_{L^\infty}^2
\|\partial_a^\alpha G\|_{L_a^2}^2.
\tag{17}
```

And differentiating the `G`-evolution gives a corresponding same-depth
top-order energy equation for `\partial_a^\alpha G`.

So the pure coefficient-loss problem is not the worst part.

## Direct attack A: H^{-1} elliptic estimate

The most conservative first attack is to prove

```math
\|\nabla_a Q_\alpha\|_{L_a^2}
\le C_Q
\|\partial_t\mathcal P_\alpha\|_{H_a^{-1}}
+
\|(\partial_t A)U_\alpha\|_{L_a^2}
+
\nu\|A\,\operatorname{div}_a(G\nabla_a U_\alpha)\|_{H_a^{-1}}
+
\|A\mathcal C_\alpha^v\|_{H_a^{-1}}.
\tag{18}
```

This is the cleanest formal estimate from `(8)`.

### Immediate problem

The third term on the right still carries the same derivative loss already
seen in `(15)`.

So the direct `H^{-1}` route does not close yet.

## Direct attack B: same-order pairing estimate

A better target is to avoid estimating `Q_\alpha` absolutely and instead bound
only the pairing needed in the energy law:

```math
|\langle Q_\alpha,\mathcal P_\alpha\rangle|.
\tag{19}
```

The idea is to test `(8)` against the variable-coefficient elliptic inverse of
`\mathcal P_\alpha`, not against a generic test function.

Formally, if `\Phi_\alpha` solves

```math
-\operatorname{div}_a(G\nabla_a \Phi_\alpha)=\mathcal P_\alpha,
\tag{20}
```

then

```math
\langle Q_\alpha,\mathcal P_\alpha\rangle
=
\int G\nabla_a Q_\alpha:\nabla_a \Phi_\alpha\,da.
\tag{21}
```

Using `(8)` gives the decomposition

```math
\langle Q_\alpha,\mathcal P_\alpha\rangle
=
-\langle \partial_t\mathcal P_\alpha,\Phi_\alpha\rangle
+
\langle \operatorname{div}_a((\partial_t A)U_\alpha),\Phi_\alpha\rangle
+
\nu\langle \operatorname{div}_a(A\,\operatorname{div}_a(G\nabla_a U_\alpha)),\Phi_\alpha\rangle
+
\langle \operatorname{div}_a(A\mathcal C_\alpha^v),\Phi_\alpha\rangle.
\tag{22}
```

If `\Phi_\alpha` can be controlled at the same depth by ellipticity of `G`,
this route may bypass part of the raw `H^{-1}` loss.

### Immediate problem

The viscous-pressure interaction term in `(22)` still carries the operator

```math
\operatorname{div}_a(A\,\operatorname{div}_a(G\nabla_a U_\alpha)),
\tag{23}
```

and there is no current theorem reducing it to a same-order
`\|\nabla_a U_\alpha\|_{L^2}` control without either:

1. integrating by parts into a form that reintroduces `\nabla_a Q_\alpha`, or
2. asking for one more derivative of `U_\alpha`.

So the pairing route is better targeted, but still not closed.

## Direct attack B'. Same-order pairing in the energy identity

The right quantity from the energy method is not

```math
\|\nabla_a Q_\alpha\|_{L_a^2},
\tag{23a}
```

but the actual pressure pairing

```math
\langle A^\top\nabla_a Q_\alpha,U_\alpha\rangle
=
-\langle Q_\alpha,\mathcal P_\alpha\rangle.
\tag{23b}
```

So the sharper formulation of Lemma 4B is:

```math
|\langle A^\top\nabla_a Q_\alpha,U_\alpha\rangle|
\le
\varepsilon\big(\mathcal D_r^{Lag}+\mathcal C_r^{Lag}\big)
+
C_\varepsilon\,\mathcal K_r^{Lag}
+
\mathrm{Tail}_N.
\tag{23c}
```

In this formulation, the dangerous viscous term in `(22)` is not treated as an
independent forcing term. Integrating by parts once gives

```math
\nu\left\langle
\operatorname{div}_a(A\,\operatorname{div}_a(G\nabla_a U_\alpha)),
\Phi_\alpha
\right\rangle
=
-\nu\left\langle
A\,\operatorname{div}_a(G\nabla_a U_\alpha),
\nabla_a\Phi_\alpha
\right\rangle,
\tag{23d}
```

and one more integration by parts yields

```math
\nu\int G\nabla_a U_\alpha:\nabla_a(A^\top\nabla_a\Phi_\alpha)\,da.
\tag{23e}
```

So the hidden mechanism is:

```math
\boxed{
\text{the pressure route target redistributes the same derivative content already present in the Dirichlet form,}
}
```

not create a genuinely new `r+2` source.

### Exact remaining issue

This improves the target, but it still leaves one theorem-grade hole:

```math
\boxed{
\text{one must control }\nabla_a(A^\top\nabla_a\Phi_\alpha)
\text{ at the same derivative depth from }
\mathcal K_r^{Lag}\text{ and }\mathcal C_r^{Lag}.
}
\tag{23f}
```

So the same-order pairing route is structurally correct, but still not closed.

## Expansion of the divergence defect `\mathcal P_\alpha`

The differentiated incompressibility constraint is the exact identity

```math
0
=
\partial_a^\alpha\operatorname{div}_a(Av)
=
\operatorname{div}_a(AU_\alpha)
+
\sum_{0<\beta\le \alpha}\binom{\alpha}{\beta}
\operatorname{div}_a\!\big((\partial_a^\beta A)\,U_{\alpha-\beta}\big).
\tag{23g}
```

Therefore the pressure-coupling defect is not an independent top-order source:

```math
\mathcal P_\alpha
:=
\operatorname{div}_a(AU_\alpha)
=
-\sum_{0<\beta\le \alpha}\binom{\alpha}{\beta}
\operatorname{div}_a\!\big((\partial_a^\beta A)\,U_{\alpha-\beta}\big)
=
\operatorname{div}_a\mathcal Z_\alpha,
\tag{23h}
```

with

```math
\mathcal Z_\alpha
:=
-\sum_{0<\beta\le \alpha}\binom{\alpha}{\beta}
(\partial_a^\beta A)\,U_{\alpha-\beta}.
\tag{23i}
```

This already gives two structural facts.

1. Every term in `\mathcal P_\alpha` contains at least one derivative of `A`.
   There is no free top-order divergence `\operatorname{div}_a U_\alpha`.
2. `\mathcal P_\alpha` is itself a coefficient-commutator defect generated by
   differentiating the constraint `\operatorname{div}_a(Av)=0`.

For the pressure-pairing route it is useful to split `\mathcal Z_\alpha` into
three derivative classes:

```math
\mathcal Z_\alpha
=
\mathcal Z_\alpha^{top,U}
+
\mathcal Z_\alpha^{top,A}
+
\mathcal Z_\alpha^{mix},
\tag{23j}
```

where

```math
\mathcal Z_\alpha^{top,U}
:=
-\sum_{|\beta|=1}\binom{\alpha}{\beta}
(\partial_a^\beta A)\,U_{\alpha-\beta},
\tag{23k}
```

```math
\mathcal Z_\alpha^{top,A}
:=
-(\partial_a^\alpha A)\,v,
\tag{23l}
```

and

```math
\mathcal Z_\alpha^{mix}
:=
-\sum_{2\le |\beta|\le |\alpha|-1}\binom{\alpha}{\beta}
(\partial_a^\beta A)\,U_{\alpha-\beta}.
\tag{23m}
```

So

```math
\mathcal P_\alpha
=
\operatorname{div}_a\mathcal Z_\alpha^{top,U}
+
\operatorname{div}_a\mathcal Z_\alpha^{top,A}
+
\operatorname{div}_a\mathcal Z_\alpha^{mix}.
\tag{23n}
```

This is the exact classification needed for Lemma 4B:

- `\operatorname{div}_a\mathcal Z_\alpha^{top,U}` is the edge term coupling one
  derivative of `A` to the top `U`-rung;
- `\operatorname{div}_a\mathcal Z_\alpha^{top,A}` is the edge term coupling the
  top `A`-rung to the undifferentiated velocity;
- `\operatorname{div}_a\mathcal Z_\alpha^{mix}` is the interior coefficient
  shell and is the most natural part to place into
  `C_\varepsilon\mathcal K_r^{Lag}`.

With `\Phi_\alpha` defined by `(20)`, the pressure test geometry is generated by

```math
-\operatorname{div}_a(G\nabla_a\Phi_\alpha)
=
\operatorname{div}_a\mathcal Z_\alpha.
\tag{23o}
```

Hence the pairing route will close if one can prove that the induced field
`\nabla_a(A^\top\nabla_a\Phi_\alpha)` stays on the same energy ledger as
`\mathcal Z_\alpha^{top,U}` and `\mathcal Z_\alpha^{top,A}`, with
`\mathcal Z_\alpha^{mix}` remaining lower-order.

So the pressure wall is now narrowed to one precise subquestion:

```math
\boxed{
\text{does the elliptic test geometry produced by }
\operatorname{div}_a\mathcal Z_\alpha
\text{ remain same-depth relative to the edge classes }
\mathcal Z_\alpha^{top,U},\ \mathcal Z_\alpha^{top,A}\ ?
}
\tag{23p}
```

### Corrected derivative-LP compatibility target

The source-side version of `(23p)` can be sharpened before one asks for a
global same-depth test-field estimate.

The raw statement

```math
\Delta_j\!\big((\partial_a^\beta A)\,U_{\alpha-\beta}\big)=0
\quad\text{unless both factors live in a fixed collar of }j
```

is too strong. It is false already at the Bony level, because a strict
low-high interaction
`S_{j-C_0}(\partial_a^\beta A)\,\Delta_jU_{\alpha-\beta}` still survives in
shell `j`.

So the correct bridge from derivative depth to Littlewood-Paley geometry is
not "everything is resonant." It is the para-banded split into:

- strict low-high coefficient packets,
- strict high-low coefficient packets, and
- one genuinely finite-collar resonant packet.

That source-side theorem packet is recorded in
[derivative-lp-compatibility-bridge-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/derivative-lp-compatibility-bridge-note.md).
The fuller shellwise version is developed later in this note in `(23ap)`-`(23as)`.

This is materially useful because it replaces the false monolithic target by a
shellwise/paraproduct target. But it still does **not** close Lemma 4B by
itself: one must then propagate that localized source structure through the
variable-coefficient elliptic response, i.e. through `L_G^{-1}\operatorname{div}`
or directly through the weighted bilinear form `\mathcal B_G`.

## Geometry-testing ladder for the pressure route

The right way to test the geometry is not to ask for one monolithic estimate.
There is a genuine ladder of possible bounds for the elliptic test field.

Let `L_G` denote the scalar divergence-form operator

```math
L_G\Phi
:=
-\operatorname{div}_a(G\nabla_a\Phi),
\qquad
L_G\Phi[X]=\operatorname{div}_a X
\tag{23q}
```

for mean-zero potentials. With

```math
W_\alpha^{test}
:=
A^\top\nabla_a\Phi_\alpha,
\qquad
L_G\Phi_\alpha=\operatorname{div}_a\mathcal Z_\alpha,
\tag{23r}
```

the geometry-testing problem is to decide which rung of the following ladder is
actually needed and actually true.

### Rung 1. Energy-level test-field control

By the weak formulation of `(23o)`,

```math
\int G\nabla_a\Phi_\alpha:\nabla_a\Phi_\alpha\,da
=
-\int \mathcal Z_\alpha\cdot\nabla_a\Phi_\alpha\,da,
\tag{23s}
```

so uniform ellipticity gives

```math
\|\nabla_a\Phi_\alpha\|_{L_a^2}
+
\|W_\alpha^{test}\|_{L_a^2}
\le C_{\mathrm{ell}}
\|\mathcal Z_\alpha\|_{L_a^2}.
\tag{23t}
```

This rung is always available under the bootstrap ellipticity window.

### Rung 2. Strong test-geometry control

If one differentiates the test field,

```math
\nabla_a W_\alpha^{test}
=
(\nabla_a A^\top)\nabla_a\Phi_\alpha
+
A^\top\nabla_a^2\Phi_\alpha,
\tag{23u}
```

then the Lipschitz-coefficient elliptic estimate available under the bootstrap
ellipticity and `W^{1,\infty}` coefficient bounds is

```math
\|\nabla_a W_\alpha^{test}\|_{L_a^2}
\le C_{\mathrm{ell},1}
\|\nabla_a\mathcal Z_\alpha\|_{L_a^2}
+
\|\mathcal Z_\alpha\|_{L_a^2},
\tag{23v}
```

with constants depending on the ellipticity and `W^{1,\infty}` norms of the
coefficients.

So a strong `L^2` bound on the test geometry costs one derivative of
`\mathcal Z_\alpha`.

### Rung 3. The naive same-depth bound

The most tempting estimate is

```math
\|\nabla_a W_\alpha^{test}\|_{L_a^2}
\le C_{\mathrm{test}}
\|\mathcal Z_\alpha\|_{L_a^2}.
\tag{23w}
```

But this is false in general, even in the constant-coefficient model
`A=I`, `G=I`. In that case

```math
-\Delta_a\Phi_\alpha=\operatorname{div}_a\mathcal Z_\alpha,
\qquad
\nabla_a W_\alpha^{test}=\nabla_a^2\Phi_\alpha,
\tag{23x}
```

and the operator

```math
\nabla_a^2(-\Delta_a)^{-1}\operatorname{div}_a
\tag{23y}
```

is order `+1` on `\mathcal Z_\alpha`, not order `0`.

So the direct same-depth `L^2` test-geometry estimate is not merely unproved;
it is the wrong target.

## Weighted bilinear form for the pressure pairing

The viable object is therefore not the standalone norm of
`\nabla_aW_\alpha^{test}`, but the exact weighted bilinear form induced by the
elliptic operator.

For vector fields `X,Y`, define

```math
\mathcal B_G(X,Y)
:=
\int G\nabla_a\Phi[X]:\nabla_a\Phi[Y]\,da
=
-\int X\cdot\nabla_a\Phi[Y]\,da,
\tag{23z}
```

where `L_G\Phi[X]=\operatorname{div}_a X`.

Now set

```math
\mathcal W_\alpha
:=
-\partial_t\mathcal Z_\alpha
+
(\partial_tA)U_\alpha
+
\nu A\,\operatorname{div}_a(G\nabla_aU_\alpha)
+
A\mathcal C_\alpha^v.
\tag{23aa}
```

Since

```math
\operatorname{div}_a(G\nabla_aQ_\alpha)
=
\operatorname{div}_a\mathcal W_\alpha,
\tag{23ab}
```

and `\mathcal P_\alpha=\operatorname{div}_a\mathcal Z_\alpha`, the pressure
pairing can be rewritten exactly as

```math
\langle A^\top\nabla_aQ_\alpha,U_\alpha\rangle
=
\mathcal B_G(\mathcal W_\alpha,\mathcal Z_\alpha).
\tag{23ac}
```

Its viscous contribution is therefore

```math
\mathcal I_\alpha^{vp}
:=
\nu\,\mathcal B_G\!\big(A\,\operatorname{div}_a(G\nabla_aU_\alpha),\mathcal Z_\alpha\big).
\tag{23ad}
```

This is the honest geometry-testing form of Lemma 4B.

It shows the precise fork:

1. either one proves an extra cancellation or renormalization reducing
   `\mathcal I_\alpha^{vp}` to the Dirichlet and commutator ledgers, or
2. one proves a stronger same-depth theorem for the weighted bilinear form
   `\mathcal B_G`, not for the full `L^2` norm of `\nabla_aW_\alpha^{test}`.

## Immediate attack on the viscous-pressure bilinear term

The live object is now

```math
\mathcal I_\alpha^{vp}
=
\nu\,\mathcal B_G\!\big(A\,\operatorname{div}_a(G\nabla_aU_\alpha),\mathcal Z_\alpha\big).
\tag{23ae}
```

So the direct attack is phrased in terms of the structure of
`\mathcal B_G`.

### Subroute 1. Split the viscous input into divergence and coefficient parts

Use the exact product decomposition

```math
A\,\operatorname{div}_a(G\nabla_aU_\alpha)
=
\operatorname{div}_a(AG\nabla_aU_\alpha)
-
(\nabla_a A):(G\nabla_aU_\alpha),
\tag{23af}
```

where `(\nabla_a A):(G\nabla_aU_\alpha)` denotes the vector obtained by
contracting one derivative of `A` against the matrix `G\nabla_aU_\alpha`.

This gives

```math
\mathcal I_\alpha^{vp}
=
\nu\,\mathcal B_G\!\big(\operatorname{div}_a(AG\nabla_aU_\alpha),\mathcal Z_\alpha\big)
-
\nu\,\mathcal B_G\!\big((\nabla_a A):(G\nabla_aU_\alpha),\mathcal Z_\alpha\big).
\tag{23ag}
```

The second term is visibly coefficient-commutator type and is the most natural
contribution to absorb into `\mathcal C_r^{Lag}`.

The first term is the only candidate for a same-order coercive interaction, but
it is **not** automatically harmless merely because it is in divergence form.
Inside `\mathcal B_G`, an exact-divergence input still probes the elliptic test
geometry generated by `\mathcal Z_\alpha`.

### Subroute 2. Search for a hidden Green-type symmetry in `\mathcal B_G`

Because

```math
\mathcal B_G(X,Y)=\mathcal B_G(Y,X),
\tag{23ah}
```

test whether the principal part of `(23ag)` can be rewritten so that
one derivative falls on the viscous input and one on the test potential in a
genuinely symmetric way.

The model question is whether there exists an identity of the form

```math
\mathcal B_G\!\big(\operatorname{div}_a(AG\nabla_aU_\alpha),\mathcal Z_\alpha\big)
=
\int \mathfrak M_G[\nabla_aU_\alpha,\mathcal Z_\alpha]\,da
+
\text{lower-order / exact pieces},
\tag{23ai}
```

with `\mathfrak M_G` same-depth and coercive or commutator-controlled.

This is the only place where an “extra cancellation” can realistically live.

The exact first computation on this route is:

```math
M_\alpha^{pr}:=AG\nabla_aU_\alpha,
\tag{23ai.1}
```

then by the definition of `\mathcal B_G`,

```math
\mathcal B_G\!\big(\operatorname{div}_a M_\alpha^{pr},\mathcal Z_\alpha\big)
=
-\int \operatorname{div}_a M_\alpha^{pr}\cdot\nabla_a\Phi_\alpha\,da
=
\int M_\alpha^{pr}:\nabla_a^2\Phi_\alpha\,da.
\tag{23ai.2}
```

So the principal divergence contribution does **not** automatically become a
Dirichlet form. It becomes a Hessian-testing term.

Writing

```math
\nabla_a^2\Phi_\alpha
=
G^{-1}\nabla_aW_\alpha^{test}
-
G^{-1}(\nabla_aA^\top)\nabla_a\Phi_\alpha,
\qquad
W_\alpha^{test}=A^\top\nabla_a\Phi_\alpha,
\tag{23ai.3}
```

gives the exact split

```math
\mathcal B_G\!\big(\operatorname{div}_a M_\alpha^{pr},\mathcal Z_\alpha\big)
=
\int AG\nabla_aU_\alpha:G^{-1}\nabla_aW_\alpha^{test}\,da
-
\int AG\nabla_aU_\alpha:G^{-1}(\nabla_aA^\top)\nabla_a\Phi_\alpha\,da.
\tag{23ai.4}
```

The second term is visibly coefficient-commutator type. The first term is the
true principal wall.

So Route A reduces to one sharper subquestion:

```math
\boxed{
\text{does }
\int AG\nabla_aU_\alpha:G^{-1}\nabla_aW_\alpha^{test}\,da
\text{ admit a same-depth reduction to }
\mathcal D_r^{Lag}\text{ plus lower-order terms?}
}
\tag{23ai.5}
```

At present there is no identity in hand making `(23ai.5)` coercive or exact.
That is the precise point where a hidden Green-type symmetry must supply a new
identity.

#### Verified Route A reduction

Let

```math
X_\alpha^{pr}:=\operatorname{div}_a(AG\nabla_aU_\alpha),
\qquad
\mathcal P_\alpha=\operatorname{div}_a(AU_\alpha).
\tag{23ai.6}
```

Then the full-sign index computation is exact:

```math
\operatorname{div}_a X_\alpha^{pr}
=
-L_G\mathcal P_\alpha
-
\operatorname{div}_a R_\alpha,
\qquad
R_\alpha:=\operatorname{div}_a\!\big(G(\nabla_aA)U_\alpha\big).
\tag{23ai.7}
```

Indeed, if

```math
\Xi_{\alpha,ik}
:=
G_{k\ell}(\partial_{a_\ell}A_{ij})U_{\alpha,j},
\qquad
(R_\alpha)_i:=\partial_{a_k}\Xi_{\alpha,ik},
\tag{23ai.7a}
```

then

```math
\partial_{a_i}(X_\alpha^{pr})_i
=
\partial_{a_i}\partial_{a_k}\!\Big(A_{ij}G_{k\ell}\partial_{a_\ell}U_{\alpha,j}\Big)
=
\partial_{a_i}\partial_{a_k}\!\Big(G_{k\ell}\partial_{a_\ell}(A_{ij}U_{\alpha,j})\Big)
-
\partial_{a_i}\partial_{a_k}\Xi_{\alpha,ik},
\tag{23ai.7b}
```

which is exactly `(23ai.7)`.

Therefore, by symmetry of `\mathcal B_G`,

```math
\mathcal B_G(X_\alpha^{pr},\mathcal Z_\alpha)
=
-\|\mathcal P_\alpha\|_{L_a^2}^2
-
\mathcal B_G(R_\alpha,\mathcal Z_\alpha).
\tag{23ai.8}
```

So the naked principal divergence term really does collapse to:

- one coercive pressure-defect square, and
- one coefficient-commutator bilinear remainder.

This is the first theorem-grade reduction of the pressure wall.

#### Weighted Helmholtz reinterpretation of Route A

The Route A identity `(23ai.8)` admits a sharper conceptual reading. The
pressure operator is not seeing the whole source `\mathcal Z_\alpha`; it is
seeing only its `G`-weighted exact projection.

Let `f_\alpha` be the mean-zero scalar field solving

```math
L_G f_\alpha=\operatorname{div}_a\mathcal Z_\alpha=\mathcal P_\alpha,
\tag{23ai.8a}
```

and define

```math
\Pi_G^{ex}\mathcal Z_\alpha
:=
-G\nabla_a f_\alpha,
\qquad
Y_\alpha
:=
\mathcal Z_\alpha-\Pi_G^{ex}\mathcal Z_\alpha
=
\mathcal Z_\alpha+G\nabla_a f_\alpha.
\tag{23ai.8b}
```

Then

```math
\operatorname{div}_a Y_\alpha=0.
\tag{23ai.8c}
```

So `\mathcal Z_\alpha` admits the weighted Helmholtz split

```math
\mathcal Z_\alpha
=
\Pi_G^{ex}\mathcal Z_\alpha
+
Y_\alpha,
\qquad
\operatorname{div}_aY_\alpha=0,
\tag{23ai.8d}
```

with the scalar pressure geometry driven only by the exact channel.

Indeed, because `L_G\Phi[Y_\alpha]=\operatorname{div}_aY_\alpha=0`, the
mean-zero potential generated by `Y_\alpha` vanishes, and therefore for every
vector field `X`,

```math
\mathcal B_G(X,\mathcal Z_\alpha)
=
\mathcal B_G(X,\Pi_G^{ex}\mathcal Z_\alpha).
\tag{23ai.8e}
```

In particular, the current pressure potential `\Phi_\alpha` is already the
potential of the exact channel:

```math
\Pi_G^{ex}\mathcal Z_\alpha=-G\nabla_a\Phi_\alpha.
\tag{23ai.8f}
```

So the exterior/Hodge viewpoint does not introduce a new operator. It
reinterprets the existing Route A potential as the exact projection of the
pressure source.

This gives one genuine gain in clarity:

```math
\boxed{
\text{the scalar pressure route only sees the exact part of }\mathcal Z_\alpha;
\text{ the divergence-free channel is invisible to }L_G^{-1}\operatorname{div}_a.
}
\tag{23ai.8g}
```

There is also a quantitative gain at the natural weighted `L^2` level. Using
`(23ai.8a)` and testing against `f_\alpha` gives

```math
\int G\nabla_af_\alpha:\nabla_af_\alpha\,da
=
-\int \mathcal Z_\alpha\cdot\nabla_af_\alpha\,da.
\tag{23ai.8g1}
```

Hence

```math
\|\Pi_G^{ex}\mathcal Z_\alpha\|_{L^2_{G^{-1}}}
=
\|G^{1/2}\nabla_af_\alpha\|_{L^2_a}
\le
\|\mathcal Z_\alpha\|_{L^2_{G^{-1}}},
\tag{23ai.8g2}
```

where

```math
\|X\|_{L^2_{G^{-1}}}^2:=\int G^{-1}X\cdot X\,da.
\tag{23ai.8g3}
```

In fact the decomposition `(23ai.8d)` is orthogonal for this weighted inner
product:

```math
\int G^{-1}\Pi_G^{ex}\mathcal Z_\alpha\cdot Y_\alpha\,da
=
-\int \nabla_af_\alpha\cdot Y_\alpha\,da
=0,
\tag{23ai.8g4}
```

so

```math
\|\mathcal Z_\alpha\|_{L^2_{G^{-1}}}^2
=
\|\Pi_G^{ex}\mathcal Z_\alpha\|_{L^2_{G^{-1}}}^2
+
\|Y_\alpha\|_{L^2_{G^{-1}}}^2.
\tag{23ai.8g5}
```

Do not confuse this with the algebraic symmetric/antisymmetric split of
the factor tensor `(\partial_a^\beta A)\otimes U`. Antisymmetry in the factor
indices is not, by itself, the same as coexactness of the resulting source
vector field. To turn the exterior/wedge channel into a pressure gain the route
still needs a theorem that its weighted exact projection is smaller, lower-order,
or otherwise controlled on a better ledger.

But it also marks the honest limitation. The decomposition `(23ai.8d)` becomes
decisive only if one can prove that the exact projection is smaller or better
structured than the full source:

```math
\|\Pi_G^{ex}\mathcal Z_\alpha\|_{\mathcal X}
\ll
\|\mathcal Z_\alpha\|_{\mathcal X}
\quad\text{or at least}\quad
\Pi_G^{ex}\mathcal Z_\alpha
\text{ obeys a better ledger.}
\tag{23ai.8h}
```

At present there is no such theorem in hand. For the edge classes one still
expects same-depth divergence:

```math
\operatorname{div}_a\mathcal Z_\alpha^{top,A}
=
(\partial_a^{\alpha+1}A)\,v
+
(\partial_a^\alpha A)\,\nabla_av,
\tag{23ai.8i}
```

and similarly

```math
\operatorname{div}_a\mathcal Z_\alpha^{top,U}
=
(\partial_a^2A)\,U_{\alpha-\beta}
+
(\partial_aA)\,\nabla_aU_{\alpha-\beta}.
\tag{23ai.8j}
```

So the two top edge classes do **not** behave equally under the exact
projection test:

- `\mathcal Z_\alpha^{top,A}` remains pressure-active, because its divergence
  is driven by a genuinely top-order source.
- `\mathcal Z_\alpha^{top,U}` is the friendlier Hodge candidate: only one
  derivative falls on `A`, and the active velocity rung is `U_{\alpha-\beta}`,
  one level below the top rung. This is better structured, though still not
  automatically small.

So the weighted Hodge split is presently diagnostic rather than closing: it
shows that pressure sees only the exact channel, but it does not yet show that
the dangerous top-edge source is mostly carried by the divergence-free channel.

Combined with the derivative-LP bridge `(23bh)`-`(23bj)`, this suggests the
sharp reserve theorem target:

```math
\boxed{
\Pi_G^{ex}\mathcal Z_{\alpha,j}^{low\text{-}high}
\text{ lands on the coefficient ledger,}
\qquad
\mathcal Z_{\alpha,j}^{res}
\text{ satisfies a same-depth shellwise }\mathcal B_G\text{ theorem.}
}
\tag{23ai.8k}
```

This can be sharpened once more at the operator level. Since

```math
\Pi_G^{ex}=-G\nabla_aL_G^{-1}\operatorname{div}_a
\tag{23ai.8k1}
```

is variable-coefficient, it need not preserve dyadic shells exactly. So the
true shellwise response identity is

```math
\Delta_j\Pi_G^{ex}\mathcal Z_\alpha
=
\Pi_G^{ex}\Delta_j\mathcal Z_\alpha
+
[\Delta_j,\Pi_G^{ex}]\,\mathcal Z_\alpha.
\tag{23ai.8k2}
```

After the para-banded source split `(23bh)`, the reserve theorem therefore
really asks for:

```math
\boxed{
\Pi_G^{ex}\mathcal Z_{\alpha,j}^{low\text{-}high}
\to
\text{coefficient ledger},
\quad
\Pi_G^{ex}\mathcal Z_{\alpha,j}^{res}
\to
\text{same-depth shellwise }\mathcal B_G,
\quad
[\Delta_j,\Pi_G^{ex}]\,\mathcal Z_\alpha
\to
\text{lower-order / coefficient ledger}.
}
\tag{23ai.8k3}
```

For the friendliest top-`U` low-high packet, this can be made even more
concrete. If

```math
a_{\alpha,\beta,j}:=S_{j-C}\partial_a^\beta A,
\qquad
v_{\alpha,\beta,j}:=\Delta_jU_{\alpha-\beta},
\qquad |\beta|=1,
\tag{23ai.8k4}
```

then the exact projection is attacked through

```math
\Pi_G^{ex}(a_{\alpha,\beta,j}v_{\alpha,\beta,j})
=
a_{\alpha,\beta,j}\,\Pi_G^{ex}v_{\alpha,\beta,j}
+
[\Pi_G^{ex},a_{\alpha,\beta,j}]\,v_{\alpha,\beta,j}.
\tag{23ai.8k5}
```

So the real theorem packet on the friendlier edge is:

```math
\boxed{
\|[\Pi_G^{ex},a_{\alpha,\beta,j}]\,v_{\alpha,\beta,j}\|_{\text{pressure ledger}}
\le C_{\Pi}
\text{coefficient ledger}
}
\tag{23ai.8k6}
```

with `a_{\alpha,\beta,j}` genuinely low frequency. If such a commutator bound
holds by paradifferential elliptic calculus, then the top-`U` low-high packet
is structurally no worse than the already admitted coefficient transport on the
Euclidean side.
The exact principal-symbol object is the order-zero projector
`\Pi_G^{ex}=-G\nabla_aL_G^{-1}\operatorname{div}_a`, whose symbol is the
rank-one projector

```math
p_G(a,\xi)=\frac{G(a)\xi\otimes\xi}{\xi\cdot G(a)\xi}.
\tag{23ai.8k6a}
```

The order `-1` payment is therefore not a heuristic gain from the projector
itself. It must be the frequency-separated commutator theorem under the exact
symbol hypotheses on `p_G`: uniform ellipticity of `G`, the required
`S^0_{1,0}` seminorm bounds for `p_G`, and a genuinely low-frequency
coefficient `a_{<j-C}`. Under those hypotheses the sharpened shellwise target is

```math
\|[\Pi_G^{ex},a_{<j-C}]\,\Delta_j v\|_{L^2_a}
\le C_{\Pi}
2^{-j}\|\nabla_a a_{<j-C}\|_{L^\infty_a}\,\|\Delta_j v\|_{L^2_a}
+
\text{lower metric-symbol terms},
\tag{23ai.8k6b}
```

The theorem-grade version now lives in
[weighted-exact-projection-commutator-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-exact-projection-commutator-theorem-candidate.md),
where `(WEP.A1)`-(`WEP.A2)` expose the exact `S^0_{1,0}` symbol hypotheses,
`(WEP.2'd)` quantifies the shellwise remainder
`\Pi_G^{ex}\Delta_j=T_{p_G}\Delta_j+R_{G,j}`, and `(WEP.2p)` gives the
one-sided pressure-ledger upgrade. In particular, the lower terms in
`(23ai.8k6b)` are no longer informal: they are exactly the quantified
`R_{G,j}` commutator terms controlled on the coefficient ledger.
This theorem is now isolated explicitly in
[weighted-exact-projection-commutator-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-exact-projection-commutator-theorem-candidate.md).
Its quantified theorem-grade form now fixes the ellipticity / symbol-class
assumptions on `G`, the shellwise realization
`\Pi_G^{ex}\Delta_j=T_{p_G}\Delta_j+R_{G,j}`, and the explicit order `-1`
metric-symbol remainder bounds.
The remaining same-depth debt on the exact-projection carrier is isolated
separately in
[weighted-exact-projection-resonant-shell-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-exact-projection-resonant-shell-theorem-candidate.md).

#### Sharp classification of the Hodge route

At this point the Hodge/Helmholtz idea has done all of the abstract work it can
do on the current surface.

1. The exact projection reduction is already installed through `(23ai.8a)`-
   `(23ai.8g5)`.
2. The abstract weighted Hodge split is therefore no longer the live theorem
   burden.
3. The live reserve burden is now the shellwise exact-projection propagation
   theorem `(23ai.8k3)` / `(23ai.8k6)`.

Equivalently:

```math
\boxed{
\text{the Hodge reduction is finished work;}
\quad
\text{the remaining reserve debt is a shellwise source-plus-response-plus-}
\text{commutator theorem for }\Pi_G^{ex}.
}
\tag{23ai.8k7}
```

Within that sharpened classification, the edge classes separate cleanly:

- `\mathcal Z_\alpha^{top,A}` remains a first-class pressure source and is
  treated as the hard edge channel;
- the only edge packet that still looks capable of yielding a real gain is the
  top-`U` low-high channel treated through `(23ai.8k5)`-`(23ai.8k6)`.

That is the exact point where the Hodge/Helmholtz idea ceases to be diagnostic:
it becomes a genuine closure tool for the reserve 4B route only after
`(23ai.8k6)` is proved.

#### Same-depth bound on the Route A remainder

Using the basic elliptic energy bound for `\mathcal B_G`,

```math
|\mathcal B_G(X,Y)|
\le
\|G^{-1/2}X\|_{L_a^2}\,\|G^{-1/2}Y\|_{L_a^2},
\tag{23ai.9}
```

one has

```math
|\mathcal B_G(R_\alpha,\mathcal Z_\alpha)|
\le
\|G^{-1/2}R_\alpha\|_{L_a^2}\,
\|G^{-1/2}\mathcal Z_\alpha\|_{L_a^2}.
\tag{23ai.10}
```

If the coefficient window satisfies

```math
G\nabla_aA\in L^\infty,
\qquad
\nabla_a(G\nabla_aA)\in L^\infty,
\tag{23ai.11}
```

then keeping `R_\alpha` in divergence form gives

```math
\|R_\alpha\|_{L_a^2}
\le C_R
\|\nabla_a(G\nabla_aA)\|_{L^\infty}\,\|U_\alpha\|_{L_a^2}
+
\|G\nabla_aA\|_{L^\infty}\,\|\nabla_aU_\alpha\|_{L_a^2}.
\tag{23ai.12}
```

Hence

```math
|\mathcal B_G(R_\alpha,\mathcal Z_\alpha)|
\le C_B
\|G^{-1/2}\mathcal Z_\alpha\|_{L_a^2}
\Big(
\|\nabla_a(G\nabla_aA)\|_{L^\infty}\,\|U_\alpha\|_{L_a^2}
+
\|G\nabla_aA\|_{L^\infty}\,\|\nabla_aU_\alpha\|_{L_a^2}
\Big),
\tag{23ai.13}
```

and by Young's inequality,

```math
|\mathcal B_G(R_\alpha,\mathcal Z_\alpha)|
\le
\varepsilon \|\nabla_aU_\alpha\|_{L_a^2}^2
+
C_{\varepsilon,\mathrm{coeff}}
\Big(
\|U_\alpha\|_{L_a^2}^2
+
\|\mathcal Z_\alpha\|_{L_a^2}^2
\Big).
\tag{23ai.14}
```

So the Route A remainder is genuinely same-depth **provided** the stronger
coefficient window `(23ai.11)` is available.

#### Exact remaining obstruction after verification

The verified Route A reduction changes the pressure wall. The remaining
obstruction is no longer the naked top viscous-pressure term. It is now:

```math
\boxed{
\text{can the mainline theorem surface justify the coefficient window }
G\nabla_aA,\ \nabla_a(G\nabla_aA)\in L^\infty
\text{ from the current same-depth deformation ledger?}
}
\tag{23ai.15}
```

## Corrected derivative-frequency compatibility route

There is a real connection between the derivative-tower splitting
`\mathcal Z_\alpha^{top,U}+\mathcal Z_\alpha^{top,A}+\mathcal Z_\alpha^{mix}`
and the Eulerian fixed-collar locality machinery. But the naive transfer claim

```math
\Delta_j\big((\partial_a^\beta A)\,U_{\alpha-\beta}\big)=0
\quad\text{unless both factor frequencies lie in a fixed collar of }j
\tag{23ba}
```

is too strong. The Littlewood-Paley / Bony decomposition `(23bb)` leaves strict
low-high and high-low packets alive; only the genuinely high-high remainder in
`(23bf)` lies in a fixed collar.

For each fixed `0<\beta\le\alpha`, write

```math
(\partial_a^\beta A)\,U_{\alpha-\beta}
=
T_{\partial_a^\beta A}U_{\alpha-\beta}
+
T_{U_{\alpha-\beta}}\partial_a^\beta A
+
R(\partial_a^\beta A,U_{\alpha-\beta}),
\tag{23bb}
```

where, for a universal Littlewood-Paley collar width `C_{\mathrm{LP}}`,

```math
T_f g:=\sum_k S_{k-C_{\mathrm{LP}}}f\,\Delta_k g,
\qquad
R(f,g):=\sum_{|k-\ell|\le C_{\mathrm{LP}}}\Delta_k f\,\Delta_\ell g.
\tag{23bc}
```

Projecting to shell `j` gives the exact support trichotomy

```math
\Delta_j\!\big(T_{\partial_a^\beta A}U_{\alpha-\beta}\big)
=
\sum_{|k-j|\le C_{\mathrm{LP}}}
\Delta_j\!\Big((S_{k-C_{\mathrm{LP}}}\partial_a^\beta A)\,\Delta_k U_{\alpha-\beta}\Big),
\tag{23bd}
```

```math
\Delta_j\!\big(T_{U_{\alpha-\beta}}\partial_a^\beta A\big)
=
\sum_{|k-j|\le C_{\mathrm{LP}}}
\Delta_j\!\Big((S_{k-C_{\mathrm{LP}}}U_{\alpha-\beta})\,\Delta_k\partial_a^\beta A\Big),
\tag{23be}
```

and

```math
\Delta_j\!\big(R(\partial_a^\beta A,U_{\alpha-\beta})\big)
=
\sum_{\substack{|k-\ell|\le C_{\mathrm{LP}}\\|k-j|\le C_{\mathrm{LP}}}}
\Delta_j\!\Big((\Delta_k\partial_a^\beta A)\,(\widetilde\Delta_\ell U_{\alpha-\beta})\Big),
\tag{23bf}
```

where `\widetilde\Delta_\ell` is the fixed-collar fattened shell. So the correct
compatibility statement is:

```math
\boxed{
\Delta_j\!\big((\partial_a^\beta A)\,U_{\alpha-\beta}\big)
=
\text{strict low-high coefficient packet at shell }j
+
\text{strict high-low coefficient packet at shell }j
+
\text{finite-collar resonant packet.}
}
\tag{23bg}
```

In particular, the derivative tower is **para-banded** in frequency, not
literally band-diagonal. Off-diagonal high-high leakage is removed by the
Littlewood-Paley support geometry, but one-sided strict-low coefficient
transport remains.
This source-side localization theorem is isolated separately in
[derivative-lp-compatibility-bridge-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/derivative-lp-compatibility-bridge-note.md).

### Consequence for the pressure source

Applying `(23bg)` termwise to `\mathcal Z_\alpha^{top,U}`,
`\mathcal Z_\alpha^{top,A}`, and `\mathcal Z_\alpha^{mix}` yields a shellwise
decomposition

```math
\Delta_j\mathcal Z_\alpha
=
\mathcal Z_{\alpha,j}^{low\text{-}high}
+
\mathcal Z_{\alpha,j}^{high\text{-}low}
+
\mathcal Z_{\alpha,j}^{res},
\tag{23bh}
```

where:

1. `\mathcal Z_{\alpha,j}^{low-high}` contains only low-frequency coefficient
   packets of the form
   `(S_{j-C_{\mathrm{LP}}}\partial_a^\beta A)\,\Delta_j U_{\alpha-\beta}`;
2. `\mathcal Z_{\alpha,j}^{high-low}` contains the symmetric packets with the
   low factor carried by `U_{\alpha-\beta}`;
3. `\mathcal Z_{\alpha,j}^{res}` is supported only on finitely many shell pairs
   with frequencies `|k-j|\le C_{\mathrm{LP}}` and
   `|\ell-j|\le C_{\mathrm{LP}}`.

So a localization-based proof of Lemma 4B does not try to prove pure collar
locality for `\mathcal Z_\alpha`. The correct reserve route is:

```math
\boxed{
\text{strict low-high / high-low packets}
\Longrightarrow
\text{existing coefficient ledger},
\qquad
\text{finite-collar resonant packet}
\Longrightarrow
\text{same-depth shellwise }\mathcal B_G\text{ theorem}.
}
\tag{23bi}
```

This is the exact analogue of the Eulerian fixed-collar shell-pair reduction:
only the resonant packet is genuinely same-depth and frequency-local; the
remaining nonlocality is one-sided coefficient transport.

### Exact remaining theorem on the localization route

Therefore the useful derivative-frequency bridge is not `(23ba)`. The real
intermediate statement is:

```math
\boxed{
\text{After Littlewood-Paley projection, the pressure source }
\mathcal Z_\alpha
\text{ splits into admissible strict-low coefficient packets plus one finite-}
\text{collar resonant packet.}
}
\tag{23bj}
```

If one can prove that the strict-low packets in `(23bh)` are controlled by the
same coefficient window already used on the bridge surface, and that the
resonant packet satisfies a same-depth shellwise bilinear estimate inside
`\mathcal B_G`, then Lemma 4B admits a second proof route independent of
the global frame-window invocation `(13b)`.
After the weighted exact-projection split, that reserve burden is now localized
to the theorem pair
[weighted-exact-projection-commutator-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-exact-projection-commutator-theorem-candidate.md)
and
[weighted-exact-projection-resonant-shell-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-exact-projection-resonant-shell-theorem-candidate.md):
the first demotes all low-high projector defects, and the second isolates the
pure resonant main term on the exact projected carrier.

This reserve route is now fully localized on disk. The low-high side has been
reduced to the explicit projector commutator theorem `(WEP.2')` in
[weighted-exact-projection-commutator-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-exact-projection-commutator-theorem-candidate.md),
and the resonant side has been split into a pure main-term theorem plus a
projector-defect remainder theorem in
[weighted-exact-projection-resonant-shell-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-exact-projection-resonant-shell-theorem-candidate.md).
So the sharp reserve theorem pair is now

```math
\text{low-high projector commutator theorem }(WEP.2')
\quad+\quad
\big(
\text{capwise operator theorem }(WERS.3Cap-BO)\text{ / }(WERS.3Cap-TT)
\ \text{or}\
\text{shell symbol estimate }(WERS.3R)
\big)
\Longrightarrow
\text{pure resonant shell theorem }(WERS.2b)\text{ / }(WERS.2s)
\Longrightarrow
\text{reserve 4B closure.}
```

The sharpest sufficient mechanism now on disk for the resonant side is the
operator-level cap route in
[weighted-exact-projection-resonant-shell-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-exact-projection-resonant-shell-theorem-candidate.md),
which reduces the remaining burden to a projected transport null factor plus a
cap-localized packet geometry that proves `(WERS.3Cap-BO)` /
`(WERS.3Cap-TT)` directly. The same note keeps the angularly thin `C^N` symbol
route as a secondary sufficient branch.
The exact remaining reserve construction burden is now the cap packet
`(WERS.3Cap)` on that surface.
The note now also records the exact caveat: a single linear angular null factor
does not by itself control all `C^N` symbol seminorms on `\rho_j`-scale caps, so
`(WERS.3Cap)` still needs one of the three exact upgrades on that surface:
`(WERS.3Cap-HV)`, `(WERS.3Cap-RF)`, or `(WERS.3Cap-BO)`.
On the preferred operator branch, the same-depth local burden is now factored
through the standalone packet
[frozen-cap-pair-bilinear-form-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/frozen-cap-pair-bilinear-form-lemma.md):
prove the pairwise frozen cap bound `(FCP.4)` and the freezing remainder
estimate `(FCP.3b)`, then feed them into `(WERS.2b)` / `(WERS.2s)`.
The cap-graph summation to `(FCP.5)` is now already discharged there as the
finite-valence reduction `(FCP-graph)`, and the capwise square-function step is
reduced to `(FCP-sq)` plus `(FCP-sq')`.
That packet now also records the theorem-grade sufficient discharge
`M_j^{coeff}r_j^{cell}\le \varepsilon_j` and its Hölder specialization for the
freezing remainder.
It now also records the sharper explicit dyadic sufficient discharges
`M_j^{coeff}r_j^{cell}\le c\,2^{-2j}` and
`M_j^{coeff}(r_j^{cell})^\alpha[a]_{C^\alpha}\le c\,2^{-2j}` for the stronger
same-depth demotion `(FCP.3c)`, and packages that dyadic implication as
`(FCP-shell)`.
The abstract implication `(FCP-cell)` is now discharged there, so the local
same-depth burden has been reduced to verifying the smallness hypotheses on the
chosen carrier.
The pairwise frozen cap bound is now the single-pair corollary of the operator
route `(WERS.3Cap-TT)` on that same carrier.
The lane-local execution contract for this remaining work is now frozen in
[closure-execution-contract.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/closure-execution-contract.md):
the live local gauge is the scalar freezing envelope `\varepsilon_j^{freeze}`,
not another route restatement.

A wider coercivity-rigidity globalization loop is now recorded separately in
[cap-null-coercivity-rigidity-globalization-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/cap-null-coercivity-rigidity-globalization-program.md).
That note is deliberately reserve-only: the current capwise operator theorem is
unsigned, so the first missing globalization theorem is still a signed defect
positivity statement on the same carrier.
That first signed theorem is now frozen separately in
[capwise-signed-defect-positivity-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/capwise-signed-defect-positivity-theorem-candidate.md).
That signed packet is now formulated first with an abstract shell-local
coercive coefficient `\kappa_j` and a cap-adjacency matrix reduction, so the
sign route stays stable even while the exact bridge normalization is still
moving.
Its current theorem-grade sufficient route is the block-Gershgorin positivity
criterion through the net cap-graph margin `\kappa_j^{net}`.
The abstract theorem `(CSD-net)` is now discharged there; the live reserve sign
burden is only to prove that `\kappa_j^{net}` is positive on the chosen cap
graph, now sharpened further to a diagonal-vs-weighted-neighbor dominance test
on the cap graph.
If that reserve sign theorem lands, the next honest reserve dynamic burden is a
renormalized shell-energy inequality with weighted boundary-transfer
absorption, not an automatic tail barrier.
The abstract boundary absorption step `(CNCR-bdry)` is likewise discharged, and
the neighboring-shell reduction `(CNCR-neigh)` is now discharged as well. The
remaining reserve dynamic burden is only to verify the boundary packet
normalization `(CNCR.3g)`, the tail smallness `\Gamma_J\to0`, and the high-high
estimate `(CNCR.3e)` on the chosen carrier.
The reserve packets are now collapsed there to the sign margin `m_j^{sign}` and
the boundary-transfer coefficient `\beta_J(\eta)`.
The clean bundled verification target for those three scalar gates is now
recorded separately in
[transported-phase-space-selector-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/transported-phase-space-selector-theorem-candidate.md):
it treats the remaining work as one selector/localizer theorem candidate on top
of the classical carrier, rather than as a new carrier ontology.
That selector packet now makes one further distinction explicit: the local and
sign sides are reduced there to deterministic selector refinements, while the
only genuinely bespoke remaining theorem input is the transport-decorrelation
/ nonshadowing burden, now split there into a strong bad-set route and a weaker
shadow-time route. The Lagrangian nonshadowing specialization `(TPS.4h)`-`(TPS.4i)`
remains the strong gate, while the oriented pair-gap / derived-label criteria
`(TPS.4j)`-`(TPS.4q)` and coarea/transversality `(TPS.4x)`-`(TPS.4aa)` now feed
the weaker occupancy endpoint unless supplemented by a no-return theorem. The
strong mechanism is measure-linearized transverse expansion `(TPS.4r)`-`(TPS.4w)`
or any equivalent package, such as `TPS-strain-bundle`, that proves `(TPS.4i)`
directly. The normalized family theorem `(TPS.4ai)`-`(TPS.4am)` therefore now
packages one strong bad-set endpoint and one weak shadow-time endpoint. The
conservative primary target inside that family is now the named good-set theorem
`TPS-ns-good-set`.
Scalar selector labels are treated there only as derived corollaries, chart
refinements, or pair-gap potentials, not as primitive dynamic data. The
remaining NS-specific burden inside `TPS-ns-good-set` is now further reduced to
the lower-bound packets `(GS.15)` or `(GS.21)`.

Inside the resonant note, the preferred route is now recorded explicitly:
an angular null factor from the complementary projected symbol
`\Pi_G^\sigma=I-p_G`, combined with capwise almost-orthogonality / `TT^*`
geometry on active pairs at angular scale `\rho_j`, proves the operator theorem
`(WERS.3Cap-BO)` / `(WERS.3Cap-TT)` directly. If that operator route fails, the
same note still preserves the symbolic fallback through `(WERS.3Cap-HV)` or
`(WERS.3Cap-RF)` into `(WERS.3R)`.

Without `(23ai.11)`, the bound `(23ai.14)` is not yet available on the current
lemma surface. If one weakens `R_\alpha` to `H^{-1}` control instead, the
argument falls back onto the already-failed Hessian-testing route.

### Subroute 3. Renormalize the viscous input before feeding it into `\mathcal B_G`

If `(23ai)` does not exist directly, the next repair is to look for a tensor
correction `\Xi_\alpha` such that

```math
X_\alpha^{ren}
:=
A\,\operatorname{div}_a(G\nabla_aU_\alpha)
-
\operatorname{div}_a\Xi_\alpha
\tag{23aj}
```

has better same-depth behavior in the bilinear form, while

```math
\mathcal B_G(\operatorname{div}_a\Xi_\alpha,\mathcal Z_\alpha)
\tag{23ak}
```

captures the derivative-losing top piece explicitly.

Then the theorem burden becomes:

```math
\mathcal I_\alpha^{vp}
=
\nu\,\mathcal B_G(X_\alpha^{ren},\mathcal Z_\alpha)
+
\nu\,\mathcal B_G(\operatorname{div}_a\Xi_\alpha,\mathcal Z_\alpha),
\tag{23al}
```

and one asks whether the first term is same-depth and the second term can be
reduced to an explicit exact or coercive ledger contribution.

#### Current Route B result

The strongest exact renormalization found so far is the full principal-flux
subtraction

```math
\Xi_\alpha^{pr}:=AG\nabla_aU_\alpha,
\qquad
X_\alpha^{ren}
:=
A\,\operatorname{div}_a(G\nabla_aU_\alpha)
-
\operatorname{div}_a\Xi_\alpha^{pr}.
\tag{23al.1}
```

By the product decomposition `(23af)`, this gives

```math
X_\alpha^{ren}
=
-(\nabla_aA):(G\nabla_aU_\alpha),
\tag{23al.2}
```

so the renormalized residual is pure coefficient-commutator type and is
compatible with the deformation ledger.

But the correction term still becomes

```math
\mathcal B_G(\operatorname{div}_a\Xi_\alpha^{pr},\mathcal Z_\alpha)
=
\int \Xi_\alpha^{pr}:\nabla_a^2\Phi_\alpha\,da,
\tag{23al.3}
```

which is still a Hessian-testing term. So Route B isolates the derivative loss
cleanly, but does not remove it.

### Honest state of the wall

The reduction to `\mathcal B_G` is a real advance, but it does **not** yet mean
the route is one identity away from closure. The exact unresolved issue is:

```math
\boxed{
\text{does the principal divergence piece in `(23ag)` admit a same-depth }
\mathcal B_G\text{-level reduction to }
\mathcal D_r^{Lag}+\mathcal C_r^{Lag}\text{?}
}
\tag{23am}
```

That is now the sharp form of the pressure wall.

## Route C verdict: direct bilinear-form theorem

If one gives up on structural cancellation and tries to estimate the principal
term directly, the strongest honest bound is of the form

```math
\left|
\mathcal B_G\!\big(\operatorname{div}_a(AG\nabla_aU_\alpha),\mathcal Z_\alpha\big)
\right|
\le C_G
\|\nabla_aU_\alpha\|_{L_a^2}
\Big(
\|\nabla_a\mathcal Z_\alpha\|_{L_a^2}
+
\|\mathcal Z_\alpha\|_{L_a^2}
\Big),
\tag{23an}
```

under the ellipticity window and Lipschitz coefficient control for `G`.

So direct `\mathcal B_G` boundedness is intrinsically first-order on the test
input `\mathcal Z_\alpha`. At the top-`A` edge class

```math
\mathcal Z_\alpha^{top,A}=-(\partial_a^\alpha A)\,v,
\tag{23ao}
```

this forces

```math
\nabla_a\mathcal Z_\alpha^{top,A}
=
-(\partial_a^{\alpha+1}A)\,v
-
(\partial_a^\alpha A)\nabla_a v,
\tag{23ap}
```

so Route C exceeds the current same-depth derivative ledger.

Therefore Route C does not close Lemma 4B on its own. It only confirms that,
without Route A-type cancellation, the bilinear form remains one derivative too
expensive on the top `A`-edge.

## Direct attack C: pressure-renormalized equation

The leading structural repair candidate is to modify the top differentiated
unknown or the pressure coupling before the elliptic estimate is taken.

The theorem-level idea is:

```math
\widehat U_\alpha
:=
U_\alpha
+
\text{coefficient correction},
\tag{24}
```

or equivalently

```math
\widehat Q_\alpha
:=
Q_\alpha
+
\text{coefficient correction},
\tag{25}
```

so that the worst part of `(13)` is canceled before one solves the pressure
equation.

No theorem-grade correction of this type has been identified yet in the lane.
But this is the cleanest currently visible escape hatch if the direct
`H^{-1}` and direct pairing routes both fail.

## Current theorem statement for Lemma 4B

The strongest current honest version is:

### Lemma 4B (candidate)

Assume:

1. `\lambda_0 I\le G\le \Lambda_0 I`,
2. the coefficient norms of `A,G` through depth `r` are bounded,
3. the six-lemma energy `\mathcal K_r^{Lag}` controls the joint family
   `\{U_\alpha,\partial^\beta G\}` through depth `r`.

Then for each `1\le |\alpha|\le r`,

```math
|\langle Q_\alpha,\mathcal P_\alpha\rangle|
\le
\varepsilon\big(\mathcal D_r^{Lag}+\mathcal C_r^{Lag}\big)
+
C_\varepsilon\,\mathcal K_r^{Lag}
+
\mathfrak E_\alpha^{press},
\tag{26}
```

where the only unresolved remainder is the variable-coefficient viscous-pressure
interaction created by `(23)`.

This isolates the exact wall:

```math
\boxed{
\text{if }\mathfrak E_\alpha^{press}\text{ can be controlled at the same depth, Lemma 4B closes.}
}
\tag{27}
```

## Honest failure point

The current direct attack fails at one exact place:

```math
\boxed{
\text{there is no theorem-grade same-depth control yet for }
\nabla_a(A^\top\nabla_a\Phi_\alpha),
\text{ equivalently for the induced handling of }
\operatorname{div}_a\!\big(A\,\operatorname{div}_a(G\nabla_a U_\alpha)\big)
\text{ in the pressure pairing route.}
}
\tag{28}
```

Equivalently:

- the coefficient-commutator side is partly manageable;
- the pressure equation is explicit;
- the route still fails because the variable-coefficient viscous term in the
  pressure recovery looks one derivative too high.

That is the exact point where Lemma 4B currently stalls.

## Corrected derivative-frequency compatibility audit

There is a real structural connection between the derivative-tower split
`(23j)` and the Littlewood-Paley locality geometry used elsewhere on the lane.
But the strongest possible bridge statement is too strong.

The naive formulation

```math
\Delta_j\!\big((\partial_a^\beta A)\,U_{\alpha-\beta}\big)=0
\quad\text{unless both factors lie in a fixed collar of }j
\tag{29a}
```

is false in general. A genuine strict low-high packet survives:

```math
\Delta_j\!\big((S_{j-C}\partial_a^\beta A)\,\widetilde\Delta_j U_{\alpha-\beta}\big),
\tag{29b}
```

and likewise the symmetric high-low packet with the roles of the factors
reversed. So the right theorem cannot be “every tower interaction is resonant in
frequency.” The surviving nonlocality is the same strict-low coefficient
transport already visible on the Euclidean gradient surface.

What the Bony decomposition supports is the corrected decomposition

```math
(\partial_a^\beta A)\,U_{\alpha-\beta}
=
T_{\partial_a^\beta A}U_{\alpha-\beta}
+
T_{U_{\alpha-\beta}}(\partial_a^\beta A)
+
R(\partial_a^\beta A,U_{\alpha-\beta}),
\tag{29c}
```

and after applying `\Delta_j` this splits into exactly three shell geometries:

1. **strict low-high packet**

   ```math
   \Delta_j T_{\partial_a^\beta A}U_{\alpha-\beta},
   \tag{29d}
   ```

   which depends only on the low coefficient `S_{j-C}\partial_a^\beta A` and on
   the `U_{\alpha-\beta}` shells in a fixed collar of `j`;

2. **strict high-low packet**

   ```math
   \Delta_j T_{U_{\alpha-\beta}}(\partial_a^\beta A),
   \tag{29e}
   ```

   which depends only on the low coefficient `S_{j-C}U_{\alpha-\beta}` and on
   the `\partial_a^\beta A` shells in a fixed collar of `j`;

3. **resonant packet**

   ```math
   \Delta_j R(\partial_a^\beta A,U_{\alpha-\beta}),
   \tag{29f}
   ```

   which only sees factor shells `k,\ell` with
   `|k-\ell|\le C_{\mathrm{Bony}}` and `|j-k|\le C_{\mathrm{Bony}}`.

So the honest derivative-frequency compatibility principle is:

```math
\boxed{
\text{after Littlewood-Paley projection, every tower product splits into}
\ \text{strict low-high / strict high-low coefficient packets}
\ \text{plus a finite-collar resonant packet.}
}
\tag{29g}
```

This is exactly the hybrid of the two Euclidean model geometries already on
disk:

- the strict-low commutator packet in
  [gradient-paraproduct-reduction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-paraproduct-reduction-lemma.md),
  and
- the finite-collar off-diagonal vanishing in
  [mixed-shell-bilinear-dissipation-identity.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/mixed-shell-bilinear-dissipation-identity.md).

Applied to the full pressure source `(23i)`, this gives the shellwise split

```math
\Delta_j\mathcal Z_\alpha
=
\mathcal Z_{\alpha,j}^{LH}
+
\mathcal Z_{\alpha,j}^{HL}
+
\mathcal Z_{\alpha,j}^{res},
\tag{29h}
```

where `\mathcal Z_{\alpha,j}^{res}` is genuinely finite-collar and the
`\mathcal Z_{\alpha,j}^{LH},\mathcal Z_{\alpha,j}^{HL}` packets carry one low
coefficient factor and one active shell factor.

The exact reserve theorem target is therefore:

### Candidate Lemma: derivative--LP compatibility for the pressure source

For each `1\le |\alpha|\le r`, each shell `j`, and each fixed Bony collar
width `C_{\mathrm{Bony}}`, there is a decomposition `(29h)` such that:

```math
\mathcal Z_{\alpha,j}^{LH}
:=
-\sum_{0<\beta\le\alpha}\binom{\alpha}{\beta}
\Delta_j\!\big(T_{\partial_a^\beta A}U_{\alpha-\beta}\big),
\tag{29h.1}
```

```math
\mathcal Z_{\alpha,j}^{HL}
:=
-\sum_{0<\beta\le\alpha}\binom{\alpha}{\beta}
\Delta_j\!\big(T_{U_{\alpha-\beta}}(\partial_a^\beta A)\big),
\tag{29h.2}
```

```math
\mathcal Z_{\alpha,j}^{res}
:=
-\sum_{0<\beta\le\alpha}\binom{\alpha}{\beta}
\Delta_j R(\partial_a^\beta A,U_{\alpha-\beta}),
\tag{29h.3}
```

and:

1. `\mathcal Z_{\alpha,j}^{LH}` only depends on
   `S_{j-C_{\mathrm{Bony}}}\partial_a^\beta A` and the
   `U_{\alpha-\beta}` shells `|k-j|\le C_{\mathrm{Bony}}`;
2. `\mathcal Z_{\alpha,j}^{HL}` only depends on
   `S_{j-C_{\mathrm{Bony}}}U_{\alpha-\beta}` and the
   `\partial_a^\beta A` shells `|k-j|\le C_{\mathrm{Bony}}`;
3. `\mathcal Z_{\alpha,j}^{res}` only receives contributions from factor shells
   `k,\ell` with

   ```math
   |k-\ell|\le C_{\mathrm{Bony}},
   \qquad
   |j-k|\le C_{\mathrm{Bony}}.
   \tag{29h.4}
   ```

So the only genuinely resonant packet is `(29h.3)`. The rest of the derivative
tower is para-controlled rather than collar-local in the strict sense.

This does **not** close Lemma 4B by itself. The unresolved theorem is now
sharper:

```math
\boxed{
\text{can the pressure bilinear form }\mathcal B_G
\text{ respect the split `(29h)` without reintroducing one derivative of loss?}
}
\tag{29i}
```

Equivalently, the reserve route for Lemma 4B no longer aims for blanket
collar-locality of `\mathcal Z_\alpha`. It aims to prove that:

- the strict-low packets in `(29h)` can be paid for by coefficient windows and
  commutator-type ledgers, and
- the resonant packet in `(29h)` can be handled by same-scale/fixed-collar
  shell algebra.

That is the corrected bridge between the derivative tower and the
Littlewood-Paley locality route. It is structurally promising, but it is a
reserve strengthening route for `4B`, not a replacement for the current live
far-corona theorem burden on Lemma 5.
