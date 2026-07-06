---
theorem_id: forward-gold-wkb-beltrami-finite-duplicate-sideband-growth-closure-20260706
status: exact-finite-multiradius-duplicate-sideband-growth-obstruction
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB bath construction-exclusion
target_object:
  - FiniteBeltramiNeutralizer.MULTIRADIUS-DUPLICATE-GRAPH.EXCLUDED
  - DangerousDuplicatePair.SIDEBAND-GROWTH
  - DenseInfiniteWKBBath.REMAINING-DOOR
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-nonresonant-cross-shell-cancellation-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-output-maximal-sideband-shield-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-shielded-two-pair-same-side-leak-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-radius-sum-vector-moment-correction-20260706.md
completion_truth: >-
  Exact finite-support algebraic obstruction. In a finite same-helicity
  Beltrami Fourier cloud, take a dangerous cross-shell noncollinear active
  pair p,q whose output norm |p+q| is maximal among all dangerous active pairs.
  If another dangerous pair a,b satisfies a+b=p+q, then the two duplicate
  pairs are opposite diagonals of a parallelogram. Orient each diagonal by its
  larger-radius endpoint. The large-large side has output norm strictly larger
  than |p+q|. If that side is dangerous, maximality is contradicted. If it is
  harmless, the exact same-shell and collinearity cases force one adjacent
  side to have output norm strictly larger than |p+q| and to be dangerous.
  Hence no dangerous duplicate can cancel the output-maximal pair; that output
  is unique and rings by the nonresonant two-mode theorem. Therefore no finite
  directionally spread multiradius same-helicity Beltrami cloud is an exact
  projected-neutral broadband bath. This closes the finite multiradius
  resonant-graph branch only. It proves no infinite/dense WKB bath exclusion,
  no localization/envelope passage, no same-fluid custody theorem, no
  confinement constant, and no MPP closure.
---

# Finite duplicate Beltrami graphs force a larger dangerous sideband

## 1. Object

The finite Beltrami branch had been narrowed to a multiradius vector-moment
resonant graph with full sideband closure. The open question was whether a
finite cloud could keep every dangerous cross-shell output multiply
represented.

The answer is no. A duplicate dangerous output always creates a larger
dangerous sideband somewhere in its parallelogram.

The physical object is still one finite same-helicity Beltrami/WKB Fourier
cloud inside the same fluid-field-object. This note only closes the finite
algebraic graph branch of the broadband bath search.

## 2. Dangerous duplicate geometry

Call a pair dangerous when it is active, cross-shell, and noncollinear:
\[
  |p|\ne |q|,
  \qquad
  p\nparallel q,
  \qquad
  a_pa_q\ne0.
  \tag{FDG.1}
\]

Assume two distinct dangerous pairs have the same output:
\[
  p+q=a+b=m.
  \tag{FDG.2}
\]

Write the common midpoint form
\[
  p=c+x,\qquad q=c-x,
  \qquad
  a=c+y,\qquad b=c-y,
  \qquad
  m=2c.
  \tag{FDG.3}
\]

Since \((p,q)\) and \((a,b)\) are dangerous,
\[
  c\cdot x\ne0,\qquad c\wedge x\ne0,
  \qquad
  c\cdot y\ne0,\qquad c\wedge y\ne0.
  \tag{FDG.4}
\]

Swap the labels inside each diagonal so that
\[
  |p|>|q|,
  \qquad
  |a|>|b|.
  \tag{FDG.5}
\]
Equivalently,
\[
  c\cdot x>0,
  \qquad
  c\cdot y>0.
  \tag{FDG.6}
\]

The side joining the two larger-radius endpoints has output
\[
  p+a=2c+x+y.
  \tag{FDG.7}
\]
Its norm is strictly larger than the selected output:
\[
  |p+a|^2-|m|^2
  =
  |x+y|^2+4c\cdot(x+y)>0.
  \tag{FDG.8}
\]

If \((p,a)\) is dangerous, the duplicate has already created a larger
dangerous sideband.

It remains to check the harmless cases for \((p,a)\).

## 3. Harmless case I: the large-large side is same-shell

Assume
\[
  |p|=|a|.
  \tag{FDG.9}
\]

Then both adjacent sides have unequal radii:
\[
  |p|>|b|,
  \qquad
  |a|>|q|.
  \tag{FDG.10}
\]

The adjacent outputs are
\[
  p+b=m+(p-a),
  \qquad
  q+a=m-(p-a).
  \tag{FDG.11}
\]
Since \(p\ne a\),
\[
  \bigl(|p+b|^2-|m|^2\bigr)
  +
  \bigl(|q+a|^2-|m|^2\bigr)
  =
  2|p-a|^2>0.
  \tag{FDG.12}
\]
At least one adjacent output is therefore larger than \(|m|\).

