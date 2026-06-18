# TPS Alignment-To-Strain Production Lemma

## Status

Conditional reduction note for `SG.4-production`.

This note does **not** claim to control the misalignment energy. Its job is to
replace the open lower-envelope search with one exact finite-pair dynamic
object: the segment-transport matrix and the resulting misalignment ledger.

## Purpose

On the strong route, the remaining local burden is `SG.4Ce` on a
selector-good active-pair family. The user-facing infinitesimal shorthand

```math
\dot e=(\nabla v_J)e-\big((\nabla v_J)e\cdot e\big)e
```

is not exact on finite pairs. The exact finite-pair replacement is the
segment-transport matrix

```math
\mathcal M_J(a,b,t)
:=
\int_0^1 \nabla v_J(\gamma_{ab}(\theta,t),t)\,d\theta.
\tag{AS.0}
```

This note proves:

1. `e_{ab}` obeys exact transport under `\mathcal M_J`;
2. the directional strain average `\mathfrak s_J` is exactly
   `e_{ab}^\top \operatorname{Sym}\mathcal M_J e_{ab}`;
3. once a selector-good spectral floor for the top segment eigenvalue is
   installed, `SG.4Ce` and the strip-defect ledger reduce to one
   misalignment-energy bound on the same pair family and horizon.

## Setup

Fix a selector-good active-pair family `G_J^{pair}` and one common horizon
`[0,T_J]`. Write

```math
v_J:=u_{\le J},
\qquad
\delta_{ab}^{coarse}(t):=X_{\le J}(b,t)-X_{\le J}(a,t),
\qquad
d_{ab}^{coarse}(t):=|\delta_{ab}^{coarse}(t)|.
\tag{AS.1}
```

Whenever `d_{ab}^{coarse}(t)>0`, define the transported pair direction

```math
e_{ab}(t):=\frac{\delta_{ab}^{coarse}(t)}{d_{ab}^{coarse}(t)}.
\tag{AS.2}
```

Let

```math
\gamma_{ab}(\theta,t)
:=
X_{\le J}(a,t)+\theta\,\delta_{ab}^{coarse}(t),
\qquad 0\le \theta\le 1,
\tag{AS.3}
```

and define the segment-transport matrix and its symmetric part by

```math
\mathcal M_J(a,b,t)
:=
\int_0^1 \nabla v_J(\gamma_{ab}(\theta,t),t)\,d\theta,
\qquad
\mathcal S_J(a,b,t):=\operatorname{Sym}\mathcal M_J(a,b,t).
\tag{AS.4}
```

Then

```math
\mathcal S_J(a,b,t)
=
\int_0^1 S_J(\gamma_{ab}(\theta,t),t)\,d\theta,
\qquad
S_J:=\operatorname{Sym}\nabla v_J.
\tag{AS.5}
```

Retain the short-segment directional strain average from `SG.4C`:

```math
\mathfrak s_J(a,b,t)
:=
\int_0^1
\big(e_{ab}(t)\otimes e_{ab}(t)\big):S_J(\gamma_{ab}(\theta,t),t)\,d\theta.
\tag{AS.6}
```

## Proposition AS.1. Exact Finite-Pair Transport Identity

For a.e. `t\in[0,T_J]` with `d_{ab}^{coarse}(t)>0`,

```math
\frac{d}{dt}\delta_{ab}^{coarse}(t)
=
\mathcal M_J(a,b,t)\,\delta_{ab}^{coarse}(t),
\tag{AS.7}
```

```math
\frac{d}{dt}d_{ab}^{coarse}(t)
=
d_{ab}^{coarse}(t)\,
e_{ab}(t)^\top \mathcal S_J(a,b,t)e_{ab}(t),
\tag{AS.8}
```

and

```math
\frac{d}{dt}e_{ab}(t)
=
\big(I-e_{ab}(t)\otimes e_{ab}(t)\big)\mathcal M_J(a,b,t)e_{ab}(t).
\tag{AS.9}
```

Consequently,

```math
\mathfrak s_J(a,b,t)
=
e_{ab}(t)^\top \mathcal S_J(a,b,t)e_{ab}(t).
\tag{AS.10}
```

**Proof.**
By the fundamental theorem of calculus along the segment `\gamma_{ab}`,

```math
v_J(X_{\le J}(b,t),t)-v_J(X_{\le J}(a,t),t)
=
\int_0^1 \nabla v_J(\gamma_{ab}(\theta,t),t)\,\delta_{ab}^{coarse}(t)\,d\theta,
```

which is `(AS.7)`. Since
`\delta_{ab}^{coarse}=d_{ab}^{coarse}e_{ab}`, differentiation gives

```math
\frac{d}{dt}\delta_{ab}^{coarse}
=
\dot d_{ab}^{coarse}\,e_{ab}
+
d_{ab}^{coarse}\,\dot e_{ab}.
```

Taking the scalar product with `e_{ab}` and using `e_{ab}\cdot\dot e_{ab}=0`
yields

```math
\dot d_{ab}^{coarse}
=
d_{ab}^{coarse}\,e_{ab}^\top \mathcal M_J e_{ab}.
```

The skew part of `\mathcal M_J` drops out in the quadratic form, so `(AS.8)`
follows. Solving the previous identity for `\dot e_{ab}` gives `(AS.9)`, and
combining `(AS.5)` with the definition `(AS.6)` gives `(AS.10)`. ∎

## Spectral Misalignment Reduction

Let

```math
\lambda_{J,\max}^{seg}(a,b,t)
:=
\lambda_{\max}\!\big(\mathcal S_J(a,b,t)\big),
\qquad
\lambda_{J,\min}^{seg}(a,b,t)
:=
\lambda_{\min}\!\big(\mathcal S_J(a,b,t)\big),
\tag{AS.11}
```

and let `P_{J,\top}^{seg}(a,b,t)` be the orthogonal projector onto the top
eigenspace of `\mathcal S_J(a,b,t)`. Define the projector-based misalignment
defect

```math
\alpha_J(a,b,t)
:=
\big\|
\big(I-P_{J,\top}^{seg}(a,b,t)\big)e_{ab}(t)
\big\|^2.
\tag{AS.12}
```

Also set the segment spectral spread

```math
\Gamma_J^{seg}(a,b,t)
:=
\lambda_{J,\max}^{seg}(a,b,t)-\lambda_{J,\min}^{seg}(a,b,t).
\tag{AS.13}
```

### Proposition AS.2. Spectral Misalignment Inequality

For every `(a,b)\in G_J^{pair}` and a.e. `t` with `d_{ab}^{coarse}(t)>0`,

```math
\lambda_{J,\max}^{seg}(a,b,t)-\mathfrak s_J(a,b,t)
\le
\Gamma_J^{seg}(a,b,t)\,\alpha_J(a,b,t),
\tag{AS.14}
```

hence

```math
\mathfrak s_J(a,b,t)
\ge
\lambda_{J,\max}^{seg}(a,b,t)
-
\Gamma_J^{seg}(a,b,t)\,\alpha_J(a,b,t).
\tag{AS.15}
```

If the top eigenspace is one-dimensional with measurable unit principal
direction `n_J(a,b,t)`, then

```math
\alpha_J(a,b,t)
=
1-\big(e_{ab}(t)\cdot n_J(a,b,t)\big)^2
=
\sin^2\!\angle\big(e_{ab}(t),n_J(a,b,t)\big).
\tag{AS.16}
```

