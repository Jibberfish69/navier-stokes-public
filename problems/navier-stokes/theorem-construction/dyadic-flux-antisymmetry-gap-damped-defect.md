# Dyadic Flux Antisymmetry With Gap-Damped Defect

## Purpose

This note records the concrete deterministic mechanism candidate behind the new
cross-scale decorrelation branch.

The branch-level principle is:

```math
\textbf{cross-scale flux is almost antisymmetric, and the defect from antisymmetry is gap-damped.}
```

This is the sharp PDE form of the idea that alignment and dissonance coexist:
interactions reinforce, but their net gain is capped by an antisymmetry defect
rather than by raw worst-case magnitude.

## Shellwise Interaction Object

Define

```math
E_j(t):=2^{2j}\|\Delta_j u(t)\|_{L_x^2}^2,
\qquad
D_j(t):=2^{4j}\|\Delta_j u(t)\|_{L_x^2}^2.
```

Write the shellwise nonlinear `H^1` term as

```math
\mathcal N_j(t)
:=
2^{2j}\langle \Delta_j(u\cdot\nabla u),\Delta_j u\rangle.
```

Refine it into pairwise dyadic interactions:

```math
\mathcal N_j
=
\sum_{k,\ell}\mathcal I_{j;k,\ell},
\qquad
\mathcal I_{j;k,\ell}
:=
2^{2j}\langle \Delta_j(\Delta_k u\cdot\nabla\Delta_\ell u),\Delta_j u\rangle.
```

The lifted regime is the one-sided band

```math
j+M<k<\ell-4.
```

## Exact Unweighted Exchange Identity

For a fixed divergence-free advecting field `a_k:=\Delta_k u`, define

```math
\mathfrak F_{j,\ell;k}
:=
\big\langle \Delta_j(a_k\cdot\nabla \Delta_\ell u),\,\Delta_j u\big\rangle
+
\big\langle \Delta_\ell(a_k\cdot\nabla \Delta_j u),\,\Delta_\ell u\big\rangle.
```

Then one has the exact antisymmetry identity

```math
\mathfrak F_{j,\ell;k}=0.
\tag{A}
```

Proof:
because `\Delta_j u=\Delta_j(\Delta_j u)` and `\Delta_\ell u=\Delta_\ell(\Delta_\ell u)`,
self-adjointness of the Littlewood-Paley projectors gives

```math
\big\langle \Delta_j(a_k\cdot\nabla \Delta_\ell u),\,\Delta_j u\big\rangle
=
\big\langle a_k\cdot\nabla \Delta_\ell u,\,\Delta_j u\big\rangle,
```

```math
\big\langle \Delta_\ell(a_k\cdot\nabla \Delta_j u),\,\Delta_\ell u\big\rangle
=
\big\langle a_k\cdot\nabla \Delta_j u,\,\Delta_\ell u\big\rangle.
```

Summing and integrating by parts,

```math
\mathfrak F_{j,\ell;k}
=
\int_{\mathbb R^3} a_k\cdot\nabla(\Delta_\ell u\cdot\Delta_j u)\,dx
=0
```

because `\nabla\cdot a_k=0`. So the bare shell-to-shell exchange is exactly
antisymmetric before weights are inserted.

The motivation is the divergence-free transport cancellation

```math
\langle (a\cdot\nabla)b,b\rangle = 0
\qquad
(\nabla\cdot a = 0),
```

which in fact survives exactly at the unweighted dyadic exchange level.

## Exact Weighted Defect Identity

Once shell weights are inserted, the antisymmetry is broken only by the weight
mismatch. For any scalar weights `w_j,w_\ell`,

```math
w_j\big\langle \Delta_j(a_k\cdot\nabla \Delta_\ell u),\,\Delta_j u\big\rangle
+
w_\ell\big\langle \Delta_\ell(a_k\cdot\nabla \Delta_j u),\,\Delta_\ell u\big\rangle
=
(w_j-w_\ell)\big\langle a_k\cdot\nabla \Delta_\ell u,\,\Delta_j u\big\rangle.
\tag{B}
```

In particular, for the `H^1` shell weights `w_m=2^{2m}`,

```math
\mathcal I_{j;k,\ell}+\mathcal I_{\ell;k,j}
=
\big(2^{2j}-2^{2\ell}\big)
\big\langle \Delta_k u\cdot\nabla \Delta_\ell u,\,\Delta_j u\big\rangle.
\tag{C}
```