The larger adjacent side is noncollinear. Indeed, suppose \(p\parallel b\).
After rotating in the plane spanned by \(c,p,a\), write
\[
  c=e_1,\qquad
  p=(1+\alpha,\xi),\qquad
  q=(1-\alpha,-\xi),
  \tag{FDG.13}
\]
\[
  a=(1+\beta,\eta),\qquad
  b=(1-\beta,-\eta),
  \qquad \alpha,\beta>0,\quad \xi\ne0.
  \tag{FDG.14}
\]
The condition \(p\parallel b\) gives
\[
  \eta=-{1-\beta\over 1+\alpha}\xi.
  \tag{FDG.15}
\]
Together with \(|p|=|a|\), this forces
\[
  \beta>\alpha.
  \tag{FDG.16}
\]
Hence
\[
  |q+a|^2-|m|^2
  =
  |x-y|^2+4(\beta-\alpha)>0.
  \tag{FDG.17}
\]
The side \(q,a\) is not collinear; simultaneous collinearity of \(p,b\) and
\(q,a\) would force \(\alpha+\beta=0\). Thus \(q,a\) is an unequal-radius,
noncollinear larger side.

The case \(q\parallel a\) is symmetric and gives \(p,b\) as the unequal-radius,
noncollinear larger side. Therefore the same-shell harmless case always
creates a larger dangerous adjacent side.

## 4. Harmless case II: the large-large side is collinear

Assume
\[
  p\parallel a.
  \tag{FDG.18}
\]

Use the same normalization \(c=e_1\). Then
\[
  p=(1+\alpha,\xi),
  \qquad
  q=(1-\alpha,-\xi),
  \tag{FDG.19}
\]
and
\[
  a=t p,\qquad
  t={1+\beta\over1+\alpha}>0,
  \qquad
  b=(1-\beta,-t\xi),
  \qquad
  \alpha,\beta>0.
  \tag{FDG.20}
\]

The adjacent sides are never collinear. For example \(p\parallel b\) would
require
\[
  1-\beta=-(1+\beta),
  \tag{FDG.21}
\]
and \(q\parallel a\) would require
\[
  1-\alpha=-(1+\alpha),
  \tag{FDG.22}
\]
both impossible.

At least one adjacent output is larger by (FDG.12). It remains to exclude
same-shell degeneracy on a larger adjacent side.

If \(p,b\) were same-shell, direct substitution in (FDG.20) gives
\[
  |p+b|^2-|m|^2
  =
  -\,{4(\beta-\alpha)(2+\alpha)\over 2+\alpha+\beta}<0.
  \tag{FDG.23}
\]
So \(p,b\) cannot be the larger adjacent side when it is same-shell. The
symmetric calculation gives the same conclusion for \(q,a\).

Thus in the collinear harmless case, whichever adjacent side has output norm
larger than \(|m|\) is noncollinear and unequal-shell. It is dangerous.

## 5. Duplicate growth lemma

Combining the cases:

If two distinct dangerous pairs satisfy \(p+q=a+b=m\), then at least one of
\[
  (p,a),\quad(p,b),\quad(q,a),\quad(q,b)
  \tag{FDG.24}
\]
is dangerous and has output norm strictly larger than \(|m|\).

This is the sideband-growth obstruction for a dangerous duplicate.

## 6. Finite neutralizer exclusion

Now let \(S\) be a finite same-helicity Beltrami Fourier support containing at
least one dangerous pair. Choose a dangerous pair \(p,q\) maximizing
\[
  |p+q|
  \tag{FDG.25}
\]
among all dangerous active pairs in \(S\).

If the projected mismatch at \(m=p+q\) were canceled, some other dangerous
active pair \(a,b\) would have to satisfy
\[
  a+b=m.
  \tag{FDG.26}
\]
Same-shell pairs carry no eigenvalue-gap coefficient, and collinear pairs do
not supply the nonresonant dangerous coefficient. A genuine cancellation
partner must therefore be dangerous.

But the duplicate growth lemma then produces a dangerous active pair with
output norm strictly larger than \(|p+q|\), contradicting the choice of
\((p,q)\).

Thus the output \(m=p+q\) is unique among dangerous active pairs. By the
nonresonant two-mode theorem,
\[
  \mathbb P_m(h_p\times h_q)\ne0.
  \tag{FDG.27}
\]
Since the eigenvalue gap and amplitude product are nonzero, the projected
mismatch coefficient at \(m\) cannot vanish.

Therefore a finite same-helicity Beltrami Fourier cloud is projected-neutral
only in the degenerate alternatives:
\[
\begin{array}{ll}
\text{same-shell only} & \text{one curl-eigenvalue Beltrami cell},\\[1mm]
\text{collinear cross-shell only} & \text{one-dimensional angular branch},\\[1mm]
\text{zero amplitudes} & \text{inactive edges}.
\end{array}
  \tag{FDG.28}
\]

No finite directionally spread multiradius same-helicity Beltrami cloud is an
exact broadband neutralizer.

## 7. Four-sentence result

Two duplicate dangerous Beltrami pairs \(p+q=a+b\) are opposite diagonals of a
parallelogram in frequency space. Orient each diagonal by its larger-radius
endpoint; the side joining those two endpoints has output norm strictly larger
than the duplicated output. If that side is harmless, the exact same-shell and
collinearity cases force one adjacent side to be both larger and dangerous.
Hence an output-maximal dangerous pair in a finite cloud cannot have a
dangerous cancellation partner, so its coefficient is unique and rings.

## 8. State

This closes the finite multiradius same-helicity Beltrami resonant-graph
branch.

It does not close infinite or dense WKB supports, nonattainment by
shell/direction accumulation, finite-energy localization/envelope passage,
profile admission, same-fluid material custody, the confinement constant, or
MPP closure.
