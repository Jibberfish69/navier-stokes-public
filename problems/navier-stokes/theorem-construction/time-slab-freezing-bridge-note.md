# Time-Slab Freezing Bridge Note

## Purpose

This note upgrades the exact frozen-flow-map reduction from
[lagrangian-stokes-bridge-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lagrangian-stokes-bridge-program.md)
to the genuinely evolving coefficient system.

The point is to stop treating the non-autonomous bridge as a single abstract
maximal-regularity black box and instead isolate the concrete perturbative
mechanism:

```math
\boxed{
\text{freeze one Lagrangian time slice, conjugate exactly to classical Stokes,}
}
```

```math
\boxed{
\text{then control the coefficient drift on a short time slab as a perturbation.}
}
```

## Exact setup on a short slab

Fix `t_0` and write

```math
X_*:=X(\cdot,t_0),
\qquad
F_*:=\nabla_a X_*,
\qquad
A_*:=F_*^{-1},
\qquad
G_*:=A_*A_*^\top.
\tag{1}
```

Define the frozen spatial coordinate

```math
x:=X_*(a),
\qquad
a=Y_*(x):=X_*^{-1}(x),
\tag{2}
```

and the transported fields on the slab `[t_0,t_0+h]`

```math
w(x,t):=v(Y_*(x),t),
\qquad
\pi(x,t):=q(Y_*(x),t),
\qquad
\widetilde f(x,t):=f(Y_*(x),t).
\tag{3}
```

Since `X_*` is time-independent,

```math
\partial_t w=(\partial_t v)\circ Y_*.
\tag{4}
```

## Exact transformed coefficient fields

Introduce

```math
F_*^\sharp(x):=F_*(Y_*(x)),
\qquad
M(x,t):=F_*^\sharp(x)\,A(Y_*(x),t),
\qquad
H(x,t):=F_*^\sharp(x)\,G(Y_*(x),t)\,F_*^\sharp(x)^\top.
\tag{5}
```

Then

```math
M(\cdot,t_0)=I,
\qquad
H(\cdot,t_0)=I,
\qquad
H=MM^\top.
\tag{6}
```

The exact pulled-back identities are:

```math
\operatorname{div}_a(Av)=0
\iff
\operatorname{div}_x(Mw)=0,
\tag{7}
```

```math
A^\top\nabla_a q
=
M^\top\nabla_x\pi,
\tag{8}
```

and, in weak form,

```math
\big(\operatorname{div}_a(G\nabla_a v)\big)\circ Y_*
=
\operatorname{div}_x(H\nabla_x w).
\tag{9}
```

So the evolving Lagrangian system becomes on the frozen slab:

```math
\partial_t w + M^\top\nabla_x\pi-\nu\,\operatorname{div}_x(H\nabla_x w)=\widetilde f,
\qquad
\operatorname{div}_x(Mw)=0.
\tag{10}
```

At `t=t_0`, this is exactly the classical Stokes system.

## Perturbative split

Write

```math
M=I+\mu,
\qquad
H=I+\eta.
\tag{11}
```

Then `(10)` becomes

```math
\partial_t w+\nabla_x\pi-\nu\,\Delta_x w
=
\widetilde f
+
\nu\,\operatorname{div}_x(\eta\nabla_x w)
-\mu^\top\nabla_x\pi,
\tag{12}
```

with constraint

```math
\operatorname{div}_x w
=
-\operatorname{div}_x(\mu w).
\tag{13}
```

So the non-autonomous bridge is reduced to a classical Stokes system with two
coefficient perturbations and one moving divergence defect:

1. a variable-coefficient diffusion defect `\operatorname{div}_x(\eta\nabla w)`;
2. a variable-coefficient pressure defect `-\mu^\top\nabla_x\pi`;
3. a moving divergence defect `-\operatorname{div}_x(\mu w)`.

The diffusion perturbation is not lower-order:

```math
\operatorname{div}_x(\eta\nabla_x w)
=
\eta:\nabla_x^2 w
+
(\operatorname{div}_x\eta)\cdot\nabla_x w.
\tag{13a}
```

So the first term remains principal and must be treated as a small coefficient
perturbation of `-\nu\Delta_x`.

## Coefficient drift on a short slab

The native evolution laws are

```math
\partial_tA=-A(\nabla_a v)A,
\qquad
\partial_tG=(\partial_tA)A^\top+A(\partial_tA)^\top.
\tag{14}
```

Hence on `[t_0,t_0+h]`,

```math
\|A(t)-A_*\|_{W^{1,\infty}}
\le
C_A
\int_{t_0}^t
\Psi_A\big(\|A(\tau)\|_{W^{1,\infty}},\|\nabla_a v(\tau)\|_{W^{1,\infty}},\|\nabla_a^2 v(\tau)\|_{L^\infty}\big)\,d\tau,
\tag{15}
```

and similarly

