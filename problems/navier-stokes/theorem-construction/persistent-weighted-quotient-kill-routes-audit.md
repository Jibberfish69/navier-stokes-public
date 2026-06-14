# Persistent Weighted Quotient Kill Routes Audit

## Status

This note performs the first bounded self-attempt on the three candidate kill
routes isolated in
[persistent-weighted-quotient-kill-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-note.md).

The goal is not to close the route outright.
It is to determine which kill route is structurally real and which ones merely
repackage the old burden.

## Setup

Keep the notation of the Volterra and lower-triangular notes.

The persistent obstruction is

```math
\mathfrak P
:=
\int_0^T H_w(t)\,\|c_F(t)\|_{L_x^2}^2\,dt,
\tag{1}
```

with

```math
H_w(t):=\frac{|I|^2}{\int_I w(s,t)^{-1}\,ds},
\qquad
c_F(t):=\int_{s_0}^{s_1-\kappa}\theta_\kappa(\sigma)\,\widetilde Z(\sigma,t)\,d\sigma,
\tag{2}
```

and

```math
\theta_\kappa(\sigma)
:=
\frac{(s_1-\kappa)-\sigma}{|I|}
\mathbf 1_{[s_0,s_1-\kappa]}(\sigma).
\tag{3}
```

The question is whether any of the three candidate kill routes actually
improves on the inherited Euclidean collapse.

## Route A: harmonic-weight kill

### Direct attempt

The most literal route is to dominate the persistent factor purely through the
harmonic-mean weight `H_w`.

By Cauchy-Schwarz on `I`,

```math
|I|^2
\le
\Big(\int_I w\,ds\Big)\Big(\int_I w^{-1}\,ds\Big),
\tag{4}
```

so

```math
H_w(t)\le \int_I w(s,t)\,ds.
\tag{5}
```

Also, since `\theta_\kappa` is nonnegative and supported on an interval of
length at most `L_\kappa`,

```math
\|c_F(t)\|_{L_x^2}^2
\le C_{\theta}
\int_{s_0}^{s_1-\kappa}\theta_\kappa(\sigma)\,
\|\widetilde Z(\sigma,t)\|_{L_x^2}^2\,d\sigma.
\tag{6}
```

Substituting `(5)` and `(6)` into `(1)` gives

```math
\mathfrak P
\le C_{\mathfrak P}
\int_0^T
\Big(\int_I w(s,t)\,ds\Big)
\Big(
\int_{s_0}^{s_1-\kappa}\theta_\kappa(\sigma)\,
\|\widetilde Z(\sigma,t)\|_{L_x^2}^2\,d\sigma
\Big)\,dt.
\tag{7}
```

Returning to the `r=e^s` variable, `(7)` is exactly the same lower-prefix
active-square geometry as the continuum cumulative-tail theorem `(CTS)`:

```math
\text{active dissipation mass on the band}
\times
\text{one-sided weighted stress square on the lower side.}
```

### Outcome

Route A does **not** produce a new theorem surface.
It collapses back to the same cumulative-tail structure.

So:

```math
\boxed{
\text{Route A is not a genuine repair; it repackages `(CTS)`-type geometry.}
}
```

## Route C: direct mixed readout theorem

### Direct attempt

Try to prove the persistent bound `(1)` directly from the weighted readout
without splitting `H_w` and `c_F`.

Weighted Cauchy-Schwarz gives

```math
\left\|
\frac1{|I|}\int_I F(s,t)\,ds
\right\|_{L_x^2}^2
\le
\frac{1}{|I|^2}
\Big(\int_I w^{-1}\,ds\Big)
\Big(\int_I w\,\|F\|_{L_x^2}^2\,ds\Big).
\tag{8}
```

Multiplying by `H_w(t)=|I|^2/\int_I w^{-1}\,ds` yields the exact bound

```math
H_w(t)\,\|c_F(t)\|_{L_x^2}^2
\le
\int_I w(s,t)\,\|F(s,t)\|_{L_x^2}^2\,ds.
\tag{9}
```

Integrating in time,

