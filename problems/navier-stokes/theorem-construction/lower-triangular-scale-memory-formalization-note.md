# Lower-Triangular Scale-Memory Formalization Note

## Status

This note is a proposed second-stage formalization of the one-sided
scale-memory route on the classical `NS` surface.
It does not prove a new theorem.

Its role is to restate the Volterra obstruction in the natural operator
language of ordered scale transport and test whether that language exposes any
nontrivial structure beyond the crude Hardy collapse.

## Purpose

The Volterra note identified the live far-corona quantity as a weighted
one-sided primitive in scale and showed that the obstruction is better viewed
as a weighted quotient/readout problem than as a crude full-prefix problem.

This note rewrites the same object as a lower-triangular scale operator and
asks:

```math
\text{does the operator language expose any exact quotient mode that the crude Hardy bound misses?}
```

## Operator setup on the logarithmic middle band

Write `s=\log r`, let `I=[s_0,s_1]` be the fixed middle-band interval, and let

```math
\widetilde Z(\sigma,t):=Z_{e^\sigma}(t)\in L_x^2,
\qquad
w(s,t):=a(e^s,t)\ge 0.
```

Let `\kappa:=\log c_1`. Define the lower-triangular Volterra operator

```math
(\mathcal V_\kappa f)(s)
:=
\int_{s_0}^{s-\kappa} f(\sigma)\,d\sigma,
\tag{1}
```

with the convention that the integral is zero when `s-\kappa<s_0`.

Then on the middle band the exact far-corona primitive is

```math
F(s,t)=T_{e^s}(t)=(\mathcal V_\kappa \widetilde Z)(s,t),
\tag{2}
```

and the weighted stress quantity becomes

```math
\mathrm{FCTS}
=
\int_0^T \|M_w^{1/2}\mathcal V_\kappa \widetilde Z(\cdot,t)\|_{L_s^2(I;L_x^2)}^2\,dt,
\tag{3}
```

where `M_w` is multiplication by `w(s,t)`.

So the live classical obstruction is exactly the weighted lower-triangular
quadratic form

```math
\mathcal Q_w[f]
:=
\|M_w^{1/2}\mathcal V_\kappa f\|_{L_s^2(I;L_x^2)}^2.
\tag{4}
```

## Kernel form

The quadratic form `(4)` can be written as

```math
\mathcal Q_w[f]
=
\langle f,\mathcal K_w f\rangle_{L_s^2(I;L_x^2)},
\qquad
\mathcal K_w:=\mathcal V_\kappa^\ast M_w\mathcal V_\kappa,
\tag{5}
```

with symmetric positive kernel

```math
\Gamma_w(\sigma,\tau)
:=
\int_{\max\{\sigma,\tau\}+\kappa}^{s_1} w(s)\,ds.
\tag{6}
```

So

```math
(\mathcal K_w f)(\sigma)
=
\int_I \Gamma_w(\sigma,\tau)\,f(\tau)\,d\tau.
\tag{7}
```

This is already the lower-triangular version of the same cumulative-tail
geometry:
`(\sigma,\tau)` only contribute through the ordered region

```math
\max\{\sigma,\tau\}+\kappa\le s\le s_1.
```

## Where the crude Hardy route loses structure

The crude Hardy/Cauchy collapse replaces the operator-level object
`\mathcal K_w=\mathcal V_\kappa^\ast M_w\mathcal V_\kappa` by a positive
majorant that no longer remembers how `\mathcal V_\kappa` was assembled.

At operator level, the loss is

```math
\mathcal V_\kappa^\ast M_w\mathcal V_\kappa
\rightsquigarrow
\text{positive majorant on the kernel } \Gamma_w
\rightsquigarrow
\text{cumulative-tail bound `(CTS)`}.
```

So the correct operator question is:

```math
\text{does }\mathcal V_\kappa^\ast M_w\mathcal V_\kappa
\text{ contain a quotient mode smaller than the full lower-triangular mass?}
```

## Canonical weighted quotient projector

Fix `t` and work in the weighted Hilbert space

```math
\mathcal H_w:=L^2(I,w\,ds;L_x^2).
```

Let

```math
\mathcal D_0
:=
\{\partial_s S:\ S(s_0)=S(s_1)=0\}\subset \mathcal H_w
\tag{8}
```

be the exact-in-scale subspace.

As in the Volterra note, the weighted orthogonal complement of `\mathcal D_0`
is given by the weak equation

```math
\partial_s(w\,m_w)=0,
\tag{9}
```

so the scale profile of the orthogonal mode is

```math
m_w(s,t)\propto w(s,t)^{-1}.
\tag{10}
```

