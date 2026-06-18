# Mixed-Jet H^s Quadratic Convolution Reduction

## Purpose

This note pushes one exact step beyond the existing mixed-jet and exponential
closure notes.

It does not prove global regularity.
It proves that, once the full mixed-jet tower is measured in factorially
weighted `H^s` norms, the two nonlinear burdens

- the transport spread,
- the pressure gradient,

obey the **same quadratic convolution law**.

So the combinatorics do not create a new obstruction by themselves.
The remaining burden is propagation of the weighted jet norm.

## Setup

Write the mixed jets

```math
J_{m,\alpha}:=\partial_t^m\partial_x^\alpha u,
\qquad
\Pi_{m,\alpha}:=\partial_t^m\partial_x^\alpha p.
\tag{1}
```

The differentiated equations are

```math
\partial_t J_{m,\alpha}
+
\sum_{a=0}^{m}\sum_{\beta\le\alpha}
\binom ma\binom{\alpha}{\beta}
\big(J_{a,\beta}\cdot\nabla\big)J_{m-a,\alpha-\beta}
+
\nabla\Pi_{m,\alpha}
=
\nu\Delta J_{m,\alpha},
\tag{2}
```

and

```math
-\Delta \Pi_{m,\alpha}
=
\partial_i\partial_j
\sum_{a=0}^{m}\sum_{\beta\le\alpha}
\binom ma\binom{\alpha}{\beta}
\big(J_{a,\beta}\big)_i\big(J_{m-a,\alpha-\beta}\big)_j.
\tag{3}
```

Fix `s>\frac32`. Then `H^s(\mathbb R^3)` is an algebra, and therefore

```math
\|fg\|_{H^s}\le C_s\|f\|_{H^s}\|g\|_{H^s}.
\tag{4}
```

Also,

```math
\|(f\cdot\nabla)g\|_{H^{s-1}}
\le
C_s\|f\|_{H^s}\|g\|_{H^s},
\tag{5}
```

because `H^s\hookrightarrow L^\infty` and
`\|\nabla g\|_{H^{s-1}}\le\|g\|_{H^s}`.

For the pressure law, the operator

```math
F\mapsto \nabla(-\Delta)^{-1}\partial_i\partial_j F_{ij}
```

is a Fourier multiplier of order `1`, so

```math
\|\nabla(-\Delta)^{-1}\partial_i\partial_j F_{ij}\|_{H^{s-1}}
\le
C_s\|F\|_{H^s}.
\tag{6}
```

## Exact transport estimate at one rung

Define the transport block

```math
T_{m,\alpha}
:=
\sum_{a=0}^{m}\sum_{\beta\le\alpha}
\binom ma\binom{\alpha}{\beta}
\big(J_{a,\beta}\cdot\nabla\big)J_{m-a,\alpha-\beta}.
\tag{7}
```

Then by `(5)`,

```math
\|T_{m,\alpha}\|_{H^{s-1}}
\le
C_s
\sum_{a=0}^{m}\sum_{\beta\le\alpha}
\binom ma\binom{\alpha}{\beta}
\|J_{a,\beta}\|_{H^s}\,
\|J_{m-a,\alpha-\beta}\|_{H^s}.
\tag{8}
```

So the full transport spread is bounded by the same binomial convolution that
defines the tower.

## Exact pressure estimate at one rung

Set

```math
F_{m,\alpha}^{ij}
:=
\sum_{a=0}^{m}\sum_{\beta\le\alpha}
\binom ma\binom{\alpha}{\beta}
\big(J_{a,\beta}\big)_i\big(J_{m-a,\alpha-\beta}\big)_j.
\tag{9}
```

Then `(3)` reads

```math
-\Delta \Pi_{m,\alpha}=\partial_i\partial_j F_{m,\alpha}^{ij}.
\tag{10}
```

Using `(4)` and `(6)`,

```math
\|\nabla\Pi_{m,\alpha}\|_{H^{s-1}}
\le
C_s\|F_{m,\alpha}\|_{H^s}
\le
C_s
\sum_{a=0}^{m}\sum_{\beta\le\alpha}
\binom ma\binom{\alpha}{\beta}
\|J_{a,\beta}\|_{H^s}\,
\|J_{m-a,\alpha-\beta}\|_{H^s}.
\tag{11}
```

So the pressure gradient satisfies the **same** quadratic convolution law as the
transport spread.

This is the exact point:

```math
\boxed{
\text{at the weighted }H^s\text{ level, pressure is not a separate combinatorial burden.}
}
\tag{12}
```

## Weighted mixed-jet norm

For `\tau,r\ge0`, define

```math
\mathfrak A_s(\tau,r)
:=
\sum_{m\ge0}\sum_{\alpha\in\mathbb N^3}
\frac{\tau^m r^{|\alpha|}}{m!\,\alpha!}\,
\|J_{m,\alpha}\|_{H^s}.
\tag{13}
```

Define the weighted transport and pressure envelopes

```math
\mathfrak T_s(\tau,r)
:=
\sum_{m\ge0}\sum_{\alpha}
\frac{\tau^m r^{|\alpha|}}{m!\,\alpha!}\,
\|T_{m,\alpha}\|_{H^{s-1}},
\tag{14}
```

