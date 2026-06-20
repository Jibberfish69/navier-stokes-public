# Volterra Scale-Memory Formalization Note

## Status

This note is a proposed route broadening on the classical `NS` surface.
It is not a proved theorem packet.

Its role is to formalize the scale-memory route as an exact PDE problem rather
than leave it as a slogan about "memory objects."

## Purpose

The failed Euclidean routes keep treating the accumulated coarser-scale burden
as if it were an ordinary source term.
This note formalizes the alternative:

```math
\text{treat the obstruction as a one-sided Volterra primitive in scale.}
```

The goal is to identify a theorem surface that is genuinely different from the
crude Hardy/Cauchy collapse leading to `(CTS)` and then `(LPAS)`.

## Classical setup

Work on the exact classical `NS` solution `u` and the far-corona scale range.
Define the `L_x^2`-valued stress source

```math
Z_\ell(t)
:=
\chi_{mid}(\log\ell)^{1/2}\,
\tau_\ell^{H^1}[u](t)
\in L_x^2.
```

Define the one-sided Volterra primitive in the scale variable by

```math
(\mathcal V Z)_r(t)
:=
\int_{\ell_{top}}^{r/c_1} Z_\ell(t)\,\frac{d\ell}{\ell}.
\tag{1}
```

The active dissipation weight is

```math
a(r,t)
:=
r^{-2}\|Q_r u(t)\|_{L_x^2}^2.
\tag{2}
```

Then the direct far-corona stress quantity `FCTS` is

```math
\mathrm{FCTS}

=
\int_0^T\int_{\ell_{lo}}^{\ell_{hi}}
a(r,t)\,\|(\mathcal V Z)_r(t)\|_{L_x^2}^2\,
\frac{dr}{r}\,dt.
\tag{3}
```

So the live object is already exactly a weighted one-sided Volterra square.

## Where the current route loses structure

The present route inserts the crude Hardy/Cauchy bound

```math
\|(\mathcal V Z)_r(t)\|_{L_x^2}^2
\le C_H
\int_{\ell_{top}}^{r/c_1}\|Z_\ell(t)\|_{L_x^2}^2\,\frac{d\ell}{\ell},
\tag{4}
```

which forgets how `(\mathcal V Z)_r` was assembled.

Substituting `(4)` into `(3)` gives the cumulative-tail theorem `(CTS)`, and
the inherited Euclidean reduction of `(CTS)` gives the dyadic shadow `(LPAS)`.

So the exact place where structure is lost is:

```math
\mathcal V Z
\rightsquigarrow
|\mathcal V Z|^2
\rightsquigarrow
\text{crude Hardy collapse}
\rightsquigarrow
\text{lower-prefix active-square}.
```

This is the point the new route tries to replace.

## Proposed theorem surface

The new theorem does not estimate the whole Volterra primitive head-on.
It separates the one-sided primitive into parts with different PDE roles.

The formal target is:

```math
(\mathcal V Z)_r
=
\mathcal E_r[Z]
+ \mathcal P_r[Z]
+ \mathcal R_r[Z],
\tag{5}
```

with the intended meanings:

- `\mathcal E_r[Z]`: exact-in-scale part;
- `\mathcal P_r[Z]`: persistent readout;
- `\mathcal R_r[Z]`: residual tail.

This is not imported ontology machinery.
It is the PDE translation of the idea that the accumulated object is first
be classified before it is treated as a live driver.

## Desired estimates

The route would close if `(5)` came with the following three statements.

### 1. Exact part is a scale derivative

There exists a scale potential `S_r[Z]` such that

```math
\mathcal E_r[Z] = \partial_{\log r} S_r[Z],
\tag{6}
```

and after inserting into `(3)` the contribution of `\mathcal E_r[Z]` can be
reduced, by scale integration by parts, to boundary terms or lower-order
remainders on the fixed middle band.

### 2. Residual part is absorbable

The residual term satisfies

```math
\int_0^T\int a(r,t)\,\|\mathcal R_r[Z](t)\|_{L_x^2}^2\,\frac{dr}{r}\,dt
\le
\frac{\eta\nu}{C}\int_0^T D_N(t)\,dt + C_*2^{-2\delta N}.
\tag{7}
```

