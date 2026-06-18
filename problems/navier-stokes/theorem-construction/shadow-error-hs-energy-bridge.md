# Shadow-Error H^s Energy Bridge

## Purpose

This note records the classical Sobolev energy estimate that the weaker
projection route must satisfy.

It is the exact bridge from a shadow remainder term

```math
E_{\mathrm{sh}}(X)
```

to a classical continuation norm.

## Forced classical equation

Let `\sigma>\frac32`, and let `u` solve the divergence-free forced equation

```math
\partial_t u+\mathbb P_{\mathrm{Leray}}((u\cdot\nabla)u)
=
\nu\Delta u+F,
\qquad
\nabla\cdot u=0.
\tag{1}
```

Think of `F` as the weaker shadow remainder:

```math
F=E_{\mathrm{sh}}(X).
\tag{2}
```

## H^{s-1} energy inequality

Now fix `s>\frac52` and apply `\Lambda^{s-1}` to `(1)`, then pair with
`\Lambda^{s-1}u`.

Since `\mathbb P_{\mathrm{Leray}}` is bounded on Sobolev spaces,

```math
\frac12\frac{d}{dt}\|u\|_{H^{s-1}}^2
+
\nu\|\nabla u\|_{H^{s-1}}^2
\le
\|\mathbb P_{\mathrm{Leray}}((u\cdot\nabla)u)\|_{H^{s-1}}\|u\|_{H^{s-1}}
+
\|F\|_{H^{s-1}}\|u\|_{H^{s-1}}.
\tag{3}
```

Because `s-1>\frac32`, `H^{s-1}(\mathbb R^3)` is an algebra and
`H^{s-1}\hookrightarrow L^\infty`, so

```math
\|(u\cdot\nabla)u\|_{H^{s-1}}
\le
C_s\|u\|_{H^{s-1}}\|u\|_{H^s}.
\tag{4}
```

Therefore

```math
\|\mathbb P_{\mathrm{Leray}}((u\cdot\nabla)u)\|_{H^{s-1}}\|u\|_{H^{s-1}}
\le
C_s\|u\|_{H^{s-1}}^2\|u\|_{H^s}.
\tag{5}
```

Use Young's inequality and the fixed Sobolev comparison
`\|u\|_{H^s}\le C_{H,s}(\|\nabla u\|_{H^{s-1}}+\|u\|_{H^{s-1}})`
to get

```math
C_s\|u\|_{H^{s-1}}^2\|u\|_{H^s}
\le
\frac{\nu}{4}\|\nabla u\|_{H^{s-1}}^2
+
C_{s,\nu}\big(\|u\|_{H^{s-1}}^2+\|u\|_{H^{s-1}}^4\big).
\tag{6}
```

So `(3)` becomes

```math
\boxed{
\frac12\frac{d}{dt}\|u\|_{H^{s-1}}^2
+
\frac{3\nu}{4}\|\nabla u\|_{H^{s-1}}^2
\le
C_{s,\nu}\big(\|u\|_{H^{s-1}}^2+\|u\|_{H^{s-1}}^4\big)
+
\|F\|_{H^{s-1}}\|u\|_{H^{s-1}}.
}
\tag{7}
```

This is the exact classical energy bridge at the natural regularity of the
shadow remainder.

## Route B specialization

Take

```math
F=E_{\mathrm{sh}}(X).
\tag{8}
```

Then `(7)` gives

```math
\boxed{
\frac12\frac{d}{dt}\|u\|_{H^{s-1}}^2
+
\frac{3\nu}{4}\|\nabla u\|_{H^{s-1}}^2
\le
C_{s,\nu}\big(\|u\|_{H^{s-1}}^2+\|u\|_{H^{s-1}}^4\big)
+
\|E_{\mathrm{sh}}(X)\|_{H^{s-1}}\|u\|_{H^{s-1}}.
}
\tag{9}
```

From
[ns-shadow-route-a-vs-b.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ns-shadow-route-a-vs-b.md),
the live quantitative Route B estimate is

```math
\|E_{\mathrm{sh}}(X)\|_{H^{s-1}}
\le
C_s\Big(
\varepsilon_{\mathrm{nc}}\|X\|_{H_D^s}^2
+
\varepsilon_{\mathrm{curv}}\|X\|_{H_D^s}
\Big).
\tag{10}
```

Substituting `(10)` into `(9)` yields

```math
\frac12\frac{d}{dt}\|u\|_{H^{s-1}}^2
+
\frac{3\nu}{4}\|\nabla u\|_{H^{s-1}}^2
\le
C_{s,\nu}\big(\|u\|_{H^{s-1}}^2+\|u\|_{H^{s-1}}^4\big)
+
C_s\Big(
\varepsilon_{\mathrm{nc}}\|X\|_{H_D^s}^2
+
\varepsilon_{\mathrm{curv}}\|X\|_{H_D^s}
\Big)\|u\|_{H^{s-1}}.
\tag{11}
```

So Route B is reduced to one exact classical forcing statement:

```math
\boxed{
\text{the commutative shadow closes if the shadow error is small/integrable enough}
}
```

on the right-hand side of `(11)`.

## Meaning

This proves that the weaker projection route does have a clean classical
energy interface.

It does **not** yet prove that `(10)` satisfies a stated global-continuation
criterion for the classical equation.
It proves that the shadow remainder enters the classical equation exactly as a
forced `H^{s-1}` source term, with no additional hidden structure needed on the
classical side.

That is the bridge the weaker route needs.
