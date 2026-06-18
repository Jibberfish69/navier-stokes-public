# Affine Survivor Stripped-Down Note

## Purpose

This note states the live Family `A` survivor route in the smallest possible
mathematical form.

It keeps only:

1. the two survivor moments `M_0,M_1`,
2. the exact theorem one would want on those moments,
3. the kind of Navier-Stokes identity that would have to generate that
   theorem.

Everything else is scaffolding.

## The object

Let `J=[s_0,s_1-\kappa]` be the one-sided logarithmic scale interval and let
`\widetilde Z(\sigma,t)` be the live scale source on that interval.

The affine survivor is just the pair of moments

```math
M_0(t):=\int_J \widetilde Z(\sigma,t)\,d\sigma,
\qquad
M_1(t):=\int_J \sigma\,\widetilde Z(\sigma,t)\,d\sigma.
\tag{1}
```

These are the only two coordinates currently seen by the persistent weighted
quotient coefficient.

Equivalently,

```math
c_F(t)=A_\kappa M_0(t)+B_\kappa M_1(t),
\tag{2}
```

with geometry constants `A_\kappa,B_\kappa`.

So the live obstruction is no longer the whole source `\widetilde Z`.
It is only the affine moment pair `(M_0,M_1)`.

## First exact contraction on the positive stress carrier

On the actual far-corona route the scale source is the positivized stress
source

```math
\widetilde Z(\sigma,t,x)
=
\chi_{mid}(\sigma)^{1/2}\tau_{e^\sigma}^{H^1}[u](x,t)\ge 0.
\tag{2a}
```

Write `\alpha:=s_0`, `\beta:=s_1-\kappa`, and `J=[\alpha,\beta]`. Then

```math
c_F(t)
=
\int_J \frac{\beta-\sigma}{|I|}\,\widetilde Z(\sigma,t)\,d\sigma.
\tag{2b}
```

Since `0\le \beta-\sigma\le |J|` on `J` and `\widetilde Z\ge 0`,

```math
0\le c_F(t)\le \frac{|J|}{|I|}\,M_0(t).
\tag{2c}
```

Equivalently,

```math
\|c_F(t)\|_{L_x^2}
\le
\frac{|J|}{|I|}\,\|M_0(t)\|_{L_x^2}.
\tag{2d}
```

So the affine quotient on the **positive** carrier collapses further:

```math
\boxed{
\text{AQK follows from a weighted endpoint theorem for }M_0=F(\beta).
}
\tag{2e}
```

More precisely, it is enough to prove

```math
\int_0^T H_w(t)\,\|M_0(t)\|_{L_x^2}^2\,dt
\le
\frac{\eta\nu}{C}\int_0^T D_N(t)\,dt + C_*2^{-2\delta N}.
\tag{2f}
```

Then `(2d)` gives

```math
\int_0^T H_w(t)\,\|c_F(t)\|_{L_x^2}^2\,dt
\le
\frac{|J|^2}{|I|^2}
\int_0^T H_w(t)\,\|M_0(t)\|_{L_x^2}^2\,dt,
\tag{2g}
```

so the affine quotient is killed.

This is a genuine reduction: on the positive carrier, the weighted affine
survivor is controlled by the endpoint mass alone.

## The target theorem

The stripped-down theorem one wants is:

### Theorem shape AS-1 (Affine survivor kill)

For every blowup-normalized sequence `u^{(n)}`, with corresponding scale
source `\widetilde Z^{(n)}`, one has

```math
\int_0^T
\Big(
\|M_0^{(n)}(t)\|_{L_x^2}^2
+
\|M_1^{(n)}(t)\|_{L_x^2}^2
\Big)\,dt
\longrightarrow 0.
\tag{3}
```

Because of `(2)`, this implies

```math
\int_0^T H_{w^{(n)}}(t)\,\|c_{F^{(n)}}(t)\|_{L_x^2}^2\,dt
\to 0
\tag{4}
```

once the harmonic-weight factor is bounded.

That is enough to kill the persistent weighted quotient mode.

So the route has been reduced to one blunt question:

```math
\boxed{
\text{can Navier-Stokes force the affine moments }M_0,M_1\text{ to vanish on the normalized class?}
}
```

## The exact structural reason these are the right moments

The coefficient kernel is affine:

```math
\theta_\kappa''=0.
\tag{5}
```

So the coefficient is blind to exact second derivatives in scale.

If

```math
\widetilde Z=\partial_\sigma^2 G+R,
\tag{6}
```