Assuming `w>0` almost everywhere and `w^{-1}\in L^1(I)`, define the normalized
profile

```math
m_w(s,t)
:=
\frac{|I|\,w(s,t)^{-1}}{\int_I w(\sigma,t)^{-1}\,d\sigma},
\qquad
\int_I m_w(s,t)\,ds=|I|.
\tag{11}
```

Define the weighted quotient projector `P_w:\mathcal H_w\to\mathcal H_w` by

```math
(P_w f)(s,t)
:=
m_w(s,t)\,
\frac{1}{|I|}\int_I f(\sigma,t)\,d\sigma.
\tag{12}
```

Then `P_w` is the weighted orthogonal projection onto the scale-persistent
quotient mode `( \mathcal D_0 )^\perp`.

## Exact operator decomposition

Applying `P_w` to the lower-triangular output yields

```math
\mathcal V_\kappa
=
P_w\mathcal V_\kappa
+
(I-P_w)\mathcal V_\kappa.
\tag{13}
```

The second summand is exact in scale:
for every `f`,

```math
(I-P_w)\mathcal V_\kappa f
=
\partial_s S_w[f],
\qquad
S_w[f](s_0)=S_w[f](s_1)=0.
\tag{14}
```

Therefore the lower-triangular quadratic form splits orthogonally as

```math
\mathcal Q_w[f]
=
\|M_w^{1/2}P_w\mathcal V_\kappa f\|_{\mathcal H_w}^2
+
\|M_w^{1/2}(I-P_w)\mathcal V_\kappa f\|_{\mathcal H_w}^2.
\tag{15}
```

The persistent term is explicitly

```math
\|M_w^{1/2}P_w\mathcal V_\kappa f\|_{\mathcal H_w}^2
=
\frac{|I|^2}{\int_I w^{-1}\,ds}
\left\|
\frac{1}{|I|}\int_I (\mathcal V_\kappa f)(s)\,ds
\right\|_{L_x^2}^2.
\tag{16}
```

So the weighted operator language reveals a precise structural fact:

```math
\boxed{
\text{the only scale-persistent mode seen by the active weight is a rank-one quotient mode in the scale variable.}
}
```

Everything else in the lower-triangular output is exact-in-scale.

## What this improves

This is a genuine structural improvement over the crude Hardy collapse.

The crude route treats the entire lower-triangular output `\mathcal V_\kappa f`
as a live source. The operator decomposition `(15)` says that this is too
coarse:

1. there is exactly one scale-persistent quotient mode,
2. it is determined by the inverse dissipation profile `w^{-1}`,
3. the remainder lies in the exact derivative subspace.

So, at operator level, the obstruction is not naturally attached to the full
kernel `\Gamma_w`. It is attached to the quotient mode selected by `P_w`.

## What this does not yet prove

The lower-triangular operator language still does **not** close the route from
the inherited Euclidean inputs alone.

There are three exact reasons.

1. The active weight `w=a(e^s,t)` may vanish or degenerate, so `(11)` and
   `(16)` are not automatically theorem-usable.
2. There is no inherited control on `w^{-1}`, so the quotient coefficient in
   `(16)` is not yet bounded in a useful classical way.
3. The exact derivative term in `(15)` has been identified structurally, but no
   new coercive bound presently shows that it is absorbed by dissipation on the
   classical `NS` surface.

So the operator language sharpens the obstruction but does not yet discharge
it.

## Outcome of the operator-language test

The answer to the lower-triangular falsification test is:

```math
\boxed{
\text{yes, the ordered operator contains a nontrivial weighted quotient mode smaller than the crude full-prefix object.}
}
```

Namely, `\mathcal V_\kappa^\ast M_w\mathcal V_\kappa` factors through the
weighted projector `P_w` onto a scale-rank-one persistent mode plus an exact
derivative remainder.

However:

```math
\boxed{
\text{no, this operator decomposition still does not close `(CTS)` from inherited Euclidean inputs alone.}
}
```

What it does prove is the same conceptual point in a sharper language:

```math
\boxed{
\text{the obstruction belongs to a weighted quotient/readout of the lower-triangular operator, not to the full lower-triangular mass itself.}
}
```

The exact surviving coefficient and the corresponding kill surface are now
recorded in
[persistent-weighted-quotient-kill-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-note.md).

## Relation to the other languages

- The Hardy/Volterra note is still the native first entry point because it
  matches the primitive at birth.
- The lower-triangular note records the same phenomenon as an operator
  statement on ordered scale transport.
- Tent-space / Carleson language should still enter after this, once the live
  quotient/readout object is identified and must be measured against the
  active dissipation measure in spacetime.
