# Middle-Band Flux Gap-Kernel Theorem

## Purpose

This note records the only continuum proof route currently visible for the
localized middle-band flux packet

```math
\Pi_N^{mid}(t)
:=
\int_0^{\ell_N}
\chi_{mid}(\log\ell)
\int_{\mathbb R^3}
\Sigma_\ell^{meso}(x,t)\,\tau_\ell^{H^1}[u](x,t)\,dx\,
\frac{d\ell}{\ell}.
```

It does **not** prove the final barrier estimate. What it proves is the exact
continuum decomposition one would need in order to prove it from the current
Euclidean surface:

1. a bounded-width near-corona term, reducible to a moving spill packet;
2. a far-corona term carrying an explicit scale-ratio kernel `\ell/r`, the
   continuous analogue of the dyadic gap factor `2^{-(j-k)}`.

So this note answers the question:

```math
\text{what would a non-shell proof of }\Pi_N^{mid}\text{ have to look like?}
```

## Setup

Let `s=\log\ell`. Keep the middle-band localization from
`lifted-band-mesoscopic-residual-reduction-lemma.md`.

Write the mesoscopic drift as

```math
b_\ell^{meso}
=
P_{\le c/\ell}u - P_{\le 2^{N+M}}u.
```

Fix a logarithmic corona width `L\ge 4`. Split the drift into

```math
b_\ell^{meso}
=
b_\ell^{near,L} + b_\ell^{far,L},
```

where:

```math
b_\ell^{near,L}
:=
P_{\le c/\ell}u - P_{\le c e^{-L}/\ell}u,
```

```math
b_\ell^{far,L}
:=
P_{\le c e^{-L}/\ell}u - P_{\le 2^{N+M}}u.
```

Thus `b_\ell^{near,L}` occupies only a bounded logarithmic collar below the
active scale `\ell^{-1}`, while `b_\ell^{far,L}` lies a definite spectral gap
below it.

Define the corresponding strain pieces

```math
\Sigma_\ell^{near,L} := \rho_\ell * |\nabla b_\ell^{near,L}|,
\qquad
\Sigma_\ell^{far,L} := \rho_\ell * |\nabla b_\ell^{far,L}|.
```

Then

```math
\Pi_N^{mid}
=
\Pi_N^{mid,near,L}
+ \Pi_N^{mid,far,L},
```

with

```math
\Pi_N^{mid,near,L}(t)
:=
\int_0^{\ell_N}
\chi_{mid}(\log\ell)
\int
\Sigma_\ell^{near,L}\,\tau_\ell^{H^1}[u]
\,dx\,\frac{d\ell}{\ell},
```

```math
\Pi_N^{mid,far,L}(t)
:=
\int_0^{\ell_N}
\chi_{mid}(\log\ell)
\int
\Sigma_\ell^{far,L}\,\tau_\ell^{H^1}[u]
\,dx\,\frac{d\ell}{\ell}.
```

## Lemma A: near corona is a moving spill packet

For each fixed `L`, the near-corona term is a bounded-width same-scale packet.
More precisely,

```math
\Pi_N^{mid,near,L}
\equiv
\Pi_N^{mov\text{-}spill,L}
\quad \mod \mathscr A_{collar},
\tag{1}
```

where `\Pi_N^{mov\text{-}spill,L}` is the continuum moving-window analogue of
the same-scale spill packet.

### Proof

By construction, `b_\ell^{near,L}` contains only frequencies in the finite
window

```math
c_- e^{-L}\ell^{-1}\le |\xi| \le c_+\ell^{-1}.
```

So `\nabla b_\ell^{near,L}` is supported in a bounded-width corona adjacent to
the active scale `\ell^{-1}`. In the scalarized commutator/stress pairing,
this is exactly the same geometric situation as the threshold-local spill
packet, except with a moving lower edge. The companion note
`moving-spill-fixed-offset-reduction-lemma.md`
makes this precise by decomposing the bounded ratio interval into a finite
family of fixed annular offsets `b_{\ell,m}=T_m(\ell D)u`, and then reducing
each fixed-offset contribution to a same-scale edge packet modulo admissible
collar errors.