with the right endpoint conditions on `G`, then the affine part disappears and
only `R` contributes.

That is why the affine moments are the live survivors: they are exactly the
part not killed by second-order scale exactness.

## What kind of NS identity could generate `(3)`

There are only three honest theorem shapes.

### Identity type I: second-order scale exactness

Prove directly that the source is a second scale derivative modulo a tiny
remainder:

```math
\widetilde Z(\sigma,t)=\partial_\sigma^2 G(\sigma,t)+R(\sigma,t),
\tag{7}
```

with

```math
\int_0^T
\left\|
\int_J R(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2dt
+
\int_0^T
\left\|
\int_J \sigma\,R(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2dt
\to 0.
\tag{8}
```

Then `(3)` is the vanishing statement encoded by `(8)` in the notation of `(7)`.

This is the cleanest possible identity, but it is also stronger than anything
currently installed.

### Identity type II: first-order exactness on a potential, plus one more descent

The current signed route gives only

```math
Y(\sigma,t)
=
\partial_\sigma \Psi(\sigma,t)
+
S^{spill}(\sigma,t)
+
E(\sigma,t).
\tag{9}
```

That is one derivative short.

To generate `(3)`, one would need one more descent step on the potential:

```math
\Psi(\sigma,t)=\partial_\sigma G(\sigma,t)+\widetilde R(\sigma,t).
\tag{10}
```

Then

```math
Y=\partial_\sigma^2 G+\partial_\sigma \widetilde R+S^{spill}+E,
\tag{11}
```

which is the effective second-order exactness needed by the affine kernel.

So the current signed scale-descent theorem is not wrong.
It is just incomplete for the affine survivor. The affine route needs one more
exact descent on the signed potential.

One can make the precise obstruction explicit. Let

```math
Y(\sigma,t)=\partial_\sigma\Psi(\sigma,t)+S^{spill}(\sigma,t)+E(\sigma,t)
\tag{11a}
```

on `J=[\alpha,\beta]`, and define

```math
M_0[Y](t):=\int_J Y(\sigma,t)\,d\sigma,
\qquad
M_1[Y](t):=\int_J \sigma\,Y(\sigma,t)\,d\sigma.
\tag{11b}
```

Also set

```math
R_0(t):=\int_J (S^{spill}+E)(\sigma,t)\,d\sigma,
\tag{11c}
```

```math
R_\Omega(t):=\int_J (\beta-\sigma)(S^{spill}+E)(\sigma,t)\,d\sigma,
\tag{11d}
```

and the one-sided potential-average defect

```math
\Omega_J[\Psi](t):=
\int_J \Psi(\sigma,t)\,d\sigma
-
|J|\,\Psi(\alpha,t).
\tag{11e}
```

Then one integration by parts gives

```math
M_0[Y](t)=\Psi(\beta,t)-\Psi(\alpha,t)+R_0(t),
\tag{11f}
```

while a second weighted integration by parts yields

```math
M_1[Y](t)=\beta\,M_0[Y](t)-\Omega_J[\Psi](t)-R_\Omega(t).
\tag{11g}
```

Therefore

```math
\beta\,M_0[Y](t)-M_1[Y](t)
=
\Omega_J[\Psi](t)+R_\Omega(t),
\tag{11h}
```

and hence

```math
c_F[Y](t)
=
\frac{\beta\,M_0[Y](t)-M_1[Y](t)}{|I|}
=
\frac{\Omega_J[\Psi](t)+R_\Omega(t)}{|I|}.
\tag{11i}
```

The remainder is tame:

```math
\|R_0(t)\|_{L_x^2}
\le
|J|^{1/2}\|S^{spill}+E\|_{L_\sigma^2(J;L_x^2)},
\tag{11j}
```

```math
\|R_\Omega(t)\|_{L_x^2}
\le
|J|^{3/2}\|S^{spill}+E\|_{L_\sigma^2(J;L_x^2)}.
\tag{11k}
```

So first-order signed exactness does **not** produce a closed law on
`(M_0,M_1)` alone. It reduces the affine quotient to the extra scalar defect
`\Omega_J[\Psi]`, which is exactly the surviving “one derivative short”
obstruction.

### Identity type III: direct moment evolution identity

Instead of forcing second-order exactness on the whole source, one could try
to derive evolution laws for the moments themselves:

```math
\partial_t M_0 + \mathcal L_0[M_0,M_1] = \mathcal R_0,
\qquad
\partial_t M_1 + \mathcal L_1[M_0,M_1] = \mathcal R_1,
\tag{12}
```

