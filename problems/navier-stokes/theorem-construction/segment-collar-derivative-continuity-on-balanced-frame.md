# Segment-Collar Derivative Continuity On Balanced Frame

## Status

Candidate theorem-facing upstream supplier note.

Role: reduce the finite-frame linearization burden to one segment-collar
derivative continuity packet on the same entrance-time balanced frame.

## Purpose

Discharge the linearization side of the finite-frame route:

```math
\boxed{
\text{segment-collar derivative continuity on the balanced frame}
\Longrightarrow
\text{finite-frame tensor control.}
}
\tag{SCDC.0}
```

## Exact Setup

Fix one selector-good strip `I_0=[t_0,t_1]`, one basepoint `a`, and one
balanced entrance-time frame

```math
\sum_{\ell=1}^m w_\ell\,\omega_{J,0}^\ell(a)\otimes\omega_{J,0}^\ell(a)
=
\Pi_{N_a},
\qquad
\sum_{\ell=1}^m w_\ell=d.
\tag{SCDC.1}
```

Choose one scale `h_J>0` and define the balanced-frame segments

```math
\Gamma_{J,\ell}(a)
:=
\{a+s\omega_{J,0}^\ell(a): |s|\le h_J\}.
\tag{SCDC.2}
```

For each `\ell`, let `\mathcal T_{J,\ell}(a,t)` be a collar containing
`\Gamma_{J,\ell}(a)` on which `D_aX_t` is defined.

## Exact Target

### Candidate Theorem L.A (segment-collar derivative continuity packet)

Assume there exists a modulus packet

```math
\rho_{J,\mathrm{lin}}(a,t;h_J)
\tag{SCDC.3}
```

on the active family such that for every `(a,t)` in the active selector-good
family and every selected frame direction `\omega_{J,0}^\ell(a)`,

```math
\sup_{|s|\le h_J}
\bigl\|
D_aX_t(a+s\omega_{J,0}^\ell(a))
-
D_aX_t(a)
\bigr\|_{\mathrm{op}}
\le
\rho_{J,\mathrm{lin}}(a,t;h_J),
\tag{SCDC.4}
```

with

```math
\rho_{J,\mathrm{lin}}(a,t;h_J)\to 0
\quad\text{uniformly on the active family as }h_J\downarrow 0.
\tag{SCDC.5}
```

Then the finite-frame linearization packet holds:

```math
\max_{1\le \ell\le m}
\bigl|
z_J^\ell(t,a)-W_J^{coc}(t,a)\omega_{J,0}^\ell(a)
\bigr|
\le
\rho_{J,\mathrm{lin}}(a,t;h_J),
\tag{SCDC.6}
```

and hence

```math
\bigl\|
\mathcal K_J^{frame}(t,a)
-
W_J^{coc}(t,a)\Pi_{N_a}(W_J^{coc}(t,a))^\ast
\bigr\|_{\mathrm{op}}
\le
d\Bigl(
2\,|W_J^{coc}(t,a)|_{\mathrm{op}}\,
\rho_{J,\mathrm{lin}}(a,t;h_J)
+
\rho_{J,\mathrm{lin}}(a,t;h_J)^2
\Bigr).
\tag{SCDC.7}
```

### Proof

This is exactly Corollary `FFL.B` specialized to the balanced frame fixed by
`(SCDC.1)`. ∎

### Corollary SCDC.B (second-derivative collar bound supplies the modulus)

Assume that on the active family there exists a collar second-derivative packet

```math
\sup_{y\in \mathcal T_{J,\ell}(a,t)}
\|D_a^2X_t(y)\|_{\mathrm{op}}
\le
K_{J,\ell}^{(2)}(a,t)
\tag{SCDC.8}
```

for each `\ell=1,\dots,m`, and define

```math
K_J^{(2)}(a,t):=\max_{1\le \ell\le m} K_{J,\ell}^{(2)}(a,t).
\tag{SCDC.9}
```

Then `(SCDC.4)` holds with

```math
\rho_{J,\mathrm{lin}}(a,t;h_J)
:=
h_J\,K_J^{(2)}(a,t).
\tag{SCDC.10}
```

In particular, if

```math
h_J\,K_J^{(2)}(a,t)\to 0
\quad\text{uniformly on the active family,}
\tag{SCDC.11}
```

then the finite-frame linearization packet is discharged.

### Proof

Fix `\ell` and `|s|\le h_J`. By the fundamental theorem of calculus along the
segment,

```math
D_aX_t(a+s\omega_{J,0}^\ell(a))-D_aX_t(a)
=
\int_0^s
D_a^2X_t(a+\tau\omega_{J,0}^\ell(a))
[\omega_{J,0}^\ell(a)]\,d\tau.
\tag{SCDC.12}
```

