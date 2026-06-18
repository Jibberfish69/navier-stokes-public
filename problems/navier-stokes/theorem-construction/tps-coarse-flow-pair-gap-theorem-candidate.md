# TPS Coarse-Flow Pair-Gap Theorem Candidate

## Purpose

This note isolates one sharpened version of the remaining dynamic burden inside
`TPS-ns-good-set`.

The point is to replace a direct attack on unary selector labels by a
coarse-flow pair-gap theorem with a uniform-in-time exclusion consequence.

The canonical theorem-facing Navier--Stokes surfaces now place the live
surviving route, after the separate Law 2 / no-drop line removes the dead
branch, on the TPS strong/defect bridge with `SG.4` as the exact unresolved
obstruction. This note is therefore a local TPS dynamic burden packet inside
that surviving branch, not a separate lane-wide promotion surface.

Throughout this note, the active surface is the periodic torus branch. Pair
distances are read on the periodic lift / geodesic
representative of `\mathbb T^3`, not as a whole-space-at-infinity object.

## Coarse flow and transverse pair-gap

Let `u_{\le J}` denote a smooth low-frequency truncation of the live velocity,
and let `X_{\le J}(a,t)` be the associated coarse Lagrangian flow:

```math
\partial_t X_{\le J}(a,t)=u_{\le J}(X_{\le J}(a,t),t),
\qquad
X_{\le J}(a,0)=a.
\tag{CF.1}
```

Fix a good active-pair set

```math
G_J^{pair}:=\{(a,b)\in G_J\times G_J:\ b\sim a\},
\tag{CF.2}
```

with selector-neighbor scale `\ell_J>0` and measurable transverse bundle
`a\mapsto N_a` as in `TPS-ns-good-set`. The scale `\ell_J` is frozen in time and
all good active pairs satisfy
`c_{pair}\ell_J\le |a-b|\le C_{pair}\ell_J` at the initial time.

Define the normalized coarse pair-gap functional

```math
\Phi_J(t)
:=
\operatorname*{ess\,inf}_{(a,b)\in G_J^{pair}}
\frac{|X_{\le J}(b,t)-X_{\le J}(a,t)|}{\ell_J}.
\tag{CF.3}
```

This is the pair-gap quantity targeted by the uniform-away-from-shadow-scale
theorem.

## Coarse linearized flow

Let `W_{\le J}(t,a)` solve

```math
\partial_t W_{\le J}(t,a)
=
\nabla u_{\le J}(X_{\le J}(a,t),t)\,W_{\le J}(t,a),
\qquad
W_{\le J}(0,a)=I.
\tag{CF.4}
```

Assume the transported transverse cone remains coherent on the good set, so
that the coarse pair displacement stays in the selector-transverse sector up to
a negligible cone error.

Assume moreover that the symmetric coarse strain on that sector satisfies

```math
v^\top
\operatorname{Sym}\!\big(
\Pi_{N_a}\nabla u_{\le J}(X_{\le J}(a,t),t)\Pi_{N_a}
\big)v
\ge
\big(\lambda_J(t)-\varepsilon_J(t,a)\big)|v|^2
\tag{CF.5}
```

for every `v\in N_a`, with

```math
\varepsilon_J^*(t):=\operatorname*{ess\,sup}_{a\in G_J}\varepsilon_J(t,a),
\qquad
\int_0^{T_J}\varepsilon_J^*(t)\,dt<\infty.
\tag{CF.6}
```

### Proposition CF-bundle-coercive. Coarse Expanding-Plane Coherence Implies `(CF.5)`

Write the coarse strain tensor in Eulerian form and along the coarse flow as

```math
S_{\le J}(x,t)
:=
\operatorname{Sym}\nabla u_{\le J}(x,t),
\qquad
S_{\le J}(a,t)
:=
S_{\le J}(X_{\le J}(a,t),t).
\tag{CF.6a}
```

For the live three-dimensional route, let `E_{\le J}^{+}(x,t)` denote the
rank-two spectral plane of `S_{\le J}(x,t)` associated to its two largest
eigenvalues, let `Q_{\le J}^{+}(x,t)` be the orthogonal projector onto
`E_{\le J}^{+}(x,t)`, and let

```math
\lambda_{2,\le J}(x,t)
:=
\lambda_{\min}\!\big(S_{\le J}(x,t)\big|_{E_{\le J}^{+}(x,t)}\big).
\tag{CF.6b}
```

Assume there exist a coarse rate `\Lambda_J(t)\ge 0` and a spectral defect
`\varepsilon_J^{spec}(t,a)\ge 0` such that

```math
\lambda_{2,\le J}(X_{\le J}(a,t),t)
\ge
\Lambda_J(t)-\varepsilon_J^{spec}(t,a)
\qquad\text{for a.e. }(t,a)\in[0,T_J]\times G_J.
\tag{CF.6c}
```

Let

```math
M_J(t)
:=
\operatorname*{ess\,sup}_{a\in G_J}
\big\|S_{\le J}(X_{\le J}(a,t),t)\big\|_{\mathrm{op}},
\tag{CF.6d}
```

and quantify the selector-bundle angle defect by

```math
\vartheta_J(a,t)
:=
\big\|
\big(I-Q_{\le J}^{+}(X_{\le J}(a,t),t)\big)P_{N_a}
\big\|_{\mathrm{op}}.
\tag{CF.6e}
```

Assume

```math
\vartheta_J(a,t)\le \theta_J(a,t).
\tag{CF.6f}
```

Then for every `v\in N_a`,

