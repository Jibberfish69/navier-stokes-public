# Selector-Good Cocycle Operator Norm Bound

## Status

Candidate theorem-facing support note.

Role: make the forward and inverse cocycle-norm conversion requirements on the
exact-potential Cauchy--Green branch explicit.

## Purpose

Discharge the hidden support packet behind `PTC-Shape.A`:

```math
\boxed{
\partial_t W_J^N=A_J^N W_J^N
\Longrightarrow
\bigl|W_J^N(t,a)\bigr|_{\mathrm{op}}
\le
\exp\!\Bigl(\int_{t_0}^t |A_J^N(s,a)|_{\mathrm{op}}\,ds\Bigr).
}
\tag{SCN.0}
```

This note does not close `PTC-Shape.A` by itself. Its job is to turn the
factor `|\mathbf W_J^{coc}|_{\mathrm{op}}^2` in `D.7mn3`, and the inverse-cocycle
factor appearing in the exact reference-amplitude packet, into explicit
Gronwall-controlled quantities on the selector-good strip.

## Exact Setup

Keep one exact-potential selector-good atom-free strip `I_0=[t_0,t_1]` and one
transported good base point `a`. Assume

```math
\partial_t W_J^N(t,a)=A_J^N(t,a)W_J^N(t,a)
\qquad\text{for a.e. }t\in I_0,
\tag{SCN.1}
```

with entrance normalization

```math
W_J^N(t_0,a)=I_{N_a}.
\tag{SCN.2}
```

## Exact Claim

### Candidate Theorem SCN.A

For every `t\in I_0`,

```math
\bigl|W_J^N(t,a)\bigr|_{\mathrm{op}}
\le
\exp\!\Bigl(
\int_{t_0}^t |A_J^N(s,a)|_{\mathrm{op}}\,ds
\Bigr).
\tag{SCN.3}
```

Hence if

```math
\int_{t_0}^{t_1}|A_J^N(s,a)|_{\mathrm{op}}\,ds
\le
K_J^{coc}(a),
\tag{SCN.4}
```

then

```math
\sup_{t\in I_0}\bigl|W_J^N(t,a)\bigr|_{\mathrm{op}}
\le
e^{K_J^{coc}(a)}.
\tag{SCN.5}
```

Consequently the shape term in `D.7mn3` is controlled by

```math
\bigl|W_J^N(t,a)\bigr|_{\mathrm{op}}^2\,
\operatorname{Err}_{J,\varepsilon}^{shape}(t,a)
\le
e^{2K_J^{coc}(a)}\,
\operatorname{Err}_{J,\varepsilon}^{shape}(t,a).
\tag{SCN.6}
```

So the cocycle-norm conversion requirement in `PTC-Shape.A` is discharged once
the strip carries an integrable operator-norm packet for `A_J^N`.

### Corollary SCN.B (inverse cocycle operator norm bound)

Assume in addition that `W_J^N(t,a)` is invertible on `N_a` for every
`t\in I_0`. Then for every `t\in I_0`,

```math
\bigl|\bigl(W_J^N(t,a)\bigr)^{-1}\bigr|_{\mathrm{op}}
\le
\exp\!\Bigl(
\int_{t_0}^t |A_J^N(s,a)|_{\mathrm{op}}\,ds
\Bigr).
\tag{SCN.10}
```

Hence under `(SCN.4)`,

```math
\sup_{t\in I_0}\bigl|\bigl(W_J^N(t,a)\bigr)^{-1}\bigr|_{\mathrm{op}}
\le
e^{K_J^{coc}(a)}.
\tag{SCN.11}
```

So the exact inverse-cocycle packet needed by the reference-amplitude route is
discharged once the same integrable operator-norm packet for `A_J^N` is present.

### Proof

Fix `v\in N_a`. For almost every `t`,

```math
\partial_t (W_J^N(t,a)v)=A_J^N(t,a)W_J^N(t,a)v,
\tag{SCN.7}
```

so

```math
\partial_t |W_J^N(t,a)v|
\le
|A_J^N(t,a)|_{\mathrm{op}}\,|W_J^N(t,a)v|
\tag{SCN.8}
```

for almost every `t` with `W_J^N(t,a)v\neq 0`, and by continuity elsewhere.
Gronwall therefore gives

```math
|W_J^N(t,a)v|
\le
\exp\!\Bigl(
\int_{t_0}^t |A_J^N(s,a)|_{\mathrm{op}}\,ds
\Bigr)\,|v|.
\tag{SCN.9}
```

Taking the supremum over `|v|=1` yields `(SCN.3)`, hence `(SCN.5)`. Then
`(SCN.6)` follows by the same supremum bound. ∎

**Proof of Corollary `SCN.B`.**
Set `Z_J(t,a):=(W_J^N(t,a))^{-1}`. Differentiating
`W_J^N(t,a)Z_J(t,a)=I_{N_a}` and using `(SCN.1)` gives

```math
\partial_t Z_J(t,a)
=
-Z_J(t,a)A_J^N(t,a).
\tag{SCN.12}
```

Taking adjoints,

```math
\partial_t Z_J(t,a)^*
=
-(A_J^N(t,a))^* Z_J(t,a)^*,
\tag{SCN.13}
```

with entrance condition `Z_J(t_0,a)^*=I_{N_a}` by `(SCN.2)`. Since
`|(A_J^N)^*|_{\mathrm{op}}=|A_J^N|_{\mathrm{op}}`, the same Gronwall argument as
in `(SCN.7)`-`(SCN.9)` applies to `Z_J^*` and yields

```math
|Z_J(t,a)^*|_{\mathrm{op}}
\le
\exp\!\Bigl(
\int_{t_0}^t |A_J^N(s,a)|_{\mathrm{op}}\,ds
\Bigr).
\tag{SCN.14}
```

Because `|Z_J|_{\mathrm{op}}=|Z_J^*|_{\mathrm{op}}`, this is exactly
`(SCN.10)`, hence `(SCN.11)`. ∎

## Downstream Use

This note feeds
[ptc-shape-normalization-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ptc-shape-normalization-closure.md)
by making the factor `|\mathbf W_J^{coc}|_{\mathrm{op}}^2` explicit on the
selector-good family, and it also feeds the exact reference-amplitude reduction
in
[psj-plus-d7mb-residual-budget-route.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/psj-plus-d7mb-residual-budget-route.md)
by making the inverse-cocycle factor explicit on the same strip.