So the first exact statement is sharper than the earlier slogan:

```math
\text{the defect is not mysterious; it is exactly the weighted exchange mismatch.}
```

## Weighted Tail Mechanism

Introduce the weighted tail functionals

```math
\Phi_j^\sigma
:=
\sum_{\ell\ge j}2^{-\sigma(\ell-j)}E_\ell,
\qquad
\mathcal T_j^\sigma
:=
\sum_{\ell\ge j}2^{-\sigma(\ell-j)}D_\ell.
```

Differentiating gives

```math
\partial_t\Phi_j^\sigma+\nu\mathcal T_j^\sigma
=
\mathcal R_j^\sigma.
```

For the lifted part,

```math
\mathcal R_{j,\mathrm{lift}}^\sigma
=
\sum_{\ell\ge j}2^{-\sigma(\ell-j)}
\sum_{j+M<k<\ell-4}\mathcal I_{\ell;k,\cdot}.
```

The important correction is that the lower index `j` in the lifted packet is a
tail cutoff parameter, not a second receiving shell. So the exact shell
exchange identity `(A)` does not by itself close the lifted packet.

What it does show is where the new work must enter: after the weighted
summation, any remaining defect must come from the mismatch between the
one-sided tail weights, not from the bare dyadic exchange itself.

For the actual one-sided tail functional, the shell weight at level `\ell`
relative to the lower cutoff `j` is

```math
w_\ell^{(j)}:=2^{-\sigma(\ell-j)},
\qquad
w_j^{(j)}=1.
```

So the explicit tail-weight mismatch is

```math
w_j^{(j)}-w_\ell^{(j)}
=
1-2^{-\sigma(\ell-j)}.
```

In the lifted regime `j+M<k<\ell-4`, one has `\ell-j\ge 5` up to the fixed
collar conventions, hence

```math
0<2^{-\sigma(\ell-j)}\le 2^{-5\sigma},
\qquad
1-2^{-5\sigma}
\le
1-2^{-\sigma(\ell-j)}
<1.
```

So the one-sided tail weight does break the exact antisymmetry, but it does
not by itself create a new decaying gap factor as `\ell-j\to\infty`. It gives
direction, not smallness.

The discrete weight gradient still records the one-sided direction:

```math
2^{-\sigma(\ell-(j+1))}-2^{-\sigma(\ell-j)}
=
(2^\sigma-1)\,2^{-\sigma(\ell-j)}.
```

So the weighted tail plays two roles:

1. it keeps track of the direction `j\to\ell`;
2. it encodes the one-sided queue structure through its discrete gradient.

## Corrected Decorrelation Target

The concrete theorem target on this route is

```math
\sum_{j>N+M+4}2^j\,\mathcal R_{j,\mathrm{lift}}^\sigma
\le
\varepsilon\sum_{j>N+M+4}2^j\big(\mathcal T_j^\sigma\big)^2
+
C\sum_{j>N+M+4}\sum_{\ell\ge j}
2^{(1+\sigma)j-\sigma\ell}\,|\mathcal C_{j,\ell}(t)|.
\tag{D}
```

Then one seeks the barrier-scale defect bound

```math
\int_0^T
\sum_{j>N+M+4}\sum_{\ell\ge j}
2^{(1+\sigma)j-\sigma\ell}\,|\mathcal C_{j,\ell}(t)|\,dt
\le
C_*2^{-2\delta N}.
\tag{E}
```

If `(D)` and `(E)` hold, then the weighted square theorem follows.

The correction above shows that `(D)` / `(E)` cannot be obtained merely by
harvesting smallness from the explicit tail-weight mismatch
`1-2^{-\sigma(\ell-j)}`. Any genuine gap decay still has to come from a
stronger signed commutator-defect estimate after the exact exchange
cancellation.

## Relation To Decorrelation Branch

This note supplies the concrete PDE mechanism behind
`cross-scale-decorrelation-theorem.md`.

That note states the branch at the level of the bilinear interaction
`\mathfrak B_N^\sigma`. The present note says what would make that direct
decorrelation theorem true:

- an exact unweighted dyadic exchange antisymmetry identity,
- plus a weighted tail defect bound coming from the one-sided weight mismatch.

So the branch-level slogan

```math
\text{cross-scale interactions are not worst-case aligned}
```

is sharpened here into

```math
\text{cross-scale interactions decompose into exchange plus a gap-damped defect.}
```

