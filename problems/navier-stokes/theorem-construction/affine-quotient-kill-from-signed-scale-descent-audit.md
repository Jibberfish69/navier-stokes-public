# Affine-Quotient Kill From Signed Scale-Descent Audit

## Status

This note tests the strongest currently available signed exactness mechanism
against the affine-quotient kill route.

It proves an exact negative result:

```math
\text{the current signed scale-descent identity is one scale derivative short of killing the affine quotient mode.}
```

So this note does not close the route.
It identifies the exact missing theorem content.

## Purpose

The persistent weighted quotient note reduced the obstruction to the
coefficient

```math
c_F(t)
=
\int_{s_0}^{s_1-\kappa}\theta_\kappa(\sigma)\,\widetilde Z(\sigma,t)\,d\sigma,
\tag{1}
```

where `\theta_\kappa` is affine on its support and therefore annihilates exact
second derivatives in `\sigma`.

The signed scale-descent note provides the best available exactness mechanism
currently on the branch:

```math
\text{signed source}
=
\partial_\sigma(\text{potential})
+
\text{spill}
+
\text{soft error},
```

after rewriting `\ell\partial_\ell` as `\partial_\sigma` with `\sigma=\log\ell`.

This note asks whether that first-order exactness is enough to kill the
affine quotient coefficient `(1)`.

## Affine coefficient functional

Define the coefficient functional on the one-sided scale interval
`J=[s_0,s_1-\kappa]` by

```math
\mathcal C_\theta[Y](t)
:=
\int_J \theta_\kappa(\sigma)\,Y(\sigma,t)\,d\sigma,
\tag{2}
```

with

```math
\theta_\kappa(\sigma)
:=
\frac{(s_1-\kappa)-\sigma}{|I|}
\mathbf 1_J(\sigma).
\tag{3}
```

Then

```math
\theta_\kappa'(\sigma)=-\frac1{|I|}
\quad\text{on }J,
\qquad
\theta_\kappa''(\sigma)=0
\quad\text{on }J,
\tag{4}
```

and the persistent obstruction is controlled by

```math
\int_0^T H_w(t)\,\|\mathcal C_\theta[\widetilde Z](t)\|_{L_x^2}^2\,dt.
\tag{5}
```

## Input from signed scale descent

The note
[signed-lifted-band-scale-descent-identity.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/signed-lifted-band-scale-descent-identity.md)
gives, at the signed layer and in logarithmic scale,

```math
Y(\sigma,t)
=
\partial_\sigma \Psi(\sigma,t)
+
S^{spill}(\sigma,t)
+
E(\sigma,t),
\tag{6}
```

where:

- `\Psi` is the signed cumulative commutator potential,
- `S^{spill}` is threshold-local collar/spill geometry,
- `E` is the soft remainder.

This is the strongest currently source-backed exactness mechanism available on
the branch.

## Exact effect of first-order exactness on the affine coefficient

Insert `(6)` into `(2)`:

```math
\mathcal C_\theta[Y]
=
\int_J \theta_\kappa\,\partial_\sigma\Psi\,d\sigma
+
\mathcal C_\theta[S^{spill}]
+
\mathcal C_\theta[E].
\tag{7}
```

Integrating by parts once and using `(4)` gives

```math
\int_J \theta_\kappa\,\partial_\sigma\Psi\,d\sigma
=
\big[\theta_\kappa\Psi\big]_{s_0}^{s_1-\kappa}
-\int_J \theta_\kappa'(\sigma)\,\Psi(\sigma,t)\,d\sigma.
\tag{8}
```

Since `\theta_\kappa(s_1-\kappa)=0` and `\theta_\kappa'=-|I|^{-1}` on `J`,

```math
\int_J \theta_\kappa\,\partial_\sigma\Psi\,d\sigma
=
-\theta_\kappa(s_0)\,\Psi(s_0,t)
+
\frac1{|I|}\int_J \Psi(\sigma,t)\,d\sigma.
\tag{9}
```

Therefore

```math
\mathcal C_\theta[Y]
=
-\theta_\kappa(s_0)\,\Psi(s_0,t)
+
\frac1{|I|}\int_J \Psi(\sigma,t)\,d\sigma
+
\mathcal C_\theta[S^{spill}](t)
+
\mathcal C_\theta[E](t).
\tag{10}
```

This is the exact first-order reduction of the affine coefficient.

## Consequence

Formula `(10)` shows the precise limitation:

```math
\boxed{
\text{first-order scale exactness kills only the constant part of the quotient;}
}
```

```math
\boxed{
\text{the affine quotient still sees the average of the potential }\Psi.
}
```

Equivalently, the coefficient functional is blind to exact second derivatives,
but the currently available signed mechanism supplies only one derivative.

So the route is one scale derivative short.

## Weighted obstruction after first-order descent

Substituting `(10)` into `(5)` yields

```math
\int_0^T H_w(t)\,\|\mathcal C_\theta[Y](t)\|_{L_x^2}^2\,dt
\le C_\theta
\int_0^T H_w(t)\Big(
\|\Psi(s_0,t)\|_{L_x^2}^2
+
\left\|\frac1{|I|}\int_J \Psi(\sigma,t)\,d\sigma\right\|_{L_x^2}^2
+
\|\mathcal C_\theta[S^{spill}](t)\|_{L_x^2}^2
+
\|\mathcal C_\theta[E](t)\|_{L_x^2}^2
\Big)\,dt.
\tag{11}
```

So even after the signed scale-descent theorem, the live burden still contains
the scale-average of the potential `\Psi`.

That average is not killed by first-order exactness alone.

## Honest outcome

The affine-quotient kill theorem does **not** follow from the current signed
scale-descent identity alone.

The exact missing content is one of the following:

1. **Second-order scale exactness**

```math
Y=\partial_\sigma^2 G + R,
\tag{12}
```

so that the affine coefficient sees only the remainder `R`.

2. **Potential-average kill theorem**

```math
\int_0^T H_w(t)\,
\left\|
\frac1{|I|}\int_J \Psi(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2
dt
\le
\frac{\eta\nu}{C}\int_0^T D_N(t)\,dt + C_*2^{-2\delta N}.
\tag{13}
```

3. **Additional descent on the potential**

```math
\Psi=\partial_\sigma G+\widetilde R,
\tag{14}
```

which upgrades the available first derivative to the effective second
derivative needed by the affine kernel.

Without one of `(12)`-`(14)`, the affine quotient route remains open.

## Important limitation for the positive stress source

The result above applies to the **signed** source channel.

The live Volterra source `\widetilde Z` on the far-corona route is the
positivized stress source `\tau_\ell^{H^1}[u]`, not the signed commutator
density itself.

So there is an additional structural warning:

```math
\text{even the one-derivative exactness `(6)` is available only before positivity is taken.}
```

Therefore the current classical route faces two nested deficits:

1. the positive stress source has already forgotten the signed exactness;
2. even at the signed layer, the inherited exactness is one derivative short of
   killing the affine quotient mode.

## Final conclusion

The current best exact statement is:

```math
\boxed{
\text{the affine-quotient kill route is real, but the present signed/cocycle mechanism is one scale derivative short of proving it.}
}
```

So the exact next theorem burden is not vague.
It is:

```math
\boxed{
\text{upgrade first-order signed scale descent to either second-order exactness or a potential-average kill theorem.}
}
```