So `\mathcal R` is a genuine tail, not a new dynamical source.

### 3. Persistent part is the only live theorem burden

The persistent readout satisfies

```math
\int_0^T\int a(r,t)\,\|\mathcal P_r[Z](t)\|_{L_x^2}^2\,\frac{dr}{r}\,dt
\le
\frac{\eta\nu}{C}\int_0^T D_N(t)\,dt + C_*2^{-2\delta N}.
\tag{8}
```

Then `FCTS` follows from `(5)`-`(8)` by the elementary square bound

```math
\|\mathcal E+\mathcal P+\mathcal R\|_2^2
\le 3\Big(
\|\mathcal E\|_2^2+\|\mathcal P\|_2^2+\|\mathcal R\|_2^2
\Big).
```

## What counts as progress

This route does **not** require the full decomposition `(5)` to be discovered
at once.

Any nontrivial theorem that improves on the crude Hardy collapse `(4)` by
using the assembly history of `(\mathcal V Z)_r` counts as real
progress.

Examples:

1. a theorem showing that a scale-coboundary component of `(\mathcal V Z)_r`
   vanishes in the weighted pairing `(3)`;
2. a theorem showing that the active weight `a(r,t)` only sees a projected
   readout of `(\mathcal V Z)_r`, not its full accumulated mass;
3. a theorem showing an explicit local-dissipation bound for the residual part,
   for example
   `|\langle a,\mathcal R\rangle|\le \theta\mathcal D_{\mathrm{loc}}+R_{\mathrm{summ}}`
   with `0<theta<1` and summable `R_{\mathrm{summ}}`.

## First falsification test

The first concrete test of this route is:

```math
\text{can one find any nontrivial exact-in-scale subtraction that improves `(4)`?}
```

More precisely:

does there exist a scale potential `S_r[Z]` such that

```math
\int_0^T\int a(r,t)\,
\|(\mathcal V Z)_r(t)-\partial_{\log r}S_r[Z](t)\|_{L_x^2}^2
\frac{dr}{r}\,dt
```

is strictly smaller, in theorem-bearing terms, than the current `(CTS)` upper
bound?

If the answer is no on the exact `NS` stress class, the route fails early.
If the answer is yes, then the obstruction is genuinely not an ordinary source,
and the Hardy/Volterra broadening is real.

## Canonical exact-in-scale subtraction attempts

Write `s=\log r` and let

```math
I=[s_0,s_1]
```

be the fixed logarithmic middle-band interval. Define

```math
F(s,t):=T_{e^s}(t)\in L_x^2,
\qquad
w(s,t):=a(e^s,t).
```

Then the weighted stress theorem `FCTS` becomes

```math
\int_0^T\int_I w(s,t)\,\|F(s,t)\|_{L_x^2}^2\,ds\,dt.
\tag{9}
```

There are two canonical exact-in-scale subtractions.

### Attempt A: ordinary log-average subtraction

Define the ordinary log-average

```math
\bar F(t):=\frac{1}{|I|}\int_I F(s,t)\,ds,
\tag{10}
```

and the mean-zero remainder

```math
E(s,t):=F(s,t)-\bar F(t).
\tag{11}
```

Because `E` has zero ordinary mean on `I`, it is exactly a scale derivative:

```math
E(s,t)=\partial_s S(s,t),
\qquad
S(s,t):=\int_{s_0}^s E(\sigma,t)\,d\sigma,
\tag{12}
```

with

```math
S(s_0,t)=S(s_1,t)=0.
```

So

```math
F=\bar F+\partial_s S
\tag{13}
```

is a genuine exact-in-scale subtraction.

Substituting `(13)` into `(9)` yields

```math
\int_I w\|F\|^2
=
\int_I w\|\partial_s S\|^2
+
\Big(\int_I w\,ds\Big)\|\bar F\|^2
+
2\,\Re\Big\langle \bar F,\int_I w\,\partial_s S\,ds\Big\rangle.
\tag{14}
```

Since `S` vanishes at both endpoints,

```math
\int_I w\,\partial_s S\,ds
=
-\int_I (\partial_s w)\,S\,ds.
\tag{15}
```

