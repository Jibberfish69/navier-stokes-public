---
theorem_id: forward-gold-wkb-beltrami-unique-mixed-sum-obstruction-20260706
status: exact-unique-cross-shell-frequency-obstruction
later_supersession: >-
  The finite multiply represented crowd left open here is closed by
  mpp-forward-gold-wkb-beltrami-finite-max-alignment-obstruction-20260706.
  Infinite/dense WKB support remains outside this finite algebraic exclusion.
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB bath construction-exclusion
target_object:
  - ClosedResonantFrequencyGraph.UNIQUE-MIXED-SUM-OBSTRUCTION
  - BroadbandBeltramiBath.FiniteSupportNeutrality
  - MultiplyRepresentedCrowd.REMAINING-CANCELLATION-DOOR
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-bandwidth-mismatch-turnover-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-nonresonant-cross-shell-cancellation-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-resonant-two-pair-sideband-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-extreme-frequency-obstruction-20260706.md
completion_truth: >-
  Exact finite-support unique-frequency obstruction only. In a finite
  same-helicity helical Beltrami Fourier cloud, if a noncollinear active
  cross-shell pair p,q with nonzero amplitudes has output m=p+q and no other
  active cross-shell pair feeds m, then the projected eigenvalue-mismatch
  coefficient at m is a single nonzero term and cannot cancel. The argument
  does not require m to be an exposed vertex of the mixed sum convex hull.
  In particular, aligned symmetric two-shell skeletons such as
  {+-e_i} and {+-2e_i} still leak: e_1+2e_2 is hidden from the exposed
  vertex list but is a unique noncollinear mixed sum. Thus a finite exact
  broadband Beltrami neutralizer must make every dangerous noncollinear
  cross-shell output multiply represented, or collapse to same-shell,
  collinear, or zero-amplitude degeneracy. This proves no lower bound for
  multiply represented closed resonant crowds, no exclusion of an
  infinite/dense WKB bath, no same-fluid custody theorem, no confinement
  constant, and no MPP closure.
---

# Unique mixed Beltrami sums cannot be neutral

## 1. Question

The exposed-frequency note killed finite Beltrami clouds with an exposed
noncollinear cross-shell output. Its proof used one algebraic fact:

\[
  \text{the output frequency is fed by exactly one active cross-shell pair.}
  \tag{UMS.1}
\]

This note removes the convex-hull wrapper and tests the algebraic condition
directly:

\[
  \text{Can a unique noncollinear mixed-shell output cancel when it is not}
  \quad
  \text{an exposed vertex?}
  \tag{UMS.2}
\]

The answer is no.

## 2. Setup

Let
\[
  u=\sum_{k\in S} a_k h_k e^{ik\cdot x}
  \tag{UMS.3}
\]
be a finite same-helicity helical Beltrami Fourier cloud, grouped by curl
eigenvalue shell:
\[
  S=\bigcup_\lambda S_\lambda,
  \qquad
  i k\times h_k=\lambda h_k
  \quad\text{for } k\in S_\lambda .
  \tag{UMS.4}
\]

The bandwidth identity gives the cross-shell projected mismatch coefficient at
an output \(m\) as the sum over unordered active cross-shell representations,
with one ordering chosen for the two shell labels:
\[
  p+q=m,\qquad p\in S_\lambda,\quad q\in S_\mu,\quad \lambda\ne\mu,
  \tag{UMS.5}
\]
of terms
\[
  -(\mu-\lambda)a_p a_q\,\mathbb P_m(h_p\times h_q).
  \tag{UMS.6}
\]

Same-shell pairs have zero eigenvalue-gap coefficient in this mismatch row.

## 3. Unique mixed output

Assume there is an active pair
\[
  p\in S_\lambda,\qquad q\in S_\mu,\qquad
  \lambda\ne\mu,\qquad p\nparallel q,\qquad a_p a_q\ne0,
  \tag{UMS.7}
\]
and write
\[
  m=p+q.
  \tag{UMS.8}
\]

