# Shadow Remainder H^s Forcing Estimate

## Purpose

This note turns the weaker shadow-remainder branch into an exact classical
forcing estimate.

It does not prove the weaker branch closes.
It proves that if the projected equation carries a remainder term, then the
classical question becomes a standard forced `H^s` continuation problem.

## Forced classical equation

Let `s>\frac52`.
Suppose `u` is divergence-free and solves

```math
\partial_t u + \mathbb P_{\mathrm{Leray}}\big((u\cdot\nabla)u\big)
=
\nu\Delta u + E,
\tag{1}
```

where `E` is a divergence-free forcing term or, more generally, where any
gradient part of the forcing has already been absorbed into pressure.

This is the relevant form of the weaker shadow branch, with

```math
E = \mathrm{ShadowDef}(X)-\nabla p_{\mathrm{shadow}}
\tag{2}
```

or equivalently

```math
E = \mathbb P_{\mathrm{Leray}}E_{\mathrm{sh}}(X).
\tag{3}
```

## Proposition

For `s>\frac52`, the solution of `(1)` satisfies

```math
\frac12\frac{d}{dt}\|u\|_{H^s}^2
+
\nu\|\nabla u\|_{H^s}^2
\le
C_s\|u\|_{H^s}^3
+
\|E\|_{H^{s-1}}\|u\|_{H^{s+1}}.
\tag{4}
```

Hence, by Young's inequality,

```math
\frac{d}{dt}\|u\|_{H^s}^2
+
\nu\|\nabla u\|_{H^s}^2
\le
C_s\|u\|_{H^s}^3
+
C_{\nu,s}\|E\|_{H^{s-1}}^2.
\tag{5}
```

## Proof

Apply `\Lambda^s=(I-\Delta)^{s/2}` to `(1)` and pair with `\Lambda^s u`.
Because `\mathbb P_{\mathrm{Leray}}` is bounded on `H^s`,

```math
\frac12\frac{d}{dt}\|u\|_{H^s}^2
+
\nu\|\nabla u\|_{H^s}^2
=
-\big\langle \Lambda^s\mathbb P_{\mathrm{Leray}}((u\cdot\nabla)u),\Lambda^s u\big\rangle
+
\big\langle \Lambda^s E,\Lambda^s u\big\rangle.
\tag{6}
```

For `s>\frac52`, the `H^s` Sobolev product estimate gives

```math
\big|\big\langle \Lambda^s((u\cdot\nabla)u),\Lambda^s u\big\rangle\big|
\le
C_s\|\nabla u\|_{L^\infty}\|u\|_{H^s}^2
\le
C_s\|u\|_{H^s}^3.
\tag{7}
```

For the forcing term,

```math
\big|\big\langle \Lambda^s E,\Lambda^s u\big\rangle\big|
=
\big|\big\langle \Lambda^{s-1}E,\Lambda^{s+1}u\big\rangle\big|
\le
\|E\|_{H^{s-1}}\|u\|_{H^{s+1}}.
\tag{8}
```

Using `\|u\|_{H^{s+1}}\le C_{\nabla,s}\|\nabla u\|_{H^s}` and then Young,

```math
\|E\|_{H^{s-1}}\|u\|_{H^{s+1}}
\le
\frac{\nu}{2}\|\nabla u\|_{H^s}^2
+
C_{\nu,s}\|E\|_{H^{s-1}}^2.
\tag{9}
```

Substituting `(7)` and `(9)` into `(6)` gives `(5)`. `\square`

## Shadow corollary

Suppose now the weaker shadow branch gives

```math
\|E_{\mathrm{sh}}(X)\|_{H^{s-1}}
\le
C_s\Big(
\varepsilon_{\mathrm{nc}}\|X\|_{H_D^s}^2
+
\varepsilon_{\mathrm{curv}}\|X\|_{H_D^s}
\Big),
\tag{10}
```

as in
[ns-shadow-route-a-vs-b.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ns-shadow-route-a-vs-b.md).

If additionally

```math
\sup_{t\in[0,T)}\|X(t)\|_{H_D^s}\le M_s,
\tag{11}
```

then

```math
\|E_{\mathrm{sh}}(X(t))\|_{H^{s-1}}
\le
C_s\big(\varepsilon_{\mathrm{nc}}M_s^2+\varepsilon_{\mathrm{curv}}M_s\big).
\tag{12}
```

Therefore the forced estimate `(5)` becomes

```math
\frac{d}{dt}\|u\|_{H^s}^2
+
\nu\|\nabla u\|_{H^s}^2
\le
C_s\|u\|_{H^s}^3
+
C_{\nu,s}\big(\varepsilon_{\mathrm{nc}}M_s^2+\varepsilon_{\mathrm{curv}}M_s\big)^2.
\tag{13}
```

## Meaning

This does **not** close Route B by itself.

It proves the exact reduction:

```math
\boxed{
\text{Route B is a forced classical }H^s\text{ continuation problem with explicit forcing size.}
}
\tag{14}
```

So the weaker branch is no longer only narrative.
It has a concrete classical energy inequality attached to it.
