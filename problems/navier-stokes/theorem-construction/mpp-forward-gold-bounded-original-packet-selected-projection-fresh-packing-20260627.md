---
theorem_id: forward-gold-bounded-original-packet-selected-projection-fresh-packing-20260627
status: fresh-packing-closed-relative-to-bounded-original-packet-admission
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines:
  - StoppedSelectorBoundedProjectionOfOriginalParticipationLaw.A
  - ParentSubtractedSelectedReadoutDecomposition.A
  - ParentStressGramDeterminantSelectedAdmission.A
  - StoppedSelectorSelfNormalizedDeterminantAdmission.A
supersedes_as_live_hinge:
  - StoppedSelectorSelfNormalizedDeterminantAdmission.A as sole producer
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bounded-projection-original-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-stress-test-innovation-bessel-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-self-normalized-determinant-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-scale-normalized-stress-novelty-bellman-leverage-20260627.md
effect: >-
  Replaces the overstrong statement that determinant leverage alone absorbs
  fresh selected-scale birth. Parent reuse is paid by the parent stress
  capacity/determinant telescope. Genuine fresh first births are paid by Bessel
  only after the selected unit has been admitted as a bounded test of the
  original material stress packet. A scale-renormalized readout whose original
  packet test is unbounded is not physical participation; it is stop, legal,
  donor, selector drift, or an inadmissible fake fourth category. Partial, not
  Gold closed: the remaining proof obligation is the bounded original-packet
  selected-projection admission.
---

# Bounded original-packet selected projection and fresh packing

The channel split is correct, but a channel classification is not yet a
scale-uniform price per selected unit.

On a stopped parent history, set

\[
\mathfrak H_P
=
L^2(\operatorname{Hist}(P);\mathrm{Sym}_0),
\qquad
G=2\nu S_A .
\tag{1}
\]

The original material energy identity gives

\[
\|G\|_{\mathfrak H_P}^2
\le
C_\nu\|u_0\|_{L^2}^2 .
\tag{2}
\]

This is one finite stress packet on the material history. Velocity transports
the packet, pressure enforces incompressibility, viscosity drains strain, and
Cauchy stress is the exchange current between material shells.

## 1. The physical admission rule

The selected child is a genuine physical unit only when it is represented before
scalar selected readout by a bounded test of that same original packet:

\[
\|A_Q\|_{\mathfrak H_P}\le 1,
\qquad
\Theta_Q
=
|\langle G,A_Q\rangle_{\mathfrak H_P}|^2 .
\tag{3}
\]

This is the exact Gold admission clause:

```text
BoundedOriginalPacketSelectedProjectionAdmission.A.
```

If the scale-renormalized selected readout requires
\(\|A_Q\|_{\mathfrak H_P}\to\infty\), the measuring rule is creating
participation rather than reading the original Navier-Stokes packet. That edge
is not a retained unpaid selected child. It is stop, legal, donor,
selector/frame/collar drift, or an inadmissible fourth category.

## 2. Parent reuse and genuine fresh birth

Let \(E_{Q^-}\) be the parent-predictable stress record before \(Q\). Split

\[
A_Q
=
\Pi_{E_{Q^-}}A_Q+(I-\Pi_{E_{Q^-}})A_Q
=
B_Q+F_Q .
\tag{4}
\]

Then

\[
\langle G,A_Q\rangle
=
\langle G,B_Q\rangle
+
\langle G,F_Q\rangle .
\tag{5}
\]

The \(B_Q\) term is parent-coupled reuse. It is paid by the parent stress
reserve. With

\[
s_Q=s_{Q^-}+\mu_G(\widehat Q),
\tag{6}
\]

the retained inherited read obeys

\[
\Theta_Q^{reuse}
\le
C\log\left(1+{\mu_G(\widehat Q)\over s_{Q^-}}\right)
+R_Q+Stop_Q .
\tag{7}
\]

Along a stopped ancestry line,

\[
\sum_Q\Theta_Q^{reuse}
\le
C\sum_Q(\log s_Q-\log s_{Q^-})
+R+Stop
\le
C(u_0)+R+Stop .
\tag{8}
\]

This is the useful content of the parent Gram determinant / Bellman leverage
notes.

The \(F_Q\) term is the genuinely fresh selected-scale birth. For first births,
the spaces carrying \(F_Q\) are martingale-difference spaces in the same stopped
material history. Since the tests are bounded in \(\mathfrak H_P\), Bessel gives

\[
\sum_Q|\langle G,F_Q\rangle|^2
\le
C\|G\|_{\mathfrak H_P}^2
\le
C(u_0).
\tag{9}
\]

This proves the fresh-channel packing bound after bounded original-packet
admission. The toy failure

\[
G=\sum_k2^{-k/2}e_k,\qquad w_k=2^k
\tag{10}
\]

does not contradict (9). It shows exactly why the admission clause is necessary:
the selected unit must be an order-one projection of \(G\) against a bounded
original-packet test, not a unit manufactured by an unbounded zoomed readout.

## 3. Total selected participation

Combining (8) and (9),

\[
\sum_Q\Theta_Q
\le
C(u_0)+R+Stop .
\tag{11}
\]

A finite-time singularity selector would require infinitely many selected units
along a shrinking ancestry chain. Equation (11) gives finite total selected
participation, so that chain cannot be retained as physical participation.

Thus the current Gold chain is:

```text
BoundedOriginalPacketSelectedProjectionAdmission.A
  + parent reuse Bellman/determinant telescope
  + fresh first-birth Bessel packing
  + reset/stop/legal first-exit charge
  -> finite selected participation
  -> finite full same-material clock
  -> H^s continuation.
```

Partial, not Gold closed. The remaining proof is the admission theorem that every
retained selected child unit is a bounded projection of the original
pressure-viscosity-incompressibility-velocity packet before scalar readout.