```math
v^\top
\operatorname{Sym}\!\big(
P_{N_a}\nabla u_{\le J}(X_{\le J}(a,t),t)P_{N_a}
\big)v
\ge
\big(
\Lambda_J(t)-\varepsilon_J^{spec}(t,a)-2M_J(t)\theta_J(a,t)^2
\big)|v|^2.
\tag{CF.6g}
```

Hence `(CF.5)` holds with the explicit identification

```math
\lambda_J(t):=\Lambda_J(t),
\qquad
\varepsilon_J(t,a)
:=
\varepsilon_J^{spec}(t,a)+2M_J(t)\theta_J(a,t)^2.
\tag{CF.6h}
```

**Proof.**
Fix `a\in G_J`, a time `t`, and a unit vector `v\in N_a`. Abbreviate

```math
x:=X_{\le J}(a,t),
\qquad
S:=S_{\le J}(x,t),
\qquad
Q:=Q_{\le J}^{+}(x,t).
```

Decompose `v=v_++v_-` with `v_+:=Qv` and `v_-:=(I-Q)v`. Since `Q` is the
orthogonal spectral projector of the symmetric matrix `S`, the mixed terms
vanish:

```math
\langle Sv,v\rangle
=
\langle Sv_+,v_+\rangle+\langle Sv_-,v_-\rangle.
```

By the definition of `\lambda_{2,\le J}` and the lower bound `(CF.6c)`,

```math
\langle Sv_+,v_+\rangle
\ge
\lambda_{2,\le J}(x,t)|v_+|^2
\ge
\big(\Lambda_J(t)-\varepsilon_J^{spec}(t,a)\big)|v_+|^2.
```

By `(CF.6d)`,

```math
\langle Sv_-,v_-\rangle\ge -M_J(t)|v_-|^2.
```

Moreover,

```math
|v_-|
=
\big|(I-Q)P_{N_a}v\big|
\le
\vartheta_J(a,t)|v|
\le
\theta_J(a,t)|v|,
```

by `(CF.6e)` and `(CF.6f)`. Since `|v|=1`, this implies
`|v_-|^2\le \theta_J(a,t)^2` and hence

```math
|v_+|^2=1-|v_-|^2\ge 1-\theta_J(a,t)^2.
```

Combining the three estimates,

```math
\langle Sv,v\rangle
\ge
\big(\Lambda_J-\varepsilon_J^{spec}\big)\big(1-\theta_J^2\big)-M_J\theta_J^2
=
\big(\Lambda_J-\varepsilon_J^{spec}\big)
-\big(\Lambda_J-\varepsilon_J^{spec}+M_J\big)\theta_J^2.
```

Since `(CF.6c)` and `(CF.6d)` imply
`\Lambda_J(t)-\varepsilon_J^{spec}(t,a)\le \lambda_{2,\le J}(x,t)\le M_J(t)`,
the coefficient of `\theta_J^2` is at most `2M_J(t)`. Therefore

```math
\langle Sv,v\rangle
\ge
\big(\Lambda_J(t)-\varepsilon_J^{spec}(t,a)-2M_J(t)\theta_J(a,t)^2\big)|v|^2,
```

which is `(CF.6g)`. The identification `(CF.6h)` is the same lower bound
written in the packet notation above. ∎

### Corollary CF-bundle-coercive-int. Minimal Integrated Coarse Closure Packet

Define

```math
\varepsilon_J^{spec,*}(t)
:=
\operatorname*{ess\,sup}_{a\in G_J}\varepsilon_J^{spec}(t,a),
\qquad
\theta_J^*(t)
:=
\operatorname*{ess\,sup}_{a\in G_J}\theta_J(a,t).
\tag{CF.6i}
```

If

```math
\int_0^{T_J}\Lambda_J(t)\,dt\to+\infty,
\qquad
\int_0^{T_J}\varepsilon_J^{spec,*}(t)\,dt=o_J(1),
\qquad
\int_0^{T_J}M_J(t)\theta_J^*(t)^2\,dt=o_J(1),
\tag{CF.6j}
```

then `(CF.5)`-`(CF.6)` hold with

```math
\varepsilon_J^*(t)
\le
\varepsilon_J^{spec,*}(t)+2M_J(t)\theta_J^*(t)^2,
\tag{CF.6k}
```

so the entire coarse bundle burden is reduced to a spectral floor for
`\lambda_{2,\le J}` together with quadratic angle control of `N_a` against the
coarse expanding plane `E_{\le J}^{+}`.

## Coarse `\lambda_{2,J}^{+}` feed packet

Define the positive part of the coarse middle eigenvalue by

```math
\lambda_{2,J}^{+}(x,t)
:=
\max\big(\lambda_{2,\le J}(x,t),0\big).
\tag{CF.6l}
```

The live selector route does not need a pointwise selector of one spatial point
on the transported segment. It is enough to produce an angular-good sub-arc on
which `\lambda_{2,J}^{+}` contributes positively to the exact logarithmic
pair-strain identity.

### Proposition TPS-coarse-gap-lambda2-plus-feed

Assume there exist:

1. an asymptotically full measurable angular good-pair family
   `G_J^{pair,\angle}\subseteq G_J^{pair}`;
2. measurable angular-good sub-arcs
   `I_{ab}^{ang}(t)\subseteq[0,1]` for `(a,b)\in G_J^{pair,\angle}`;
