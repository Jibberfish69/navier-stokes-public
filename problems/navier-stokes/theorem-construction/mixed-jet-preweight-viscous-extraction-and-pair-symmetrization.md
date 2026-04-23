# Mixed-Jet Preweight Viscous Extraction And Pair Symmetrization

## Purpose

This note isolates the exact tower facts that are visible **before** any
factorial weights, generating fields, or weighted closure package are
introduced.

The point is:

```math
\boxed{
\text{one should first ask what cancels exactly and what viscosity can already extract from the raw mixed spread.}
}
```

This note answers that question on the full mixed-jet tower.

## Mixed-jet equation and raw energy identity

Write

```math
J_{m,\alpha}:=\partial_t^m\partial_x^\alpha u,
\qquad
\Pi_{m,\alpha}:=\partial_t^m\partial_x^\alpha p.
\tag{1}
```

The differentiated velocity equation is

```math
\partial_t J_{m,\alpha}
+
\sum_{a=0}^{m}\sum_{\beta\le\alpha}
\binom ma \binom{\alpha}{\beta}
\big(J_{a,\beta}\cdot\nabla\big)J_{m-a,\alpha-\beta}
+
\nabla \Pi_{m,\alpha}
=
\nu\Delta J_{m,\alpha}.
\tag{2}
```

Since every jet remains divergence-free,

```math
\nabla\cdot J_{m,\alpha}=0.
\tag{3}
```

Pair `(2)` in `L^2_x` with `J_{m,\alpha}`.
Then:

```math
\langle \nabla\Pi_{m,\alpha},J_{m,\alpha}\rangle=0,
\tag{4}
```

```math
\langle (u\cdot\nabla)J_{m,\alpha},J_{m,\alpha}\rangle=0,
\tag{5}
```

```math
\langle \nu\Delta J_{m,\alpha},J_{m,\alpha}\rangle
=
-\nu\|\nabla J_{m,\alpha}\|_{L^2}^2.
\tag{6}
```

So the exact rung energy identity is

```math
\frac12\frac{d}{dt}\|J_{m,\alpha}\|_{L^2}^2
+
\nu\|\nabla J_{m,\alpha}\|_{L^2}^2
=
-\!\!\!\sum_{\substack{0\le a\le m,\ \beta\le\alpha\\(a,\beta)\neq(0,0)}}
\binom ma\binom{\alpha}{\beta}\,
I_{a,\beta}^{m,\alpha},
\tag{7}
```

where

```math
I_{a,\beta}^{m,\alpha}
:=
\langle (J_{a,\beta}\cdot\nabla)J_{m-a,\alpha-\beta},J_{m,\alpha}\rangle.
\tag{8}
```

This gives the first exact answer:

```math
\boxed{
\text{before any weighting, pressure and base transport already cancel exactly.}
}
\tag{9}
```

The only live burden is the off-diagonal mixed spread.

## What viscosity already handles before weighting

Fix one surviving mixed term `I_{a,\beta}^{m,\alpha}`.
Because `\nabla\cdot J_{a,\beta}=0`, integration by parts gives

```math
I_{a,\beta}^{m,\alpha}
=
-\langle (J_{a,\beta}\cdot\nabla)J_{m,\alpha},J_{m-a,\alpha-\beta}\rangle.
\tag{10}
```

Hence

```math
|I_{a,\beta}^{m,\alpha}|
\le
\|J_{a,\beta}\|_{L^\infty}\,
\|\nabla J_{m,\alpha}\|_{L^2}\,
\|J_{m-a,\alpha-\beta}\|_{L^2}.
\tag{11}
```

By Young's inequality,

```math
|I_{a,\beta}^{m,\alpha}|
\le
\varepsilon \nu \|\nabla J_{m,\alpha}\|_{L^2}^2
+
C_{\varepsilon,\nu}
\|J_{a,\beta}\|_{L^\infty}^2
\|J_{m-a,\alpha-\beta}\|_{L^2}^2.
\tag{12}
```

So every individual mixed term surrenders **one same-rung gradient** to the
viscous slot.

This is the second exact answer:

```math
\boxed{
\text{before weighting, viscosity already handles one derivative from every surviving mixed term.}
}
\tag{13}
```

What viscosity does **not** do automatically is kill the whole mixed term.
After extracting one gradient, the leftover is a coefficient energy term:

```math
\|J_{a,\beta}\|_{L^\infty}^2
\|J_{m-a,\alpha-\beta}\|_{L^2}^2.
\tag{14}
```

So the raw question is not

```math
\text{can viscosity kill the whole mixed spread?}
```

It is

```math
\boxed{
\text{after viscosity extracts one same-rung gradient, can the remaining coefficient terms be controlled or cancelled?}
}
\tag{15}
```

## Endpoint versus interior terms

The live mixed terms split naturally into three classes.

### 1. Base transport term