where:

- `\mathcal L_0,\mathcal L_1` are dissipative or triangular operators,
- `\mathcal R_0,\mathcal R_1` are spill/error terms already known to vanish or
  be absorbable.

This is a more “moment-closed” approach:

```math
\text{do not kill }\widetilde Z\text{ globally;}
\quad
\text{show the two survivor coordinates obey a closed tame system.}
```

This route has not yet been developed in the lane, but it is a legitimate
alternative to second-order exactness.

There is, however, one exact positive-carrier evolution law that can be
written without further hypothesis. The local `H^1`-stress density satisfies
the pointwise parabolic identity

```math
\partial_t\tau_\ell^{H^1}[u]
-
\nu\Delta_x\tau_\ell^{H^1}[u]
+
2\nu\,\mathfrak d_\ell[u]
=
\mathfrak n_\ell[u]
+
\nabla_x\cdot \mathfrak q_\ell[u],
\tag{12a}
```

where

```math
\mathfrak d_\ell[u](x,t)
:=
\ell^{-2}
\int |\eta_\ell(a)|\,|\nabla_x\delta_a Q_\ell u(x,t)|^2\,da
\ge 0,
\tag{12b}
```

```math
\mathfrak n_\ell[u](x,t)
:=
-2\ell^{-2}
\int |\eta_\ell(a)|\,
\delta_a Q_\ell u(x,t)\cdot
\delta_a Q_\ell\big((u\cdot\nabla)u\big)(x,t)\,da,
\tag{12c}
```

```math
\mathfrak q_\ell[u](x,t)
:=
-2\ell^{-2}
\int |\eta_\ell(a)|\,
\delta_a p_\ell(x,t)\,\delta_a Q_\ell u(x,t)\,da.
\tag{12d}
```

After multiplying by `\chi_{mid}^{1/2}(\sigma)` and integrating over
`\sigma\in J`, one gets exact moment identities of the form

```math
\partial_t M_q
-
\nu\Delta_x M_q
+
2\nu\,\mathfrak D_q
=
\mathfrak N_q
+
\nabla_x\cdot \mathfrak Q_q,
\qquad q=0,1,
\tag{12e}
```

for the scale-moment fluxes

```math
\mathfrak D_q:=\int_J \sigma^q \widetilde{\mathfrak d}_\sigma\,d\sigma,
\qquad
\mathfrak N_q:=\int_J \sigma^q \widetilde{\mathfrak n}_\sigma\,d\sigma,
\qquad
\mathfrak Q_q:=\int_J \sigma^q \widetilde{\mathfrak q}_\sigma\,d\sigma.
\tag{12f}
```

This is exact, but it is **not closed** on `(M_0,M_1)`: the coercive term is
the full scale-moment dissipation `\mathfrak D_q`, and the nonlinear part
`\mathfrak N_q` is not a function of `(M_0,M_1)` alone. So a genuine
moment-closed AQK theorem still requires an additional theorem converting
`\mathfrak D_q` and `\mathfrak N_q` into an endpoint/coercive estimate on
`M_0` or into second-order scale exactness.

## Proofs of the exact reductions

### Proof of the positive-carrier collapse `(2c)`-`(2g)`

From `(2b)`, the coefficient kernel is nonnegative on `J` and bounded by
`|J|/|I|`:

```math
0\le \frac{\beta-\sigma}{|I|}\le \frac{|J|}{|I|}.
\tag{12g}
```

Since `\widetilde Z\ge 0` pointwise,

```math
0\le c_F(t,x)
\le
\frac{|J|}{|I|}
\int_J \widetilde Z(\sigma,t,x)\,d\sigma
=
\frac{|J|}{|I|}M_0(t,x).
\tag{12h}
```

Taking `L_x^2` norms gives `(2d)`, and multiplying by `H_w(t)` then
integrating in time gives `(2g)`.

### Proof of the signed affine reduction `(11f)`-`(11k)`

Integrating `(11a)` over `J` gives

```math
M_0[Y](t)
=
\int_J \partial_\sigma\Psi(\sigma,t)\,d\sigma + R_0(t)
=
\Psi(\beta,t)-\Psi(\alpha,t)+R_0(t),
\tag{12i}
```

which is `(11f)`.

Likewise,

```math
M_1[Y](t)
=
\int_J \sigma\,\partial_\sigma\Psi(\sigma,t)\,d\sigma
\;+\;
\int_J \sigma\,(S^{spill}+E)(\sigma,t)\,d\sigma.
\tag{12j}
```

