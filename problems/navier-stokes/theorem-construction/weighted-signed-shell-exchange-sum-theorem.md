# Weighted Signed Shell-Exchange Sum Theorem

## Purpose

This note records the exact remaining theorem on the cross-scale
decorrelation branch after the weight-mismatch audit and the failure of the
positive-carrier reductions.

The useful diagnosis is:

```math
\text{the remaining gap is a theorem on the summed signed shell exchange before absolute values are taken.}
```

All later positive carriers arise only after that signed object has already
been replaced by magnitude bounds or Cauchy-Schwarz.

## Pairwise Flux And Exact Antisymmetry

Fix `M\ge 4`, let `u` be the exact Euclidean Navier-Stokes solution on
`[0,T)\times\mathbb R^3`, and for a fixed divergence-free shell
`a_k(t):=\Delta_k u(t)` define the pairwise shell flux

```math
\mathcal I_{j;k,\ell}(t)
:=
\big\langle \Delta_j(a_k(t)\cdot\nabla \Delta_\ell u(t)),\,\Delta_j u(t)\big\rangle.
```

The exact unweighted exchange identity already proved on the branch is

```math
\mathcal I_{j;k,\ell}(t)+\mathcal I_{\ell;k,j}(t)=0.
\tag{1}
```

So any nontrivial surviving contribution must come from the weighted
one-sided summation, not from the bare dyadic transport exchange.

## First Weighted Signed Exchange

Insert the actual one-sided tail weight

```math
w_{j,\ell}^{(\sigma)}:=2^{-\sigma(\ell-j)}
\qquad (\ell\ge j),
```

and define, for fixed `k`,

```math
\mathfrak F_{k,N}^\sigma(t)
:=
\sum_{j>N}\sum_{\ell>j+4}
w_{j,\ell}^{(\sigma)}\,\mathcal I_{j;k,\ell}(t).
\tag{2}
```

Symmetrizing over `j\neq \ell` gives

```math
\mathfrak F_{k,N}^\sigma(t)
=
\frac12
\sum_{\substack{j,\ell>N\\ j\neq \ell}}
\Big(
2^{-\sigma(\ell-j)_+}-2^{-\sigma(j-\ell)_+}
\Big)\,
\mathcal I_{j;k,\ell}(t).
\tag{3}
```

For `j<\ell`, this becomes

```math
2^{-\sigma(\ell-j)}-1
=
-\bigl(1-2^{-\sigma(\ell-j)}\bigr),
```

so using `(1)` one obtains the exact signed formula

```math
\mathfrak F_{k,N}^\sigma(t)
=
-\sum_{j<\ell,\ j,\ell>N}
\bigl(1-2^{-\sigma(\ell-j)}\bigr)\,
\mathcal I_{j;k,\ell}(t).
\tag{4}
```

This already shows the first negative fact:

```math
1-2^{-\sigma L}\le 1-2^{-\sigma(\ell-j)}\le 1
\qquad
(\ell-j\ge L),
```

so the one-sided tail weight breaks the exact antisymmetry but does not
produce a decaying gap factor.

## The Actual SDS-Weighted Signed Exchange

The branch does not stop at `\mathfrak F_{k,N}^\sigma`. The real object seen by
the route after the outer square-theorem weight is

```math
\mathfrak G_{k,N}^\sigma(t)
:=
\sum_{j>N}\sum_{\ell>j+4}
2^j\,2^{-\sigma(\ell-j)}\,\mathcal I_{j;k,\ell}(t).
\tag{5}
```

Symmetrization now gives

```math
\mathfrak G_{k,N}^\sigma(t)
=
\frac12
\sum_{j<\ell,\ j,\ell>N}
\Big(
2^j2^{-\sigma(\ell-j)}-2^\ell
\Big)\,
\mathcal I_{j;k,\ell}(t).
\tag{6}
```

Equivalently,

```math
2^j2^{-\sigma(\ell-j)}-2^\ell
=
-2^\ell\Big(1-2^{-(1+\sigma)(\ell-j)}\Big),
\tag{7}
```

so the exact coefficient mismatch is order `2^\ell`, not gap-small.

This is the precise point where the current route stops: the signed
antisymmetry is exact, but the actual one-sided weights break it by an
order-size defect.

## Off-Diagonal Support Vanishing

The bare pairwise shell flux itself does not survive in the extreme separated
geometry `j\ll k\ll \ell`.