**Proof.**
Write `e_{ab}=e_\top+e_\perp` with
`e_\top=P_{J,\top}^{seg}e_{ab}` and `e_\perp=(I-P_{J,\top}^{seg})e_{ab}`. Then

```math
\mathfrak s_J
=
e_{ab}^\top \mathcal S_J e_{ab}
\ge
\lambda_{J,\max}^{seg}|e_\top|^2
+
\lambda_{J,\min}^{seg}|e_\perp|^2.
```

Since `|e_\top|^2=1-|e_\perp|^2=1-\alpha_J`, this becomes

```math
\mathfrak s_J
\ge
\lambda_{J,\max}^{seg}
-
\big(\lambda_{J,\max}^{seg}-\lambda_{J,\min}^{seg}\big)\alpha_J,
```

which is `(AS.15)`, and `(AS.14)` is equivalent. Statement `(AS.16)` is the
rank-one form of `(AS.12)`. ∎

## Theorem AS.3. Alignment-To-Strain Production

Assume there exist a time-only reference rate `\lambda_J(t)\ge 0` and a
selector-good spectral-floor defect `\varepsilon_J^{spec}(a,b,t)\ge 0` such
that

```math
\lambda_{J,\max}^{seg}(a,b,t)
\ge
\lambda_J(t)-\varepsilon_J^{spec}(a,b,t)
\qquad
\text{for a.e. }t\in[0,T_J],\ (a,b)\in G_J^{pair}.
\tag{AS.17}
```

Define the misalignment energy density

```math
\varepsilon_J^{align}(a,b,t)
:=
\Gamma_J^{seg}(a,b,t)\,\alpha_J(a,b,t).
\tag{AS.18}
```

Then on the same selector-good active-pair family and the same horizon,

```math
\mathfrak s_J(a,b,t)
\ge
\lambda_J(t)-\varepsilon_J^{spec}(a,b,t)-\varepsilon_J^{align}(a,b,t).
\tag{AS.19}
```

So `SG.4Ce` holds with the exact production error

```math
\varepsilon_J(a,b,t)
:=
\varepsilon_J^{spec}(a,b,t)+\varepsilon_J^{align}(a,b,t).
\tag{AS.20}
```

**Proof.**
Combine the spectral-floor estimate `(AS.17)` with the misalignment inequality
`(AS.15)`. ∎

## Corollary AS.4. Misalignment Ledger For The Strip Defect

For every admissible strip `I=[t_0,t_1]`,

```math
\big[\lambda_J(t)-\mathfrak s_J(a,b,t)\big]_+
\le
\varepsilon_J^{spec}(a,b,t)+\varepsilon_J^{align}(a,b,t),
\tag{AS.21}
```

hence

```math
B_J^-(a,b;I)
\le
\int_I \varepsilon_J^{spec}(a,b,t)\,dt
+
\int_I \Gamma_J^{seg}(a,b,t)\,\alpha_J(a,b,t)\,dt.
\tag{AS.22}
```

In particular:

1. if the right-hand side of `(AS.22)` is `<\log 2` on every strip visit, the
   barrier packet `SG.4A` applies;
2. if on the same pair family and same horizon each completed strip visit
   satisfies

```math
\int_I\lambda_J(t)\,dt\ge m_J+\eta,
\qquad
\int_I \varepsilon_J^{spec}\,dt
+
\int_I \Gamma_J^{seg}\alpha_J\,dt
\le \eta,
\tag{AS.23}
```

then the per-visit gain hypothesis of `SG.4B` holds, and the remaining
finite-window closure is exactly the `SG.4P` renewal package.

**Proof.**
Inequality `(AS.21)` is the pointwise estimate `(AS.19)` rewritten in the
notation above, and integrating on `I` gives `(AS.22)`. The two applications
are then `SG.4A` and `SG.4P` on the same pair family and same horizon. ∎

## Angular Forcing Below `\alpha_J`

On the simple-top selector-good branch, write

```math
A_J^{seg}(a,b,t):=\mathcal S_J(a,b,t),
\qquad
K_J^{seg}(a,b,t):=\operatorname{Skew}\mathcal M_J(a,b,t).
\tag{AS.30}
```

Fix an interval `I=[t_0,t_1]\subset[0,T_J]` on which the top eigenvalue of
`A_J^{seg}(a,b,t)` is simple for every pair in the chosen selector-good family.
Let

```math
\lambda_{J,\top}^{seg}(a,b,t)
>
\lambda_{J,2}^{seg}(a,b,t)
\tag{AS.31}
```

denote the top two eigenvalues and define the simple-top gap

```math
g_J(a,b,t)
:=
\lambda_{J,\top}^{seg}(a,b,t)-\lambda_{J,2}^{seg}(a,b,t)>0.
\tag{AS.32}
```

Choose a measurable absolutely continuous unit top eigenvector
`n_J(a,b,t)` on `I` with gauge

```math
n_J(a,b,t)\cdot \partial_t n_J(a,b,t)=0
\qquad\text{for a.e. }t\in I,
\tag{AS.33}
```

and define

```math
P_J(a,b,t):=n_J(a,b,t)\otimes n_J(a,b,t),
\qquad
Q_J(a,b,t):=I-P_J(a,b,t).
\tag{AS.34}
```

Then

```math
\alpha_J(a,b,t)
=
\big|Q_J(a,b,t)e_{ab}(t)\big|^2
=
1-\big(e_{ab}(t)\cdot n_J(a,b,t)\big)^2.
\tag{AS.35}
```

Define the angular forcing

```math
\beta_J(a,b,t)
:=
\big|
Q_J(a,b,t)
\big(
K_J^{seg}(a,b,t)n_J(a,b,t)-\partial_t n_J(a,b,t)
\big)
\big|.
\tag{AS.36}
```

This is the exact transverse drift of the top eigendirection relative to the
pair transport law.

Define also the scalar forcing

```math
r_J(a,b,t)
:=
e_{ab}(t)\cdot
\big(
\partial_t n_J(a,b,t)-K_J^{seg}(a,b,t)n_J(a,b,t)
\big).
\tag{AS.36a}
```

Since both `\partial_t n_J` and `K_J^{seg}n_J` are orthogonal to `n_J`, one has

```math
r_J(a,b,t)
=
Q_J(a,b,t)e_{ab}(t)\cdot
\big(
\partial_t n_J(a,b,t)-K_J^{seg}(a,b,t)n_J(a,b,t)
\big),
\tag{AS.36b}
```

hence

```math
|r_J(a,b,t)|
\le
\beta_J(a,b,t)\sqrt{\alpha_J(a,b,t)}.
\tag{AS.36c}
```

### Lemma AS.4b. Scalar Forcing Form Of The Pair-Angle Dynamics

With

```math
c_J(a,b,t):=e_{ab}(t)\cdot n_J(a,b,t),
\qquad
\alpha_J(a,b,t)=1-c_J(a,b,t)^2,
\tag{AS.36d}
```

one has for a.e. `t\in I`

```math
\partial_t c_J(a,b,t)
=
\big(
\lambda_{J,\top}^{seg}(a,b,t)-\mathfrak s_J(a,b,t)
\big)c_J(a,b,t)
+
r_J(a,b,t).
\tag{AS.36e}
```

So the exact pair-angle dynamics consist of a coercive alignment term plus the
single scalar forcing `r_J`; Proposition `AS.5` is its quadratic reformulation
for `\alpha_J`.

