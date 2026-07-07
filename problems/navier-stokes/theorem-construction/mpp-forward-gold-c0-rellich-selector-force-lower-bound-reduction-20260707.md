---
theorem_id: forward-gold-c0-rellich-selector-force-lower-bound-reduction-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / terminal Rellich reserve / selector-force lower bound
status: strict-reduction-and-failed-broad-rellich-positivity-proof
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
target_object:
  - SelectedRellichBulkPositivity.A
  - TerminalZenoRellichSameCarrierReserve.A
  - TerminalZenoVisibleReadoutPayment.A
  - TerminalSameCarrierCriticalAntiAtom.A
  - SameCarrierTailUI.A
  - ParentOwnedPositiveRecordBillCurrency.A
  - epsilon_star_positive
new_lower_object:
  - SelectedRellichSelectorForceLowerBound.A
  - SelectedRellichPolarNonnullOrPaidSelectorForce.A
  - NonAffinePressureViscousSignedCommutatorCoercivity.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-terminal-tail-ui-bill-currency-strict-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-zeno-rellich-same-carrier-reserve-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-microlocal-defect-positive-carrier-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-stress-characterization-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-leray-null-affine-moment-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-null-stress-selection-commutator-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-positive-source-adjoint-escape-identity-reentry-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-physical-synthesis-shrink-map-20260707.md
completion_truth: >-
  Strict reduction only. This pass attacks the Rellich route below the terminal
  tail-UI reduction. A broad SelectedRellichBulkPositivity.A cannot be justified
  from divergence-free microlocal visibility, affine null-stress obstruction, or
  adjoint detection alone. The checked null-stress algebra shows the exact
  missing mechanism: if a selected positive patch of a Leray-null full packet
  has nonzero trace-free affine moment, then it is not still pressure-law null;
  the selector creates the force P(S grad chi). Therefore the Rellich route
  lowers to a quantitative selected selector-force / non-affine pressure-viscous
  commutator lower bound on the same order-locked full packet, or to a paid
  selector/certificate/custody route-out. Such a lower bound would imply
  TerminalZenoRellichSameCarrierReserve.A, hence terminal tail UI/payment, hence
  ParentOwnedPositiveRecordBillCurrency.A and epsilon_* > 0. The lower bound is
  not installed here; no c_0, WLF.60, Rellich positivity, or MPP closure is
  claimed.
---

# Rellich selector-force lower bound reduction

## 1. Same terminal object

The terminal object is the same retained full selected packet

\[
D_Q=(S,\Pi_Q\nabla^2p).
\tag{RSF.1}
\]

The terminal Rellich route tries to pay a selected terminal Zeno pulse

\[
\mu_m(ds)=a_m(s)\,ds,
\qquad
a_m(s)\ge0,
\qquad
\mu_m([-1,0])\ge m_0>0,
\tag{RSF.2}
\]

by proving an unweighted same-carrier square reserve.  The desired estimate in
the Rellich note is

\[
\int_{-1}^{0}a_m(s)^2\,ds
\le
C\,\mathsf S_m(U_m,U_m)+C R_{\rm legal}(Q_m)+o_m(1).
\tag{RSF.3}
\]

If `(RSF.3)' holds after legal and paid exits are removed, the terminal pulse

\[
a_\tau(s)=M\tau^{-1}{\bf 1}_{(-\tau,0]}(s)
\tag{RSF.4}
\]

is impossible, because

\[
\int_{-1}^{0}a_\tau(s)^2\,ds=M^2\tau^{-1}\to\infty.
\tag{RSF.5}
\]

Thus `(RSF.3)' would imply `TerminalZenoVisibleReadoutPayment.A`.

## 2. Why broad Rellich positivity is not licensed yet

The broad theorem name is

\[
\texttt{SelectedRellichBulkPositivity.A}.
\tag{RSF.6}
\]

In symbol form it would need to say that the selected Rellich bulk controls the
positive selected terminal carrier:

\[
\mathcal B_{\rm Rel}(D_Q)
\ge
c\int_{-1}^{0}a_m(s)^2\,ds
-R_{\rm polar}-o_m(1).
\tag{RSF.7}
\]

Current supports do not prove `(RSF.7)' from incompressibility or microlocal
visibility alone.  The divergence-free polarized endpoint model has

\[
S_0=\operatorname{diag}(2,-1,-1),
\qquad
\xi=e_2,\qquad p=e_1,\qquad \xi\cdot p=0,
\tag{RSF.8}
\]

and produces a positive selected terminal carrier while satisfying the
principal incompressibility constraint.  The microlocal defect faithfully sees
the positive carrier; it does not make that carrier endpoint-uniformly
integrable or square-paid.

Adjoint detection has the same limitation.  It detects a terminal atom, but the
promotion from signed adjoint source work to the one-sided positive native
carrier is not installed.

So a direct proof of `(RSF.6)' must find an additional mechanism inside the full
packet.  The checked WKB null-stress algebra identifies that mechanism.

