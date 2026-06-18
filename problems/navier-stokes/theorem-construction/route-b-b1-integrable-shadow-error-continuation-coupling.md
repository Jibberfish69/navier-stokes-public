# Route B B1 Integrable Shadow Error Plus Continuation Coupling

## Purpose

This note isolates the weaker Euclidean Route `B` burden `(B1)` from the Clay
discharge ladder.

The point is that Route `B` no longer needs a new projected PDE. It needs one
explicit theorem coupling:

```math
\text{integrable shadow forcing}
\;+\;
\text{classical continuation input}
\Longrightarrow
\text{no classical blowup on the window.}
\tag{B1.1}
```

## Forced shadow equation

Let `s>\frac52` and write `\sigma:=s-1>\frac32`. Assume the commutative shadow
solves

```math
\partial_t u+\mathbb P_{\mathrm{Leray}}\big((u\cdot\nabla)u\big)
=
\nu\Delta u+E_{\mathrm{sh}}(X),
\qquad
\nabla\cdot u=0
\tag{B1.2}
```

on a time window `[0,T)`.

## Exact burden `(B1)`

The exact weaker-route theorem burden is:

```math
\boxed{
\int_0^T \|E_{\mathrm{sh}}(X(t))\|_{H^{s-1}}\,dt<\infty
\quad\text{and}\quad
\int_0^T \|\nabla u(t)\|_{L^\infty}\,dt<\infty.
}
\tag{B1.3}
```

The first integral is the shadow-error input. The second is the classical
continuation coupling.

## Theorem `B1`

Assume `(B1.2)` and `(B1.3)`. Then

```math
\sup_{0\le t<T}\|u(t)\|_{H^{s-1}}<\infty.
\tag{B1.4}
```

Consequently, the classical shadow does not blow up on `[0,T)`, and the route
reduces to the named classical-side relaunch criterion: the displayed
`H^{s-1}` bound must give a common restart lifespan and uniqueness overlap for
the same solution.

**Proof.**
Apply the exact Gronwall estimate from
[shadow-error-gronwall-continuation-criterion.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/shadow-error-gronwall-continuation-criterion.md)
with forcing `F=E_{\mathrm{sh}}(X)`. That gives

```math
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
\tag{B1.5}
```

The two finiteness assumptions in `(B1.3)` make the right-hand side finite on
every `t<T`, proving `(B1.4)`. Therefore no classical `H^{s-1}` blowup occurs on
the window, and continuation reduces to the chosen classical continuation
package. ∎

## Decomposition of `(B1)`

So Route `B` splits into two exact sub-burdens:

```math
\text{(B1a) prove }E_{\mathrm{sh}}(X)\in L_t^1H_x^{s-1}\text{ on the window,}
\tag{B1.6}
```

```math
\text{(B1b) couple that forced window to any classical continuation theorem yielding }
\int_0^T\|\nabla u\|_{L^\infty}\,dt<\infty.
\tag{B1.7}
```

This is the precise meaning of “integrable shadow error plus classical
continuation coupling.”

## Low-order forcing interpretation

At the lowest classical energy tier, the same burden appears as the forced
gradient inequality from
[shadow-remainder-forced-h1-bridge.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/shadow-remainder-forced-h1-bridge.md):

```math
\frac{d}{dt}\|\nabla u\|_{L^2}^2
+
\nu\|\Delta u\|_{L^2}^2
\le
C_\nu\|\nabla u\|_{L^2}^6
+
C_\nu\|E_{\mathrm{sh}}\|_{H^1}^2.
\tag{B1.8}
```

So `(B1)` is not vague robustness language. It is the exact forcing-plus-
continuation theorem needed to make Route `B` a real closure path.
