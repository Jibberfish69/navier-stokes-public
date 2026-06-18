# Shadow-Error Gronwall Continuation Criterion

## Purpose

This note records the clean continuation criterion behind the weaker shadow
branch.

Instead of a quartic energy inequality, it uses the displayed transport
commutator estimate `(3)` to put the shadow remainder into a direct Gronwall
form.

## Forced classical equation

Let `s>\frac52` and let `u` solve

```math
\partial_t u+\mathbb P_{\mathrm{Leray}}((u\cdot\nabla)u)
=
\nu\Delta u+F,
\qquad
\nabla\cdot u=0.
\tag{1}
```

Set

```math
\sigma:=s-1>\frac32.
\tag{2}
```

## Commutator estimate

Apply `\Lambda^\sigma` to `(1)` and pair with `\Lambda^\sigma u`.

Because `u` is divergence-free, the exact decomposition is

```math
\langle \Lambda^\sigma((u\cdot\nabla)u),\Lambda^\sigma u\rangle
=
\langle[\Lambda^\sigma,u\cdot\nabla]u,\Lambda^\sigma u\rangle
+
\langle u\cdot\nabla\Lambda^\sigma u,\Lambda^\sigma u\rangle,
```

and the last term vanishes.  The Kato--Ponce commutator bound for
`\sigma>3/2` gives

```math
\big|
\langle \Lambda^\sigma((u\cdot\nabla)u),\Lambda^\sigma u\rangle
\big|
\le
C_\sigma \|\nabla u\|_{L^\infty}\|u\|_{H^\sigma}^2.
\tag{3}
```

Therefore

```math
\frac12\frac{d}{dt}\|u\|_{H^\sigma}^2
+
\nu\|\nabla u\|_{H^\sigma}^2
\le
C_\sigma \|\nabla u\|_{L^\infty}\|u\|_{H^\sigma}^2
+
\|F\|_{H^\sigma}\|u\|_{H^\sigma}.
\tag{4}
```

Now write

```math
Y(t):=\|u(t)\|_{H^\sigma}.
\tag{5}
```

Ignoring the nonnegative viscous term and dividing by `Y(t)` whenever
`Y(t)>0`, one gets

```math
Y'(t)
\le
C_\sigma \|\nabla u(t)\|_{L^\infty}Y(t)
+
\|F(t)\|_{H^\sigma}.
\tag{6}
```

By continuity, the same inequality holds in upper Dini derivative form at times
when `Y(t)=0`.

## Gronwall form

Integrating `(6)` gives

```math
\boxed{
Y(t)
\le
\Big(
Y(0)
+
\int_0^t \|F(\tau)\|_{H^\sigma}\,d\tau
\Big)
\exp\!\Big(
C_\sigma\int_0^t \|\nabla u(\tau)\|_{L^\infty}\,d\tau
\Big).
}
\tag{7}
```

Equivalently,

```math
\boxed{
\|u(t)\|_{H^{s-1}}
\le
\Big(
\|u(0)\|_{H^{s-1}}
+
\int_0^t \|F(\tau)\|_{H^{s-1}}\,d\tau
\Big)
\exp\!\Big(
C_s\int_0^t \|\nabla u(\tau)\|_{L^\infty}\,d\tau
\Big).
}
\tag{8}
```

## Route B specialization

Take

```math
F=E_{\mathrm{sh}}(X).
\tag{9}
```

Then

```math
\boxed{
\|u(t)\|_{H^{s-1}}
\le
\Big(
\|u(0)\|_{H^{s-1}}
+
\int_0^t \|E_{\mathrm{sh}}(X(\tau))\|_{H^{s-1}}\,d\tau
\Big)
\exp\!\Big(
C_s\int_0^t \|\nabla u(\tau)\|_{L^\infty}\,d\tau
\Big).
}
\tag{10}
```

So the weaker shadow branch closes on any interval where both integrals are
finite:

```math
\int_0^T \|E_{\mathrm{sh}}(X(t))\|_{H^{s-1}}\,dt<\infty,
\qquad
\int_0^T \|\nabla u(t)\|_{L^\infty}\,dt<\infty.
\tag{11}
```

## Meaning

This is the cleanest classical continuation bridge for the weaker projection
route.

It says:

```math
\boxed{
\text{Route B does not need a new continuation mechanism on the classical side;}
}
```

```math
\boxed{
\text{it needs an integrable shadow remainder plus the displayed continuation integral.}
}
\tag{12}
```

If one later wants to import observability, backward-uniqueness, or
quantitative unique-continuation technology, the correct attachment point is
the derived defect equation for the shadow remainder `F=E_{\mathrm{sh}}(X)`,
not the upstream selector geometry itself; see
[overlap-defect-observability-placement-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/overlap-defect-observability-placement-note.md).

## Limitation

This note does **not** prove either integral in `(11)` is finite.

It proves only that once those two quantities are controlled, the classical
Sobolev norm stays finite by the exact Gronwall bound `(10)`.