**Proof.**
This is exactly the identity `(AS.40)` rewritten using the definition
`(AS.36a)` of `r_J`. Bound `(AS.36c)` follows from `(AS.36b)` and the
Cauchy-Schwarz inequality. ∎

### Proposition AS.5. Misalignment Transport Inequality

For every `(a,b)` in the simple-top selector-good family and a.e. `t\in I`,

```math
\partial_t\alpha_J(a,b,t)
\le
-2\,g_J(a,b,t)\,\alpha_J(a,b,t)\big(1-\alpha_J(a,b,t)\big)
+
2\,\beta_J(a,b,t)\sqrt{\alpha_J(a,b,t)\big(1-\alpha_J(a,b,t)\big)}.
\tag{AS.5}
```

If `\alpha_J(a,b,t)\le \tfrac12` on `I`, then the sharper cone inequality holds:

```math
\partial_t\alpha_J(a,b,t)
+
\frac{g_J(a,b,t)}{2}\,\alpha_J(a,b,t)
\le
\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}.
\tag{AS.5a}
```

Consequently,

```math
\int_I g_J(a,b,t)\,\alpha_J(a,b,t)\,dt
\le
2\big(\alpha_J(a,b,t_0)-\alpha_J(a,b,t_1)\big)
+
2\int_I \frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}\,dt
\tag{AS.5b}
```

whenever `\alpha_J\le \tfrac12` on `I`.

The coefficient `g_J/2` in `(AS.5a)` is the theorem-safe cone coercivity under
the stated hypotheses. A stronger linear coefficient `g_J` would require an
additional monotonicity input beyond `(AS.5)` and is not assumed here.

**Proof.**
Fix one pair `(a,b)` and write

```math
e:=e_{ab},
\qquad
A:=A_J^{seg},
\qquad
K:=K_J^{seg},
\qquad
n:=n_J,
\qquad
g:=g_J,
\qquad
\alpha:=\alpha_J,
\qquad
\beta:=\beta_J.
```

Set

```math
c(t):=e(t)\cdot n(t),
\qquad
q(t):=Q_J(t)e(t)=e(t)-c(t)n(t),
\tag{AS.37}
```

so that `\alpha=|q|^2=1-c^2`. By `(AS.9)`,

```math
\partial_t e
=
\big(I-e\otimes e\big)(A+K)e.
\tag{AS.38}
```

Let

```math
s(t):=e(t)^\top A(t)e(t)=\mathfrak s_J(a,b,t).
\tag{AS.39}
```

Differentiating `c=e\cdot n` and using `n^\top K n=0` gives

```math
\partial_t c
=
\big(\lambda_{J,\top}^{seg}-s\big)c
-q\cdot\big(Kn-\partial_t n\big).
\tag{AS.40}
```

Since `n` is a top eigenvector and `q\perp n`,

```math
s
=
c^2\lambda_{J,\top}^{seg}+q^\top A q
\le
c^2\lambda_{J,\top}^{seg}+|q|^2\lambda_{J,2}^{seg},
\tag{AS.41}
```

hence

```math
\lambda_{J,\top}^{seg}-s
\ge
g\,|q|^2
=
g\,\alpha.
\tag{AS.42}
```

Now `\partial_t\alpha=-2c\,\partial_t c`, so combining `(AS.40)`-`(AS.42)` and
using `|q\cdot(Kn-\partial_t n)|\le |q|\,\beta` yields `(AS.5)`:

```math
\partial_t\alpha
\le
-2g\,\alpha(1-\alpha)
+
2\beta\sqrt{\alpha(1-\alpha)}.
```

If `\alpha\le \tfrac12`, set `y:=\sqrt{\alpha(1-\alpha)}`. Then
`y^2\ge \alpha/2`, and Young's inequality gives

```math
2\beta y
\le
g\,y^2+\frac{\beta^2}{g}.
\tag{AS.43}
```

Substituting into `(AS.5)` yields

```math
\partial_t\alpha
\le
-g\,y^2+\frac{\beta^2}{g}
\le
-\frac{g}{2}\alpha+\frac{\beta^2}{g},
```

which is `(AS.5a)`. Integrating `(AS.5a)` on `I` gives `(AS.5b)`. ∎

### Corollary AS.5c. Aspect-Ratio Reduction

Assume in addition the selector-good aspect-ratio bound

```math
\Gamma_J^{seg}(a,b,t)
\le
C_{\mathrm{asp}}\,g_J(a,b,t)
\qquad\text{for a.e. }t\in I.
\tag{AS.5c}
```

Then on every interval `I` where `\alpha_J\le\tfrac12`,

```math
\int_I
\Gamma_J^{seg}(a,b,t)\,\alpha_J(a,b,t)\,dt
\le
2C_{\mathrm{asp}}
\big(\alpha_J(a,b,t_0)-\alpha_J(a,b,t_1)\big)
+
2C_{\mathrm{asp}}
\int_I \frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}\,dt.
\tag{AS.5d}
```

**Proof.**
Multiply `(AS.5b)` by `C_{\mathrm{asp}}` and use `(AS.5c)`. ∎

### Corollary AS.6. Adiabatic Angular-Forcing Bound

Assume `A_J^{seg}(a,b,\cdot)` is absolutely continuous on `I`, the top gap
`g_J>0` on `I`, and the gauge `(AS.33)` is used. Then

```math
\partial_t n_J
=
\big(
\lambda_{J,\top}^{seg}I-Q_JA_J^{seg}Q_J
\big)^{-1}
Q_J\big(\partial_t A_J^{seg}\big)n_J
\qquad\text{a.e. on }I,
\tag{AS.6}
```

hence

```math
|\partial_t n_J|
\le
\frac{\|\partial_t A_J^{seg}\|_{\mathrm{op}}}{g_J}.
\tag{AS.6a}
```

Consequently,

```math
\beta_J
\le
|K_J^{seg}n_J|
+
\frac{\|\partial_t A_J^{seg}\|_{\mathrm{op}}}{g_J},
\tag{AS.6b}
```

and therefore

```math
\frac{\beta_J^2}{g_J}
\le
2\frac{|K_J^{seg}n_J|^2}{g_J}
+
2\frac{\|\partial_t A_J^{seg}\|_{\mathrm{op}}^2}{g_J^3}.
\tag{AS.6c}
```

Substituting `(AS.6c)` into `(AS.5d)` gives

```math
\int_I
\Gamma_J^{seg}\alpha_J\,dt
\le
2C_{\mathrm{asp}}
\big(\alpha_J(t_0)-\alpha_J(t_1)\big)
+
4C_{\mathrm{asp}}
\int_I
\frac{|K_J^{seg}n_J|^2}{g_J}
+
\frac{\|\partial_t A_J^{seg}\|_{\mathrm{op}}^2}{g_J^3}
\,dt.
\tag{AS.6d}
```

In particular, dropping the nonnegative terminal improvement
`-\alpha_J(t_1)` gives the one-sided boundary form

```math
\int_I
\Gamma_J^{seg}\alpha_J\,dt
\le
2C_{\mathrm{asp}}\alpha_J(t_0)
+
4C_{\mathrm{asp}}
\int_I
\frac{|K_J^{seg}n_J|^2}{g_J}
+
\frac{\|\partial_t A_J^{seg}\|_{\mathrm{op}}^2}{g_J^3}
\,dt.
\tag{AS.6e}
```