## 3. Exact selector-force identity

Let \(R\) be a compact symmetric stress with pressure-law nullity

\[
\mathbb P\,\operatorname{div}R=0.
\tag{RSF.9}
\]

Then

\[
R=qI+S,
\qquad
\operatorname{div}S=0.
\tag{RSF.10}
\]

For a selected patch \(\chi R\),

\[
\operatorname{div}(\chi R)
=
\nabla(\chi q)+S\nabla\chi.
\tag{RSF.11}
\]

Applying the Leray projector gives the exact selector force

\[
\mathbb P\,\operatorname{div}(\chi R)
=
\mathbb P(S\nabla\chi).
\tag{RSF.12}
\]

The affine-moment obstruction gives the branch split.  If
\[
\int \chi R:A\,dx\ne0
\tag{RSF.13}
\]
for some trace-free affine strain \(A\), then \(\chi R\) cannot remain
pressure-law null.  Equivalently,

\[
\int \chi R:A\,dx\ne0
\quad\Longrightarrow\quad
\mathbb P(S\nabla\chi)\ne0.
\tag{RSF.14}
\]

Positive selection from a null aggregate therefore creates a real force,
certificate, or custody burden.  It is not free Rellich bulk positivity.

## 4. The smaller theorem

The Rellich route should be lowered to:

\[
\texttt{SelectedRellichSelectorForceLowerBound.A}.
\tag{RSF.15}
\]

Statement shape.  On the retained terminal full packet \(D_Q\), after legal,
selector-drift, collar, gauge, and already paid exits are removed, a selected
positive terminal carrier with mass \(a_m\) satisfies

\[
\int_{-1}^{0}a_m(s)^2\,ds
\le
C
\int
\left|\mathbb P(S_m\nabla\chi_m)\right|^2
+C R_{\rm legal}(Q_m)+o_m(1),
\tag{RSF.16}
\]

or the selected force fails to be an admitted same-packet object and routes to
legal/certificate/custody failure before readout.

Equivalently, the branch form is:

\[
\begin{array}{ll}
\text{zero selected affine moment}
  &\Rightarrow \text{no Rellich payment of the selected carrier},\\[1mm]
\text{nonzero selected affine moment}
  &\Rightarrow \mathbb P(S\nabla\chi)\ne0,\\[1mm]
\text{quantified admitted selector force}
  &\Rightarrow \text{same-carrier square reserve},\\[1mm]
\text{unadmitted selector force}
  &\Rightarrow \text{legal/custody/Pack/Part/Field-facing route-out}.
\end{array}
\tag{RSF.17}
\]

This is the non-affine pressure-viscous signed commutator in terminal Rellich
coordinates.  It is smaller than broad Rellich positivity because it names the
specific force that must pay the selected positive patch.

## 5. Conditional implication to c0

Assume `(RSF.15)' and the standard Rellich bookkeeping that carries the selected
force as Schur/full-packet payment:

\[
\int
\left|\mathbb P(S_m\nabla\chi_m)\right|^2
\le
C\,\mathsf S_m(U_m,U_m)+C R_{\rm legal}(Q_m)+o_m(1).
\tag{RSF.18}
\]

Then `(RSF.16)' gives `(RSF.3)', hence
`TerminalZenoRellichSameCarrierReserve.A`.

That implies `TerminalZenoVisibleReadoutPayment.A`, which supplies the terminal
branch of `SameEdgeTerminalTailUIBillCurrency.A`.  The already checked finite
WLF mismatch reductions remove the nonterminal branches.  Therefore

\[
\texttt{SelectedRellichSelectorForceLowerBound.A}
\Longrightarrow
\texttt{ParentOwnedPositiveRecordBillCurrency.A}.
\tag{RSF.19}
\]

Consequently

\[
R(W)\le C B(W),
\qquad
\varepsilon_*\ge C^{-1}>0,
\qquad
c_0=2\varepsilon_*>0.
\tag{RSF.20}
\]

This is conditional on `(RSF.15)' and `(RSF.18)'.

## 6. Result

The proof did not close `SelectedRellichBulkPositivity.A`.  It replaced that
broad sign label by a smaller concrete theorem: quantify the selector force
\(\mathbb P(S\nabla\chi)\) created when a positive selected patch is cut out of
a pressure-law null full packet, or route the unadmitted force out before
readout.

This is the Rellich-side version of the c0 source wall: non-affine
pressure-viscous signed commutator coercivity on the same full packet.