Assume also that \(m\) has no other active cross-shell representation:
\[
  a+b=m,\quad a\in S_{\lambda'},\quad b\in S_{\mu'},\quad
  \lambda'\ne\mu'
  \quad\Longrightarrow\quad
  \{a,b\}=\{p,q\}.
  \tag{UMS.9}
\]

Then the full projected mismatch coefficient at \(m\) is the single term
\[
  -(\mu-\lambda)a_p a_q\,\mathbb P_m(h_p\times h_q).
  \tag{UMS.10}
\]

The nonresonant two-mode calculation gives
\[
  \mathbb P_m(h_p\times h_q)\ne0
  \qquad
  \text{whenever }p\nparallel q.
  \tag{UMS.11}
\]

Since \(\mu-\lambda\ne0\) and \(a_p a_q\ne0\), the coefficient (UMS.10) is
nonzero. Therefore the cloud is not projected-neutral.

No exposedness was used.

## 4. Symmetric two-shell witness

The condition is strictly stronger than the exposed-vertex obstruction. Take
\[
  S_1=\{\pm e_1,\pm e_2,\pm e_3\},
  \qquad
  S_2=\{\pm 2e_1,\pm 2e_2,\pm 2e_3\}.
  \tag{UMS.12}
\]

The exposed mixed-sum vertices are the collinear sums
\[
  \pm 3e_1,\qquad \pm 3e_2,\qquad \pm 3e_3,
  \tag{UMS.13}
\]
which belong to the degenerate branch.

But the off-axis output
\[
  m=e_1+2e_2
  \tag{UMS.14}
\]
has the unique active cross-shell representation
\[
  m=e_1+2e_2,
  \tag{UMS.15}
\]
with \(e_1\nparallel 2e_2\). Hence its mismatch coefficient is nonzero by
Section 3.

So an aligned finite angular skeleton is not protected merely because its
exposed mixed-sum vertices are collinear. Hidden unique side frequencies still
ring.

## 5. Surviving finite cancellation door

A finite exact broadband Beltrami neutralizer must therefore satisfy the
following necessary condition:
\[
\begin{array}{l}
\text{every active noncollinear cross-shell output frequency is fed by at}\\
\text{least two active cross-shell pairs, unless the interaction collapses}\\
\text{to same-shell, collinear, or zero-amplitude degeneracy.}
\end{array}
  \tag{UMS.16}
\]

Thus the remaining finite-support algebraic door is not just
convex-hull-hidden. It is a multiply represented closed resonant graph.

This note does not prove that such a graph cannot exist, and it does not prove
that the vector coefficients fail to cancel on every multiply represented
graph. It only kills the unique-output subcase exactly.

## 6. Four-sentence result

A unique cross-shell Beltrami output cannot cancel, even when it is hidden from
the exposed mixed-sum vertices. At that frequency the projected mismatch
coefficient is one term,
\[
  -(\mu-\lambda)a_p a_q\,\mathbb P_{p+q}(h_p\times h_q),
\]
and the nonresonant two-mode calculation makes it nonzero for noncollinear
summands. The symmetric two-shell cloud \(\{\pm e_i\}\cup\{\pm2e_i\}\) leaks at
\(e_1+2e_2\), although its exposed mixed vertices are collinear. Therefore a
finite neutral broadband Beltrami crowd must make every dangerous mixed output
multiply represented, or it is not neutral.

## 7. State

This decides only the finite-support unique-mixed-sum subcase.

It proves no lower bound for multiply represented closed resonant crowds, no
exclusion of an infinite or dense WKB bath, no actual same-fluid construction
theorem, no material custody theorem, no dense-crowd theorem, no confinement
constant, and no MPP closure.

## 8. Later finite-door supersession

The finite multiply represented door left open here is closed by
[mpp-forward-gold-wkb-beltrami-finite-max-alignment-obstruction-20260706.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-finite-max-alignment-obstruction-20260706.md).
The surviving bath door is no longer finite same-helicity Fourier cancellation;
it is infinite/dense WKB support, localization/envelope passage, same-fluid
transport/custody, or construction/exclusion.