This is `(a,\beta)=(0,0)`.
It cancels exactly by `(5)`.

### 2. Endpoint strain term

This is `(a,\beta)=(m,\alpha)`, so the second factor is the base flow `u`.
Then

```math
I_{m,\alpha}^{m,\alpha}
=
\langle (J_{m,\alpha}\cdot\nabla)u, J_{m,\alpha}\rangle
=
\int_{\mathbb R^3}
(J_{m,\alpha}\otimes J_{m,\alpha}):\nabla u\,dx.
\tag{16}
```

Hence

```math
|I_{m,\alpha}^{m,\alpha}|
\le
\|\nabla u\|_{L^\infty}\,
\|J_{m,\alpha}\|_{L^2}^2.
\tag{17}
```

So the endpoint term is not a viscosity term at all.
It is a same-rung energy term with coefficient given by the base strain.

### 3. Genuine interior mixed terms

These are the terms with

```math
(a,\beta)\neq(0,0),
\qquad
(a,\beta)\neq(m,\alpha).
\tag{18}
```

These are the terms for which `(12)` is the natural raw estimate:
one derivative goes to viscosity, and the rest becomes a coefficient product
built from lower or split jets.

## Complementary-pair symmetrization before weighting

Now ask whether complementary split pairs cancel **before** any weights are
introduced.

Take one pair

```math
(a,\beta),
\qquad
(m-a,\alpha-\beta).
\tag{19}
```

The corresponding two mixed terms are

```math
I_{a,\beta}^{m,\alpha}
=
\langle (J_{a,\beta}\cdot\nabla)J_{m-a,\alpha-\beta},J_{m,\alpha}\rangle,
\tag{20}
```

```math
I_{m-a,\alpha-\beta}^{m,\alpha}
=
\langle (J_{m-a,\alpha-\beta}\cdot\nabla)J_{a,\beta},J_{m,\alpha}\rangle.
\tag{21}
```

Integrating by parts once in each term yields

```math
I_{a,\beta}^{m,\alpha}
+
I_{m-a,\alpha-\beta}^{m,\alpha}
=
-\int_{\mathbb R^3}
\big(
J_{a,\beta}\otimes J_{m-a,\alpha-\beta}
+
J_{m-a,\alpha-\beta}\otimes J_{a,\beta}
\big)
:
\nabla J_{m,\alpha}\,dx.
\tag{22}
```

So the pair does **not** cancel in general.
What it does is collapse to a symmetric strain-type coupling against the
gradient of the top rung.

This is the third exact answer:

```math
\boxed{
\text{complementary mixed pairs do not generally vanish before weighting;}
}
```

```math
\boxed{
\text{they reorganize into a symmetric transfer tensor acting on }\nabla J_{m,\alpha}.
}
\tag{23}
```

So there is real pre-weight structure, but it is **symmetrization**, not
automatic annihilation.

## Whole-rung raw consequence

Combining `(7)` and `(12)`, the full mixed spread satisfies

```math
\frac12\frac{d}{dt}\|J_{m,\alpha}\|_{L^2}^2
+
\frac{\nu}{2}\|\nabla J_{m,\alpha}\|_{L^2}^2
\le
C_{\nu}
\Big(
\|\nabla u\|_{L^\infty}\|J_{m,\alpha}\|_{L^2}^2
+
\Sigma_{m,\alpha}^{\mathrm{int}}
\Big),
\tag{24}
```

where

```math
\Sigma_{m,\alpha}^{\mathrm{int}}
```

denotes the sum of the lower/split coefficient products produced by the genuine
interior mixed terms.

So the exact raw picture is:

1. pressure cancels;
2. base transport cancels;
3. viscosity directly absorbs one derivative from every surviving mixed term;
4. endpoint terms reduce to base-strain coefficients;
5. complementary interior pairs symmetrize into transfer tensors;
6. the unresolved burden is the coefficient remainder, not the loss of the
   viscous slot itself.

## Meaning

This answers the “before weighting” question.

The weighted/factorial route was introduced **after** this point, not instead
of it.
The reason for the weighted route was to organize the unresolved coefficient
remainder across the entire infinite tower once the raw cancellations and raw
viscous extraction had already been identified.

So the exact logical order is:

```math
\boxed{
\text{exact cancellations}
\to
\text{raw viscous extraction}
\to
\text{pair symmetrization}
\to
\text{only then ask how to package the remaining tower-wide coefficient burden.}
}
\tag{25}
```

## Limitation

This note does **not** prove that the remaining interior coefficient sum
`\Sigma_{m,\alpha}^{\mathrm{int}}` cancels across the full tower.

It proves only the exact pre-weight structure:

```math
\boxed{
\text{before any weighting, viscosity already handles part of every mixed term,}
}
```

```math
\boxed{
\text{but the residual coefficient interaction still has to be organized across the tower.}
}
\tag{26}
```
