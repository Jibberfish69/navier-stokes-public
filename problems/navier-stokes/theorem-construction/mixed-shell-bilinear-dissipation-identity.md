# Mixed-Shell Bilinear Dissipation Identity

## Purpose

This note records a new exact PDE identity for the bilinear dissipation-tail
object itself.

Unlike the earlier routes that passed directly to unsigned carriers, this
identity hits the weighted bilinear term

```math
K_{j,\ell}^\sigma\,D_jD_\ell,
\qquad
K_{j,\ell}^\sigma:=2^{(1+\sigma)j-\sigma\ell},
\qquad
j\le \ell,
```

directly on the left-hand side of an exact mixed-shell evolution law.

## Shellwise `H^1` Identity

Work on the exact Euclidean Navier-Stokes surface and write, for each shell
`m`,

```math
E_m(t):=2^{2m}\|\Delta_m u(t)\|_{L_x^2}^2,
\qquad
D_m(t):=2^{4m}\|\Delta_m u(t)\|_{L_x^2}^2,
```

with shellwise identity

```math
\partial_t E_m(t)+\nu D_m(t)=\mathcal N_m(t).
\tag{1}
```

## Mixed-Shell Weight

For `j\le \ell`, define

```math
K_{j,\ell}^\sigma:=2^{(1+\sigma)j-\sigma\ell},
\qquad
M_{j,\ell}^\sigma:=2^{2j}K_{j,\ell}^\sigma\,E_jE_\ell
=
2^{(3+\sigma)j-\sigma\ell}E_jE_\ell.
```

The choice of `M_{j,\ell}^\sigma` is forced by the desire to place the
bilinear target `K_{j,\ell}^\sigma D_jD_\ell` directly on the dissipative
side.

## Exact Identity

Multiply `(1)` for shell `j` by `2^{2j}K_{j,\ell}^\sigma E_\ell`, and `(1)`
for shell `\ell` by `2^{2j}K_{j,\ell}^\sigma E_j`, then add. This yields

```math
\partial_t M_{j,\ell}^\sigma
+
\nu\,2^{2j}K_{j,\ell}^\sigma\big(D_jE_\ell + E_jD_\ell\big)
=
2^{2j}K_{j,\ell}^\sigma\big(\mathcal N_jE_\ell + E_j\mathcal N_\ell\big).
\tag{2}
```

Now use `D_m=2^{2m}E_m`. Then

```math
2^{2j}K_{j,\ell}^\sigma E_jD_\ell
=
K_{j,\ell}^\sigma D_jD_\ell,
```

while

```math
2^{2j}K_{j,\ell}^\sigma D_jE_\ell
=
2^{-2(\ell-j)}K_{j,\ell}^\sigma D_jD_\ell.
```

So `(2)` becomes the exact mixed-shell bilinear identity

```math
\partial_t M_{j,\ell}^\sigma
+
\nu\bigl(1+2^{-2(\ell-j)}\bigr)K_{j,\ell}^\sigma D_jD_\ell
=
2^{(3+\sigma)j-\sigma\ell}\big(\mathcal N_jE_\ell + E_j\mathcal N_\ell\big).
\tag{3}
```

This is the new PDE structure.

## Direct Consequence

Integrating `(3)` on `[0,T]` gives

```math
\nu\int_0^T
\bigl(1+2^{-2(\ell-j)}\bigr)K_{j,\ell}^\sigma D_jD_\ell\,dt
=
M_{j,\ell}^\sigma(0)-M_{j,\ell}^\sigma(T)
+
\int_0^T
2^{(3+\sigma)j-\sigma\ell}\big(\mathcal N_jE_\ell + E_j\mathcal N_\ell\big)\,dt.
\tag{4}
```

So the bilinear target no longer has to be guessed or reconstructed from
positive tail convolutions: it sits directly on the left-hand side of an exact
identity.

## One-Sided Summed Identity

Now sum `(3)` over the one-sided region `N<j\le \ell`. Define

```math
\mathfrak M_N^\sigma(t)
:=
\sum_{N<j\le \ell}M_{j,\ell}^\sigma(t),
```

```math
\mathfrak B_N^\sigma(t)
:=
\sum_{N<j\le \ell}
\bigl(1+2^{-2(\ell-j)}\bigr)K_{j,\ell}^\sigma D_j(t)D_\ell(t),
```