**Proof.**
Differentiate the eigenvalue equation

```math
A_J^{seg}n_J=\lambda_{J,\top}^{seg}n_J
```

and project with `Q_J`. Since the gauge `(AS.33)` makes `\partial_t n_J`
orthogonal to `n_J`, one gets

```math
\big(
\lambda_{J,\top}^{seg}I-Q_JA_J^{seg}Q_J
\big)\partial_t n_J
=
Q_J\big(\partial_t A_J^{seg}\big)n_J,
```

which is `(AS.6)`. The inverse on `Q_J\mathbb R^3` has operator norm at most
`1/g_J`, giving `(AS.6a)`. Bounds `(AS.6b)` and `(AS.6c)` follow by the
triangle inequality and `2xy\le x^2+y^2`, and `(AS.6d)` is just `(AS.5d)` with
`(AS.6c)` substituted in. ∎

### Proposition AS.7. Material-Gap Cone Entry For The Pair Direction

Fix one pair `(a,b)` and one reference time `t_0\in I`. Let the propagator
`U_J(t,t_0)` solve

```math
\partial_t U_J(t,t_0)
=
\mathcal M_J(a,b,t)\,U_J(t,t_0),
\qquad
U_J(t_0,t_0)=I.
\tag{AS.7}
```

For each `t\in I`, write a singular-value decomposition

```math
U_J(t,t_0)
=
L_J(t,t_0)\Sigma_J(t,t_0)R_J(t,t_0)^\top,
\tag{AS.7a}
```

with ordered singular values
`\sigma_{J,1}(t,t_0)\ge \sigma_{J,2}(t,t_0)\ge \sigma_{J,3}(t,t_0)>0`,
top left singular vector `\ell_{J,1}(t,t_0)`, and top right singular vector
`r_{J,1}(t,t_0)`. Define the material cone defect

```math
\alpha_J^{mat}(a,b,t;t_0)
:=
1-\big(e_{ab}(t)\cdot \ell_{J,1}(t,t_0)\big)^2
\tag{AS.7b}
```

and the initial right-singular overlap

```math
c_{J,0}(a,b,t;t_0)
:=
\big|e_{ab}(t_0)\cdot r_{J,1}(t,t_0)\big|.
\tag{AS.7c}
```

Then for every `t\in I` with `c_{J,0}(a,b,t;t_0)>0`,

```math
\alpha_J^{mat}(a,b,t;t_0)
\le
\frac{\sigma_{J,2}(t,t_0)^2}{\sigma_{J,1}(t,t_0)^2}
\frac{1-c_{J,0}(a,b,t;t_0)^2}{c_{J,0}(a,b,t;t_0)^2}.
\tag{AS.7d}
```

Equivalently, with the finite-time material gap

```math
G_J^{mat}(a,b,t;t_0)
:=
\log \frac{\sigma_{J,1}(t,t_0)}{\sigma_{J,2}(t,t_0)},
\tag{AS.7e}
```

one has

```math
\alpha_J^{mat}(a,b,t;t_0)
\le
e^{-2G_J^{mat}(a,b,t;t_0)}
\frac{1-c_{J,0}(a,b,t;t_0)^2}{c_{J,0}(a,b,t;t_0)^2}.
\tag{AS.7f}
```

In particular, if for some `\eta\in(0,1)` and some `t\in I`,

```math
c_{J,0}(a,b,t;t_0)^2\ge \eta
\qquad\text{and}\qquad
G_J^{mat}(a,b,t;t_0)
\ge
\frac12\log\!\Big(\frac{2(1-\eta)}{\eta}\Big),
\tag{AS.7g}
```

then

```math
\alpha_J^{mat}(a,b,t;t_0)\le \tfrac12.
\tag{AS.7h}
```

**Proof.**
By Proposition `AS.1`, one has
`\delta_{ab}(t)=U_J(t,t_0)\delta_{ab}(t_0)` and hence

```math
e_{ab}(t)
=
\frac{U_J(t,t_0)e_{ab}(t_0)}{|U_J(t,t_0)e_{ab}(t_0)|}.
\tag{AS.7i}
```

Expand the initial direction in the right singular basis:

```math
e_{ab}(t_0)
=
\sum_{k=1}^3 c_k(t)\,r_{J,k}(t,t_0),
\qquad
\sum_{k=1}^3 c_k(t)^2=1,
\tag{AS.7j}
```

with `|c_1(t)|=c_{J,0}(a,b,t;t_0)`. Then

```math
U_J(t,t_0)e_{ab}(t_0)
=
\sum_{k=1}^3 \sigma_{J,k}(t,t_0)c_k(t)\,\ell_{J,k}(t,t_0),
\tag{AS.7k}
```

so

```math
\alpha_J^{mat}
=
\frac{\sum_{k=2}^3 \sigma_{J,k}(t,t_0)^2c_k(t)^2}
{\sum_{k=1}^3 \sigma_{J,k}(t,t_0)^2c_k(t)^2}
\le
\frac{\sigma_{J,2}(t,t_0)^2\sum_{k=2}^3 c_k(t)^2}
{\sigma_{J,1}(t,t_0)^2 c_1(t)^2},
\tag{AS.7l}
```

which is exactly `(AS.7d)`. Formula `(AS.7f)` is `(AS.7d)` rewritten using
`(AS.7e)`. Formula `(AS.7h)` follows by substituting the lower bound
`c_1(t)^2\ge c_{min}^2` from `(AS.7g)` into the denominator of `(AS.7d)`. ∎

### Corollary AS.7m. Material Cone Entry Transfers To The Instantaneous Cone Up To Carrier Mismatch

Keep the notation of Proposition `AS.7`, and define the material-to-Eulerian
carrier mismatch

```math
\delta_J^{car}(a,b,t;t_0)
:=
1-\big(\ell_{J,1}(t,t_0)\cdot n_J(a,b,t)\big)^2.
\tag{AS.7m}
```

Then

```math
\alpha_J(a,b,t)
\le
2\,\alpha_J^{mat}(a,b,t;t_0)
+
2\,\delta_J^{car}(a,b,t;t_0)
\tag{AS.7n}
```

for every `t\in I`. Consequently, if

```math
e^{-2G_J^{mat}(a,b,t;t_0)}
\frac{1-c_{J,0}(a,b,t;t_0)^2}{c_{J,0}(a,b,t;t_0)^2}
+
\delta_J^{car}(a,b,t;t_0)
\le
\frac14,
\tag{AS.7o}
```

then `\alpha_J(a,b,t)\le \tfrac12`, so the cone-entry hypothesis of
`(AS.5a)` holds at that time. If `(AS.7o)` holds for a.e. `t\in I`, then the
cone-entry hypothesis of `AS.5a` holds on `I`.

**Proof.**
Let `P_\ell:=\ell_{J,1}\otimes \ell_{J,1}` and `Q_\ell:=I-P_\ell`. Since
`Q_J=Q_\ell+(P_\ell-P_J)`, one has

```math
Q_Je_{ab}
=
Q_\ell e_{ab}+(P_\ell-P_J)e_{ab}.
\tag{AS.7p}
```

Therefore

```math
\alpha_J
=
|Q_Je_{ab}|^2
\le
2|Q_\ell e_{ab}|^2 + 2|(P_\ell-P_J)e_{ab}|^2
\le
2\alpha_J^{mat}+2\|P_\ell-P_J\|_{\mathrm{op}}^2.
\tag{AS.7q}
```