This proves `(1)`.

## Lemma B: far corona carries an explicit gap kernel

For the far-corona contribution to the commutator/stress flux, the required
kernel bound is

```math
\Sigma_\ell^{far,L}(x,t)
\le C_L
\int_{e^{L}\ell}^{\ell_{bot}}
\frac{\ell}{r}\,
\widetilde\Sigma_r(x,t)\,
\frac{dr}{r},
\tag{2}
```

where `c_b2^{-(N+M)}\le\ell_{bot}\le C_b2^{-(N+M)}` and
`\widetilde\Sigma_r` is the normalized far-band strain density
`r|\nabla \widetilde Q_r u|`, after convolution against kernels with uniformly
bounded `L^1` mass.

### Proof

Write the far drift as a continuous LP superposition over scales strictly
below the active edge:

```math
b_\ell^{far,L}
=
\int_{e^{L}\ell}^{\ell_{bot}} \widetilde Q_r u \,\frac{dr}{r},
```

for a smooth band-pass family `\widetilde Q_r` supported in
`c_Q r^{-1}\le |\xi|\le C_Q r^{-1}`.
Then

```math
\nabla b_\ell^{far,L}
=
\int_{e^{L}\ell}^{\ell_{bot}} \nabla\widetilde Q_r u \,\frac{dr}{r}.
```

When the \(r\)-band field \(f_r=\widetilde Q_r u\) is inserted into the
commutator kernel at active scale `\ell`, the exact increment is

```math
f_r(x+h)-f_r(x)
=
\int_0^1 h\cdot\nabla f_r(x+\theta h)\,d\theta .
```

On the kernel support, \(|h|\le C_\rho\ell\).  Hence

```math
|f_r(x+h)-f_r(x)|
\le
C_\rho\frac{\ell}{r}
\int_0^1 r|\nabla f_r(x+\theta h)|\,d\theta .
```

Convolution in \(h\) against the radius-\(\ell\) averaging kernel produces
`(2)`, with `\widetilde\Sigma_r` equal to the convolved normalized density
`r|\nabla \widetilde Q_r u|`.  No linear profile for the \(r\)-band field is
assumed; all profile dependence remains inside that normalized density.

So the far-corona transport loses efficiency with spectral gap in the
continuous variable by the explicit kernel `\ell/r`.

## Corollary: continuum Hardy-type reduction

Substituting `(2)` into the far flux gives

```math
\Pi_N^{mid,far,L}(t)
\le C_L
\int_0^{\ell_N}
\chi_{mid}(\log\ell)
\int
\Bigg[
\int_{e^{L}\ell}^{\ell_{bot}}
\frac{\ell}{r}\,\widetilde\Sigma_r(x,t)\,\frac{dr}{r}
\Bigg]
\tau_\ell^{H^1}[u](x,t)\,dx\,\frac{d\ell}{\ell}.
\tag{3}
```

So the middle-band flux theorem is reduced to a continuum Hardy/Schur estimate
for the scale-ratio kernel `\ell/r`, together with the moving spill control
for the near-corona term.

## Conditional Hardy/Schur barrier lemma

Assume the far-corona transport-stress density in `(3)` admits a factorization

```math
\mathcal A_{\ell,r}(t)\le U(\ell,t)\,V(r,t),
\qquad r\ge c_1\ell,
\tag{4a}
```

such that

```math
\int_0^T\int_0^{\ell_N}
U(\ell,t)^2\,\frac{d\ell}{\ell}\,dt
\le
C_U\int_0^T D_N(t)\,dt,
\tag{4b}
```

and

```math
\int_0^T\int_{\ell\le r/c_1}
V(r,t)^2\,\frac{dr}{r}\,dt
\le
C_V\,2^{-2\delta N}.
\tag{4c}
```

Then

```math
\int_0^T \Pi_N^{mid,far,L}(t)\,dt
\le
\frac{\eta\nu}{16}\int_0^T D_N(t)\,dt
+
C_*2^{-2\delta N},
\tag{4d}
```

after choosing constants so that `C_U C_V` is absorbed into the indicated
barrier form.

### Proof

The scale-ratio kernel