There exists a universal Littlewood-Paley collar width `M_{\mathrm{LP}}` such
that whenever `\ell\ge k+M_{\mathrm{LP}}`, the product
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
\tag{8}
```

Likewise, if `k\ge j+M_{\mathrm{LP}}`, then
`\Delta_k u\cdot\nabla\Delta_j u` has Fourier support contained in an annulus

```math
c_{LP}2^k\le |\xi|\le C_{LP}2^k,
```

so

```math
\Delta_\ell(\Delta_k u\cdot\nabla\Delta_j u)=0
\qquad\text{unless}\qquad
|\ell-k|\le M_{\mathrm{LP}}.
\tag{9}
```

Hence replace the collar once and for all by

```math
M':=\max\{M,M_{\mathrm{LP}}\}.
\tag{10}
```

Reading the branch geometry with `M'` instead of `M`,

```math
j+M'<k<\ell-4,
```

forces

```math
\mathcal I_{j;k,\ell}(t)=0,
\qquad
\mathcal I_{\ell;k,j}(t)=0.
\tag{10}
```

So in the actual separated regime there is no remaining sign question for the
bare pairwise shell exchange: the interaction vanishes before sign can matter.

## Exact Missing Theorem

The decisive new theorem target is therefore:

```math
\textbf{Weighted signed shell-exchange sum theorem.}
```

Historically this was phrased as a theorem on the bare shell flux. The support
audit `(8)`-`(10)` shows that this is vacuous on the declared geometry.
What survives as a genuine question is whether an analogous signed theorem
holds for the true commutatorized lifted remainder, not for the bare pairwise
term `\mathcal I_{j;k,\ell}` itself.

The old bare-shell target was:

```math
\int_0^T
\sum_k
\sum_{j<\ell,\ j,\ell>N}
\Big(
2^j2^{-\sigma(\ell-j)}-2^\ell
\Big)\,
\mathcal I_{j;k,\ell}(t)\,dt
\le
C_*2^{-2\delta N}.
\tag{SFX}
```

Equivalently, in the lifted geometry `j+M<k<\ell-4`,

```math
\int_0^T
\sum_{j>N}\sum_{\ell>j+4}\sum_{j+M<k<\ell-4}
2^j\,2^{-\sigma(\ell-j)}\,
\mathcal I_{j;k,\ell}(t)\,dt
\le
C_*2^{-2\delta N}.
```

But by `(10)` this target is identically zero once the shell geometry is truly
separated. So it is **not** the live burden anymore.

## Why This Is The Real Obstruction

The surrounding audits now settle the structure more sharply:

1. the unweighted shell exchange is exactly antisymmetric;
2. the one-sided tail weight breaks that antisymmetry, but its mismatch gives
   direction only, not gap decay;
3. the actual outer `2^j` weight breaks it by an order-`2^\ell` mismatch;
4. the bare pairwise shell exchange vanishes identically in the extreme
   separated regime `j\ll k\ll \ell`;
5. once one passes to the nonvanishing commutatorized lifted remainder and then
   introduces absolute values or Cauchy-Schwarz too early, the route collapses
   into the same positive carriers already known not to close from the
   inherited Euclidean inputs.

So the branch now hinges on a single question:

```math
\text{can the true lifted commutator remainder be controlled before absolute values are introduced?}
```

## Failure Mode Of Earlier Routes

All unsuccessful reductions share the same defect:

- they pass from the signed weighted exchange `\mathfrak G_{k,N}^\sigma` to
  shellwise absolute values, magnitude bounds, or Cauchy-Schwarz too early;
- that destroys the only possible global cancellation across many signed
  cross-scale exchanges;
- the route then degenerates into positive carrier estimates such as
  `\sum 2^k a_k\mathcal D_k^\uparrow` or
  `\sum 2^j(\mathcal T_j^\sigma)^2`,
  which the current Euclidean inputs do not control at the required barrier
  scale.

So `(SFX)` is not just another reformulation. It marks the exact point where
the proof either finds a true self-limiting law or stops.

## Relation To The Other Branch Notes

The branch now has four nested levels:

1. exact exchange antisymmetry:

```math
\mathcal I_{j;k,\ell}+\mathcal I_{\ell;k,j}=0;
```

2. unsigned weight-mismatch audit:

```math
1-2^{-\sigma L}\le 1-2^{-\sigma(\ell-j)}\le 1
\qquad(\ell-j\ge L);
```

3. exact SDS-weighted signed exchange:

```math
\mathfrak G_{k,N}^\sigma
=
\frac12
\sum_{j<\ell}
\Big(
2^j2^{-\sigma(\ell-j)}-2^\ell
\Big)\mathcal I_{j;k,\ell};
```