3. measurable fresh-time indicators `\chi_{ab}^{fresh}(t)\in\{0,1\}`;
4. a constant `0<c_\angle\le 1`;
5. measurable angular defect profiles `\vartheta_{ab}(\theta,t)\ge 0`;
6. measurable angle-defect densities `\mathrm{angdef}_{ab}(t)\ge 0`;

such that for a.e. `t\in[0,T_J]` and every `(a,b)\in G_J^{pair,\angle}`,

```math
|I_{ab}^{ang}(t)|\ge \mu_J^{ang}(t)\chi_{ab}^{fresh}(t),
\qquad
0\le \mu_J^{ang}(t)\le 1,
\tag{CF.6m}
```

By convention, `I_{ab}^{ang}(t)=\varnothing` whenever `\chi_{ab}^{fresh}(t)=0`.

where

```math
y_a(t):=X_{\le J}(a,t),
\qquad
y_b(t):=X_{\le J}(b,t),
\qquad
e_{a,b}(t):=\frac{y_b(t)-y_a(t)}{|y_b(t)-y_a(t)|},
\qquad
\gamma_{a,b}(\theta,t):=(1-\theta)y_a(t)+\theta y_b(t).
```

and, writing

```math
\overline{\mathcal A}_{ab}^{fresh}(t)
:=
\chi_{ab}^{fresh}(t)
\int_{I_{ab}^{ang}(t)}
\lambda_{2,J}^{+}(\gamma_{a,b}(\theta,t),t)\,d\theta,
\tag{CF.6n}
```

assume moreover that for a.e. `t` and a.e. `\theta\in I_{ab}^{ang}(t)`,

```math
\big|
\big(I-Q_{\le J}^{+}(\gamma_{a,b}(\theta,t),t)\big)e_{a,b}(t)
\big|
\le
\vartheta_{ab}(\theta,t),
\tag{CF.6n1}
```

and that the angle-defect density absorbs both the quadratic angular loss on
the fresh sub-arc and the coarse contribution of the complementary part of the
segment:

```math
\mathrm{angdef}_{ab}(t)
\ge
2M_J(t)\int_{I_{ab}^{ang}(t)}\vartheta_{ab}(\theta,t)^2\,d\theta
+
M_J(t)\chi_{ab}^{fresh}(t)\big(1-|I_{ab}^{ang}(t)|\big).
\tag{CF.6n2}
```

Then the exact segmentwise logarithmic pair-strain integrand obeys

```math
\frac{
\big(u_{\le J}(y_a(t),t)-u_{\le J}(y_b(t),t)\big)
\cdot
\big(y_a(t)-y_b(t)\big)
}{
|y_a(t)-y_b(t)|^2
}
\ge
c_\angle\,\overline{\mathcal A}_{ab}^{fresh}(t)
-\mathrm{angdef}_{ab}(t)
-M_J(t)\big(1-\chi_{ab}^{fresh}(t)\big).
\tag{CF.6o}
```

Define the angle-defect ledger

```math
A_J(t)
:=
\sup_{(a,b)\in G_J^{pair,\angle}}
\int_0^t \mathrm{angdef}_{ab}(s)\,ds,
\tag{CF.6p}
```

the recurrence ledger

```math
R_J(t)
:=
\sup_{(a,b)\in G_J^{pair,\angle}}
\int_0^t M_J(s)\big(1-\chi_{ab}^{fresh}(s)\big)\,ds,
\tag{CF.6q}
```

and the integrated angular-fresh gain

```math
\mathfrak M_J^{fresh,\angle}(t)
:=
\inf_{(a,b)\in G_J^{pair,\angle}}
\int_0^t \overline{\mathcal A}_{ab}^{fresh}(s)\,ds.
\tag{CF.6r}
```

Define also the normalized instantaneous fresh gain and its cumulative version

```math
g_J^{fresh,\angle}(t)
:=
c_\angle
\inf_{(a,b)\in G_J^{pair,\angle}}
\overline{\mathcal A}_{ab}^{fresh}(t),
\qquad
G_J^{fresh,\angle}(t)
:=
\int_0^t g_J^{fresh,\angle}(s)\,ds.
\tag{CF.6r1}
```

Then the scalar packet closes on `G_J^{pair,\angle}` with pair-level error
ledger

```math
\mathcal E_J^{pair}(a,b,t)
:=
\int_0^t \mathrm{angdef}_{ab}(s)\,ds
\;+\;
\int_0^t M_J(s)\big(1-\chi_{ab}^{fresh}(s)\big)\,ds.
\tag{CF.6s}
```

Consequently,

```math
\Phi_J(t)
\ge
c_0\exp\!\Big(
G_J^{fresh,\angle}(t)-A_J(t)-R_J(t)
\Big)
\tag{CF.6t}
```

on the refined good-pair family `G_J^{pair,\angle}`.

**Proof.**
Fix one pair `(a,b)\in G_J^{pair,\angle}`. By the exact segment formula
`(CF.8c)`-`(CF.8d)`,

```math
\frac{
\big(u_{\le J}(y_a(t),t)-u_{\le J}(y_b(t),t)\big)
\cdot
\big(y_a(t)-y_b(t)\big)
}{
|y_a(t)-y_b(t)|^2
}
=
\int_0^1
e_{a,b}(t)^\top
\operatorname{Sym}\nabla u_{\le J}(\gamma_{a,b}(\theta,t),t)
e_{a,b}(t)\,d\theta.
```

Fix such a time `t`. On the fresh sub-arc `I_{ab}^{ang}(t)`, abbreviate