```math
\mathfrak X_N^\sigma(t)
:=
\sum_{N<j\le \ell}
2^{(3+\sigma)j-\sigma\ell}\bigl(\mathcal N_j(t)E_\ell(t)+E_j(t)\mathcal N_\ell(t)\bigr).
```

Then the exact summed mixed-shell identity is

```math
\partial_t \mathfrak M_N^\sigma(t)+\nu \mathfrak B_N^\sigma(t)=\mathfrak X_N^\sigma(t).
\tag{5}
```

So the branch is now reduced to a single PDE object:

```math
\text{control }\mathfrak X_N^\sigma\text{ at the barrier scale after summing over }N<j\le \ell.
```

## Packetwise Decomposition Of The Mixed Nonlinear Term

Decompose `\mathcal N_\ell` relative to the lower threshold `j` into

```math
\mathcal N_\ell
=
\mathcal N_{\ell,\mathrm{strict}(j)}
+
\mathcal N_{\ell,\mathrm{spill}(j)}
+
\mathcal N_{\ell,\mathrm{lift}(j)}
+
\mathcal N_{\ell,\mathrm{HH}(j)}.
```

Likewise decompose `\mathcal N_j` relative to its own shell threshold `j`:

```math
\mathcal N_j
=
\mathcal N_{j,\mathrm{strict}(j)}
+
\mathcal N_{j,\mathrm{spill}(j)}
+
\mathcal N_{j,\mathrm{lift}(j)}
+
\mathcal N_{j,\mathrm{HH}(j)}.
```

Then write

```math
\mathfrak X_N^\sigma
=
\mathfrak X_{N,\mathrm{strict}}^\sigma
+
\mathfrak X_{N,\mathrm{spill}}^\sigma
+
\mathfrak X_{N,\mathrm{lift}}^\sigma
+
\mathfrak X_{N,\mathrm{HH}}^\sigma,
\tag{6}
```

where each packet is the sum of its `j`-side and `\ell`-side contributions.

## Strict And Spill Become Lower-Order

Using the shellwise bounds

```math
|\mathcal N_{m,\mathrm{strict}(j)}|
\le
C\,A_j\,E_m+\varepsilon\nu D_m,
```

```math
|\mathcal N_{m,\mathrm{spill}(j)}|
\le
C\,B_j\,E_m+\varepsilon\nu D_m,
```

for `m=j,\ell`, one obtains directly

```math
|\mathfrak X_{N,\mathrm{strict}}^\sigma(t)|
\le
C\sum_{N<j\le \ell}A_j(t)\,M_{j,\ell}^\sigma(t)
+
\varepsilon\nu\,\mathfrak B_N^\sigma(t),
\tag{7}
```

and similarly

```math
|\mathfrak X_{N,\mathrm{spill}}^\sigma(t)|
\le
C\sum_{N<j\le \ell}B_j(t)\,M_{j,\ell}^\sigma(t)
+
\varepsilon\nu\,\mathfrak B_N^\sigma(t).
\tag{8}
```

So strict and spill are no longer theorem-primary on the mixed-shell route:
they feed only the mixed boundary functional `\mathfrak M_N^\sigma` and an
absorbable fraction of `\mathfrak B_N^\sigma`.

## The Mixed Boundary Term Is Barrier-Sized

The mixed boundary term is not a live theorem burden once the classical target
class is fixed.

Because the theorem target uses smooth compactly supported divergence-free
initial data, `u_0` belongs to `H^s(R^3)` for every `s>0`. Hence for each
fixed `s`,

```math
E_m(0)
=
2^{2m}\|\Delta_m u_0\|_{L_x^2}^2
\le C_s
2^{2m}2^{-2sm}
=
C_s\,2^{-2(s-1)m}.
\tag{9}
```

Therefore

```math
M_{j,\ell}^\sigma(0)
\le C_s'
2^{(3+\sigma)j-\sigma\ell}
2^{-2(s-1)j}
2^{-2(s-1)\ell}
=
C_s'\,
2^{(5+\sigma-2s)j}
2^{(2-\sigma-2s)\ell}.
```

Choose `s` so large that `2s+\sigma-2>0` and `4s-7>2\delta`. Then summing
over `N<j\le \ell` yields

```math
\mathfrak M_N^\sigma(0)
\le C_{s,\sigma}
\sum_{j>N}2^{(5+\sigma-2s)j}
\sum_{\ell\ge j}2^{(2-\sigma-2s)\ell}
\le
C_*2^{-2\delta N}.
\tag{10}
```