For rank-one orthogonal projectors, `\|P_\ell-P_J\|_{\mathrm{op}}^2` equals
`1-(\ell_{J,1}\cdot n_J)^2=\delta_J^{car}`, which gives `(AS.7n)`. Combining
`(AS.7n)` with `(AS.7f)` yields `(AS.7o)`. ∎

### Corollary AS.7u. Explicit Stripwise Material-Gap Criterion

Keep the notation of Proposition `AS.7` and Corollary `AS.7m`. Fix
`\eta\in(0,1)` and `\delta_\star\in[0,\tfrac14)`. Assume that for a.e. `t\in I`,

```math
c_{J,0}(a,b,t;t_0)^2\ge \eta,
\qquad
\delta_J^{car}(a,b,t;t_0)\le \delta_\star,
\tag{AS.7u1}
```

and

```math
G_J^{mat}(a,b,t;t_0)
\ge
\frac12\log\!\Big(
\frac{4(1-\eta)}{\eta(1-4\delta_\star)}
\Big).
\tag{AS.7u2}
```

Then

```math
\alpha_J(a,b,t)\le \tfrac12
\qquad\text{for a.e. }t\in I,
\tag{AS.7u3}
```

so the cone-entry hypothesis of `(AS.5a)` holds on `I`.

**Proof.**
From `(AS.7u1)`,

```math
\frac{1-c_{J,0}(a,b,t;t_0)^2}{c_{J,0}(a,b,t;t_0)^2}
\le
\frac{1-\eta}{\eta},
\qquad
\delta_J^{car}(a,b,t;t_0)\le \delta_\star.
\tag{AS.7u4}
```

Condition `(AS.7u2)` is equivalent to

```math
e^{-2G_J^{mat}(a,b,t;t_0)}
\frac{1-\eta}{\eta}
+
\delta_\star
\le
\frac14.
\tag{AS.7u5}
```

Combining `(AS.7u4)` and `(AS.7u5)` yields `(AS.7o)` for a.e. `t\in I`, so
Corollary `AS.7m` gives `(AS.7u3)`. ∎

### Proposition AS.7v. Short-Window Carrier-Mismatch Bound

Fix one pair `(a,b)` and one short window `[t_0,t_1]\subset I`, and write
`h:=t_1-t_0`. Keep the propagator `U_J(t,t_0)` from `(AS.7)`, and define the
left Cauchy-Green tensor on the window by

```math
\mathcal C_{J,h}^{L}(a,b;t_1,t_0)
:=
U_J(t_1,t_0)U_J(t_1,t_0)^*.
\tag{AS.7v1}
```

Assume

```math
\sup_{t\in[t_0,t_1]}
\big\|
\mathcal M_J(a,b,t)
\big\|_{\mathrm{op}}
\le
M_{J,\mathrm{win}}(a,b;t_1,t_0),
\tag{AS.7v2}
```

```math
\sup_{t\in[t_0,t_1]}
\big\|
\partial_t \mathcal S_J(a,b,t)
\big\|_{\mathrm{op}}
\le
L_{J,\mathrm{win}}(a,b;t_1,t_0),
\tag{AS.7v3}
```

and that the terminal simple-top gap is positive:

```math
g_J(a,b,t_1)
:=
\lambda_{J,1}^{seg}(a,b,t_1)-\lambda_{J,2}^{seg}(a,b,t_1)
>0.
\tag{AS.7v4}
```

Then

```math
\mathcal C_{J,h}^{L}(a,b;t_1,t_0)
=
I+2h\,\mathcal S_J(a,b,t_1)+E_{J,h}(a,b;t_1,t_0),
\tag{AS.7v5}
```

with

```math
\big\|
E_{J,h}(a,b;t_1,t_0)
\big\|_{\mathrm{op}}
\le
\Big(
2M_{J,\mathrm{win}}(a,b;t_1,t_0)^2
e^{2M_{J,\mathrm{win}}(a,b;t_1,t_0)h}
+
L_{J,\mathrm{win}}(a,b;t_1,t_0)
\Big)h^2.
\tag{AS.7v6}
```

If in addition

```math
\Big(
2M_{J,\mathrm{win}}(a,b;t_1,t_0)^2
e^{2M_{J,\mathrm{win}}(a,b;t_1,t_0)h}
+
L_{J,\mathrm{win}}(a,b;t_1,t_0)
\Big)h
\le
\frac12\,g_J(a,b,t_1),
\tag{AS.7v7}
```

then the carrier mismatch at the terminal time satisfies

```math
\delta_J^{car}(a,b,t_1;t_0)
\le
\frac{
\Big(
2M_{J,\mathrm{win}}(a,b;t_1,t_0)^2
e^{2M_{J,\mathrm{win}}(a,b;t_1,t_0)h}
+
L_{J,\mathrm{win}}(a,b;t_1,t_0)
\Big)^2h^2
}
{g_J(a,b,t_1)^2}.
\tag{AS.7v8}
```

So on short selector-good windows, the carrier-mismatch term from `(AS.7m)` is
reduced to explicit local bounds on the segment generator, one time derivative
of its symmetric part, and the terminal simple-top gap.

**Proof.**
Set
`C_J(t):=U_J(t,t_0)U_J(t,t_0)^*`. Differentiating and using `(AS.7)` gives

```math
\partial_t C_J(t)
=
\mathcal M_J(a,b,t)\,C_J(t)
+
C_J(t)\,\mathcal M_J(a,b,t)^*,
\qquad
C_J(t_0)=I.
\tag{AS.7v9}
```

Hence

```math
C_J(t_1)-I-2\int_{t_0}^{t_1}\mathcal S_J(a,b,s)\,ds
=
\int_{t_0}^{t_1}
\mathcal M_J(a,b,s)\big(C_J(s)-I\big)
+
\big(C_J(s)-I\big)\mathcal M_J(a,b,s)^*
\,ds.
\tag{AS.7v10}
```

The operator norm bound `(AS.7v2)` implies
`\|U_J(t,t_0)\|_{\mathrm{op}}\le e^{M_{J,\mathrm{win}}(t-t_0)}` and therefore

```math
\big\|
C_J(t)-I
\big\|_{\mathrm{op}}
\le
e^{2M_{J,\mathrm{win}}(t-t_0)}-1
\le
2M_{J,\mathrm{win}}(t-t_0)e^{2M_{J,\mathrm{win}}h}.
\tag{AS.7v11}
```

Substituting `(AS.7v11)` into `(AS.7v10)` yields

```math
\left\|
C_J(t_1)-I-2\int_{t_0}^{t_1}\mathcal S_J(a,b,s)\,ds
\right\|_{\mathrm{op}}
\le
2M_{J,\mathrm{win}}^2 e^{2M_{J,\mathrm{win}}h}h^2.
\tag{AS.7v12}
```

Also, by `(AS.7v3)`,

```math
\left\|
\int_{t_0}^{t_1}\mathcal S_J(a,b,s)\,ds-h\,\mathcal S_J(a,b,t_1)
\right\|_{\mathrm{op}}
\le
\frac12L_{J,\mathrm{win}}h^2.
\tag{AS.7v13}
```

Multiplying `(AS.7v13)` by `2` and combining with `(AS.7v12)` gives `(AS.7v5)`
and `(AS.7v6)`.