```math
S(\theta,t)
:=
\operatorname{Sym}\nabla u_{\le J}(\gamma_{a,b}(\theta,t),t),
\qquad
Q(\theta,t)
:=
Q_{\le J}^{+}(\gamma_{a,b}(\theta,t),t),
\qquad
e:=e_{a,b}(t).
```

Decompose `e=e_+(\theta,t)+e_-(\theta,t)` with `e_+:=Qe` and
`e_-:=(I-Q)e`. Since `Q` is the spectral projector of the symmetric matrix
`S(\theta,t)`, the cross terms vanish and

```math
e^\top S(\theta,t)e
=
e_+(\theta,t)^\top S(\theta,t)e_+(\theta,t)
+
e_-(\theta,t)^\top S(\theta,t)e_-(\theta,t).
```

By the definition of `\lambda_{2,J}^{+}`,

```math
e_+(\theta,t)^\top S(\theta,t)e_+(\theta,t)
\ge
\lambda_{2,J}^{+}(\gamma_{a,b}(\theta,t),t)|e_+(\theta,t)|^2,
```

while the operator-norm bound gives

```math
e_-(\theta,t)^\top S(\theta,t)e_-(\theta,t)
\ge
-M_J(t)|e_-(\theta,t)|^2.
```

Assumption `(CF.6n1)` implies `|e_-(\theta,t)|\le \vartheta_{ab}(\theta,t)` and
hence `|e_+(\theta,t)|^2\ge 1-\vartheta_{ab}(\theta,t)^2`. Therefore, for
a.e. `\theta\in I_{ab}^{ang}(t)`,

```math
e^\top S(\theta,t)e
\ge
\lambda_{2,J}^{+}(\gamma_{a,b}(\theta,t),t)
-2M_J(t)\vartheta_{ab}(\theta,t)^2.
```

Integrating this over `I_{ab}^{ang}(t)` yields

```math
\int_{I_{ab}^{ang}(t)} e^\top S(\theta,t)e\,d\theta
\ge
\overline{\mathcal A}_{ab}^{fresh}(t)
-2M_J(t)\int_{I_{ab}^{ang}(t)}\vartheta_{ab}(\theta,t)^2\,d\theta,
```

because `\overline{\mathcal A}_{ab}^{fresh}(t)=0` when
`\chi_{ab}^{fresh}(t)=0`. On the complementary part of the segment,
`[0,1]\setminus I_{ab}^{ang}(t)`, the operator-norm bound gives

```math
\int_{[0,1]\setminus I_{ab}^{ang}(t)} e^\top S(\theta,t)e\,d\theta
\ge
-M_J(t)\big(1-|I_{ab}^{ang}(t)|\big).
```

Combining the last two displays and using `(CF.6n2)` yields `(CF.6o)`; the
factor `c_\angle\le 1` is dropped in this one-sided bound because
`\overline{\mathcal A}_{ab}^{fresh}(t)\ge 0`. Integrating `(CF.6o)` from `0` to
`t` gives

```math
\log\frac{d_J^{coarse}(a,b,t)}{d_J^{coarse}(a,b,0)}
\ge
c_\angle\int_0^t \overline{\mathcal A}_{ab}^{fresh}(s)\,ds
-\int_0^t \mathrm{angdef}_{ab}(s)\,ds
-\int_0^t M_J(s)\big(1-\chi_{ab}^{fresh}(s)\big)\,ds.
```

The definitions `(CF.6p)`-`(CF.6r1)` imply

```math
\int_0^t \overline{\mathcal A}_{ab}^{fresh}(s)\,ds
\ge
\int_0^t
\inf_{(\alpha,\beta)\in G_J^{pair,\angle}}
\overline{\mathcal A}_{\alpha\beta}^{fresh}(s)\,ds
=
c_\angle^{-1}G_J^{fresh,\angle}(t),
```

```math
\int_0^t \mathrm{angdef}_{ab}(s)\,ds\le A_J(t),
\qquad
\int_0^t M_J(s)\big(1-\chi_{ab}^{fresh}(s)\big)\,ds\le R_J(t).
```

Hence

```math
d_J^{coarse}(a,b,t)
\ge
d_J^{coarse}(a,b,0)
\exp\!\Big(
G_J^{fresh,\angle}(t)-A_J(t)-R_J(t)
\Big).
```

Using the initial lower bound `d_J^{coarse}(a,b,0)\ge c_0\ell_J` from `(CF.8b)`,
dividing by `\ell_J`, and taking the infimum over
`(a,b)\in G_J^{pair,\angle}` gives `(CF.6t)`. Also,
`G_J^{fresh,\angle}(t)\le c_\angle\,\mathfrak M_J^{fresh,\angle}(t)`, so the
older cumulative expression with `c_\angle\,\mathfrak M_J^{fresh,\angle}` is a
strictly stronger variant whenever it is convenient. The definition `(CF.6s)`
is exactly the pair-level error ledger required by the scalar packet. ∎

## Coarse pair-gap growth

### Proposition TPS-coarse-gap-growth. Exact logarithmic identity for the full coarse pair-gap

For a good active pair `(a,b)`, define the full coarse pair distance

```math
d_J^{coarse}(a,b,t)
:=
|X_{\le J}(b,t)-X_{\le J}(a,t)|.
\tag{CF.7}
```

Since `u_{\le J}` is smooth, `X_{\le J}(\cdot,t)` is a diffeomorphism for every
fixed `t`, so `d_J^{coarse}(a,b,t)>0` whenever `a\neq b`. Writing

```math
y_a(t):=X_{\le J}(a,t),
\qquad
y_b(t):=X_{\le J}(b,t),
\qquad
z_{ab}(t):=y_b(t)-y_a(t),
\tag{CF.8}
```

