# Selector Balanced Frame Lemma

## Status

Active theorem-facing upstream debt note.

Role: replace the vague selector-shape normalization burden by one exact
finite-frame theorem on the selector-good directional support.

## Purpose

Discharge the shape side of the exact-potential branch through a constructive
balanced frame:

```math
\boxed{
\text{selector-good quadratic interiority}
\Longrightarrow
\text{finite balanced selector frame.}
}
\tag{SBF.0}
```

This is the sharp finite-dimensional form of the `PTC-Shape` burden.

For the exact-potential branch, the operative version must be uniform on the
active selector-good family, not merely pointwise for one pair `(a,t)`.

## Audit Of The Naive Form

The condition

```math
\sup_{\omega\in\Omega_J(a,t)} |\omega^\top A\omega|
\ge c_{\mathrm{shape}}|A|
\qquad
\text{for every traceless }A\neq 0
\tag{SBF.0a}
```

is **not** enough by itself to force a balanced frame. It only says that the
support is not contained in a single quadratic null set. It does not prevent
all quadratic evaluations from having the same sign.

For example, if `\Omega=\{e_1\}\subset S^{d-1}` and

```math
A=\operatorname{diag}(1,-1,0,\dots,0),
\tag{SBF.0b}
```

then `(SBF.0a)` holds with `|e_1^\top A e_1|=1`, but `I/d` is not in the convex
hull of `\{\omega\otimes\omega:\omega\in\Omega\}`. So no balanced frame exists.

The correct condition is a genuine interiority condition for the convex hull of
the rank-one tensors `\omega\otimes\omega`.

## Exact Setup

Fix one selector-good basepoint-time pair `(a,t)` and let

```math
\Omega_J(a,t)\subset S(N_a)
\tag{SBF.1}
```

be the selector-good directional support in the unit sphere of `N_a`. Write

```math
\mathcal Q_J(a,t)
:=
\{\omega\otimes\omega:\omega\in \Omega_J(a,t)\}
\subset \operatorname{Sym}(N_a).
\tag{SBF.2}
```

Since every element of `\mathcal Q_J(a,t)` has trace `1`, the natural affine
target is

```math
\frac1d\Pi_{N_a},
\qquad
d:=\dim N_a.
\tag{SBF.3}
```

## Exact Target

### Theorem SBF.A (balanced selector frame from quadratic interiority)

Assume the normalized identity lies in the interior of the convex hull:

```math
\frac1d\Pi_{N_a}\in \operatorname{int}\operatorname{conv}\mathcal Q_J(a,t).
\tag{SBF.4}
```

Equivalently, assume there exists `c_{\mathrm{shape}}>0` such that for every
nonzero traceless symmetric operator `A` on `N_a`,

```math
\sup_{\omega\in\Omega_J(a,t)} \omega^\top A\omega
\ge c_{\mathrm{shape}}|A|,
\qquad
\inf_{\omega\in\Omega_J(a,t)} \omega^\top A\omega
\le -c_{\mathrm{shape}}|A|.
\tag{SBF.5}
```

Then there exist finitely many directions

```math
\omega_J^1(a,t),\dots,\omega_J^m(a,t)\in \Omega_J(a,t)
\tag{SBF.6}
```

and weights `w_1,\dots,w_m>0` such that

```math
\sum_{\ell=1}^m w_\ell\,\omega_J^\ell(a,t)\otimes\omega_J^\ell(a,t)
=
\Pi_{N_a}.
\tag{SBF.7}
```

Equivalently,

```math
\sum_{\ell=1}^m w_\ell=d.
\tag{SBF.8}
```

Moreover one may choose

```math
m\le \dim\operatorname{Sym}(N_a)=\frac{d(d+1)}2
\tag{SBF.9}
```

by Carath\'eodory.

### Proof