```math
K(\ell,r):=\mathbf 1_{r\ge c_1\ell}\frac{\ell}{r}
```

has bounded Schur norms on the measure spaces `d\ell/\ell` and `dr/r`:

```math
\sup_\ell \int_{c_1\ell}^{\infty} K(\ell,r)\,\frac{dr}{r}
\le C_{c_1},
\qquad
\sup_r \int_0^{r/c_1} K(\ell,r)\,\frac{d\ell}{\ell}
\le C_{c_1}.
```

So Schur's test and Cauchy-Schwarz give

```math
\int_0^T \Pi_N^{mid,far,L}(t)\,dt
\le C
\Bigg(
\int_0^T\int_0^{\ell_N}U(\ell,t)^2\,\frac{d\ell}{\ell}\,dt
\Bigg)^{1/2}
\Bigg(
\int_0^T\int_{\ell\le r/c_1}V(r,t)^2\,\frac{dr}{r}\,dt
\Bigg)^{1/2}.
```

Substituting `(4b)` and `(4c)` yields `(4d)`.

## Exact remaining open theorem

The previous lemma shows that once the kernel `\ell/r` is exposed, the
Hardy/Schur summation itself is no longer the real obstruction. The remaining
open theorem is the far-scale square/Carleson input `(4c)` (or any equivalent
one-sided square theorem strong enough to supply it).

In that precise sense, the middle-band frontier is now:

```math
\text{moving spill theorem}
\quad+\quad
\text{one-sided square input for the far corona}.
```

Equivalently, the open theorem may be phrased directly on the two-scale
density `\mathcal A_{\ell,r}`. What is **not** enough by itself is a square
bound only on the strain factor `\widetilde\Sigma_r`: the Schur step needs
either a genuine factorization `\mathcal A_{\ell,r}\le U(\ell)V(r)` with `V`
independent of `\ell`, or a direct one-sided square / Carleson estimate on the
two-scale transport-stress density itself.

## Exact theorem target

The middle-band flux closes once one proves

```math
\int_0^T \Pi_N^{mid}(t)\,dt
\le
\frac{\eta\nu}{8}\int_0^T D_N(t)\,dt
+
C_*2^{-2\delta N}.
\tag{MBF}
```

By the previous lemmas, a sufficient route to `(MBF)` is:

1. uniform moving-spill control for `\Pi_N^{mid,near,L}`;
2. a continuum square/Hardy theorem controlling `(3)` at the same barrier
   scale.

## Missing links from reduction to closure

The reduction above leaves exactly four explicit links between the structural
decomposition and the final middle-band barrier estimate.

### Link 1: near corona becomes a moving spill family

The bounded-width near corona gives

```math
\Pi_N^{mid,near,L}
=
\Pi_N^{mov\text{-}spill,L}
+ \mathcal E^{near}_{collar},
\tag{5a}
```

with `\mathcal E^{near}_{collar}\in\mathscr A_{collar}`. This is already
proved at the reduction level: the near corona is a same-scale moving packet,
not a new large-gap interaction.

### Link 2: moving spill theorem

What is still open on the near side is the quantitative barrier theorem

```math
\int_0^T \Pi_N^{mov\text{-}spill,L}(t)\,dt
\le
\frac{\eta\nu}{16}\int_0^T D_N(t)\,dt
+ C_{L,*}2^{-2\delta N}.
\tag{5b}
```

So the near piece is reduced, but not yet closed.

### Link 3: far corona becomes a kernelized two-scale density

Define the far-corona transport-stress density by

```math
\mathcal A_{\ell,r}(t)
:=
\chi_{mid}(\log\ell)
\int_{\mathbb R^3}
\widetilde\Sigma_r(x,t)\,\tau_\ell^{H^1}[u](x,t)\,dx,
\qquad r\ge c_1\ell.
\tag{5c}
```

Then `(3)` becomes the exact kernel reduction

```math
\Pi_N^{mid,far,L}(t)
\le C_L
\int_0^{\ell_N}\int_{r\ge c_1\ell}
\frac{\ell}{r}\,\mathcal A_{\ell,r}(t)\,
\frac{dr}{r}\,\frac{d\ell}{\ell}.
\tag{5d}
```

