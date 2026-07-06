---
theorem_id: forward-gold-wkb-beltrami-shielded-two-pair-same-side-leak-20260706
status: exact-shielded-two-pair-duplicate-leaks-same-side-sidebands
later_followup: >-
  The local same-side leak mechanism is globalized by
  mpp-forward-gold-wkb-beltrami-finite-duplicate-sideband-growth-closure-20260706.md:
  every finite dangerous duplicate creates a larger dangerous sideband, so an
  output-maximal dangerous pair cannot be canceled in finite support.
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB bath construction-exclusion
target_object:
  - OutputMaximalShieldedDuplicate.NONEMPTY
  - ShieldedTwoPairGadget.SAME-SIDE-LEAK
  - BeltramiFiniteGraphConstructionExclusion.REMAINING-SIDEBAND-CLOSURE-DOOR
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-output-maximal-sideband-shield-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-resonant-two-pair-sideband-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-nonresonant-cross-shell-cancellation-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-finite-duplicate-sideband-growth-closure-20260706.md
completion_truth: >-
  Exact four-mode finite-graph check only. A shielded output-maximal duplicate
  exists: p=(-3,-3,0), q=(-2,3,0), a=(-2,-3,0), b=(-3,3,0) have
  p+q=a+b=(-5,0,0), both selected pairs are cross-shell and noncollinear, and
  both have radius sum sqrt(18)+sqrt(13), so the selected output is locally
  coplanar coefficient-compatible. The output-maximal off-diagonal sidebands
  a+q=(-4,0,0) and p+b=(-6,0,0) are same-shell harmless. Therefore the
  shield condition is nonempty, and a proof by "shield impossible" is false.
  The same four modes nevertheless create unique dangerous same-side outputs
  p+a=(-5,-6,0) and q+b=(-5,6,0), each cross-shell and noncollinear; by the
  nonresonant theorem they ring when the selected-output cancellation uses
  nonzero amplitudes. Thus this minimal shielded duplicate is not a finite
  neutral Beltrami bath. This proves no full finite graph exclusion, no
  infinite/dense WKB bath exclusion, no same-fluid custody theorem, no
  confinement constant, and no MPP closure.
---

# Shielded two-pair duplicates still leak same-side sidebands

## 1. Object

The output-maximal shield criterion left a finite branch open: a resonant
duplicate at the largest dangerous output could survive the off-diagonal
sideband test if every larger off-diagonal sideband is harmless.

This note checks whether that branch is empty. It is not. The smallest
shielded duplicate exists, but it leaks through the same-side pairs rather than
through the off-diagonal pairs.

The physical object is still one finite same-helicity Beltrami/WKB Fourier
cloud inside the same fluid-field-object. This note only checks the algebra of
one projected nonlinear mismatch graph.

## 2. Exact shielded duplicate

Take
\[
  p=(-3,-3,0),\qquad q=(-2,3,0),
\]
\[
  a=(-2,-3,0),\qquad b=(-3,3,0).
  \tag{SSL.1}
\]

The selected pairs have the same output:
\[
  p+q=a+b=(-5,0,0)=m.
  \tag{SSL.2}
\]

Their squared radii are
\[
  |p|^2=18,\qquad |q|^2=13,\qquad |a|^2=13,\qquad |b|^2=18.
  \tag{SSL.3}
\]

Thus both selected pairs are cross-shell and have the same radius sum
\[
  |p|+|q|=|a|+|b|=\sqrt{18}+\sqrt{13}.
  \tag{SSL.4}
\]

They are also noncollinear:
\[
  |p\times q|^2=|a\times b|^2=225.
  \tag{SSL.5}
\]

In the coplanar fixed-output reduction, the two selected coefficients lie on
the same complex transverse line at the same radius-sum grade. Therefore the
selected \(m\)-coefficient is locally cancellation-compatible by amplitude
phase choice. This is only a one-output statement.

## 3. It passes the off-diagonal shield test

The off-diagonal outputs are
\[
  a+q=(-4,0,0),
  \qquad
  p+b=(-6,0,0).
  \tag{SSL.6}
\]

The corresponding pairs are harmless:
\[
  |a|^2=|q|^2=13,
  \qquad
  |p|^2=|b|^2=18.
  \tag{SSL.7}
\]

So the larger off-diagonal output \(p+b=(-6,0,0)\) is same-shell harmless.
This four-mode gadget satisfies the output-maximal shield criterion. Hence the
branch left open by the shield note is nonempty.

A proof strategy that tries to exclude every output-maximal duplicate by saying
the shield cannot occur is therefore false.

## 4. The same-side outputs ring

The four modes also contain the same-side pairs
\[
  p+a=(-5,-6,0),
  \qquad
  q+b=(-5,6,0).
  \tag{SSL.8}
\]

These are unique inside the four-mode cloud: no other unordered pair among
\(\{p,q,a,b\}\) lands at either output.

Both pairs are dangerous. The squared radii differ, and
\[
  |p\times a|^2=9,
  \qquad
  |q\times b|^2=9.
  \tag{SSL.9}
\]

Therefore the nonresonant cross-shell Beltrami theorem gives
\[
  \mathbb P_{p+a}(h_p\times h_a)\ne0,
  \qquad
  \mathbb P_{q+b}(h_q\times h_b)\ne0,
  \tag{SSL.10}
\]
provided the selected-output cancellation uses nonzero amplitudes on all four
modes.

So the four-mode shielded duplicate is not a finite neutralizer. It cancels
the selected output, shields the output-maximal off-diagonal leak, and still
rings at two same-side sidebands.

## 5. Consequence for the finite branch

The output-maximal shield criterion remains correct, but its open branch is
real. Shielding the larger off-diagonal sidebands is not enough for neutrality.
The finite graph must close every sideband generated by the active modes:
off-diagonal sidebands and same-side sidebands.

The remaining finite Beltrami branch is therefore:
\[
  \text{a vector-moment resonant graph with full sideband closure,}
  \tag{SSL.11}
\]
where every dangerous output either satisfies its own cancellation certificate
or degenerates by same shell, collinearity, or zero amplitude.

This note does not decide whether such a finite graph exists. It only blocks
the attempted shortcut that shielded graphs are impossible, and it kills the
minimal shielded two-pair gadget.

The later finite duplicate-growth closure decides the finite graph question:
the same-side leak seen here is not an accident of this four-mode witness.
Every dangerous duplicate produces a larger dangerous sideband somewhere in
its parallelogram, so finite full sideband closure cannot cancel an
output-maximal dangerous pair.

## 6. Four-sentence result

The shield condition is nonempty: the four modes
\[
  (-3,-3,0),\ (-2,3,0),\ (-2,-3,0),\ (-3,3,0)
\]
give two dangerous same-output pairs at \(m=(-5,0,0)\), with equal radius sum
\(\sqrt{18}+\sqrt{13}\), and the larger off-diagonal sideband is same-shell
harmless. Thus a proof by "output-maximal shields cannot exist" is false. The
same four modes still leak through \(p+a=(-5,-6,0)\) and \(q+b=(-5,6,0)\),
which are unique dangerous cross-shell sidebands. Hence the minimal shielded
duplicate is not a finite neutral Beltrami bath; the remaining finite problem
is full sideband-graph closure.

## 7. State

This proves the shielded branch is nonempty and kills the minimal shielded
two-pair gadget.

The later duplicate-growth closure proves the corresponding general finite
obstruction.

It proves no general finite neutralizer exclusion, no infinite/dense WKB bath
exclusion, no same-fluid custody theorem, no confinement constant, and no MPP
closure.
