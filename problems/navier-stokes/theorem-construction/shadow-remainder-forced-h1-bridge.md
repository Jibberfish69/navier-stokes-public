# Shadow Remainder Forced H^1 Bridge

## Purpose

This note turns the Route B phrase

```math
\text{the shadow remainder should be absorbable by continuation}
```

into one explicit classical differential inequality.

It does not prove that the shadow remainder is small.
It proves what estimate is needed **if** the shadowed equation has a remainder
term.

## Forced shadow equation

Assume the commutative shadow satisfies

```math
\partial_t u
+
\mathbb P_{\mathrm{Leray}}\big((u\cdot\nabla)u\big)
=
\nu\Delta u
+
E_{\mathrm{sh}},
\qquad
\nabla\cdot u=0.
\tag{1}
```

This is the Route B situation behind

- `\mathrm{ShadowDef}(X)`,
- `E_{\nabla}(X)`,
- `E_{\Omega}(X)`,
- `E_{\mathrm{sh}}(X)`.

Assume for this note that

```math
E_{\mathrm{sh}}\in H^1(\mathbb R^3).
\tag{2}
```

## H^1 energy identity with forcing

Take the `L^2` inner product of `(1)` with `-\Delta u`.
Using incompressibility and Leray orthogonality,

```math
\frac12\frac{d}{dt}\|\nabla u\|_{L^2}^2
+
\nu\|\Delta u\|_{L^2}^2
=
\left\langle
\mathbb P_{\mathrm{Leray}}\big((u\cdot\nabla)u\big),
\Delta u
\right\rangle
-
\langle E_{\mathrm{sh}},\Delta u\rangle.
\tag{3}
```

Because `\mathbb P_{\mathrm{Leray}}` is orthogonal on `L^2`,

```math
\left|
\left\langle
\mathbb P_{\mathrm{Leray}}\big((u\cdot\nabla)u\big),
\Delta u
\right\rangle
\right|
\le
\|(u\cdot\nabla)u\|_{L^2}\,\|\Delta u\|_{L^2}.
\tag{4}
```

Also

```math
\|(u\cdot\nabla)u\|_{L^2}
\le
\|u\|_{L^6}\,\|\nabla u\|_{L^3}
\le
C\|\nabla u\|_{L^2}^{3/2}\|\Delta u\|_{L^2}^{1/2},
\tag{5}
```

by Sobolev and Gagliardo--Nirenberg.

So the nonlinear term satisfies

```math
\left|
\left\langle
\mathbb P_{\mathrm{Leray}}\big((u\cdot\nabla)u\big),
\Delta u
\right\rangle
\right|
\le
C\|\nabla u\|_{L^2}^{3/2}\|\Delta u\|_{L^2}^{3/2}.
\tag{6}
```

For the forcing term,

```math
|\langle E_{\mathrm{sh}},\Delta u\rangle|
\le
\|E_{\mathrm{sh}}\|_{L^2}\,\|\Delta u\|_{L^2}
\le
\|E_{\mathrm{sh}}\|_{H^1}\,\|\Delta u\|_{L^2}.
\tag{7}
```

Using Young twice,

```math
C\|\nabla u\|_{L^2}^{3/2}\|\Delta u\|_{L^2}^{3/2}
\le
\frac{\nu}{4}\|\Delta u\|_{L^2}^2
+
C_\nu\|\nabla u\|_{L^2}^6,
\tag{8}
```

and

```math
\|E_{\mathrm{sh}}\|_{H^1}\,\|\Delta u\|_{L^2}
\le
\frac{\nu}{4}\|\Delta u\|_{L^2}^2
+
C_\nu\|E_{\mathrm{sh}}\|_{H^1}^2.
\tag{9}
```

Substituting `(8)` and `(9)` into `(3)` yields

```math
\boxed{
\frac{d}{dt}\|\nabla u\|_{L^2}^2
+
\nu\|\Delta u\|_{L^2}^2
\le
C_\nu\|\nabla u\|_{L^2}^6
+
C_\nu\|E_{\mathrm{sh}}\|_{H^1}^2.
}
\tag{10}
```

## Meaning for Route B

This is the exact classical bridge consumed by a robustness shadow route.

It says:

- if the shadow remainder vanishes, `(10)` reduces to the ordinary classical
  continuation channel;
- if the shadow remainder does not vanish, the price paid by Route B is exactly
  an `H^1` forcing term.

So the Route B burden is no longer vague.
It is:

```math
\boxed{
\text{control }\|E_{\mathrm{sh}}\|_{H^1}^2
\text{ strongly enough that the forced gradient channel still closes.}
}
\tag{11}
```

Since the current shadow notes place `E_{\mathrm{sh}}` in `H^{s-1}` with
`s>\frac52`, this is the correct classical norm level for turning the
robustness branch into a genuine continuation estimate.

## Exact limitation

This note does **not** prove the needed bound on `E_{\mathrm{sh}}`.

It proves only that the Route B shadow remainder enters the classical
continuation problem through the forced `H^1` inequality `(10)`.

So the exact remaining Route B theorem burden is:

```math
\text{show that }\|E_{\mathrm{sh}}\|_{H^1}^2
\text{ is small, integrable, or absorbable on the active theorem surface.}
```