```math
\mathfrak P_s(\tau,r)
:=
\sum_{m\ge0}\sum_{\alpha}
\frac{\tau^m r^{|\alpha|}}{m!\,\alpha!}\,
\|\nabla\Pi_{m,\alpha}\|_{H^{s-1}}.
\tag{15}
```

Then `(8)` and `(11)` give

```math
\mathfrak T_s(\tau,r)
\le
C_s
\sum_{m,\alpha}\frac{\tau^m r^{|\alpha|}}{m!\,\alpha!}
\sum_{a=0}^{m}\sum_{\beta\le\alpha}
\binom ma\binom{\alpha}{\beta}
\|J_{a,\beta}\|_{H^s}\,
\|J_{m-a,\alpha-\beta}\|_{H^s}.
\tag{16}
```

Since

```math
\frac{1}{m!\,\alpha!}\binom ma\binom{\alpha}{\beta}
=
\frac{1}{a!\,\beta!\,(m-a)!\,(\alpha-\beta)!},
\tag{17}
```

the factorial weights collapse the full mixed combinatorics exactly:

```math
\mathfrak T_s(\tau,r)
\le
C_s\,\mathfrak A_s(\tau,r)^2.
\tag{18}
```

The same calculation gives

```math
\mathfrak P_s(\tau,r)
\le
C_s\,\mathfrak A_s(\tau,r)^2.
\tag{19}
```

Therefore

```math
\boxed{
\mathfrak T_s(\tau,r)+\mathfrak P_s(\tau,r)
\le
C_s\,\mathfrak A_s(\tau,r)^2.
}
\tag{20}
```

## Meaning of the reduction

This proves three exact things.

### 1. The tower combinatorics are not the obstruction by themselves

Once the mixed-jet tower is measured with factorial weights, the binomial
coefficients disappear algebraically.

So there is no extra combinatorial explosion beyond an ordinary quadratic law.

### 2. Pressure and transport live on the same quadratic envelope

At this level of description, the pressure gradient is not a second,
independent nonlinear burden.
It is controlled by the same quadratic convolution envelope as the transport
spread.

### 3. The remaining burden is propagation, not counting

The unresolved question is no longer:

```math
\text{how large are the binomial coefficients?}
```

It is:

```math
\boxed{
\text{can one propagate / close / damp the weighted mixed-jet norm }
\mathfrak A_s(\tau,r)?
}
\tag{21}
```

That is where viscosity must enter.

## Continuation corollary

Fix `s>\frac52`.
If for some `\tau,r>0` one has

```math
\sup_{t\in[0,T)}\mathfrak A_s(\tau,r,t)<\infty,
\tag{22}
```

then in particular the base jet is bounded:

```math
\|u(t)\|_{H^s}
=
\|J_{0,0}(t)\|_{H^s}
\le
\mathfrak A_s(\tau,r,t).
\tag{23}
```

Hence

```math
\sup_{t\in[0,T)}\|u(t)\|_{H^s}<\infty.
\tag{24}
```

For `s>\frac52`, use the `H^s` local-wellposedness continuation criterion:
if `\sup_{t<T}\|u(t)\|_{H^s}\le M`, then the local existence time from any
slice `u(t_0)` is bounded below by
`\tau_{\mathrm{lwp}}(M,\nu)>0`.  Taking
`t_0>T-\tau_{\mathrm{lwp}}(M,\nu)/2` restarts the same classical solution past
`T`.

Therefore:

```math
\boxed{
\text{propagation of one finite weighted mixed-jet }H^s\text{ norm is sufficient for classical continuation.}
}
\tag{25}
```

## Exact limitation

This note does **not** prove that `\mathfrak A_s(\tau,r)` is finite, invariant,
or globally propagated.

It only proves that if one measures the full tower in factorially weighted
`H^s` norms, then:

- the transport spread is quadratic in `\mathfrak A_s`,
- the pressure gradient is quadratic in `\mathfrak A_s`,
- the combinatorics collapse exactly,
- so the remaining burden is a genuine propagation/closure problem for the
  weighted jet norm itself.

That is the exact reduction step.

## Continuation corollary

Now assume `s>\frac52`.
If there exist `\tau,r>0` such that

```math
\sup_{0\le t<T}\mathfrak A_s(\tau,r,t)<\infty,
\tag{22}
```

then in particular the base term of the mixed-jet sum is bounded:

```math
\|u(t)\|_{H^s}
=
\|J_{0,0}(t)\|_{H^s}
\le
\mathfrak A_s(\tau,r,t).
\tag{23}
```

So `(22)` implies

```math
\sup_{0\le t<T}\|u(t)\|_{H^s}<\infty,
\qquad
s>\frac52.
\tag{24}
```

This is a classical continuation norm for smooth three-dimensional
Navier--Stokes.
Therefore any theorem that propagates a weighted mixed-jet norm
`\mathfrak A_s(\tau,r)` on `[0,T)` automatically yields continuation of the
classical solution past `T`.

So the exact logical consequence of a successful weighted-jet closure theorem
is:

```math
\boxed{
\text{propagation of }\mathfrak A_s(\tau,r)
\Longrightarrow
\text{classical }H^s\text{ continuation}
\Longrightarrow
\text{extension of the solution.}
}
\tag{25}
```
