---
theorem_id: forward-gold-wkb-beltrami-extreme-frequency-obstruction-20260706
status: exact-exposed-cross-shell-frequency-obstruction
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB bath construction-exclusion
target_object:
  - ClosedResonantFrequencyGraph.EXPOSED-VERTEX-OBSTRUCTION
  - BroadbandBeltramiBath.FiniteSupportNeutrality
  - ConvexHullHiddenCrowd.REMAINING-CANCELLATION-DOOR
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-bandwidth-mismatch-turnover-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-nonresonant-cross-shell-cancellation-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-resonant-two-pair-sideband-obstruction-20260706.md
completion_truth: >-
  Exact finite-support exposed-frequency obstruction only. Let a finite
  helical Beltrami Fourier cloud be grouped by curl eigenvalue shell. If
  there is a cross-shell active pair p,q on different shells, with p not
  parallel to q, such that p+q is an exposed point of the cross-shell sum
  support and has no other active cross-shell representation, then the
  projected mismatch coefficient at p+q is nonzero and cannot cancel. Thus
  any exact finite broadband Beltrami neutralizer must hide every
  noncollinear cross-shell interaction from the exposed boundary of the
  mixed sum set: each such output must be multiply represented inside a
  closed resonant graph, or the interaction must collapse to same-shell,
  collinear, or zero-amplitude degeneracy. This kills finite clouds with an
  exposed noncollinear mixed-shell vertex. It proves no lower bound for
  convex-hull-hidden resonant crowds, no exclusion of an infinite/dense WKB
  bath, no same-fluid custody theorem, no confinement constant, and no MPP
  closure.
---

# Exposed cross-shell Beltrami frequencies cannot be neutral

## 1. Question

The two-pair resonant note showed that one shared output frequency can cancel,
but the same gadget leaks isolated sidebands. The remaining cancellation door
is a closed resonant frequency graph.

This note checks the finite-support boundary of that graph:
\[
  \text{Can a finite broadband Beltrami cloud be neutral while it has an}
  \quad
  \text{exposed noncollinear mixed-shell output?}
  \tag{EFO.1}
\]

The answer is no.

## 2. Setup

Let the active Fourier support be a finite set \(S\subset\mathbb R^3\setminus
\{0\}\), grouped by curl eigenvalue shell:
\[
  S=\bigcup_\lambda S_\lambda,
  \qquad
  |k|=|\lambda|\quad\hbox{for } k\in S_\lambda.
  \tag{EFO.2}
\]

The broadband mismatch identity says that cross-shell pairs contribute
\[
  -(\mu-\lambda)\,\mathbb P_{p+q}(h_p\times h_q)
  \tag{EFO.3}
\]
at frequency \(p+q\), for
\[
  p\in S_\lambda,\qquad q\in S_\mu,\qquad \lambda\ne\mu.
  \tag{EFO.4}
\]

Call a cross-shell output \(m=p+q\) exposed when some linear functional \(\ell\)
strictly maximizes \(\ell(a+b)\) over all active cross-shell sums at
\[
  a=p,\qquad b=q.
  \tag{EFO.5}
\]

Equivalently, \(m\) is an exposed vertex of the cross-shell sum support and has
the unique active cross-shell representation \(m=p+q\).

## 3. Exposed output cannot cancel

Assume
\[
  p\in S_\lambda,\qquad q\in S_\mu,\qquad \lambda\ne\mu,
  \qquad p\nparallel q,
  \tag{EFO.6}
\]
and \(m=p+q\) is exposed in the sense above.

Because \(m\) has no other active cross-shell representation, the Fourier
coefficient of the projected mismatch at \(m\) is exactly the single pair
coefficient
\[
  -(\mu-\lambda)\,\mathbb P_m(h_p\times h_q),
  \tag{EFO.7}
\]
times the nonzero amplitude product.

The nonresonant two-mode theorem gives
\[
  \mathbb P_m(h_p\times h_q)\ne0
  \qquad
  \text{for } p\nparallel q.
  \tag{EFO.8}
\]
Since \(\mu-\lambda\ne0\), the coefficient in (EFO.7) is nonzero.

Thus the projected nonlinear mismatch cannot vanish at \(m\). The cloud is not
an exact projected-neutral Beltrami bath.

## 4. Convex-hull reading

For two shells \(S_\lambda\) and \(S_\mu\), an exposed vertex of
\[
  \operatorname{conv}(S_\lambda)+\operatorname{conv}(S_\mu)
  \tag{EFO.9}
\]
with unique active summands is exactly such a boundary output. If its summands
are noncollinear, it rings.

Therefore any finite exact cancellation certificate must satisfy a sharp
geometric restriction:
\[
\begin{array}{l}
\text{every noncollinear cross-shell interaction is hidden from the exposed}\\
\text{mixed-sum boundary, or is multiply represented by other active pairs.}
\end{array}
  \tag{EFO.10}
\]

The alternatives are now:
\[
\begin{array}{ll}
\text{same-shell} &\Rightarrow \text{ordinary one-shell Beltrami cell},\\[1mm]
\text{collinear} &\Rightarrow \text{one-dimensional / degenerate angular branch},\\[1mm]
\text{exposed noncollinear pair} &\Rightarrow \text{forced turnover},\\[1mm]
\text{no exposed noncollinear pair} &\Rightarrow
  \text{convex-hull-hidden closed resonant crowd}.
\end{array}
  \tag{EFO.11}
\]

So the closed-resonance door is narrower than "add enough modes." It must be
an additive crowd whose dangerous mixed-shell outputs are all interior,
edge-hidden, or multiply represented.

## 5. Four-sentence result

In a finite broadband Beltrami Fourier cloud, an exposed cross-shell output
frequency has only one active pair feeding it. If the two feeding wavevectors
are noncollinear and lie on different curl eigenvalue shells, the nonresonant
two-mode calculation makes its Leray-projected mismatch coefficient nonzero.
So any finite cloud with an exposed noncollinear mixed-shell vertex is not a
projected-neutral Beltrami bath. A finite exact cancellation certificate must
hide every dangerous cross-shell output inside a closed resonant graph, or
collapse to same-shell, collinear, or zero-amplitude degeneracy.

## 6. State

This decides only the finite-support exposed-frequency subcase.

It proves no lower bound for convex-hull-hidden resonant crowds, no exclusion
of an infinite or dense WKB bath, no actual same-fluid construction theorem, no
material custody theorem, no dense-crowd theorem, no confinement constant, and
no MPP closure.