one has for almost every `t\in[0,T_J]`

```math
\frac{d}{dt}\log d_J^{coarse}(a,b,t)
=
\frac{
\big(u_{\le J}(y_b(t),t)-u_{\le J}(y_a(t),t)\big)\cdot z_{ab}(t)
}{
|z_{ab}(t)|^2
}.
\tag{CF.8a}
```

**Proof.**
The coarse flow equations imply
`\dot z_{ab}(t)=u_{\le J}(y_b(t),t)-u_{\le J}(y_a(t),t)`. Hence

```math
\frac{d}{dt}|z_{ab}(t)|^2
=
2\dot z_{ab}(t)\cdot z_{ab}(t)
=
2\big(u_{\le J}(y_b(t),t)-u_{\le J}(y_a(t),t)\big)\cdot z_{ab}(t).
```

Divide by `2|z_{ab}(t)|^2`. ∎

### Corollary TPS-coarse-gap-growth-segment. Segment formula for the logarithmic strain integrand

Define

```math
e_{a,b}(t):=\frac{z_{ab}(t)}{|z_{ab}(t)|},
\qquad
\gamma_{a,b}(\theta,t):=(1-\theta)y_a(t)+\theta y_b(t),
\qquad
0\le \theta\le 1.
\tag{CF.8b}
```

Then

```math
\frac{
\big(u_{\le J}(y_b(t),t)-u_{\le J}(y_a(t),t)\big)\cdot z_{ab}(t)
}{
|z_{ab}(t)|^2
}
=
\int_0^1
e_{a,b}(t)^\top
\nabla u_{\le J}(\gamma_{a,b}(\theta,t),t)
e_{a,b}(t)\,d\theta,
\tag{CF.8c}
```

and therefore

```math
\frac{
\big(u_{\le J}(y_b(t),t)-u_{\le J}(y_a(t),t)\big)\cdot z_{ab}(t)
}{
|z_{ab}(t)|^2
}
=
\int_0^1
e_{a,b}(t)^\top
\operatorname{Sym}\nabla u_{\le J}(\gamma_{a,b}(\theta,t),t)
e_{a,b}(t)\,d\theta.
\tag{CF.8d}
```

**Proof.**
Apply the fundamental theorem of calculus along the segment
`\theta\mapsto \gamma_{a,b}(\theta,t)`, take the inner product with `z_{ab}(t)`,
and divide by `|z_{ab}(t)|^2`. The antisymmetric part drops out in the scalar
quadratic form. ∎

### Corollary CF-pair-strain-segment. Segmentwise spectral coherence implies differential gap production

Assume there exists a measurable coarse log-rate `\lambda_J^{seg}(t)\ge 0`
such that for almost every `(t,\theta)` and every good active pair,

```math
\lambda_{2,\le J}(\gamma_{a,b}(\theta,t),t)
\ge
\lambda_J^{seg}(t)-\varepsilon_J^{seg}(a,b,\theta,t),
\tag{CF.8e}
```

with

```math
\big\|
\operatorname{Sym}\nabla u_{\le J}(\gamma_{a,b}(\theta,t),t)
\big\|_{\mathrm{op}}
\le
M_J(t),
\tag{CF.8f}
```

and

```math
\big|
\big(I-Q_{\le J}^{+}(\gamma_{a,b}(\theta,t),t)\big)e_{a,b}(t)
\big|
\le
\theta_J^{seg}(a,b,\theta,t).
\tag{CF.8g}
```

Define

```math
\overline{\varepsilon}_J^{pair}(a,b,t)
:=
\int_0^1 \varepsilon_J^{seg}(a,b,\theta,t)\,d\theta
+
2M_J(t)\int_0^1\theta_J^{seg}(a,b,\theta,t)^2\,d\theta.
\tag{CF.8h}
```

Then for almost every `t\in[0,T_J]`,

```math
\frac{d}{dt}\log d_J^{coarse}(a,b,t)
\ge
\lambda_J^{seg}(t)-\overline{\varepsilon}_J^{pair}(a,b,t).
\tag{CF.8i}
```

**Proof.**
Fix `(t,\theta)` and set

```math
S:=\operatorname{Sym}\nabla u_{\le J}(\gamma_{a,b}(\theta,t),t),
\qquad
Q:=Q_{\le J}^{+}(\gamma_{a,b}(\theta,t),t),
\qquad
e:=e_{a,b}(t).
```

Write `e=e_++e_-` with `e_+:=Qe` and `e_-:=(I-Q)e`. Since `Q` is a spectral
projector of the symmetric matrix `S`, the cross terms vanish:

```math
e^\top S e = e_+^\top S e_+ + e_-^\top S e_-.
```

By `(CF.8e)`,
`e_+^\top S e_+\ge(\lambda_J^{seg}(t)-\varepsilon_J^{seg}(a,b,\theta,t))|e_+|^2`,
and by `(CF.8f)`,
`e_-^\top S e_-\ge-M_J(t)|e_-|^2`. Because `|e|=1` and `(CF.8g)` gives
`|e_-|\le \theta_J^{seg}(a,b,\theta,t)`, one has
`|e_+|^2\ge 1-\theta_J^{seg}(a,b,\theta,t)^2`. Therefore

```math
e^\top S e
\ge
\big(\lambda_J^{seg}(t)-\varepsilon_J^{seg}(a,b,\theta,t)\big)
\big(1-\theta_J^{seg}(a,b,\theta,t)^2\big)
-M_J(t)\theta_J^{seg}(a,b,\theta,t)^2.
```

