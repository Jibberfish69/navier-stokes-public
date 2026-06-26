# Ancestry-line frame/deformation tax

Status: deterministic single-line tax proved conditionally; global summability remains open.

## 1. Purpose

The refined Gold hinge is `HighRatioLaminarAncestryMultiplicityTax.A`.

The first useful sublemma is local in ancestry: once a critical high-ratio family has been assigned to one material ancestry line, repeated retained visits must spend either Cauchy-Green deformation variation or projective frame variation.

## 2. Material line notation

Let `F(t)=D_aX(a,t)` on one material ancestry line and

```math
C(t)=F(t)^T F(t).
```

For a unit material direction `q(t)`, define the transported normalized direction

```math
e(t)={F(t)q(t)\over |F(t)q(t)|}.
```

The exact logarithmic deformation identity is

```math
{d\over dt}\log |F(t)q(t)|
= e(t)\cdot S(X(a,t),t)e(t)
+\operatorname{Err}_{frame}(t),
```

with

```math
|\operatorname{Err}_{frame}(t)|\le C\,|\dot q(t)|_{\mathbb P^2}.
```

Therefore, on any interval `I`,

```math
\int_I[-e\cdot Se]_+\,dt
\le
\operatorname{Var}_I\log |Fq|
+C\operatorname{Var}_I(q).
\tag{ALT.1}
```

This is a deterministic identity: compression in a tracked material direction is paid by deformation variation or by motion of the tracked direction.

## 3. Complete-frame conversion

A retained high-ratio visit carries the complete frame

```math
(p_\gamma,\widehat\xi_\gamma,n_\gamma),
\qquad n_\gamma=p_\gamma\times\widehat\xi_\gamma.
```

The complete-frame payment gives

```math
[p_\gamma\cdot S p_\gamma]_+
\le
[-\widehat\xi_\gamma\cdot S\widehat\xi_\gamma]_+
+[-n_\gamma\cdot S n_\gamma]_+.
\tag{ALT.2}
```

Apply `(ALT.1)` to the two paying projective directions `\widehat\xi_\gamma` and `n_\gamma` along the ancestry line. Summing over retained visits in a laminar chain `\mathcal A(a)` gives

```math
\sum_{\gamma\subset\mathcal A(a)} a_\gamma
\le
C\,\mathcal V_C(\mathcal A(a))
+C\,\mathcal V_F(\mathcal A(a))
+R_{legal}(\mathcal A(a)),
\tag{ALT.3}
```

where

```math
\mathcal V_C
:=
\sum_{q\in\{\widehat\xi,n\}}
\operatorname{Var}_{\mathcal A(a)}\log |Fq|,
```

and

```math
\mathcal V_F
:=
\operatorname{Var}_{\mathcal A(a)}(\widehat\xi)
+\operatorname{Var}_{\mathcal A(a)}(n)
```

is projective complete-frame variation.

## 4. Meaning

This proves the single-line multiplicity tax in the only form that can beat the half-tail:

```math
\text{retained high-ratio multiplicity on one ancestry line}
\le
\text{Cauchy-Green log variation}
+\text{Hodge-frame rotation}
+\text{legal collar/interface error}.
```

The result converts the first ratio moment into a same-history variation problem. It also explains why unrelated affine-packet packing is too weak as a model: the same transported ancestry forces every repeated visit to reuse material directions, rotate the complete frame, or move through collar/interface separation.

## 5. Remaining global hinge

The theorem is still open at the forest summation step. The next exact hinge is:

```math
\boxed{\text{LaminarAncestryTaxSummability.A}}
```

Statement:

For the original smooth Navier--Stokes material history, after paid nonlaminar exits, the laminar ancestry forest satisfies

```math
\int \bigl(\mathcal V_C(\mathcal A(a))+\mathcal V_F(\mathcal A(a))\bigr)\,da
+R_{legal}<\infty,
```

and hence

```math
\sum_\gamma a_\gamma
\simeq
\sum_{\ell\ge0}2^\ell\nu_\ell
<\infty.
```

This bounded unit advances the target from an abstract multiplicity tax to a concrete deterministic tax plus one global summability burden.