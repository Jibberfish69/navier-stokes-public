---
theorem_id: forward-gold-wkb-beltrami-finite-max-alignment-obstruction-20260706
status: scope-corrected-same-two-shell-max-alignment-obstruction-multiradius-gap-open
scope_correction: >-
  Same-day correction: the displayed duplicate-output step proves the
  obstruction for second representations on the same two curl-eigenvalue
  shells. It does not by itself exclude cross-radius duplicate representations.
  See
  mpp-forward-gold-wkb-beltrami-max-alignment-radius-scope-correction-20260706.md.
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB bath construction-exclusion
target_object:
  - BroadbandBeltramiBath.SameTwoShellNeutrality.EXCLUDED
  - ClosedResonantFrequencyGraph.SAME-TWO-SHELL-DOOR.CLOSED
  - MultiRadiusResonantGraph.REMAINING-CANCELLATION-DOOR
  - DenseInfiniteWKBBath.REMAINING-DOOR
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-bandwidth-mismatch-turnover-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-nonresonant-cross-shell-cancellation-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-resonant-two-pair-sideband-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-unique-mixed-sum-obstruction-20260706.md
completion_truth: >-
  Scope-corrected algebraic obstruction only. The maximal-alignment proof below
  is valid for duplicate representations on the same two curl-eigenvalue
  shells: if p+q=p'+q' with |p|=|p'| and |q|=|q'|, the off-diagonal active
  pairs have strictly larger normalized alignment and at least one remains
  noncollinear, contradicting maximality. This closes the same-two-shell finite
  resonant graph subcase. It does not close cross-radius duplicate
  representations, where the denominator changes and the larger-alignment
  conclusion is false. The finite/dense Beltrami algebra therefore retains a
  multiradius resonant-graph branch unless a separate graph argument closes it.
  This proves no lower bound for infinite/dense WKB baths, no finite-energy
  localization theorem, no same-fluid custody theorem, no confinement constant,
  and no MPP closure.
---

# Finite broadband Beltrami clouds always leak at maximal alignment

## 0. Same-day scope correction

The argument below is certified only for duplicate representations on the same
two shell radii:
\[
  |p|=|p'|=K,\qquad |q|=|q'|=L,\qquad K\ne L.
\]

It does not by itself exclude cross-radius duplicates. In that case the
denominators in the normalized alignments change, and the strict
larger-alignment step can fail. The correction note
[mpp-forward-gold-wkb-beltrami-max-alignment-radius-scope-correction-20260706.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-max-alignment-radius-scope-correction-20260706.md)
records the exact witness and retypes the live branch as multiradius resonant
graph closure, profile admission, or construction/exclusion.

## 1. Question

The unique-mixed-sum note reduced finite exact cancellation to a multiply
represented closed resonant graph. This note checks whether that finite graph
can exist at all:

\[
  \text{Can every noncollinear cross-shell output in a finite broadband}
  \quad
  \text{Beltrami cloud be multiply represented?}
  \tag{FMA.1}
\]

The answer is no.

## 2. Setup

Let
\[
  u=\sum_{k\in S} a_k h_k e^{ik\cdot x}
  \tag{FMA.2}
\]
be a finite same-helicity helical Beltrami Fourier cloud. The active support is
grouped by curl eigenvalue shell:
\[
  S=\bigcup_\lambda S_\lambda,
  \qquad
  i k\times h_k=\lambda h_k .
  \tag{FMA.3}
\]

The broadband mismatch identity gives cross-shell output terms
\[
  -(\mu-\lambda)a_p a_q\,\mathbb P_{p+q}(h_p\times h_q)
  \tag{FMA.4}
\]
for
\[
  p\in S_\lambda,\qquad q\in S_\mu,\qquad \lambda\ne\mu .
  \tag{FMA.5}
\]

Assume there is at least one active noncollinear cross-shell pair:
\[
  p\nparallel q,\qquad a_p a_q\ne0,\qquad \lambda\ne\mu .
  \tag{FMA.6}
\]

Among all such pairs, choose one maximizing the normalized alignment
\[
  c(p,q):={p\cdot q\over |p|\,|q|}.
  \tag{FMA.7}
\]

Because the support is finite, the maximum is attained.

## 3. A duplicate sum creates a better off-diagonal pair

Write
\[
  |p|=|p'|=K,\qquad |q|=|q'|=L,\qquad K\ne L .
  \tag{FMA.8}
\]

Suppose the selected output has a second active cross-shell representation:
\[
  p+q=p'+q',
  \qquad
  (p',q')\ne(p,q).
  \tag{FMA.9}
\]

Then the off-diagonal active pairs \((p,q')\) and \((p',q)\) have strictly
larger dot product than the original pair.