Now `\ell_{J,1}(t_1,t_0)` is the top eigenvector of the symmetric matrix
`\mathcal C_{J,h}^{L}(a,b;t_1,t_0)`, while `n_J(a,b,t_1)` is the top
eigenvector of `\mathcal S_J(a,b,t_1)`. Since `I+2h\mathcal S_J(a,b,t_1)` has
the same eigenspaces as `\mathcal S_J(a,b,t_1)`, its top eigengap is
`2h\,g_J(a,b,t_1)`. Under `(AS.7v7)`, the Davis-Kahan estimate used already in
`PPCJ'` applies to the symmetric pair
`(I+2h\mathcal S_J(a,b,t_1),\mathcal C_{J,h}^{L}(a,b;t_1,t_0))` and gives

```math
\delta_J^{car}(a,b,t_1;t_0)
=
d_{\mathrm{proj}}\!\big(
\ell_{J,1}(t_1,t_0)\otimes \ell_{J,1}(t_1,t_0),
P_{J,\top}^{seg}(a,b,t_1)
\big)^2
\le
\frac{\|E_{J,h}(a,b;t_1,t_0)\|_{\mathrm{op}}^2}{h^2g_J(a,b,t_1)^2}.
\tag{AS.7v14}
```

Substituting `(AS.7v6)` into `(AS.7v14)` gives `(AS.7v8)`. ∎

### Corollary AS.7w. Short-Window Carrier Control Feeds The Material-Gap Criterion

Keep the hypotheses of Proposition `AS.7v` and fix one threshold
`\delta_\star\in(0,\tfrac14)`. If

```math
\frac{
\Big(
2M_{J,\mathrm{win}}(a,b;t_1,t_0)^2
e^{2M_{J,\mathrm{win}}(a,b;t_1,t_0)h}
+
L_{J,\mathrm{win}}(a,b;t_1,t_0)
\Big)^2h^2
}
{g_J(a,b,t_1)^2}
\le
\delta_\star,
\tag{AS.7w}
```

then `\delta_J^{car}(a,b,t_1;t_0)\le \delta_\star`. Therefore the
carrier-mismatch input in `(AS.7u1)` is available on that window endpoint from
the explicit short-window data
`(M_{J,\mathrm{win}},L_{J,\mathrm{win}},g_J,h)`.

**Proof.**
This is exactly `(AS.7v8)` rewritten with the threshold `\delta_\star`. ∎

### Corollary AS.7r. Two-Gap Comparability Implies Aspect-Ratio Control

Assume the simple-top branch in three dimensions and suppose

```math
\lambda_{J,2}^{seg}(a,b,t)-\lambda_{J,3}^{seg}(a,b,t)
\le
C_{\mathrm{gap}}\,g_J(a,b,t)
\qquad\text{for a.e. }t\in I.
\tag{AS.7r}
```

Then

```math
\Gamma_J^{seg}(a,b,t)
=
\lambda_{J,1}^{seg}(a,b,t)-\lambda_{J,3}^{seg}(a,b,t)
\le
\big(1+C_{\mathrm{gap}}\big)g_J(a,b,t),
\tag{AS.7s}
```

so the aspect-ratio hypothesis `(AS.5c)` holds with
`C_{\mathrm{asp}}=1+C_{\mathrm{gap}}`.

**Proof.**
By definition,
`\Gamma_J^{seg}=g_J+(\lambda_{J,2}^{seg}-\lambda_{J,3}^{seg})`, so `(AS.7s)` is
exactly `(AS.7r)` rewritten. ∎

### Proposition AS.7x. Trace-Free Discriminant Anchor Gives A Quantitative Simple-Top Gap

Assume the simple-top branch in three dimensions and fix one pair `(a,b)` and
one time `t`. Since `v_J=u_{\le J}` is divergence free, the symmetric segment
strain `A_J^{seg}(a,b,t)=\mathcal S_J(a,b,t)` is a trace-free symmetric
`3\times 3` matrix. Define its strain discriminant by

```math
\Delta_J^{seg}(a,b,t)
:=
\frac12\big\|A_J^{seg}(a,b,t)\big\|_F^6
-27\det\!\big(A_J^{seg}(a,b,t)\big)^2.
\tag{AS.7x1}
```

Then

```math
\Delta_J^{seg}(a,b,t)
=
\big(\lambda_{J,1}^{seg}(a,b,t)-\lambda_{J,2}^{seg}(a,b,t)\big)^2
\big(\lambda_{J,2}^{seg}(a,b,t)-\lambda_{J,3}^{seg}(a,b,t)\big)^2
\big(\lambda_{J,1}^{seg}(a,b,t)-\lambda_{J,3}^{seg}(a,b,t)\big)^2.
\tag{AS.7x2}
```

Consequently,

```math
g_J(a,b,t)
\ge
\frac{\sqrt{\Delta_J^{seg}(a,b,t)}}{\Gamma_J^{seg}(a,b,t)^2}
\ge
\frac{\sqrt{\Delta_J^{seg}(a,b,t)}}{4\|A_J^{seg}(a,b,t)\|_{\mathrm{op}}^2}.
\tag{AS.7x3}
```

In particular, if
`\|A_J^{seg}(a,b,t)\|_{\mathrm{op}}\le M_\star` and
`\Delta_J^{seg}(a,b,t)\ge \delta_\star^2`, then

```math
g_J(a,b,t)\ge \frac{\delta_\star}{4M_\star^2}.
\tag{AS.7x4}
```

**Proof.**
Let
`\lambda_{J,1}^{seg}\ge \lambda_{J,2}^{seg}\ge \lambda_{J,3}^{seg}` denote the
ordered eigenvalues of `A_J^{seg}`. Since `\operatorname{tr}A_J^{seg}=0`, the
characteristic polynomial is

```math
\chi_{A_J^{seg}}(\zeta)
=
\zeta^3-\frac12\|A_J^{seg}\|_F^2\,\zeta-\det(A_J^{seg}).
\tag{AS.7x5}
```

The discriminant of a depressed cubic `\zeta^3+p\zeta+q` is
`-4p^3-27q^2`, so `(AS.7x1)` is exactly the characteristic-polynomial
discriminant of `A_J^{seg}`. For a symmetric matrix this equals the squared
Vandermonde product of the eigenvalues:

```math
\Delta_J^{seg}
=
\big(\lambda_{J,1}^{seg}-\lambda_{J,2}^{seg}\big)^2
\big(\lambda_{J,2}^{seg}-\lambda_{J,3}^{seg}\big)^2
\big(\lambda_{J,1}^{seg}-\lambda_{J,3}^{seg}\big)^2.
```

Writing
`g_J=\lambda_{J,1}^{seg}-\lambda_{J,2}^{seg}`,
`h_J=\lambda_{J,2}^{seg}-\lambda_{J,3}^{seg}`, and
`\Gamma_J^{seg}=g_J+h_J`, one has
`\sqrt{\Delta_J^{seg}}=g_J h_J \Gamma_J^{seg}`. Since
`0\le h_J\le \Gamma_J^{seg}`, it follows that
`\sqrt{\Delta_J^{seg}}\le g_J(\Gamma_J^{seg})^2`, which gives the first bound
in `(AS.7x3)`. The second follows from
`\Gamma_J^{seg}=\lambda_{J,1}^{seg}-\lambda_{J,3}^{seg}\le
2\|A_J^{seg}\|_{\mathrm{op}}`. Statement `(AS.7x4)` is the specialization of
`(AS.7x3)` under the anchor bounds. ∎

