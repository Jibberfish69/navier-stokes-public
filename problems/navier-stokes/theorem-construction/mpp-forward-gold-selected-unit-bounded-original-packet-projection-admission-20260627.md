---
theorem_id: forward-gold-selected-unit-bounded-original-packet-projection-admission-20260627
status: fresh-channel-packing-proved-under-bounded-original-packet-selected-unit-admission
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines:
  - StoppedSelectorSelfNormalizedDeterminantAdmission.A
  - ParentStressGramDeterminantSelectedAdmission.A
  - StoppedSelectorBoundedProjectionOfOriginalParticipationLaw.A
  - SelectedUnitRieszRepresentativeSourceGraphAdmission.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bounded-projection-original-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-stress-gram-determinant-selected-novelty-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-self-normalized-determinant-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-gram-entropy-compensated-stopped-selector-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-unit-riesz-representative-source-graph-admission-20260627.md
effect: >-
  Installs the physical admission rule in the precise form supplied on the live
  thread: selected child units are bounded projections of the original
  pressure-viscosity-incompressibility-velocity packet. Under that admission,
  fresh-channel packing is Bessel, exact reuse is parent current, changed reuse
  is paid reset/stop/legal motion, and inherited same-channel refill telescopes
  through the parent stress reserve. Any scale-renormalized read whose
  original-packet test is unbounded is not physical participation; it is a fake
  fourth category and exits the retained Gold branch. The remaining source-graph
  obligation is to enforce this selected-unit bounded-projection admission as
  the retained selector definition. Partial, not Gold closed until that source
  graph clause is installed. Equivalently, the retained selected readout must
  have a uniformly bounded Riesz representative in the original material stress
  Hilbert space before positive selected readout.
---

# Selected unit bounded original-packet projection admission

The physical issue is scale normalization. The fluid has one material stress
history. A selected unit is legitimate only when it is a bounded read of that
same original pressure-viscosity-incompressibility-velocity packet.

So the admission rule is not an extra clock. It is a restriction on what may
count as selected action.

## 1. Original material stress packet

On a stopped parent history \(P\), work in

\[
\mathfrak H_P
=
L^2(\operatorname{Hist}(P);\mathrm{Sym}_0),
\qquad
G=2\nu S .
\tag{1}
\]

The original energy law gives

\[
\|G\|_{\mathfrak H_P}^2
\lesssim_\nu
\|u_0\|_{L^2}^2 .
\tag{2}
\]

Pressure has already been coupled through incompressibility and removed from
the selected stress tests by using \(D_A\)-divergence-free stopped annular
tests. The selected current is therefore a read of the same Cauchy stress
history, not a separate pressure or viscosity account.

## 2. Physical selected-unit admission

Every retained selected child unit is required to be read by a bounded
original-packet test

\[
A_Q\in\mathfrak H_P,
\qquad
\|A_Q\|_{\mathfrak H_P}\le 1,
\tag{3}
\]

with selected projection

\[
\Theta_Q
=
|\langle G,A_Q\rangle_{\mathfrak H_P}|^2 .
\tag{4}
\]

This is the strengthened version of the bounded-projection theorem. The older
projection note proves that the route coordinates are bounded projections of
the original packet. The additional selected-unit clause is that scalar
selected action itself may not renormalize an unbounded or child-sized test into
a unit.

If a proposed heat-scale read needs a test with

\[
\|A_Q\|_{\mathfrak H_P}\to\infty
\tag{5}
\]

to call a tiny raw packet one selected unit, then it is not physical
participation. It is fake scale-renormalized readout and must be routed to stop,
legal loss, donor loss, selector drift, or reselection.

## 3. Parent-known fresh/reuse split

Let \(E_{Q^-}\) be the parent-predictable stress record before \(Q\). Split

\[
A_Q
=
\Pi_{E_{Q^-}}A_Q
+
(I-\Pi_{E_{Q^-}})A_Q
=
B_Q+F_Q .
\tag{6}
\]