The equivalence of `(SBF.4)` and `(SBF.5)` is the following finite-dimensional
separation argument in the affine hyperplane of trace-one symmetric tensors.
Since
`\operatorname{tr}(\omega\otimes\omega)=1`, the affine dual consists exactly of
traceless symmetric operators. If `(SBF.4)` fails, Hahn--Banach gives a
nonzero traceless symmetric `A` such that either
`\omega^\top A\omega\ge 0` for every `\omega\in\Omega_J(a,t)` or
`\omega^\top A\omega\le 0` for every such `\omega`, contradicting `(SBF.5)`.
Conversely, if `(SBF.5)` fails then some nonzero traceless `A` has one-sided
sign on `\Omega_J(a,t)`, so `\frac1d\Pi_{N_a}` cannot lie in the interior of
`\operatorname{conv}\mathcal Q_J(a,t)`.

Once `(SBF.4)` holds, in particular

```math
\frac1d\Pi_{N_a}\in \operatorname{conv}\mathcal Q_J(a,t).
\tag{SBF.10}
```

So there exist finitely many `\omega_J^\ell(a,t)\in \Omega_J(a,t)` and convex
weights `\lambda_\ell>0`, `\sum_\ell \lambda_\ell=1`, such that

```math
\frac1d\Pi_{N_a}
=
\sum_{\ell=1}^m \lambda_\ell\,
\omega_J^\ell(a,t)\otimes\omega_J^\ell(a,t).
\tag{SBF.11}
```

Multiplying by `d` and setting `w_\ell:=d\lambda_\ell` gives `(SBF.7)`. The
bound `(SBF.9)` is the Carath\'eodory bound in the affine space of trace-one
symmetric tensors. ∎

### Corollary SBF.B (measure sign-separation supplies quadratic interiority)

Let `\nu_J^{shape}(a,t)` be a selector-good directional measure supported on
`\Omega_J(a,t)`. Assume there exist `\alpha,\kappa>0` such that for every
nonzero traceless symmetric operator `A` on `N_a`,

```math
\nu_J^{shape}(a,t)
\Bigl\{
\omega\in\Omega_J(a,t):
\omega^\top A\omega
\ge
\kappa\|A\|_{\mathrm{op}}
\Bigr\}
\ge
\alpha,
\tag{SBF.12a}
```

and

```math
\nu_J^{shape}(a,t)
\Bigl\{
\omega\in\Omega_J(a,t):
\omega^\top A\omega
\le
-\kappa\|A\|_{\mathrm{op}}
\Bigr\}
\ge
\alpha.
\tag{SBF.12b}
```

Then `(SBF.5)` holds with the same `\kappa`, hence `SBF.A` applies.

**Proof.**
The positive-measure sets in `(SBF.12a)`-`(SBF.12b)` are nonempty, so

```math
\sup_{\omega\in\Omega_J(a,t)} \omega^\top A\omega
\ge
\kappa\|A\|_{\mathrm{op}},
\qquad
\inf_{\omega\in\Omega_J(a,t)} \omega^\top A\omega
\le
-\kappa\|A\|_{\mathrm{op}}.
\tag{SBF.12c}
```

This is exactly `(SBF.5)`. ∎

## Interpretation

This is the exact constructive version of `PTC-Shape` on the branch:

```math
\boxed{
\text{quadratic richness must be upgraded to convex interiority of }
\operatorname{conv}\{\omega\otimes\omega\}.
}
\tag{SBF.12}
```

Once that is done, the selector-good support supplies a finite balanced frame
rather than only an asymptotic isotropy slogan.

So the real mathematical burden behind `PTC-Shape` can be written in either of
the following equivalent theorem-facing ways:

```math
\text{support-level two-sided quadratic richness}
\Longrightarrow
\text{balanced selector frame},
\tag{SBF.13a}
```

or the stronger measure-level supplier

```math
\text{measure sign-separation for every }A\in\operatorname{Sym}_0(N_a)
\Longrightarrow
\text{support-level two-sided quadratic richness}.
\tag{SBF.13b}
```

## Downstream Use

This note is meant to feed
[selector-quadratic-sign-separation-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-quadratic-sign-separation-packet.md),
[finite-frame-linearization-on-selector-good-strips.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/finite-frame-linearization-on-selector-good-strips.md),
and the combined closure note
[exact-potential-balanced-frame-to-d7mq.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-balanced-frame-to-d7mq.md).