Since `M_{j,\ell}^\sigma(T)\ge 0` termwise, the boundary contribution in `(4)`
is one-sided:

```math
\mathfrak M_N^\sigma(0)-\mathfrak M_N^\sigma(T)
\le
\mathfrak M_N^\sigma(0)
\le
C_*2^{-2\delta N}.
\tag{11}
```

So the mixed boundary term is already barrier-sized on the classical target
class.

## Exact Signed Mixed-Shell Exchange Block

The decisive new term is the lifted exchange block. For `j<\ell` and
`j+M<k<\ell-4`, define the pairwise interaction

```math
\mathcal I_{j;k,\ell}(t)
:=
\big\langle \Delta_j(\Delta_k u(t)\cdot\nabla \Delta_\ell u(t)),\,\Delta_j u(t)\big\rangle.
```

Then the corresponding piece of `\mathfrak X_N^\sigma` is

```math
\mathfrak X_{N,\mathrm{ex}}^\sigma(t)
:=
\sum_{N<j<\ell}
2^{(3+\sigma)j-\sigma\ell}
\sum_{j+M<k<\ell-4}
\bigl(\mathcal I_{j;k,\ell}(t)E_\ell(t)+E_j(t)\mathcal I_{\ell;k,j}(t)\bigr).
\tag{16}
```

Using the exact shell antisymmetry

```math
\mathcal I_{j;k,\ell}+\mathcal I_{\ell;k,j}=0,
```

this becomes the exact signed mixed-shell exchange identity

```math
\mathfrak X_{N,\mathrm{ex}}^\sigma(t)
=
\sum_{N<j<\ell}
2^{(3+\sigma)j-\sigma\ell}
\sum_{j+M<k<\ell-4}
\bigl(E_\ell(t)-E_j(t)\bigr)\mathcal I_{j;k,\ell}(t).
\tag{17}
```

This is the first place where a new mixed-shell cancellation law could still
live. If one passes to absolute values here, the factor `E_\ell-E_j` is lost
and the route collapses back to the positive carriers already known not to
close.

## Off-Diagonal Support Audit: The Exchange Block Vanishes

The sign question for `(17)` is removed by support geometry: in the declared
Littlewood-Paley geometry the bare pairwise interaction vanishes before sign
can matter.

There exists a universal Littlewood-Paley collar width `M_{\mathrm{LP}}` such
that if `\ell\ge k+M_{\mathrm{LP}}`, then
`\Delta_k u\cdot\nabla\Delta_\ell u` has Fourier support contained in an
annulus

```math
c_{LP}2^\ell\le |\xi|\le C_{LP}2^\ell
```

with constants fixed by the cutoff system. Therefore

```math
\Delta_j(\Delta_k u\cdot\nabla\Delta_\ell u)=0
\qquad\text{unless}\qquad
|j-\ell|\le M_{\mathrm{LP}}.
\tag{18}
```

Replace the collar once and for all by

```math
M':=\max\{M,M_{\mathrm{LP}}\}.
\tag{18a}
```

Reading the mixed-shell exchange geometry as `j+M'<k<\ell-4` forces

```math
\mathcal I_{j;k,\ell}(t)=0.
\tag{19}
```

Hence the exact signed exchange block in `(17)` vanishes termwise:

```math
\mathfrak X_{N,\mathrm{ex}}^\sigma(t)=0.
\tag{20}
```

So there is no remaining sign determination to perform for the bare
`\mathcal I_{j;k,\ell}` block on this route. Any genuinely nontrivial signed
theorem would have to live on a commutatorized lifted remainder, not on the
bare off-diagonal shell exchange itself.

## Mixed High-High Is Absorbable

The residual high-high packet is also no longer theorem-primary on the
mixed-shell route.

Fix `m`. By the same near-diagonal support reduction used in
`gradient-high-high-near-diagonal-reduction-lemma.md`, the genuine high-high
piece satisfies

```math
|\mathcal N_{m,\mathrm{HH}}(t)|
\le C_M
\sum_{|r-m|\le M}
2^{3m}
\|\Delta_r u(t)\|_{L_x^2}
\|\widetilde\Delta_r u(t)\|_{L_x^2}
\|\Delta_m u(t)\|_{L_x^2}
\le C_M'
2^{3m}\|\Delta_m u(t)\|_{L_x^2}^3.
\tag{12}
```

