# EulerSmoothToNSnuSmooth.A Direct Class-Membership Attempt

## Status

Failed direct proof attempt.

Target:

```math
Euler\ smooth\ on\ [0,T]
\Longrightarrow
NS_\nu\ smooth\ on\ [0,T]\quad(\nu>0).
```

The target is kept exactly as stated: every fixed positive viscosity, same datum, same time window.

## Setup

Let `u^E` solve incompressible Euler smoothly on `[0,T]`. Let `u^\nu` solve Navier-Stokes with the same smooth divergence-free datum and fixed viscosity `\nu>0` on its maximal classical interval `[0,T_\nu)`. Set

```math
w=u^\nu-u^E.
```

Then, after Leray projection,

```math
\partial_t w
+\mathbb P(u^E\cdot\nabla w)
+\mathbb P(w\cdot\nabla u^E)
+\mathbb P(w\cdot\nabla w)
=\nu\Delta w+\nu\Delta u^E.
\tag{1}
```

## Lemma 1. Euler-anchored relative estimate

For `s>5/2`, every common classical interval satisfies

```math
\frac d{dt}\|w\|_{H^s}^2
+\nu\|\nabla w\|_{H^s}^2
\le
C_E(t)\|w\|_{H^s}^2
+C_s\|w\|_{H^s}^3
+C_s\nu^2\|u^E\|_{H^{s+2}}^2,
\tag{2}
```

where `C_E(t)` is finite because `u^E` is smooth on `[0,T]`.

### Proof

Apply `\Lambda^s` to `(1)`, take the `L^2` pairing with `\Lambda^s w`, and use Kato-Ponce commutator bounds plus `H^s\hookrightarrow W^{1,\infty}`. The viscous term gives

```math
\langle \Lambda^s\nu\Delta w,\Lambda^s w\rangle
=-\nu\|\nabla w\|_{H^s}^2.
```

The forcing term satisfies

```math
2\nu|\langle \Lambda^s\Delta u^E,\Lambda^s w\rangle|
\le
C_s\nu^2\|u^E\|_{H^{s+2}}^2+C_s\|w\|_{H^s}^2.
```

The self-interaction gives the cubic term

```math
|\langle \Lambda^s\mathbb P(w\cdot\nabla w),\Lambda^s w\rangle|
\le C_s\|w\|_{H^s}^3.
```

Combining these estimates proves `(2)`. `\square`

## Consequence of Lemma 1

Lemma 1 proves the conditional result: if `\|w\|_{H^s}` stays finite, then the
NS solution continues on the Euler-smooth interval by the `H^s`, `s>5/2`,
continuation theorem. It also gives small-viscosity stability on a fixed
Euler-smooth interval by bootstrap from `w(0)=0` when `\nu` is sufficiently
small relative to the Euler norms on `[0,T]`.

## Failed closure of the target

The target requires every fixed `\nu>0`. Estimate `(2)` contains

```math
C_s\|w\|_{H^s}^3.
```

Euler smoothness controls `u^E`. It gives no independent upper bound for `\|w\|_{H^s}` at arbitrary fixed viscosity. Closing `(2)` for every fixed positive viscosity therefore requires an a priori NS bound or a new class-membership transfer estimate.

## Class-membership transfer attempt

The route-relative witness is

```math
CM_{N,r,Q}(u,p,\Phi)=Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}.
```

Euler smoothness supplies an Euler carrier with its own smooth flow, pressure, and field coherence. To conclude `NS_\nu` smoothness, one would need transfer theorems of the form

```math
EulerSmooth
\Longrightarrow Pack_Q(u^\nu,\Phi^\nu),
```

```math
EulerSmooth
\Longrightarrow Part_{N,Q}(u^\nu,p^\nu),
```

```math
EulerSmooth
\Longrightarrow Field_{N,r,Q}(u^\nu,p^\nu).
```

Each transfer requires quantitative control of the NS tower, pressure-viscosity carrier, and finite-difference field coherence. Those are exactly the NS class-membership witnesses being sought. The current class-membership forward-invariance surfaces propagate these witnesses under their own receiver/source hypotheses; they do not derive them from Euler smoothness alone.

## Conclusion

The direct proof attempt establishes:

```math
EulerSmooth+[\text{relative }H^s\text{ bootstrap}]
\Longrightarrow
NS_\nu\text{ smooth on }[0,T].
```

It also establishes:

```math
EulerSmooth+0<\nu\le\nu_0(Euler,T)
\Longrightarrow
NS_\nu\text{ smooth on }[0,T].
```

It does not establish:

```math
EulerSmooth
\Longrightarrow
NS_\nu\text{ smooth for every fixed }\nu>0.
```

## Exact remaining theorem

The required new theorem is one of the following equivalent fixed-viscosity transfer statements:

```math
EulerSmoothToNSTowerBound.A:
\quad
EulerSmooth\Longrightarrow \sup_{t\le T}\|u^\nu(t)\|_{H^s}<\infty\quad(\nu>0),
```

or

```math
EulerSmoothToNSCM.A:
\quad
EulerSmooth\Longrightarrow Pack_Q+Part_{N,Q}+Field_{N,r,Q}\text{ for }NS_\nu,
```

or

```math
EulerSmoothRelativeBound.A:
\quad
EulerSmooth\Longrightarrow \sup_{t\le T}\|u^\nu-u^E\|_{H^s}<\infty\quad(\nu>0).
```

No current MCP surface proves any of these from Euler smoothness alone.