Integrating the first term by parts,

```math
\int_J \sigma\,\partial_\sigma\Psi\,d\sigma
=
\beta\Psi(\beta,t)-\alpha\Psi(\alpha,t)-\int_J \Psi(\sigma,t)\,d\sigma.
\tag{12k}
```

Using `(11f)` to eliminate `\Psi(\beta,t)` gives

```math
M_1[Y](t)
=
\beta\,M_0[Y](t)
-
\Big(\int_J \Psi(\sigma,t)\,d\sigma-|J|\,\Psi(\alpha,t)\Big)
-
\int_J (\beta-\sigma)(S^{spill}+E)(\sigma,t)\,d\sigma,
\tag{12l}
```

which is exactly `(11g)` with the definitions `(11d)`-`(11e)`. Equation
`(11h)` is the same identity after substituting `(12l)` into `(11g)`, and
dividing by `|I|` gives `(11i)`.

Finally,

```math
\|R_0(t)\|_{L_x^2}
\le
\int_J \|S^{spill}+E\|_{L_x^2}\,d\sigma
\le
|J|^{1/2}\|S^{spill}+E\|_{L_\sigma^2(J;L_x^2)},
\tag{12m}
```

and because `|\beta-\sigma|\le |J|` on `J`,

```math
\|R_\Omega(t)\|_{L_x^2}
\le
|J|\int_J \|S^{spill}+E\|_{L_x^2}\,d\sigma
\le
|J|^{3/2}\|S^{spill}+E\|_{L_\sigma^2(J;L_x^2)},
\tag{12n}
```

proving `(11j)`-`(11k)`.

### Proof of the moment evolution law `(12e)`

For each active scale `\ell`, set

```math
g_{\ell,a}:=\delta_a Q_\ell u.
\tag{12o}
```

Applying `Q_\ell` to Navier-Stokes and then taking increments gives

```math
\partial_t g_{\ell,a}
-
\nu\Delta_x g_{\ell,a}
=
-\,\delta_a Q_\ell\big((u\cdot\nabla)u\big)
-\nabla_x\delta_a p_\ell.
\tag{12p}
```

Taking the scalar product with `g_{\ell,a}` yields

```math
\partial_t |g_{\ell,a}|^2
-
\nu\Delta_x |g_{\ell,a}|^2
+
2\nu |\nabla_x g_{\ell,a}|^2
=
-2 g_{\ell,a}\cdot \delta_a Q_\ell\big((u\cdot\nabla)u\big)
-2 g_{\ell,a}\cdot \nabla_x\delta_a p_\ell.
\tag{12q}
```

Because `Q_\ell u` is divergence free, so is `g_{\ell,a}`, and therefore

```math
-2 g_{\ell,a}\cdot \nabla_x\delta_a p_\ell
=
\nabla_x\cdot\big(-2\delta_a p_\ell\,g_{\ell,a}\big).
\tag{12r}
```

Multiply `(12q)` by `\ell^{-2}|\eta_\ell(a)|`, integrate in `a`, and absorb
the middle-band cutoff into the notation. This gives `(12a)`-`(12d)`. Since
the weights `1` and `\sigma` are independent of `(x,t)`, integrating
`(12a)` against `\sigma^q\,d\sigma` for `q=0,1` commutes with
`\partial_t`, `\Delta_x`, and `\nabla_x\cdot`, producing `(12e)`-`(12f)`.

## Honest current status

The present theorem stack gives only:

1. the exact identification of the survivor pair `(M_0,M_1)`,
2. the positive-carrier collapse `(2c)`-`(2g)` reducing AQK to a weighted
   endpoint theorem for `M_0`,
3. first-order signed scale exactness,
4. the exact signed affine reduction `(11f)`-`(11k)`, proving that
   first-order exactness is one derivative short of killing the affine
   survivor,
5. the exact but non-closed positive-carrier moment law `(12e)`.

So the live missing theorem is now stripped to:

```math
\boxed{
\text{either prove a weighted endpoint theorem for }M_0
\text{ (equivalently AQK on the positive carrier),}
}
```

or

```math
\boxed{
\text{upgrade first-order exactness to second-order scale exactness,}
}
```

or

```math
\boxed{
\text{derive a genuinely closed coercive evolution law for }(M_0,M_1)
\text{ from the positive stress carrier.}
}
```

That is the affine route in its smallest honest form.