4. summed signed theorem target:

```math
\int_0^T \sum_k \mathfrak G_{k,N}^\sigma(t)\,dt
\le
C_*2^{-2\delta N}.
```

The previous positive-carrier notes remain useful as upper envelopes, but they
are now explicitly downstream failure modes if one loses the sign too early.

The branch now also carries a second exact PDE object in
`mixed-shell-bilinear-dissipation-identity.md`: an exact mixed-shell identity
whose left-hand side is the weighted bilinear target `K_{j,\ell}^\sigma
D_jD_\ell` itself. That route does not yet close either, but it now shows
something sharper: the mixed boundary term is already barrier-sized from the
classical initial data class, the residual mixed high-high packet is
absorbable into `\mathfrak B_N^\sigma`, and the genuinely new content on that
route is the same signed exchange block

```math
\sum_{N<j<\ell}2^{(3+\sigma)j-\sigma\ell}
\sum_{j+M<k<\ell-4}(E_\ell-E_j)\mathcal I_{j;k,\ell}.
```

## Failed Absolute-Value Reduction

The latest self-attempt on this branch makes the correct symmetrization move
after replacing the vacuous bare shell exchange by a commutatorized defect, but
it still fails once absolute values are introduced.

Assume, conditionally, a shellwise commutator bound of the form

```math
|\mathcal I_{j;k,\ell}(t)|
C_I
2^{-(\ell-j)}\,a_k(t)\,D_\ell(t)
```

in the lifted geometry `j+M<k<\ell-4`, where

```math
a_k(t):=2^{3k/2}\|\Delta_k u(t)\|_{L_x^2}.
```

Since

```math
\bigl(1-2^{-(1+\sigma)}\bigr)2^\ell
\le
\big|2^j2^{-\sigma(\ell-j)}-2^\ell\big|
\le
2^\ell
```

for `j<\ell`, one gets from `(6)` that

```math
\big|\mathfrak G_{k,N}^\sigma(t)\big|
\le C_I
\sum_{j<\ell,\ j+M<k<\ell-4}
2^\ell\,2^{-(\ell-j)}\,a_k(t)\,D_\ell(t)
=
\sum_{j<\ell,\ j+M<k<\ell-4}
2^j\,a_k(t)\,D_\ell(t).
```

Now the decisive admissible-range correction enters: for fixed `k,\ell`, the
lifted geometry forces

```math
N<j<k-M,
```

not merely `j<\ell`. Therefore

```math
\sum_{N<j<k-M}2^j
\le
2^{k-M+1},
```

and the absolute-value route collapses to

```math
\sum_k\big|\mathfrak G_{k,N}^\sigma(t)\big|
\le C_{abs}
\sum_{k>N+M}
2^k\,a_k(t)\,
\sum_{\ell>k+4}D_\ell(t).
\tag{F}
```

This is already a positive carrier. It has lost the signed cancellation and,
compared with the earlier kernelized carriers, it has even lost the favorable
upper-tail gap weight.

Applying Young at the `k`-level gives

```math
2^k a_k(t)\sum_{\ell>k+4}D_\ell(t)
\le
\varepsilon\,2^k\Big(\sum_{\ell>k+4}D_\ell(t)\Big)^2
+
C_\varepsilon\,2^k a_k(t)^2
=
\varepsilon\,2^k\Big(\sum_{\ell>k+4}D_\ell(t)\Big)^2
+
C_\varepsilon D_k(t),
```

so the whole reduction lands on

```math
\sum_k\big|\mathfrak G_{k,N}^\sigma(t)\big|
\le C_{abs}
\varepsilon\sum_{k>N+M}2^k\Big(\sum_{\ell>k+4}D_\ell(t)\Big)^2
+
C_\varepsilon\sum_{k>N+M}D_k(t).
\tag{G}
```

That is not a new closure route. It is exactly the kind of positive tail
burden already known to lie beyond the inherited Euclidean inputs.

So the branch diagnosis is now stricter:

- the signed object `\mathfrak G_{k,N}^\sigma` is the only place where a
  self-limiting law could still appear;
- once absolute values are introduced, the route collapses back to positive
  carriers and fails.

## Honest Boundary

This note does not prove a signed theorem for the true lifted commutator
remainder.

It records the exact new branch correction after the support audit:

```math
\text{the bare shell-exchange theorem is vacuous in the separated regime; any surviving signed theorem must live at the commutatorized lifted-remainder level.}
```