Using the global energy bound `\|\Delta_m u(t)\|_{L_x^2}\le C_E^{1/2}`, this
becomes the shellwise smallness

```math
|\mathcal N_{m,\mathrm{HH}}(t)|
\le
C_{HH}C_E^{1/2}2^{-m}D_m(t).
\tag{13}
```

Choose `N_*` so that the coefficient in `(13)` is at most `\varepsilon\nu/8`
for every `m\ge N_*-M`. Then for all `N\ge N_*` and all `m\ge N-M`,

```math
|\mathcal N_{m,\mathrm{HH}}(t)|
\le
\frac{\varepsilon\nu}{8}D_m(t).
\tag{14}
```

Insert `(14)` on both the `j`-side and the `\ell`-side of the mixed-shell
sum. Using

```math
2^{(3+\sigma)j-\sigma\ell}D_jE_\ell
=
2^{-2(\ell-j)}K_{j,\ell}^\sigma D_jD_\ell,
```

and

```math
2^{(3+\sigma)j-\sigma\ell}E_jD_\ell
=
K_{j,\ell}^\sigma D_jD_\ell,
```

one gets

```math
|\mathfrak X_{N,\mathrm{HH}}^\sigma(t)|
\le
\frac{\varepsilon\nu}{8}
\sum_{N<j\le \ell}
\bigl(1+2^{-2(\ell-j)}\bigr)
K_{j,\ell}^\sigma D_j(t)D_\ell(t)
\le
\frac{\varepsilon\nu}{8}\mathfrak B_N^\sigma(t).
\tag{15}
```

So the mixed high-high packet is spendable through the displayed
`\varepsilon\nu/8` fraction of the bilinear dissipation term, after the cutoff
is large enough for `(15)` to hold.

## What Is Now The Exact Burden

After `(7)`, `(8)`, `(11)`, `(15)`, and `(20)`, the mixed-shell route is
sharpened to the already-accepted coefficient-driven growth terms alone:

1. the lower-order strict terms against `\mathfrak M_N^\sigma`;
2. the lower-order spill terms against `\mathfrak M_N^\sigma`.

So the precise next proof attempt is no longer abstract:

```math
\text{treat the mixed-shell route entirely by the established coefficient surface, with no surviving bare signed exchange block.}
```

## What This Buys

Equation `(3)` is the first exact PDE identity on the branch that produces the
desired weighted bilinear dissipation term itself.  The extra multiplier is
bounded explicitly by

```math
1\le 1+2^{-2(\ell-j)}\le 2,
```

so it changes only the absolute constant in the weighted dissipation term.

So the branch-level question is sharpened to:

```math
\text{can the strict/spill coefficient route control }\mathfrak M_N^\sigma\text{ strongly enough once boundary, high-high, and bare exchange are removed?}
```

This is a more concrete burden than the earlier positive-carrier routes,
because the target bilinear form is now built into the PDE exactly.

## Global-Object Audit

The correct “treat it as one object” formulation is already `(5)`.

It is **not** a new symmetric functional built directly from `D_jD_\ell`.
The PDE-natural global object is the mixed quadratic tail
`\mathfrak M_N^\sigma`, with dissipation `\mathfrak B_N^\sigma` and nonlinear
remainder `\mathfrak X_N^\sigma`.

If one inserts the conditional lifted shell bound on the `\ell`-side relative to
the lower threshold `j`,

```math
|\mathcal N_{\ell,\mathrm{lift}(j)}(t)|
\le C_{lift}
\sum_{j+M<k<\ell-4} a_k(t)\,D_\ell(t),
\qquad
a_k(t):=2^{3k/2}\|\Delta_k u(t)\|_{L_x^2},
```

then the exact mixed weight gives

```math
2^{(3+\sigma)j-\sigma\ell}E_j(t)\,|\mathcal N_{\ell,\mathrm{lift}(j)}(t)|
\le C_{\sigma,lift}
\sum_{j+M<k<\ell-4}
a_k(t)\,K_{j,\ell}^\sigma\,D_j(t)D_\ell(t).
\tag{21}
```

So the one-object formulation does not eliminate the old obstruction. It
exposes it cleanly:

```math
\text{lower-shell amplitude }a_k
\quad\text{drives}\quad
\text{the upper-shell bilinear dissipation density }K_{j,\ell}^\sigma D_jD_\ell.
```