Indeed,
\[
  q'=p+q-p',
  \tag{FMA.10}
\]
so
\[
  p\cdot q'
  =
  p\cdot q+|p|^2-p\cdot p'
  =
  p\cdot q+K^2-p\cdot p'.
  \tag{FMA.11}
\]
Since \(p'\ne p\) and \(|p'|=|p|=K\),
\[
  p\cdot p'<K^2,
  \tag{FMA.12}
\]
and therefore
\[
  p\cdot q'>p\cdot q.
  \tag{FMA.13}
\]

Similarly,
\[
  p'\cdot q
  =
  p\cdot q+L^2-q\cdot q'
  >
  p\cdot q.
  \tag{FMA.14}
\]

Because the off-diagonal pairs still join the same two shell radii \(K,L\),
their normalized alignments are also strictly larger:
\[
  c(p,q')>c(p,q),
  \qquad
  c(p',q)>c(p,q).
  \tag{FMA.15}
\]

## 4. At least one off-diagonal pair is noncollinear

It remains only to exclude the possibility that both off-diagonal pairs are
collinear degeneracies. Suppose
\[
  q'=\alpha p,
  \qquad
  q=\beta p',
  \qquad
  \alpha,\beta\in\left\{\pm {L\over K}\right\}.
  \tag{FMA.16}
\]

Using \(p+q=p'+q'\) gives
\[
  (1-\alpha)p=(1-\beta)p'.
  \tag{FMA.17}
\]

If \(p\) and \(p'\) are linearly independent, then
\[
  \alpha=\beta=1,
  \tag{FMA.18}
\]
which would force \(L=K\), contrary to the cross-shell assumption.

If \(p\) and \(p'\) are linearly dependent, then \(p'=-p\) because \(p'\ne p\)
and \(|p'|=|p|\). Equation (FMA.17) becomes
\[
  2=\alpha+\beta.
  \tag{FMA.19}
\]
With \(\alpha,\beta\in\{\pm L/K\}\), this again forces \(L=K\).

Within this same-two-shell setting, both off-diagonal pairs cannot be collinear
when the shell radii differ.
At least one of \((p,q')\), \((p',q)\) is a noncollinear active cross-shell
pair with larger normalized alignment than the selected pair.

This contradicts the maximality of \(c(p,q)\).

Therefore the selected output \(p+q\) has no second active cross-shell
representation on the same two shell radii.

## 5. The maximal-alignment output rings

The selected pair is noncollinear and lies on different curl eigenvalue shells.
If all duplicate representations of its output are confined to the same two
shell radii, then by Section 4 its output \(m=p+q\) is unique among active
cross-shell representations inside that fixed two-shell slice.

Hence the Fourier coefficient of the projected mismatch at \(m\) is exactly
one term:
\[
  -(\mu-\lambda)a_p a_q\,\mathbb P_m(h_p\times h_q).
  \tag{FMA.20}
\]

The nonresonant two-mode calculation gives
\[
  \mathbb P_m(h_p\times h_q)\ne0
  \tag{FMA.21}
\]
for a noncollinear same-helicity pair. Since \(\mu-\lambda\ne0\) and
\(a_pa_q\ne0\), the coefficient is nonzero.

Thus a same-two-shell cancellation graph containing this maximal pair is not
projected-neutral.

## 6. Consequence

Every fixed two-shell same-helicity helical Beltrami Fourier slice has the
following dichotomy:
\[
\begin{array}{ll}
\text{all active cross-shell pairs are collinear} &
  \Rightarrow \text{one-dimensional / degenerate angular branch},\\[1mm]
\text{some active cross-shell pair is noncollinear} &
  \Rightarrow \text{a unique noncollinear cross-shell output rings.}
\end{array}
  \tag{FMA.22}
\]

Therefore a finite genuinely broadband, directionally spread same-helicity
Beltrami cloud whose dangerous duplicate outputs remain inside one fixed pair
of shell radii cannot be an exact projected-neutral bath. The same-two-shell
closed resonant graph door is closed.

The surviving Beltrami-bath door is multiradius resonant graph closure,
infinite or dense WKB support, finite-energy localization/envelope passage,
same-fluid transport/custody, profile admission, or construction/exclusion of
the actual bath.

## 7. Four-sentence result

Choose the active noncollinear cross-shell Beltrami pair with maximal normalized
alignment inside a fixed two-shell slice. If its output had another active
representation on the same two shell radii, the off-diagonal pairs would have
strictly larger alignment; because the two shell radii differ, at least one
off-diagonal pair is still noncollinear. That contradicts maximality, so the
selected output is unique inside that slice. The nonresonant two-mode theorem
then makes its projected mismatch coefficient nonzero; cross-radius duplicate
representations remain outside this proof.

## 8. State

This closes the same-two-shell finite-support same-helicity Beltrami
cancellation branch.

It does not close multiradius finite resonant graphs. It proves no
quantitative lower bound for infinite/dense WKB baths, no finite-energy
localization theorem, no same-fluid custody theorem, no confinement constant,
and no MPP closure.
