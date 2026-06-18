# Shadow Remainder Forced H^s Estimate

## Purpose

This note makes Route `B` mathematically explicit on the classical side.

The point is simple:
if the projected `NC` dynamics produce a remainder term

```math
E_{\mathrm{sh}}(X),
```

then the projected equation is just a **forced** classical Navier--Stokes
equation.
So the correct question is not “can the defect be waved away?”
It is:

```math
\boxed{
\text{what }H^s\text{ energy inequality does the forced shadow satisfy?}
}
```

## Forced classical shadow equation

Work with `s>\frac52`.
Suppose the projected window field satisfies

```math
\partial_t u+\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u)=\nu\Delta u+E,
\qquad
\nabla\cdot u=0,
\tag{1}
```

where `E` is divergence-free.

For Route `B`, the intended forcing is

```math
E=E_{\mathrm{sh}}(X),
\tag{2}
```

with the lane-local estimate from
[ns-shadow-route-a-vs-b.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ns-shadow-route-a-vs-b.md):

```math
\|E_{\mathrm{sh}}(X)\|_{H^{s-1}}
\le
C_s\Big(
\varepsilon_{\mathrm{nc}}\|X\|_{H_D^s}^2
+
\varepsilon_{\mathrm{curv}}\|X\|_{H_D^s}
\Big).
\tag{3}
```

## H^s energy inequality with H^{s-1} forcing

Apply `\Lambda^s` to `(1)` and pair with `\Lambda^s u`.
Then

```math
\frac12\frac{d}{dt}\|u\|_{H^s}^2
+
\nu\|\nabla u\|_{H^s}^2
=
-\big\langle \Lambda^s\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u),\Lambda^s u\big\rangle
+
\big\langle \Lambda^s E,\Lambda^s u\big\rangle.
\tag{4}
```

Since `\mathbb P_{\mathrm{Leray}}` is bounded on `H^s`, the nonlinear term obeys
the Kato--Ponce `H^s` commutator/product estimate

```math
\big|
\langle \Lambda^s\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u),\Lambda^s u\rangle
\big|
\le
C_s\|\nabla u\|_{L^\infty}\|u\|_{H^s}^2.
\tag{5}
```

Because `s>\frac52`, `H^s(\mathbb R^3)\hookrightarrow W^{1,\infty}`, so

```math
\|\nabla u\|_{L^\infty}\le C_s\|u\|_{H^s}.
\tag{6}
```

Hence

```math
\big|
\langle \Lambda^s\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u),\Lambda^s u\rangle
\big|
\le
C_s\|u\|_{H^s}^3.
\tag{7}
```

For the forcing term, move one derivative onto `u`:

```math
\big|
\langle \Lambda^s E,\Lambda^s u\rangle
\big|
=
\big|
\langle \Lambda^{s-1}E,\Lambda^{s+1}u\rangle
\big|.
\tag{8}
```

Therefore

```math
\big|
\langle \Lambda^s E,\Lambda^s u\rangle
\big|
\le
\|E\|_{H^{s-1}}\|u\|_{H^{s+1}}
\le
\frac{\nu}{2}\|\nabla u\|_{H^s}^2
+
C_{\nu,s}\|E\|_{H^{s-1}}^2.
\tag{9}
```

Substituting `(7)` and `(9)` into `(4)` gives

```math
\boxed{
\frac12\frac{d}{dt}\|u\|_{H^s}^2
+
\frac{\nu}{2}\|\nabla u\|_{H^s}^2
\le
C_s\|u\|_{H^s}^3
+
C_{\nu,s}\|E\|_{H^{s-1}}^2.
}
\tag{10}
```

This is the exact forced `H^s` energy inequality Route `B` needs.

## Route B substitution

Now set `E=E_{\mathrm{sh}}(X)` and use `(3)`.
Then

```math
\|E_{\mathrm{sh}}(X)\|_{H^{s-1}}^2
\le
C_s\Big(
\varepsilon_{\mathrm{nc}}^2\|X\|_{H_D^s}^4
+
\varepsilon_{\mathrm{curv}}^2\|X\|_{H_D^s}^2
\Big).
\tag{11}
```

So `(10)` becomes

```math
\boxed{
\frac12\frac{d}{dt}\|u\|_{H^s}^2
+
\frac{\nu}{2}\|\nabla u\|_{H^s}^2
\le
C_s\|u\|_{H^s}^3
+
C_{\nu,s}\Big(
\varepsilon_{\mathrm{nc}}^2\|X\|_{H_D^s}^4
+
\varepsilon_{\mathrm{curv}}^2\|X\|_{H_D^s}^2
\Big).
}
\tag{12}
```

If

```math
\sup_{0\le t<T}\|X(t)\|_{H_D^s}\le M_s,
\tag{13}
```

then the forcing contribution is bounded by a fixed constant:

```math
\frac12\frac{d}{dt}\|u\|_{H^s}^2
+
\frac{\nu}{2}\|\nabla u\|_{H^s}^2
\le
C_s\|u\|_{H^s}^3
+
C_{\nu,s}\Big(
\varepsilon_{\mathrm{nc}}^2 M_s^4
+
\varepsilon_{\mathrm{curv}}^2 M_s^2
\Big).
\tag{14}
```

## Exact meaning

This does **not** prove Route `B`.

It proves the exact classical shape of Route `B`:

```math
\boxed{
\text{Route }B\text{ is a forced classical }H^s\text{ continuation problem.}
}
\tag{15}
```

More precisely:

- the exact strict-shadow branch has no forcing term;
- the robustness branch has a forcing term `E_{\mathrm{sh}}(X)`;
- that forcing enters the classical energy inequality only through the
  quadratic source `\|E_{\mathrm{sh}}(X)\|_{H^{s-1}}^2`.

So the route-B burden is now exact:

```math
\boxed{
\text{show that the shadow remainder is small or integrable enough that `(12)` closes.}
}
\tag{16}
```

## Limitation

This note does not prove global closure of `(12)`.
It only proves that the route-B remainder feeds the classical side through a
standard forced `H^s` energy inequality, with no extra mystery term beyond
`\|E_{\mathrm{sh}}(X)\|_{H^{s-1}}^2`.