In this exact sense, the global formulation confirms that the old shellwise
obstruction was structural rather than an artifact of local bookkeeping.

## Strict Low Actually Absorbs

The strict-low packet is no longer part of the live mixed-shell burden.

From the global energy bound,

```math
A_j(t)
=
\sum_{k\le j-4}2^{5k/2}\|\Delta_k u(t)\|_{L_x^2}
\le C_A
2^{3j/2}\|u(t)\|_{L_x^2}
\le C_A'
C_E^{1/2}2^{3j/2}.
\tag{22}
```

For each `j\le \ell`, write

```math
\mathfrak B_{j,\ell}^\sigma
:=
\bigl(1+2^{-2(\ell-j)}\bigr)K_{j,\ell}^\sigma D_jD_\ell
=
\bigl(2^{2\ell}+2^{2j}\bigr)M_{j,\ell}^\sigma.
```

Hence

```math
2^{2j}M_{j,\ell}^\sigma
\le
\mathfrak B_{j,\ell}^\sigma.
\tag{23}
```

Combining `(22)` and `(23)` gives

```math
A_j(t)M_{j,\ell}^\sigma(t)
\le
C_A'C_E^{1/2}2^{-j/2}\,2^{2j}M_{j,\ell}^\sigma(t)
\le
C_E^{1/2}2^{-N/2}\,\mathfrak B_{j,\ell}^\sigma(t)
\tag{24}
```

for all `j>N`. Choosing `N_*` large enough makes the coefficient in `(24)` at
most `\varepsilon\nu/8`, so

```math
|\mathfrak X_{N,\mathrm{strict}}^\sigma(t)|
\le
\frac{\varepsilon\nu}{8}\mathfrak B_N^\sigma(t).
\tag{25}
```

So the strict-low packet is absorbable on the mixed-shell route.

## What Still Fails On The Current Surface

The identity does not close automatically from the inherited Euclidean inputs.

The identity is still not self-closing from the inherited Euclidean inputs,
because the remaining spill term drives the mixed boundary functional
`\mathfrak M_N^\sigma` through a coefficient-weighted growth law. But four
earlier branch burdens are now gone:

1. the boundary term is one-sided and barrier-sized by `(11)`;
2. the residual mixed high-high packet is absorbable by `(15)`.
3. the bare signed mixed-shell exchange block vanishes by `(20)`.
4. the strict-low packet is absorbable by `(25)`.

So after the packetwise decomposition above, the genuinely new content is no
longer “boundary plus nonlinear term,” and it is no longer a signed-exchange
theorem either. It is only the spill coefficient surface.

Indeed, using

```math
B_j(t)
=
2^{3j}\sum_{m=j-M}^{j+M}\|\Delta_m u(t)\|_{L_x^2}^2
```

and the fixed-collar comparison gives

```math
B_j(t)
\le
2^{2M}
\Big(2^{-j}\sum_{m=j-M}^{j+M}E_m(t)\Big)2^{2j},
```

one gets from `(23)` only

```math
B_j(t)M_{j,\ell}^\sigma(t)
\le 2^{2M}
\Big(2^{-j}\sum_{m=j-M}^{j+M}E_m(t)\Big)\,
\mathfrak B_{j,\ell}^\sigma(t).
\tag{26}
```

The current Euclidean inputs give no pointwise smallness theorem for the local
collar coefficient

```math
2^{-j}\sum_{m=j-M}^{j+M}E_m(t),
```

so the spill packet survives as the exact remaining mixed-shell coefficient
burden.

## Relation To The Signed-Flux Branch

This identity sits beside
`weighted-signed-shell-exchange-sum-theorem.md`.

- that note isolates the only remaining chance for cancellation before
  absolute values are introduced;
- the present note isolates the exact PDE identity that produces the bilinear
  dissipation target itself.

So the branch now has two exact PDE objects:

1. the SDS-weighted signed shell exchange;
2. the mixed-shell bilinear dissipation identity with boundary and high-high
   and bare exchange and strict-low already reduced away.

Either the signed exchange collapses by cancellation, or the right-hand side of
`(4)` is controlled by the remaining spill coefficient route. Without one of
those two mechanisms, the branch does not close.

## Honest Boundary

This note proves `(3)`, records `(4)`, and closes four previously open pieces:
the mixed boundary term, the mixed high-high packet, the bare off-diagonal
exchange block, and the strict-low packet. It does not yet control the
surviving spill coefficient burden.