Taking operator norms and using `|\omega_{J,0}^\ell(a)|=1` gives

```math
\bigl\|
D_aX_t(a+s\omega_{J,0}^\ell(a))-D_aX_t(a)
\bigr\|_{\mathrm{op}}
\le
|s|\,K_{J,\ell}^{(2)}(a,t)
\le
h_J\,K_J^{(2)}(a,t),
\tag{SCDC.13}
```

which is `(SCDC.4)` with `(SCDC.10)`. ∎

### Corollary SCDC.C (regular-window `C^2` flow control supplies the collar second-derivative packet)

Fix one selector-good strip `I_0=[t_0,t_1]` and write `\tau_0:=|I_0|`. Assume
that for every active `(a,t)` and every selected collar
`\mathcal T_{J,\ell}(a,t)`, the coarse flow `X_t` is generated on that collar
by a velocity field `v_J` satisfying

```math
\sup_{s\in I_0}\|\nabla v_J(s)\|_{L^\infty(\mathcal T_{J,\ell}(a,s))}
\le M_\ast,
\tag{SCDC.13a}
```

and

```math
\sup_{s\in I_0}\|\nabla^2 v_J(s)\|_{L^\infty(\mathcal T_{J,\ell}(a,s))}
\le H_\ast.
\tag{SCDC.13b}
```

Then the collar second-derivative packet `(SCDC.8)` holds with the uniform
bound

```math
K_J^{(2)}(a,t)\le H_\ast\,\tau_0\,e^{2M_\ast\tau_0}.
\tag{SCDC.13c}
```

Consequently `(SCDC.4)` holds with

```math
\rho_{J,\mathrm{lin}}(a,t;h_J)
\le
h_J\,H_\ast\,\tau_0\,e^{2M_\ast\tau_0}.
\tag{SCDC.13d}
```

In particular, if

```math
h_J\,H_\ast\,\tau_0\,e^{2M_\ast\tau_0}\to 0
\quad\text{uniformly on the active family,}
\tag{SCDC.13e}
```

then the finite-frame linearization packet is discharged.

So the alternate finite-frame linearization route is reduced further to one
regular-window theorem: uniform `C^2` control of the coarse flow on the frame
collars.

**Proof.**
Let `U_t:=D_aX_t` and `V_t:=D_a^2X_t`. On each collar, the variational
equations are

```math
\partial_t U_t=\nabla v_J(X_t,t)\,U_t,
\qquad
U_{t_0}=I,
\tag{SCDC.13f}
```

and

```math
\partial_t V_t
=
\nabla^2 v_J(X_t,t)[U_t,U_t]
+
\nabla v_J(X_t,t)\,V_t,
\qquad
V_{t_0}=0.
\tag{SCDC.13g}
```

By `(SCDC.13a)` and Gronwall,

```math
\|U_t\|_{\mathrm{op}}
\le
e^{M_\ast(t-t_0)}
\le
e^{M_\ast\tau_0}.
\tag{SCDC.13h}
```

Applying variation of constants to `(SCDC.13g)` and using `(SCDC.13a)`-`(SCDC.13b)`
gives

```math
\|V_t\|_{\mathrm{op}}
\le
\int_{t_0}^t
e^{M_\ast(t-s)}\,H_\ast\,\|U_s\|_{\mathrm{op}}^2\,ds
\le
\int_{t_0}^t
e^{M_\ast(t-s)}\,H_\ast\,e^{2M_\ast(s-t_0)}\,ds.
\tag{SCDC.13i}
```

Since
`e^{M_\ast(t-s)}e^{2M_\ast(s-t_0)}\le e^{2M_\ast\tau_0}` for `t,s\in I_0`,
the right-hand side is bounded by `H_\ast\tau_0 e^{2M_\ast\tau_0}`, giving
`(SCDC.13c)`. Then Corollary `SCDC.B` yields `(SCDC.13d)`-`(SCDC.13e)`. ∎

## Interpretation

The real linearization burden on the finite-frame route is therefore:

```math
\boxed{
\text{prove one uniform segment-collar derivative continuity theorem on the selected balanced frame.}
}
\tag{SCDC.14}
```

On the regular-window branch, Corollary `SCDC.C` sharpens this further to:

```math
\boxed{
\text{prove uniform }C^2\text{ control of the coarse flow on the frame collars.}
}
\tag{SCDC.14a}
```

## Downstream Use

This note feeds
[finite-frame-linearization-on-selector-good-strips.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/finite-frame-linearization-on-selector-good-strips.md)
and then
[exact-potential-balanced-frame-to-d7mq.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-balanced-frame-to-d7mq.md).