This is the precise continuum shadow of the old dyadic gap factor
`2^{-(j-k)}`.

### Link 4: one-sided square / Carleson theorem on the two-scale density

The final missing implication is **not** a square bound on
`\widetilde\Sigma_r` by itself. What is needed is a theorem strong enough to
control the kernelized bilinear form `(5d)`. A sufficient version is:

there exist nonnegative `U(\ell,t)` and `V(r,t)` such that

```math
\mathcal A_{\ell,r}(t)\le U(\ell,t)V(r,t),
\qquad r\ge c_1\ell,
\tag{5e}
```

with

```math
\int_0^T\int_0^{\ell_N} U(\ell,t)^2\,\frac{d\ell}{\ell}\,dt
\le
C_U \int_0^T D_N(t)\,dt,
\tag{5f}
```

and

```math
\int_0^T\int_{\ell\le r/c_1} V(r,t)^2\,\frac{dr}{r}\,dt
\le
C_V 2^{-2\delta N}.
\tag{5g}
```

Then Hardy/Schur closes the far corona:

```math
\int_0^T \Pi_N^{mid,far,L}(t)\,dt
\le
\frac{\eta\nu}{16}\int_0^T D_N(t)\,dt
+ C_*2^{-2\delta N}.
\tag{5h}
```

Any direct one-sided Carleson theorem on `\mathcal A_{\ell,r}` that implies
`(5h)` may replace the factorized input `(5e)`-`(5g)`. But the open theorem
must live on the coupled two-scale density `\mathcal A_{\ell,r}`, not on a
one-scale shadow such as `\widetilde\Sigma_r` alone.

## Reduced closure package

Combining `(5a)`-`(5h)`, the middle-band theorem closes once one proves just
two genuinely new ingredients:

1. the moving spill theorem `(5b)`;
2. a one-sided square / Carleson theorem on the far-corona two-scale density
   `\mathcal A_{\ell,r}` strong enough to imply `(5h)`.

## What this does not justify

Two tempting stronger claims are **not** currently justified by the reduction.

First, the near-corona theorem is not proved merely by observing that
`\Pi_N^{mov\text{-}spill,L}` is a same-scale trilinear family. A naive
Bernstein bound on a same-scale packet loses the active scale and does not by
itself yield the barrier estimate `(5b)`. So the moving-spill theorem remains
an open theorem, not an already-discharged corollary of the reduction.

Second, the far-corona theorem is not equivalent to a square bound on a
one-scale shadow such as

```math
\left(\sum_{j\le k(r)}2^{5j/2}\|\Delta_j u\|_2^2\right)^2.
```

Such a bound may arise from a crude Hölder-Bernstein collapse of the
two-scale density, and it would indeed be sufficient if proved. But it is only
one possible sufficient overestimate. It is not the exact theorem surface.
The exact remaining theorem still lives on the coupled two-scale density
`\mathcal A_{\ell,r}` in `(5c)` and on the moving packet `\Pi_N^{mov\text{-}spill,L}`.

## Interpretation

This is the continuum replacement for the old dyadic gap-kernel route.

- Near the active edge, the interior flux is just a moving same-scale collar.
- Far below the active edge, transfer carries an explicit loss `\ell/r`.

So the middle band is not featureless. It already splits into:

```math
\text{moving spill}
\quad+\quad
\text{gap-damped far transport}.
```

## Honest boundary

This note does **not** prove the final Hardy/square theorem for `(3)`.

What it does prove is that solving `\Pi_N^{mid}` does not require inventing a
new undefined object. It requires closing exactly two continuum ingredients:

1. a moving-window spill theorem;
2. a continuum one-sided square theorem for the far-corona transport-stress
   density, after which the `\ell/r` kernel is handled by Hardy/Schur.

The companion note `far-corona-carleson-direct-attack.md` now pushes directly
on the exact far-corona Carleson object and records the first two direct
failed proof surfaces: the quartic weighted tail shadow produced by the
`L^\infty_x\times L^1_x` attack, and the weighted `L^2_x` stress theorem
produced by the `L^2_x\times L^2_x` attack.