```math
\mathfrak P
\le
\mathrm{FCTS}.
\tag{10}
```

### Outcome

Route C is formally true but useless as a repair mechanism by itself.
It only says that the persistent readout is controlled by the full object we
were already trying to close.

So:

```math
\boxed{
\text{Route C is circular at the present stage; it gives no gain beyond the full `FCTS` burden.}
}
```

## Route B: affine-quotient kill

### Exact reduction

This is the only route that uses the new structural information.

Because `\theta_\kappa` is affine on its support, the surviving coefficient
depends only on the affine quotient of `\widetilde Z`.

Define the two one-sided scale moments

```math
M_0(t):=\int_{s_0}^{s_1-\kappa}\widetilde Z(\sigma,t)\,d\sigma,
\qquad
M_1(t):=\int_{s_0}^{s_1-\kappa}\sigma\,\widetilde Z(\sigma,t)\,d\sigma.
\tag{11}
```

Then `(2)` can be rewritten exactly as

```math
c_F(t)=A_\kappa\,M_0(t)+B_\kappa\,M_1(t),
\tag{12}
```

for explicit geometry constants `A_\kappa,B_\kappa` depending only on the
fixed interval `I` and the offset `\kappa`.

Equivalently, if `\Pi_{\mathrm{aff}}` denotes the quotient projection onto the
affine functions of `\sigma` on `[s_0,s_1-\kappa]`, then

```math
c_F(t)
=
\int_{s_0}^{s_1-\kappa}\theta_\kappa(\sigma)\,
(\Pi_{\mathrm{aff}}\widetilde Z)(\sigma,t)\,d\sigma,
\tag{13}
```

and the exact second-derivative part of `\widetilde Z` is invisible to `c_F`.

### What inherited Euclidean inputs give

On the fixed interval,

```math
\|M_0(t)\|_{L_x^2}^2+\|M_1(t)\|_{L_x^2}^2
\le C_M
\int_{s_0}^{s_1-\kappa}\|\widetilde Z(\sigma,t)\|_{L_x^2}^2\,d\sigma.
\tag{14}
```

So the inherited Euclidean surface gives only the coarse bound

```math
\|c_F(t)\|_{L_x^2}^2
\le C_c
\int_{s_0}^{s_1-\kappa}\|\widetilde Z(\sigma,t)\|_{L_x^2}^2\,d\sigma,
\tag{15}
```

which again reduces `(1)` to a lower-prefix active-square object once paired
with `H_w`.

### Outcome

Route B does **not** close from inherited Euclidean inputs alone.
But unlike A and C, it produces a genuinely smaller exact burden:
the two affine scale moments `M_0,M_1`, or equivalently the affine quotient
`\Pi_{\mathrm{aff}}\widetilde Z`.

So:

```math
\boxed{
\text{Route B is the only genuine shrinkage of the obstruction.}
}
```

It identifies the exact missing theorem as an affine-moment kill theorem for
the scale source.

## Final comparison

The three bounded attempts separate cleanly:

1. Route A collapses back to the old cumulative-tail geometry.
2. Route C is a tautological bound by the full `FCTS` object.
3. Route B isolates a genuinely smaller surviving object, but that smaller
   object is still open on the inherited Euclidean surface.

So the correct ranking is:

```math
\boxed{
\text{Route B is the only mathematically live repair route at present.}
}
```

and the real next theorem target is:

```math
\boxed{
\text{prove the affine quotient of the scale source is transport-inefficient under the harmonic-mean active weight.}
}
```

The first exact audit against the currently available signed descent mechanism
is recorded in
[affine-quotient-kill-from-signed-scale-descent-audit.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/affine-quotient-kill-from-signed-scale-descent-audit.md).

## Relation to the route

This note does not replace the Volterra or lower-triangular notes.
It refines them:

- Hardy/Volterra shows the object is a one-sided scale primitive.
- Lower-triangular language isolates the rank-one weighted quotient mode.
- This audit shows that only the affine-quotient kill route produces a genuine
  smaller theorem burden.

That is the current live frontier.