So the exact part decouples under the explicit additional hypothesis that the
active weight is scale-flat or has a usable scale-derivative bound. On the
inherited Euclidean surface, no such control on `\partial_s w` is available.

Therefore Attempt A is nontrivial and exact, but it does **not** yet improve
the theorem because it converts the problem into controlling scale variation of
the active dissipation weight.

### Attempt B: weighted-harmonic quotient representative

Consider the weighted Hilbert space `L^2(I,w\,ds;L_x^2)` and the exact
subspace

```math
\mathcal D_0
:=
\{\partial_s S:\ S(s_0)=S(s_1)=0\}.
\tag{16}
```

The orthogonal complement of `\mathcal D_0` inside this weighted space is
given by the weak equation

```math
\partial_s(w\,m_w)=0,
\tag{17}
```

so the scalar profile of the orthogonal representative is

```math
m_w(s,t)\propto w(s,t)^{-1}.
\tag{18}
```

More precisely, if `w>0` almost everywhere and `w^{-1}\in L^1(I)`, define

```math
m_w(s,t)
:=
\frac{|I|\,w(s,t)^{-1}}{\int_I w(\sigma,t)^{-1}\,d\sigma},
\qquad
\int_I m_w(s,t)\,ds=|I|.
\tag{19}
```

Let

```math
c_F(t):=\frac{1}{|I|}\int_I F(s,t)\,ds,
\qquad
E_w(s,t):=F(s,t)-c_F(t)m_w(s,t).
\tag{20}
```

Then `E_w` has zero ordinary mean, hence

```math
E_w=\partial_s S_w,
\qquad
S_w(s_0,t)=S_w(s_1,t)=0,
\tag{21}
```

and the cross-term vanishes exactly because `w\,m_w` is constant in `s`:

```math
\int_I w\,\langle \partial_s S_w, m_w\rangle\,ds = 0.
\tag{22}
```

Therefore one gets the exact weighted orthogonal decomposition

```math
\int_I w\|F\|^2\,ds
=
\int_I w\|\partial_s S_w\|^2\,ds
+
|c_F|^2\,\frac{|I|^2}{\int_I w^{-1}\,ds}.
\tag{23}
```

This is a genuine exact-in-scale subtraction and it is stronger than the crude
Hardy collapse because it identifies the quotient representative seen by the
active weight.

But Attempt B is not presently usable on the inherited Euclidean surface:

1. the active weight `w=a(e^s,t)` may vanish or degenerate;
2. there is no available control on `w^{-1}`;
3. the persistent mode `m_w` is adapted to the inverse dissipation profile and
   is therefore not yet a classical theorem object.

So Attempt B produces a real structural signal, but not a proved estimate.

## Outcome of the falsification test

The answer to the first falsification test is therefore:

```math
\boxed{
\text{yes, there are nontrivial exact-in-scale subtractions;}
}
```

namely `(13)` and, more sharply, the weighted-harmonic quotient representative
`(23)`.

However:

```math
\boxed{
\text{no, neither subtraction presently closes the route from inherited Euclidean inputs alone.}
}
```

What they do show is exact and useful:

the obstruction is not naturally attached to the full Volterra primitive.
It is attached to the weighted quotient readout of that primitive under the
active dissipation measure.

This is the first concrete mathematical reason to think the scale-memory route
is not empty: the right object is a quotient/readout object, not the crude
prefix itself.

## Relation to later languages

This note is the first-stage formalization only.

- Hardy/Volterra is the native language because `(\mathcal V Z)_r` is a
  one-sided primitive in scale.
- Tent-space / Carleson language should enter next, once the live readout of
  `(\mathcal V Z)_r` has been identified and must be measured against the
  active dissipation weight `a(r,t)\,dr/r\,dt`.
- Lower-triangular operator language is the natural structural packaging of the
  same route, but not the first formal entry point; that continuation is now
  recorded in
  [lower-triangular-scale-memory-formalization-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lower-triangular-scale-memory-formalization-note.md).

## Working conclusion

The precise formal broadening is:

```math
\boxed{
\text{replace the crude Hardy estimate on the full Volterra primitive by a theorem on its live readout.}
}
```

That is the first exact PDE formulation of the scale-memory route.