Since `\lambda_J^{seg}(t)-\varepsilon_J^{seg}(a,b,\theta,t)\le M_J(t)`, the
quadratic loss is bounded by `2M_J(t)\theta_J^{seg}(a,b,\theta,t)^2`, so

```math
e^\top S e
\ge
\lambda_J^{seg}(t)-\varepsilon_J^{seg}(a,b,\theta,t)
-2M_J(t)\theta_J^{seg}(a,b,\theta,t)^2.
\tag{CF.8j}
```

Integrate `(CF.8j)` in `\theta`, invoke `(CF.8d)`, and combine with `(CF.8a)`.
∎

### Lemma CF-strip-ledger. Additive scalar packet on admissible strips

Let `I=[t_0,t_1]\subseteq[0,T_J]` be an admissible strip on which the
good-bundle chart is fixed and the hypotheses of `CF-pair-strain-segment` hold.
Define

```math
L_I^{gain}(a,b)
:=
\int_I \lambda_J^{seg}(t)\,dt,
\qquad
L_I^{loss}(a,b)
:=
\int_I \overline{\varepsilon}_J^{pair}(a,b,t)\,dt,
\tag{CF.8k}
```

and

```math
L_I^{net}(a,b):=L_I^{gain}(a,b)-L_I^{loss}(a,b).
\tag{CF.8l}
```

If

```math
d_J^{coarse}(a,b,t_0)\ge c_0\ell_J,
\tag{CF.8m}
```

then

```math
d_J^{coarse}(a,b,t_1)
\ge
c_0\ell_J\,e^{L_I^{net}(a,b)}.
\tag{CF.8n}
```

Moreover, if

```math
0=t_0<t_1<\cdots<t_m=T_J
\tag{CF.8o}
```

is a partition into admissible strips `I_r=[t_{r-1},t_r]`, then

```math
\log\frac{d_J^{coarse}(a,b,T_J)}{d_J^{coarse}(a,b,0)}
\ge
\sum_{r=1}^m L_{I_r}^{net}(a,b).
\tag{CF.8p}
```

So the scalar ledger is additive under concatenation and monotone under
refinement.

**Proof.**
Integrate `(CF.8i)` on `I`:

```math
\log d_J^{coarse}(a,b,t_1)-\log d_J^{coarse}(a,b,t_0)
\ge
L_I^{net}(a,b).
```

Insert `(CF.8m)` and exponentiate to obtain `(CF.8n)`. Summing over the
partition `(CF.8o)` yields `(CF.8p)` by telescoping. ∎

### Corollary TPS-coarse-gap-growth-log. Canonical route-level scalar packet

For an admissible strip `I`, define the route-level packet

```math
L_I^{net}
:=
\operatorname*{ess\,inf}_{(a,b)\in G_J^{pair}}L_I^{net}(a,b).
\tag{CF.8q}
```

If `(CF.8m)` holds uniformly on the good active family, then

```math
\operatorname*{ess\,inf}_{(a,b)\in G_J^{pair}}
\frac{d_J^{coarse}(a,b,t_1)}{\ell_J}
\ge
c_0\,e^{L_I^{net}}.
\tag{CF.8r}
```

In particular, when `I=[0,t]`,

```math
\Phi_J(t)\ge c_0\,e^{L_{[0,t]}^{net}}.
\tag{CF.8s}
```

This is the canonical scalar packet consumed by the downstream selector and
shadow-time notes. The high-frequency component `u_{>J}` does not enter this
packet directly; it enters only through the actual-versus-coarse deviation
modulus below.

## Actual-versus-coarse deviation

To compare the coarse flow to the full Lagrangian flow `X`, assume a
single-particle deviation bound

```math
\delta_J(t)
:=
\operatorname*{ess\,sup}_{a\in G_J}|X(a,t)-X_{\le J}(a,t)|.
\tag{CF.9}
```

It is also convenient to record the sharper pairwise deviation modulus

```math
D_J
:=
\operatorname*{ess\,sup}_{(a,b)\in G_J^{pair}}
\sup_{0\le t\le T_J}
\frac{
\big|
\big(X(a,t)-X(b,t)\big)
-\big(X_{\le J}(a,t)-X_{\le J}(b,t)\big)
\big|
}{\ell_J}.
\tag{CF.9a}
```

By the triangle inequality,

```math
D_J\le 2\ell_J^{-1}\sup_{0\le t\le T_J}\delta_J(t).
\tag{CF.9b}
```

Hence every good active pair satisfies

```math
|X(a,t)-X(b,t)|
\ge
d_J^{coarse}(a,b,t)-D_J\ell_J.
\tag{CF.9c}
```

### Proposition TPS-shadow-exclusion. Threshold crossing on a strip implies actual separation

Fix a target separation scale `R_{sep}>0` and define the strip threshold

```math
L_I^{thr}(R_{sep})
:=
\log\frac{R_{sep}}{c_0\ell_J}.
\tag{CF.10}
```

If

```math
L_I^{net}(a,b)\ge L_I^{thr}(R_{sep}),
\tag{CF.10a}
```

then

```math
d_J^{coarse}(a,b,t_1)\ge R_{sep}.
\tag{CF.10b}
```

If, in addition,

```math
R_{sep}\ge 2\sigma_J + D_J^{max}\ell_J
\qquad\text{and}\qquad
D_J\le D_J^{max},
\tag{CF.10c}
```

then