## Summed Defect Endpoint

Assume, in addition to the exact exchange identities `(A)` through `(C)`, that
the weighted defect admits a gap-damped bound strong enough to reduce the
lifted weighted tail contribution to

```math
\sum_{j>N+M+4}2^j
\sum_{\ell\ge j}\sum_{j+M<k<\ell-4}
2^{-(\sigma+c)(\ell-j)}\,a_k(t)\,D_\ell(t),
\qquad
a_k(t):=2^{3k/2}\|\Delta_k u(t)\|_{L_x^2},
```

for some `c>0`. Then summing first in `j` gives the explicit endpoint

```math
\sum_{j>N+M+4}2^j\,\mathcal R_{j,\mathrm{lift}}^\sigma(t)
\le C_{\sigma,c}
\sum_{k>N+M}2^k\,a_k(t)\,\mathcal D_k^{\uparrow,\beta}(t),
\qquad
\beta:=\sigma+c,
\tag{F}
```

where

```math
\mathcal D_k^{\uparrow,\beta}(t)
:=
\sum_{\ell\ge k+4}2^{-\beta(\ell-k)}D_\ell(t).
```

So the commutator route does yield a genuine improvement: the raw lifted
transport is converted into a one-sided carrier with a stronger gap kernel
`\beta=\sigma+c`.

Applying Young's inequality at the `k`-level with

```math
x_k(t):=2^{k/2}\mathcal D_k^{\uparrow,\beta}(t),
\qquad
y_k(t):=2^{k/2}a_k(t),
```

gives

```math
2^k\,a_k(t)\,\mathcal D_k^{\uparrow,\beta}(t)
\le
\varepsilon\,2^k\big(\mathcal D_k^{\uparrow,\beta}(t)\big)^2
+
C_\varepsilon\,2^k a_k(t)^2.
```

Because

```math
a_k(t)^2
=
2^{3k}\|\Delta_k u(t)\|_{L_x^2}^2,
```

the residual lower-shell term is

```math
2^k a_k(t)^2
=
2^{4k}\|\Delta_k u(t)\|_{L_x^2}^2
=
D_k(t).
```

Hence the summed commutator-defect route lands on

```math
\sum_{j>N+M+4}2^j\,\mathcal R_{j,\mathrm{lift}}^\sigma(t)
\le
\varepsilon\sum_{k>N+M}2^k\big(\mathcal D_k^{\uparrow,\beta}(t)\big)^2
+
C_\varepsilon\sum_{k>N+M}D_k(t).
\tag{G}
```

This is the exact conditional endpoint of the branch calculation.

## Surviving Branch Target

Since the tail-weight mismatch is order-one in the lifted regime, the
surviving branch is no longer a weight-decay route. The first honest live
target is now the pre-absolute-value signed weighted shell-exchange theorem
recorded in `weighted-signed-shell-exchange-sum-theorem.md`.

If one insists on a shellwise defect theorem below that signed sum, the next
possible local statement is a signed commutator-defect estimate of the form

```math
\big|\langle [\Delta_j,a_k\cdot\nabla]\Delta_\ell u,\Delta_j u\rangle\big|
\le C_{\mathrm{comm}}
2^{-c(\ell-j)}\,2^{3k/2}\|\Delta_k u\|_{L_x^2}\,D_\ell
```

in the separated lifted geometry `k<j-4<\ell-8`, together with a summation
strong enough to land at the barrier scale after integrating in time.

So the exact deterministic next move on this branch is not to ask the weight
for decay, and not to pass directly to positive carriers, but to ask the
summed signed defect for decay before absolute values are introduced.

## Honest Boundary

This note proves `(A)` and `(B)` / `(C)`.

What remains open is still the weighted defect theorem `(D)` / `(E)`, but with
one further correction: the tail weight itself does not supply the needed gap
decay. The only surviving source of that decay on this branch is a stronger
commutator-defect theorem after the exact exchange cancellation.

Even if one grants a defect bound strong enough to reach `(F)` / `(G)`, the
branch does not yet close from the inherited Euclidean inputs: the residual
term is the tail

```math
\int_0^T\sum_{k>N+M}D_k(t)\,dt,
```

which lies well above the currently available first-moment surfaces
`\int \sum 2^{-2k}D_k` and `\int \sum_{k\ge N}2^{-4k}D_k`. So the
antisymmetry route is real and useful, but it still needs a new commutator-tail
theorem after the weighted `j`-summation.