### Corollary AS.7y. Regular-Window Discriminant Anchors Persist On A Short Subwindow

Fix one pair `(a,b)` and one regular window `I=[t_0,t_1]`. Assume

```math
\sup_{t\in I}\|A_J^{seg}(a,b,t)\|_{\mathrm{op}}\le M_{J,\mathrm{win}},
\qquad
\sup_{t\in I}\|\partial_t A_J^{seg}(a,b,t)\|_{\mathrm{op}}\le N_{J,\mathrm{win}},
\tag{AS.7y1}
```

and that there is an anchor time `\tau_\star\in I` with

```math
\Delta_J^{seg}(a,b,\tau_\star)\ge \delta_\star^2>0.
\tag{AS.7y2}
```

If `N_{J,\mathrm{win}}>0`, set

```math
\rho_\star
:=
\min\!\left\{
\operatorname{dist}(\tau_\star,\partial I),
\frac{\delta_\star}{16M_{J,\mathrm{win}}^2N_{J,\mathrm{win}}}
\right\},
\tag{AS.7y3}
```

and if `N_{J,\mathrm{win}}=0`, set
`\rho_\star:=\operatorname{dist}(\tau_\star,\partial I)`. Then on the shrunken
window `I_\star:=[\tau_\star-\rho_\star,\tau_\star+\rho_\star]\cap I`,

```math
g_J(a,b,t)\ge \frac{\delta_\star}{8M_{J,\mathrm{win}}^2}
\qquad\text{for every }t\in I_\star.
\tag{AS.7y4}
```

**Proof.**
By Weyl's inequality for ordered eigenvalues of symmetric matrices,

```math
|\lambda_{J,i}^{seg}(a,b,t)-\lambda_{J,i}^{seg}(a,b,s)|
\le
\|A_J^{seg}(a,b,t)-A_J^{seg}(a,b,s)\|_{\mathrm{op}}
\tag{AS.7y5}
```

for `i=1,2,3`. Hence

```math
|g_J(a,b,t)-g_J(a,b,s)|
\le
2\|A_J^{seg}(a,b,t)-A_J^{seg}(a,b,s)\|_{\mathrm{op}}
\le
2N_{J,\mathrm{win}}|t-s|.
\tag{AS.7y6}
```

Proposition `AS.7x` at the anchor time gives
`g_J(a,b,\tau_\star)\ge \delta_\star/(4M_{J,\mathrm{win}}^2)`. If
`N_{J,\mathrm{win}}=0`, then `A_J^{seg}` is constant on `I`, so the same lower
bound holds on all of `I`. Otherwise, for `t\in I_\star`,
`|t-\tau_\star|\le \delta_\star/(16M_{J,\mathrm{win}}^2N_{J,\mathrm{win}})`,
so `(AS.7y6)` yields

```math
g_J(a,b,t)
\ge
g_J(a,b,\tau_\star)-2N_{J,\mathrm{win}}|t-\tau_\star|
\ge
\frac{\delta_\star}{4M_{J,\mathrm{win}}^2}
-\frac{\delta_\star}{8M_{J,\mathrm{win}}^2}
=
\frac{\delta_\star}{8M_{J,\mathrm{win}}^2}.
```

This is `(AS.7y4)`. ∎

### Corollary AS.7z. Spectral-Floor Certification Reduces To A Selector-Good Discriminant Packet

Let `\{I_k\}_k` be a selector-good window family on the simple-top branch. For
each `I_k`, assume there are constants `M_k,N_k>0`, a common anchor time
`\tau_k^\sharp\in I_k`, and a threshold `\delta_k>0` such that for every active
pair `J` on that window,

```math
\sup_{t\in I_k}\|A_J^{seg}(t)\|_{\mathrm{op}}\le M_k,
\qquad
\sup_{t\in I_k}\|\partial_t A_J^{seg}(t)\|_{\mathrm{op}}\le N_k,
\qquad
\Delta_J^{seg}(\tau_k^\sharp)\ge \delta_k^2.
\tag{AS.7z1}
```

Set

```math
\rho_k
:=
\min\!\left\{
\operatorname{dist}(\tau_k^\sharp,\partial I_k),
\frac{\delta_k}{16M_k^2N_k}
\right\},
\qquad
I_k^{gap}
:=
[\tau_k^\sharp-\rho_k,\tau_k^\sharp+\rho_k]\cap I_k.
\tag{AS.7z2}
```

Then on every `I_k^{gap}`,

```math
g_J(t)\ge g_{k,\ast}
:=
\frac{\delta_k}{8M_k^2}
\qquad\text{for every active pair }J\text{ and every }t\in I_k^{gap}.
\tag{AS.7z3}
```

So the simple-top spectral floor required in `(AS.17)`, `PSJ+.5`, and
Candidate `F` is reduced to one selector-good discriminant packet at the
window anchor times. The remaining new input is therefore not a universal
pointwise gap theorem from incompressibility alone; it is a theorem producing
quantitatively many windows and pairs on which the trace-free segment-strain
discriminant stays away from zero at the chosen anchor times.

**Proof.**
Apply Corollary `AS.7y` pairwise on each `I_k` using the uniform bounds
`(AS.7z1)`. The resulting lower bound is uniform on the active family because
`M_k`, `N_k`, `\tau_k^\sharp`, and `\delta_k` are shared window constants. ∎

### Proposition AS.7za. The Simple-Top Gap Is The Exact Distance To The Repeated-Top Trace-Free Manifold

Let
`\mathrm{Sym}_0(3):=\{M\in\mathbb R^{3\times 3}: M^\top=M,\ \operatorname{tr}M=0\}`
and let

```math
\Sigma_{\mathrm{top}}
:=
\{M\in \mathrm{Sym}_0(3): \lambda_1(M)=\lambda_2(M)\}
\tag{AS.7za1}
```

be the repeated-top trace-free manifold. Then for every
`M\in\mathrm{Sym}_0(3)` with ordered eigenvalues
`\lambda_1(M)\ge \lambda_2(M)\ge \lambda_3(M)`,

```math
\operatorname{dist}_F\!\big(M,\Sigma_{\mathrm{top}}\big)
=
\frac{\lambda_1(M)-\lambda_2(M)}{\sqrt2}.
\tag{AS.7za2}
```

In particular, for the segment strain on the simple-top branch,

```math
\operatorname{dist}_F\!\big(A_J^{seg}(a,b,t),\Sigma_{\mathrm{top}}\big)
=
\frac{g_J(a,b,t)}{\sqrt2}.
\tag{AS.7za3}
```

**Proof.**
Orthogonally diagonalize `M=Q\operatorname{diag}(\lambda_1,\lambda_2,\lambda_3)Q^*`.
By orthogonal invariance of the Frobenius norm and the Hoffman-Wielandt
distance formula for symmetric matrices, the distance from `M` to
`\Sigma_{\mathrm{top}}` is obtained by keeping the eigenvectors fixed and
minimizing over trace-free repeated-top spectra `(\mu,\mu,-2\mu)`. Thus

```math
\operatorname{dist}_F\!\big(M,\Sigma_{\mathrm{top}}\big)^2
=
\inf_{\mu\in\mathbb R}
\Big(
(\lambda_1-\mu)^2+(\lambda_2-\mu)^2+(\lambda_3+2\mu)^2
\Big).
\tag{AS.7za4}
```