```math
|X(a,t_1)-X(b,t_1)|\ge 2\sigma_J.
\tag{CF.10d}
```

**Proof.**
By `(CF.8n)`,

```math
d_J^{coarse}(a,b,t_1)\ge c_0\ell_J\,e^{L_I^{net}(a,b)}.
```

Insert `(CF.10a)` and the definition `(CF.10)` to obtain `(CF.10b)`. Then
combine `(CF.10b)` with `(CF.9c)` and `(CF.10c)`:

```math
|X(a,t_1)-X(b,t_1)|
\ge
d_J^{coarse}(a,b,t_1)-D_J^{max}\ell_J
\ge
2\sigma_J.
```

This is `(CF.10d)`. ∎

### Corollary TPS-shadow-exclusion-envelope. Route-specific shadow threshold

The shadow-exclusion threshold relevant for the Navier--Stokes selector packet
is

```math
L_J^{thr}
:=
\log\frac{2\sigma_J + D_J^{max}\ell_J}{c_0\ell_J}.
\tag{CF.10e}
```

So

```math
L_I^{net}(a,b)\ge L_J^{thr}
\tag{CF.10f}
```

implies endpoint exclusion from the physical `2\sigma_J` shadow tube on the
strip `I`.

This is the exact scalar hinge shared by the strong and weak routes: once the
stripwise packet clears `L_J^{thr}`, the coarse pair has reached the separation
scale needed to survive the actual/coarse perturbation.

### Corollary TPS-shadow-exclusion-uniform. Prefix-ledger criterion for whole-strip exclusion

Fix an admissible strip `I=[t_0,t_1]`. For `t\in I`, define the prefix ledger

```math
L_{[t_0,t]}^{net}(a,b)
:=
\int_{t_0}^t \lambda_J^{seg}(s)\,ds
-
\int_{t_0}^t \overline{\varepsilon}_J^{pair}(a,b,s)\,ds,
\tag{CF.10g}
```

and its minimum

```math
L_{I,\min}^{net}(a,b)
:=
\inf_{t\in I}L_{[t_0,t]}^{net}(a,b).
\tag{CF.10h}
```

The pair-specific uniform shadow threshold is

```math
L_{I,\mathrm{unif}}^{thr}(a,b;t_0)
:=
\log\frac{2\sigma_J + D_J^{max}\ell_J}{d_J^{coarse}(a,b,t_0)}.
\tag{CF.10i}
```

If

```math
L_{I,\min}^{net}(a,b)\ge L_{I,\mathrm{unif}}^{thr}(a,b;t_0)
\qquad\text{and}\qquad
D_J\le D_J^{max},
\tag{CF.10j}
```

then

```math
|X(a,t)-X(b,t)|\ge 2\sigma_J
\qquad\text{for every }t\in I.
\tag{CF.10k}
```

**Proof.**
For each `t\in I`, apply `(CF.8n)` to the prefix strip `[t_0,t]`:

```math
d_J^{coarse}(a,b,t)
\ge
d_J^{coarse}(a,b,t_0)e^{L_{[t_0,t]}^{net}(a,b)}
\ge
d_J^{coarse}(a,b,t_0)e^{L_{I,\min}^{net}(a,b)}.
```

Now insert `(CF.10j)` and the definition `(CF.10i)` to obtain

```math
d_J^{coarse}(a,b,t)\ge 2\sigma_J + D_J^{max}\ell_J.
```

Combine this with `(CF.9c)` to conclude `(CF.10k)`. ∎

This is the honest whole-strip exclusion criterion. By contrast, the universal
threshold `L_J^{thr}` in `(CF.10e)` is calibrated against the lower scale
`c_0\ell_J`, so `(CF.10f)` is an endpoint statement unless one also has a
prefix monotonicity / no-entry theorem or a stronger initial separation at the
left endpoint of the strip.

## Theorem candidate

```math
\boxed{\text{TPS-ns-coarse-pair-gap}}
```

Assume:

1. `TPS-ns-good-set` holds through the measurable-good-set package
   `(GS.1)`-`(GS.7)`;
2. the segmentwise spectral hypotheses `(CF.8e)`-`(CF.8g)` hold on each
   admissible shadow strip for the good active family;
3. the initial selector-neighbor scale gives

```math
d_J^{coarse}(a,b,t_0)\ge c_0\ell_J
\tag{CF.11}
```

   at the left endpoint of every admissible strip `I=[t_0,t_1]`;
4. the actual/coarse deviation satisfies

```math
D_J\le D_J^{max}.
\tag{CF.11a}
```

One exact source of `(CF.11a)` is recorded separately in
[tps-high-frequency-tail-to-coarse-flow-deviation-bridge.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-high-frequency-tail-to-coarse-flow-deviation-bridge.md):
any time-integrable high-frequency velocity tail, and in particular the dyadic
gain package `HFG`, feeds directly into this deviation bound. More precisely,
if

```math
\mathcal H(T_J)
:=
\sum_{k\ge 0}2^{\frac32 k}\|\Delta_k\omega\|_{L_t^1L_x^2(0,T_J)}<\infty,
```

then

```math
D_J
\le
C_D
\ell_J^{-1}\exp\!\big(C\mathcal H(T_J)\big)\,2^{-J}\mathcal H(T_J),
```

so `(CF.11a)` follows whenever this tail is `o(\ell_J)`.

Then every good active pair satisfies the formal implication

```math
L_I^{net}(a,b)\ge L_J^{thr}
\Longrightarrow
|X(a,t_1)-X(b,t_1)|\ge 2\sigma_J
\tag{CF.11b}
```