```math
\|G(t)-G_*\|_{W^{1,\infty}}
\le
C_G
\int_{t_0}^t
\Phi\big(\|A(\tau)\|_{W^{1,\infty}},\|\nabla_a v(\tau)\|_{W^{1,\infty}},\|\nabla_a^2 v(\tau)\|_{L^\infty}\big)\,d\tau.
\tag{16}
```

Therefore

```math
\|\mu\|_{L^\infty_tW^{1,\infty}_x([t_0,t_0+h])}
+
\|\eta\|_{L^\infty_tW^{1,\infty}_x([t_0,t_0+h])}
\to 0
\quad\text{as }h\to0,
\tag{17}
```

provided the same-depth velocity ledger controls `\nabla_a v` and
`\nabla_a^2v` in the required slab norms.

More explicitly,

```math
\|\mu\|_{L_t^\infty W_x^{1,\infty}}
+
\|\eta\|_{L_t^\infty W_x^{1,\infty}}
\le
C_{\mu\eta}
\int_{t_0}^{t_0+h}
\Psi\big(\|A(\tau)\|_{W_a^{1,\infty}},\|G(\tau)\|_{W_a^{1,\infty}},
\|\nabla_a v(\tau)\|_{W_a^{1,\infty}},\|\nabla_a^2 v(\tau)\|_{L^\infty}\big)\,d\tau.
\tag{17a}
```

For the high-regularity slab route, one also needs same-depth smallness of
`\mu` in Sobolev norms, not just in `W^{1,\infty}`. In the frozen `x`
coordinates,

```math
\partial_t M
=
F_*^\sharp(\partial_t A)\circ Y_*
=
-M(\nabla_x w)M,
\tag{17b}
```

so for `s>\frac52`,

```math
\|\partial_t\mu\|_{H_x^s}
\le
C_s
P\!\big(\|M\|_{H_x^s\cap W_x^{1,\infty}}\big)\,
\|w\|_{H_x^{s+1}}.
\tag{17c}
```

Since `\mu(t_0)=0`, this yields the short-slab gain

```math
\|\mu\|_{L_t^\infty H_x^s([t_0,t_0+h])}
\le
C_s
h^{1/2}\,
P\!\big(\|M\|_{L_t^\infty(H_x^s\cap W_x^{1,\infty})}\big)\,
\|w\|_{L_t^2H_x^{s+1}([t_0,t_0+h])}.
\tag{17d}
```

So the same slab ledger that drives the velocity estimate also gives the
`H^s`-smallness of `\mu` needed for the pressure-defect estimate in
[moving-constraint-defect-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/moving-constraint-defect-program.md).

## Natural slab estimate to prove

Define

```math
X_s[t_0,t_1]
:=
\|w\|_{L_t^\infty H_x^s([t_0,t_1])}
+
\|w\|_{L_t^2 H_x^{s+1}([t_0,t_1])}
+
\|\partial_t w\|_{L_t^2 H_x^{s-1}([t_0,t_1])}
+
\|\nabla_x\pi\|_{L_t^2 H_x^{s-1}([t_0,t_1])}.
\tag{18}
```

The desired short-time bootstrap inequality is

```math
X_s[t_0,t_0+h]
\le
C_*\Big(
\|w(t_0)\|_{H^s}
+
\|\widetilde f\|_{L_t^2H_x^{s-1}}
\Big)
+
C_*\Big(
\|\mu\|_{L_t^\infty W_x^{1,\infty}}
+
\|\eta\|_{L_t^\infty W_x^{1,\infty}}
\Big)\,X_s[t_0,t_0+h]
+
\mathfrak D_s[\mu,w],
\tag{19}
```

where `\mathfrak D_s[\mu,w]` is the extra cost of the nonzero divergence defect
`\operatorname{div}_x w=-\operatorname{div}_x(\mu w)`.

If the coefficient drift term is small enough on the slab and
`\mathfrak D_s[\mu,w]` is controlled on the same ledger, then the perturbative
term is absorbed to the left, yielding a same-depth estimate with
frozen-geometry-dependent constants.

## Exact remaining obstruction

The note reduces the non-autonomous bridge to one sharp question:

```math
\boxed{
\text{can the pressure/constraint defect term carried by }\mu
\text{ be estimated on the same }X_s\text{ ledger as the Stokes part?}
}
\tag{20}
```

If yes, then the entire non-autonomous bridge follows by short-time freezing,
absorption, and iteration across time slabs.

If no, then the real remaining burden is no longer “maximal regularity” in
general, but the same-depth treatment of the evolving constrained divergence
operator

```math
\operatorname{div}_x(M(t)\cdot).
\tag{21}
```

## Practical verdict

The time-dependent bridge is now much sharper:

```math
\boxed{
\text{frozen exact conjugation is done;}
}
```

```math
\boxed{
\text{the live issue is short-time perturbative control of the moving constraint/pressure defect.}
}
```