The component \(B_Q\) is parent reuse. The component \(F_Q\) is the genuinely
fresh selected-scale birth.

Exact reuse is not new selected action:

\[
F_Q=0
\quad\Longrightarrow\quad
\Theta_Q^{fresh}=0 .
\tag{7}
\]

Changed reuse is not a fresh unit either. It is reset, angle, collar,
connection, stop, or legal motion of the parent record, already routed through
the projection-jump / first-exit ledger.

## 4. Fresh-channel packing

For first births, the spaces carrying \(F_Q\) are martingale-difference spaces
inside the same stopped material history. After normalization, the fresh
directions are Bessel:

\[
\sum_Q
|\langle G,F_Q\rangle_{\mathfrak H_P}|^2
\le
C
\|G\|_{\mathfrak H_P}^2 .
\tag{8}
\]

Using `(2)`,

\[
\sum_Q
|\langle G,F_Q\rangle_{\mathfrak H_P}|^2
\le
C(u_0).
\tag{9}
\]

This is the fresh-channel packing bound. A shrinking sequence of fresh selected
units cannot be made out of one finite stress vector unless the selector stops
being a bounded original-packet projection.

## 5. Parent-reuse telescope

The parent reuse part is paid by the parent stress reserve. Define the parent
record by

\[
s_Q=s_{Q^-}+\mu_G(\widehat Q),
\tag{10}
\]

where \(\mu_G(\widehat Q)\) is the same-material stress read available in the
stopped hat of \(Q\).

The inherited selected reads obey

\[
\Theta_Q^{reuse}
\le
C
\log\!\left(
1+
{\mu_G(\widehat Q)\over s_{Q^-}}
\right)
+
R_Q+Stop_Q .
\tag{11}
\]

Along a stopped ancestry line,

\[
\sum_Q\Theta_Q^{reuse}
\le
C\sum_Q(\log s_Q-\log s_{Q^-})
+
R+Stop
\le
C(u_0)+R+Stop .
\tag{12}
\]

The determinant formulation is the multi-direction version of `(10)`--`(12)`.
This scalar display is the same parent-record novelty rule in the one-channel
shadow.

## 6. Finite selected participation

Combining fresh Bessel packing, reuse telescoping, and paid changed-reuse terms,

\[
\sum_Q\Theta_Q
\le
C(u_0)+R+Stop .
\tag{13}
\]

Thus an infinite shrinking ancestry chain of selected units is impossible once
the selected unit is forced to be a bounded original-packet projection.

## 7. Smoothness relay

The installed downstream relay consumes finite selected participation:

\[
\sum_Q\Theta_Q<\infty
\quad\Longrightarrow\quad
\text{finite same-material full action}
\quad\Longrightarrow\quad
\sup_{t<T^*}\|u(t)\|_{H^s}<\infty .
\tag{14}
\]

For \(s>5/2\), the standard continuation criterion restarts the solution past
the alleged first singular time.

Therefore the proof closes after the source graph enforces the admission clause:

```text
selected unit = bounded original-packet projection.
```

Any selected read whose original-packet test is unbounded is the fake fourth
category. It is measuring-rule creation of participation, not participation of
the fluid, and is removed from the retained Gold branch as stop, legal, donor,
selector drift, or reselection.

## 8. Relation to the entropy-compensator diagnostic

The parent-Gram entropy-compensator note is diagnostic support. It shows why a
bare linear stopped score is too weak: a score with no original-packet bounded
projection normalization can turn square-summable tiny currents into infinite
positive variation. The bounded-projection admission here is the physical rule
that forbids that false selector.

Equivalently, the selected-readout stress functional must be continuous in
\(\mathfrak H_P\), uniformly on retained stopped charts. The Riesz representative
is the bounded original-packet test \(A_Q\). A functional without such a
representative can turn arbitrarily small original stress norm into unit
selected participation and is therefore a failed retained-selector admission,
not a physical child refill.

Partial, not Gold closed until this admission rule is installed as the retained
selector definition in the source graph and promotion surfaces.