on every admissible strip `I=[t_0,t_1]`.

To upgrade `(CF.11b)` from strip-end exclusion to exclusion on the whole strip,
one needs the stronger prefix criterion `(CF.10j)` or an external no-entry /
no-return theorem. So the packet now separates two formal outputs:

```math
\text{endpoint strip exclusion from }L_I^{net}\ge L_J^{thr}
\qquad\text{versus}\qquad
\text{whole-strip exclusion from }L_{I,\min}^{net}\ge L_{I,\mathrm{unif}}^{thr}.
\tag{CF.11c}
```

So the full transport-stability part of the coarse-flow route is now formal:
the only remaining theorem-grade inputs are those needed to force the stripwise
packet inequality `L_I^{net}\ge L_J^{thr}` on an asymptotically full good
family and to control the actual-solution strain budget downstream.

The infimum-in-time bad set here is an honest measurable selector object: the
time-slice shadow tube and the full infimum-in-time bad set admit Borel and
rational-time descriptions as recorded in
[tps-shadow-tube-measurability-lemma.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-shadow-tube-measurability-lemma.md).

## Corollary TPS-ns-coarse-pair-gap-HFG

Assume, in addition to the good-set and strip hypotheses above, that the dyadic
high-frequency gain quantity

```math
\mathcal H(T_J)
:=
\sum_{k\ge 0}2^{\frac32 k}\|\Delta_k\omega\|_{L_t^1L_x^2(0,T_J)}
```

is finite on `[0,T_J]`.

Assume the bridge note
[tps-high-frequency-tail-to-coarse-flow-deviation-bridge.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-high-frequency-tail-to-coarse-flow-deviation-bridge.md)
gives

```math
D_J^{max}
\le
C_D
\ell_J^{-1}\exp\!\big(C\mathcal H(T_J)\big)\,2^{-J}\mathcal H(T_J).
\tag{CF.11c}
```

Then the route-specific threshold is

```math
L_J^{thr}
=
\log\!\Bigg(
\frac{
2\sigma_J
+
C\,\exp\!\big(C\mathcal H(T_J)\big)\,2^{-J}\mathcal H(T_J)
}{
c_0\ell_J
}
\Bigg),
\tag{CF.11d}
```

and any source of stripwise gain satisfying `L_I^{net}(a,b)\ge L_J^{thr}` now
feeds the actual-flow shadow exclusion conclusion `(CF.11b)`.

## Bridge to critical strain budget

The geometric packet above does not by itself close Navier--Stokes. To align
the route with the strongest current source-backed continuation surface, the
loss ledger must also feed the actual-solution middle-eigenvalue budget.

The live bridge target is

```math
B_J(I)
\le
C_B
\mathcal E_I^{coarse}
+
\mathcal E_I^{tail}
+
\mathcal E_I^{bundle},
\tag{CF.12}
```

followed by

```math
\int_I
\big\|
\lambda_2^+(\cdot,t)
\big\|_{\dot B^{-1}_{\infty,\infty}}^2\,dt
\le
C_{\lambda2}
B_J(I).
\tag{CF.12a}
```

Here `\mathcal E_I^{coarse}` denotes the coarse approximation loss,
`\mathcal E_I^{tail}` the high-frequency tail loss, and
`\mathcal E_I^{bundle}` the bundle-angle / chart / spectral defect loss already
encoded in `L_I^{loss}`. This is the missing PDE bridge from the coarse
transport packet to the 2025 middle-eigenvalue continuation criterion.

## Meaning

This note now proves the full coarse-flow transport mechanism, but not the
Navier--Stokes production theorem. The proved chain is

```math
\boxed{
\text{segmentwise spectral coherence}
\Longrightarrow
\text{stripwise scalar packet }L_I^{net}
\Longrightarrow
\text{coarse separation threshold}
\Longrightarrow
\text{actual-flow shadow exclusion at strip exit.}
}
```

The remaining original Navier--Stokes burden is no longer hidden inside the
transport argument.

## Exact Remaining Coarse Burden

Two theorem-grade inputs remain open.

1. **Good-bundle gap production.**
   One needs a quantitative theorem that forces

```math
L_I^{net}(a,b)\ge L_J^{thr}
\tag{CF.13}
```

   on an asymptotically full good active family for every admissible shadow
   strip `I`. The current leading structural candidate is the transported
   angular-fresh / `\lambda_{2,J}^{+}` gain packet already isolated in
   `TPS-coarse-gap-lambda2-plus-feed`.

2. **Critical strain-budget bridge.**
   One needs the PDE estimate `(CF.12)`-`(CF.12a)` that converts the coarse
   loss ledger into the actual-solution
   `L_t^2\dot B^{-1}_{\infty,\infty}` budget for `\lambda_2^+`.

So the open closure target can now be stated in one scalar form:

```math
\boxed{
\text{produce }L_I^{net}\ge L_J^{thr}
\text{ on the good bundle and show the accompanying loss ledger controls }
\int_I\|\lambda_2^+\|_{\dot B^{-1}_{\infty,\infty}}^2\,dt.
}
```

The corresponding theorem-shape closure implications, including the
stopping-time barrier logic, coarse/true strip stability, and the honest
strong/weak dichotomy on the occupancy ledger, are now packaged in
[tps-shadow-barrier-formal-closure-packet.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-shadow-barrier-formal-closure-packet.md).

The broader source-backed frontier for this route is recorded in
[tps-dynamic-source-fit-and-open-frontier.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-dynamic-source-fit-and-open-frontier.md).
