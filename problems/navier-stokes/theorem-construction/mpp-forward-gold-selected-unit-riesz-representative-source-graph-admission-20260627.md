---
theorem_id: forward-gold-selected-unit-riesz-representative-source-graph-admission-20260627
status: bounded-riesz-normal-form-proved-scale-native-capture-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines:
  - ScaleNativeActiveParticipationNativeReserveHinge.A
  - SelectedUnitBoundedOriginalPacketProjectionAdmission.A
  - SelectedActionCurrencyBoundedOriginalPacketEnforcement.A
  - SelectedReadoutDifferentialExhaustion.A
  - StoppedSelectorBoundedProjectionOfOriginalParticipationLaw.A
  - SelectedReadoutParentSubtractedCurrentAdmission.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-scale-native-active-participation-native-reserve-hinge-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-action-currency-bounded-original-packet-enforcement-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-unit-bounded-original-packet-projection-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-readout-differential-exhaustion-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-readout-parent-subtracted-current-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bounded-projection-original-participation-law-20260627.md
effect: >-
  Converts the bounded original-packet projection rule into the exact Riesz
  normal form for one admitted channel. Under this admission, fresh bounded
  tests are Bessel/martingale differences, exact inherited reuse is parent
  current, and changed inherited reuse is reset/stop/legal/selector motion.
  This does not capture pure scale-native zoom events: unit rescaled tests may
  pull back with original norm r^{-1/2}. Gold remains open at the native-reserve
  / scale-memory storage theorem that pays those scale-native births.
---

# Selected unit Riesz representative source-graph admission

The selected unit rule is not a new reserve. It is the source-graph definition
of what may count in the bounded original-packet readout channel.

The scale-native channel is separate.  A unit read in rescaled coordinates need
not be a bounded original-packet functional after pullback.  That case is not
closed by the Riesz theorem below; it is the native-reserve hinge.

On a stopped parent history \(P\), use the original material stress Hilbert
space

\[
\mathfrak H_P
=
L^2(\operatorname{Hist}(P);\mathrm{Sym}_0),
\qquad
G=2\nu S .
\tag{1}
\]

The energy law gives

\[
\|G\|_{\mathfrak H_P}^2\le C_\nu\|u_0\|_{L^2}^2 .
\tag{2}
\]

The selected scalar readout has to be differentiated before positive-part
selection:

\[
a_Q(t)=\mathcal A_Q(\mathfrak U_Q(t),\Pi_Q(t),\chi_Q(t)),
\qquad
dA_{\rm sel}^+(Q)=[da_Q]_+ .
\tag{3}
\]

The stress component of this differential is the only component considered in
this note. Reset, selector, frame, collar, stop, and legal components remain in
their existing ledgers.

## 1. Admission normal form

For a retained selected child \(Q\subset P\), the source graph must record a
parent-known linear functional

\[
\Lambda_Q:\mathfrak H_P\to\mathbb R
\tag{4}
\]

such that the stress contribution to the selected readout is

\[
D_{\mathfrak U}\mathcal A_Q[d\mathfrak U_Q]_{\rm stress}
=
\Lambda_Q(G).
\tag{5}
\]

The retained Gold admission condition is the uniform continuity bound

\[
|\Lambda_Q(H)|
\le
C_N\|H\|_{\mathfrak H_P}
\qquad
\text{for every }H\in\mathfrak H_P .
\tag{6}
\]

By the Riesz representation theorem, `(6)` is equivalent to the existence of a
parent-known test

\[
A_Q\in\mathfrak H_P,
\qquad
\|A_Q\|_{\mathfrak H_P}\le C_N,
\qquad
\Lambda_Q(G)=\langle G,A_Q\rangle_{\mathfrak H_P}.
\tag{7}
\]

Thus the slogan

```text
selected unit = bounded original-packet projection
```

has an exact Hilbert-space meaning: the selected unit is admitted only after a
bounded Riesz representative has been produced in the original material stress
packet, before scalar positive readout.

## 2. Why this is noncircular

The bound `(6)` is checked on the stopped parent chart and in the original
material norm. Its constant comes from the retained finite selector chart,
finite route maps, Hodge/divergence-free test construction, collar/order-lock
aperture, and stop/legal exits. It does not use descendant selected action,
future child tails, or the full material clock recovered downstream.

Pressure has already been removed at the test level:

\[
\int_{\operatorname{Hist}(Q)} Q\,D_A\cdot w_Q=0 .
\tag{8}
\]