Since `\lambda_1+\lambda_2+\lambda_3=0`, the minimizer is
`\mu=(\lambda_1+\lambda_2)/2=-\lambda_3/2`, and the minimum value is

```math
\frac{(\lambda_1-\lambda_2)^2}{2}.
\tag{AS.7za5}
```

Taking square roots gives `(AS.7za2)`, and `(AS.7za3)` is the specialization to
`A_J^{seg}`. ∎

### Corollary AS.7zb. Codimension-Two Transversality To `\Sigma_{\mathrm{top}}` Gives The `V1` Gap-Sublevel Estimate

Fix one regular window `I_k`, one active-pair block `\mathcal J_k`, and set

```math
\mathfrak P_k:=\mathcal J_k\times I_k,
\qquad
\mathfrak S_k(J,t):=A_J^{seg}(t)\in \mathrm{Sym}_0(3).
\tag{AS.7zb1}
```

Assume:

1. `\mathfrak S_k` is `C^1` on `\mathfrak P_k`;
2. the lower gap stays separated from the triple-point locus on the block:

```math
\lambda_2\!\big(\mathfrak S_k(J,t)\big)-\lambda_3\!\big(\mathfrak S_k(J,t)\big)
\ge
\eta_k>0
\qquad\text{for every }(J,t)\in\mathfrak P_k;
\tag{AS.7zb2}
```

3. there exists a tubular neighborhood `U_k` of
`\Sigma_{\mathrm{top}}\cap \mathfrak S_k(\mathfrak P_k)` together with a `C^1`
submersion `\Psi_k:U_k\to\mathbb R^2` such that
`\Psi_k^{-1}(0)=\Sigma_{\mathrm{top}}\cap U_k` and

```math
J_2D(\Psi_k\circ \mathfrak S_k)(J,t)\ge c_k>0
\qquad\text{for every }(J,t)\in \mathfrak S_k^{-1}(U_k),
\tag{AS.7zb3}
```

where `J_2` denotes the two-dimensional Jacobian.

Then there are constants `\gamma_{k,0}>0` and `C_k<\infty` such that for every
`0<\gamma\le \gamma_{k,0}`,

```math
(\mu_J^{pair}\otimes dt)\bigl\{(J,t)\in \mathfrak P_k: g_J(t)\le \gamma\bigr\}
\le
C_k\,\gamma^2.
\tag{AS.7zb4}
```

So the windowwise bad-gap mass in `V1` is reduced to one codimension-two
transversality theorem for the parameter map `\mathfrak S_k` relative to
`\Sigma_{\mathrm{top}}`.

**Proof.**
By Proposition `AS.7za`,
`g_J(t)\le \gamma` is equivalent to
`\operatorname{dist}_F(\mathfrak S_k(J,t),\Sigma_{\mathrm{top}})\le \gamma/\sqrt2`.
Inside the tubular neighborhood `U_k`, the level sets of
`\Psi_k` are exactly the normal slices to `\Sigma_{\mathrm{top}}`, so the
sublevel set on the left side of `(AS.7zb4)` is contained in a radius
`C_k\gamma` neighborhood of the codimension-two zero set of
`\Psi_k\circ \mathfrak S_k`. The coarea formula in `\mathbb R^2`, together with
the lower bound `(AS.7zb3)` on the normal Jacobian, yields the quadratic volume
estimate `C_k\gamma^2`. The lower-gap separation `(AS.7zb2)` keeps the
parameter block on the repeated-top branch and excludes the triple-point
singularity from the tubular chart. ∎

## Frontier Translation

This note turns the remaining local burden into one exact geometric-dynamic
alignment problem.

After the selector-good spectral floor `(AS.17)` is installed, the only new
input left for `SG.4-production` is a bound on the integrated misalignment
energy

```math
\int_I \Gamma_J^{seg}(a,b,t)\,\alpha_J(a,b,t)\,dt.
\tag{AS.24}
```

On the simple-top branch, `(AS.24)` is exactly

```math
\int_I
\big(\lambda_{J,\max}^{seg}-\lambda_{J,\min}^{seg}\big)
\sin^2\!\angle\big(e_{ab},n_J\big)\,dt.
\tag{AS.25}
```

Proposition `AS.7` closes one further subproblem exactly: cone entry against the
material top singular direction of the finite-time propagator is controlled by
the finite-time singular gap and the initial right-singular overlap. Corollary
`AS.7m` shows that this material cone transfers to the instantaneous cone
needed for `(AS.5a)` once one also controls the carrier mismatch
`\delta_J^{car}` between the material left singular direction and the
instantaneous top eigendirection `n_J`. Proposition `AS.7v` now shows that on
short windows this carrier-mismatch term is itself controlled by explicit local
window data
`\big(\|\mathcal M_J\|_{\mathrm{op}},\|\partial_t\mathcal S_J\|_{\mathrm{op}},g_J,h\big)`.
Corollary `AS.7r` localizes the
aspect-ratio hypothesis `(AS.5c)` to the explicit two-gap comparability branch.
Corollaries `AS.7x`-`AS.7z` do the same for the spectral floor itself: on
regular selector-good windows the simple-top gap is reduced to a quantitative
trace-free strain-discriminant anchor propagated by the local
`\partial_t A_J^{seg}` bound, rather than to a universal pointwise gap law from
incompressibility alone.
Proposition `AS.7za` and Corollary `AS.7zb` sharpen the bad-set bookkeeping on
that same branch: the repeated-top locus is a codimension-two manifold in
`\mathrm{Sym}_0(3)`, the simple-top gap is exactly its Frobenius distance, and
the right quantitative selector theorem is therefore a tubular-neighborhood
estimate for the parameter map `(J,t)\mapsto A_J^{seg}(t)` rather than a raw
scalar-gradient bound for one discriminant polynomial.

So the frontier is no longer “prove a raw pointwise lower bound on
`S_J` everywhere.” It is:

```math
\boxed{
\text{control transported pair-direction misalignment against the expanding segment-strain carrier, and on the simple-top cone reduce it to the angular-forcing budget }\beta_J^2/g_J.
}
\tag{AS.26}
```

Any pair-defect theorem that dominates `(AS.24)` on a large selector-good pair
family supplies the budget side of `SG.4-production`. That is a reformulation of
the remaining mathematics, not a claim that the misalignment bound is already
proved.

More sharply, on the simple-top cone with aspect-ratio control, the open
quantity is no longer `(AS.24)` itself but the angular-forcing budget

```math
\int_I \frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}\,dt,
\tag{AS.27}
```

or, under the adiabatic reduction `(AS.6d)`, the pair of route-local budgets

```math
\int_I \frac{|K_J^{seg}n_J|^2}{g_J}\,dt,
\qquad
\int_I \frac{|\partial_t A_J^{seg}|^2}{g_J^3}\,dt.
\tag{AS.28}
```

So the exact remaining closure branches are:

1. a material-gap branch proving the cone-entry transfer condition `(AS.7o)`
   and, if needed, the two-gap comparability condition `(AS.7r)`;
2. a coercive branch proving `(AS.27)` is small on selector-good strips;
3. an adiabatic branch proving `(AS.28)` is small;
4. a pair-defect observability branch proving `PD.70s` dominates `(AS.27)` or
   `(AS.28)` on a large selector-good active-pair family.
