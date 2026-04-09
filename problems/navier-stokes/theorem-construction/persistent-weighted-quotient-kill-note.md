# Persistent Weighted Quotient Kill Note

## Status

This note records the first exact answer to the question:

```math
\text{how can the weighted quotient mode be killed on the classical `NS` surface?}
```

It does not prove closure.
It isolates the exact surviving coefficient and identifies the most promising
kill mechanism.

## Setup

Retain the notation of
[volterra-scale-memory-formalization-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/volterra-scale-memory-formalization-note.md)
and
[lower-triangular-scale-memory-formalization-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lower-triangular-scale-memory-formalization-note.md).

Write `s=\log r`, let `I=[s_0,s_1]`, set `\kappa:=\log c_1`, and define

```math
F(s,t):=(\mathcal V_\kappa \widetilde Z)(s,t),
\qquad
w(s,t):=a(e^s,t).
```

The weighted lower-triangular decomposition gives

```math
\int_I w\|F\|_{L_x^2}^2\,ds
=
\int_I w\|\partial_s S_w\|_{L_x^2}^2\,ds
+
H_w(t)\,\|c_F(t)\|_{L_x^2}^2,
\tag{1}
```

where

```math
H_w(t):=\frac{|I|^2}{\int_I w(s,t)^{-1}\,ds}
\tag{2}
```

is the harmonic-mean weight and

```math
c_F(t):=\frac1{|I|}\int_I F(s,t)\,ds.
\tag{3}
```

So the persistent obstruction is exactly

```math
\int_0^T H_w(t)\,\|c_F(t)\|_{L_x^2}^2\,dt.
\tag{4}
```

## Exact formula for the surviving coefficient

Because `F=\mathcal V_\kappa \widetilde Z`, Fubini gives

```math
c_F(t)
=
\frac1{|I|}
\int_{s_0}^{s_1}\int_{s_0}^{s-\kappa}\widetilde Z(\sigma,t)\,d\sigma\,ds
=
\int_{s_0}^{s_1-\kappa}\theta_\kappa(\sigma)\,\widetilde Z(\sigma,t)\,d\sigma,
\tag{5}
```

with one-sided affine kernel

```math
\theta_\kappa(\sigma)
:=
\frac{(s_1-\kappa)-\sigma}{|I|}
\mathbf 1_{[s_0,s_1-\kappa]}(\sigma).
\tag{6}
```

Therefore the persistent mode does **not** see the whole lower-prefix source
`\widetilde Z`. It sees only the affine moment selected by `\theta_\kappa`.

## Structural consequence

On the open interval `(s_0,s_1-\kappa)`, the kernel `\theta_\kappa` satisfies

```math
\theta_\kappa''(\sigma)=0.
\tag{7}
```

Hence the coefficient functional annihilates exact second derivatives modulo
boundary terms.

More precisely, if

```math
\widetilde Z(\sigma,t)=\partial_\sigma^2 G(\sigma,t)+R(\sigma,t),
\tag{8}
```

with

```math
G(s_0,t)=G(s_1-\kappa,t)=0,
\qquad
\partial_\sigma G(s_0,t)=\partial_\sigma G(s_1-\kappa,t)=0,
\tag{9}
```

then by two integrations by parts,

```math
c_F(t)
=
\int_{s_0}^{s_1-\kappa}\theta_\kappa(\sigma)\,R(\sigma,t)\,d\sigma.
\tag{10}
```

So the persistent weighted quotient mode is blind to the exact second-scale
derivative part of the source.

This is the first exact kill mechanism:

```math
\boxed{
\text{the weighted persistent coefficient only sees the affine quotient of the scale source.}
}
```

## What this means for the route

The correct burden is no longer:

```math
\text{control the full Volterra prefix }F.
```

It is:

```math
\text{show that the affine quotient of }\widetilde Z
\text{ is small under the harmonic-mean weight }H_w.
```

Equivalently, closure would follow from either of the following theorem types.

### Kill route A: harmonic-weight kill

Show directly that the harmonic-mean factor is small enough:

```math
\int_0^T H_w(t)\,\|c_F(t)\|_{L_x^2}^2\,dt
\le
\frac{\eta\nu}{C}\int_0^T D_N(t)\,dt+C_*2^{-2\delta N}.
\tag{11}
```

This is the most literal route, but it asks for nontrivial control on `w^{-1}`
and is not presently the most promising.

### Kill route B: affine-quotient kill

Show that the surviving coefficient itself is small because `\widetilde Z`
is exact modulo a tiny affine quotient remainder:

```math
\widetilde Z=\partial_\sigma^2 G + R,
\qquad
\int_0^T H_w(t)\,
\left\|
\int \theta_\kappa(\sigma)R(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2
dt
\le
\frac{\eta\nu}{C}\int_0^T D_N(t)\,dt+C_*2^{-2\delta N}.
\tag{12}
```

This is the most promising route because it attacks the exact surviving
coefficient and uses the fact that the persistent mode only sees the affine
scale quotient.

### Kill route C: mixed readout theorem

Bypass the separate `H_w` and `c_F` analyses and prove `(11)` directly as a
weighted readout theorem.

This is logically clean, but less diagnostic as a first step.

## Live recommendation

The preferred next theorem surface is Kill route B.

Why:

1. it uses an exact structural fact already exposed by the operator language;
2. it does not require proving nondegeneracy or regularity of `w^{-1}` first;
3. it shrinks the live obstruction from a whole prefix object to an affine
   quotient coefficient of the scale source.

So the best current mathematical slogan is:

```math
\boxed{
\text{kill the persistent mode by killing its affine quotient coefficient, not by estimating the whole accumulated tail.}
}
```

The first bounded self-attempt on all three kill routes is recorded in
[persistent-weighted-quotient-kill-routes-audit.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-routes-audit.md).

## Relation to the other languages

- Hardy/Volterra identified the obstruction as a one-sided primitive.
- Lower-triangular operator language isolated the rank-one weighted quotient
  mode.
- This note identifies the exact surviving coefficient and shows that it only
  sees the affine quotient of the scale source.
- Tent-space / Carleson language should only enter after this, when the live
  coefficient/readout has to be measured against spacetime dissipation.