The remaining stress read is viscous stress work:

\[
\Lambda_Q(G)
=
\int_{\operatorname{Hist}(Q)}2\nu S_A:\nabla_A w_Q .
\tag{9}
\]

The admission test asks whether the normalized selected unit obtained from
`(9)` still has bounded norm as an element of \(\mathfrak H_P^\ast\). If it
does, `(7)` supplies the original-packet test \(A_Q\). If it does not, the
selector has inserted scale renormalization not present in the original fluid
packet.

## 3. Parent split after admission

After `(7)` is installed, split against the parent-predictable stress record:

\[
A_Q
=
\Pi_{E_{Q^-}}A_Q+(I-\Pi_{E_{Q^-}})A_Q
=
B_Q+F_Q .
\tag{10}
\]

The selected new current is the parent-subtracted read

\[
\Delta J_Q^{new}
=
\langle G,A_Q\rangle
-
\langle G,B_Q\rangle
=
\langle G,F_Q\rangle .
\tag{11}
\]

Exact inherited reuse has \(F_Q=0\) and creates no new selected child unit.
Changed inherited reuse changes \(E_{Q^-}\), \(\Pi_{E_{Q^-}}\), the selector
packet, the collar, or the stopped frame; those changes are already reset,
stop, legal, donor, reselection, or selector-drift terms.

## 4. Fresh packing becomes ordinary Bessel

For first births, the \(F_Q\) lie in martingale-difference subspaces of the same
stopped parent Hilbert space. After normalizing nonzero \(F_Q\), the admitted
fresh directions form a Bessel family. Hence

\[
\sum_{Q\subset P}
|\langle G,F_Q\rangle_{\mathfrak H_P}|^2
\le
C_N\|G\|_{\mathfrak H_P}^2
\le
C_N(u_0).
\tag{12}
\]

This is the correct form of fresh-channel packing. There is no separate
scale-weighted reserve for fresh units after admission: a child that can be
counted as one unit has already supplied a bounded original-packet test.
Infinitely many order-one fresh selected units would be infinitely many
order-one projections of one finite vector onto Bessel directions.

## 5. Failure of bounded-Riesz admission

If `(6)` fails, then for every \(M\) there is an \(H_M\in\mathfrak H_P\) with

\[
\|H_M\|_{\mathfrak H_P}\le M^{-1},
\qquad
|\Lambda_Q(H_M)|\ge 1 .
\tag{13}
\]

So the bounded-test measuring rule can declare unit selected participation from
arbitrarily small original-packet stress norm.  Within the bounded-Riesz channel,
that is measuring-rule creation of participation and cannot be retained.

For a genuine scale-native zoom event, this conclusion is not enough: the unit
rescaled test may be physically meaningful while its original pullback is
unbounded.  That case must be paid by `NativeBirthChargePacking.A` /
`SelectedGeneratorStorageCoercivity.A`, not dismissed by the bounded-Riesz
normal form.

## 6. Consequence for the live Gold hinge

This note proves the normal-form reduction for the bounded original-packet
channel:

\[
\text{retained selected-unit admission}
\quad\Longleftrightarrow\quad
\text{uniform Riesz representative bound }(6)\text{--}(7)
\tag{14}
\]

for the stress component before positive selected readout.

With `(14)` installed for bounded-Riesz admitted reads, the installed chain
applies to that part of the selected action:

\[
\begin{aligned}
&\text{fresh }F_Q\text{ Bessel packing}
+\text{ parent reuse determinant telescope}\\
&\quad
+\text{ first-exit reset/stop/legal ledgers}
\Longrightarrow
\sum_Q\Theta_Q<\infty
\Longrightarrow
\mathcal T_{\rm full}<\infty
\Longrightarrow
\sup_{t<T^\ast}\|u(t)\|_{H^s}<\infty .
\end{aligned}
\tag{15}
\]

The full Gold proof still needs the scale-native native-reserve theorem for
high-ratio zoom births whose unit rescaled tests are not bounded original-packet
functionals.

The source-graph burden for selected-unit admission is now discharged by the
explicit retained-selector admission criterion in
`mpp-forward-gold-selected-action-currency-bounded-original-packet-enforcement-20260627.md`.
Every downstream selected-action use must read through `(6)`--`(7)`: bounded
Riesz representative, inherited/root current, paid stop/legal/reselection or
selector drift, or alias. Any unbounded scale-renormalized read is outside the
retained Gold branch.

Partial, not Gold closed until that source-graph admission is enforced.
