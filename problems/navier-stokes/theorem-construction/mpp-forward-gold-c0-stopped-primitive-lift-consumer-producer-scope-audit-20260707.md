---
theorem_id: forward-gold-c0-stopped-primitive-lift-consumer-producer-scope-audit-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / primitive signed channel / stopped lift scope
status: contradiction-resolved-closed-consumer-open-producer
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
target_object:
  - StoppedPrimitivePLSSignedScalePotentialLift.A
  - FreshSelectedPrimitiveAlignment.A
  - StoppedSelectorConeAperture.A
  - FreshCommonSelectorRefinementNoLoss.A
  - RetainedRecordEdgeStoppedPrimitiveChannelAdmission.A
  - StoppedNegativeScaleReturnCharge.A
source_refs:
  - problems/navier-stokes/spine.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-signed-scale-potential-lift-derivative-control-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-return-branch-sharp-inputs-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-record-return-bv-descent-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-selected-primitive-alignment-stopped-selector-cone-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-potential-average-bound-endpoint-corrected-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-negative-scale-return-bv-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-normalized-passage-collapse-to-parent-owned-bill-currency-20260707.md
completion_truth: >-
  Scope audit and contradiction removal, not c_0 closure. There is no real
  contradiction between the fixed stopped-channel lift note and the current live
  spine. The lift note closes a consumer: once a future-positive event has
  already been admitted to a parent-known stopped selector/channel, the primitive
  signed scale potential P_R=Gamma_R Z^S has positive-increment control and
  derivative domination by original-history motion. The c_0 producer still has
  to prove that the event is in that parent-known stopped channel before
  positive readout. Choosing Gamma_R after seeing the future selected edge would
  make the lift circular and would hide selector/projector/channel rotation as
  free service. Thus StoppedPrimitivePLSSignedScalePotentialLift.A is closed only
  relative to fixed-channel admission; the open producer is stopped selector
  aperture/common-selector refinement plus same-edge primitive-channel
  admission, followed by a genuine negative-return/no-free-oscillation bill.
---

# Stopped primitive lift: closed consumer, open producer

## 1. Apparent contradiction

One source says the stopped primitive signed scale-potential lift is closed for
a fixed stopped channel. Another source, including the current spine, still
lists

\[
\texttt{StoppedPrimitivePLSSignedScalePotentialLift.A}
\tag{SPL.1}
\]

as an open input in the record/return branch.

These statements are compatible. They refer to different proof stages.

## 2. The closed consumer

The closed statement has the following hypothesis: a stopped parent record has
already fixed the channel data

\[
\mathfrak R=(\mathfrak C,\sigma_R,\chi_R,\kappa_R),
\tag{SPL.2}
\]

and the signed readout \(\Gamma_R\) is parent-known before child positive
selection. Then the primitive scale potential

\[
P_R(\sigma,t,x)=\Gamma_R(\sigma,t,x)Z^S(\sigma,t,x)
\tag{SPL.3}
\]

is legitimate. For a fixed stopped-core transaction,

\[
\Gamma_R(D_e)=P_R(Q')-P_R(Q)+Err_e^{legal},
\tag{SPL.4}
\]

so positive selected action is controlled by positive increments of the same
primitive record, provided the stopped selector cone aperture already holds.
Also,

\[
\partial_\sigma P_R
=
\Gamma_R(\partial_\sigma Z^S)+(\partial_\sigma\Gamma_R)Z^S,
\tag{SPL.5}
\]

so derivative domination follows from original-history carrier derivative,
turnstile, exchange, covector, collar, and legal terms.

This is a real theorem, but it is a consumer theorem. It begins after the event
has entered a fixed parent-known channel.

## 3. The open producer

The c0 proof needs the prior admission statement:

\[
\text{future-positive retained edge}
\quad\Longrightarrow\quad
\text{same parent-known stopped selector/channel before readout}.
\tag{SPL.6}
\]

In local names this is the package

\[
\texttt{FreshSelectedPrimitiveAlignment.A}
+
\texttt{StoppedSelectorConeAperture.A}
+
\texttt{FreshCommonSelectorRefinementNoLoss.A}
+
\texttt{RetainedRecordEdgeStoppedPrimitiveChannelAdmission.A}.
\tag{SPL.7}
\]

Without `(SPL.7)', \(\Gamma_R\) can be chosen after seeing the future-positive
edge. Then every selected increment can be made positive in its own
post-selected channel, while the changes of channel, selector, covector,
projector, or order-lock are left unpaid. That is exactly the circular move the
c0 lane forbids.

Physically, the fluid packet is one object. The same pressure-viscosity-
incompressibility packet must carry the channel before the record counts the
positive edge. A channel chosen after readout is not same-parent payment; it is
post-readout relabeling.

## 4. Selector-rotation test

Consider a retained sequence of same-material increments \(D_k\). If the proof
is allowed to choose a separate sign functional \(\Gamma_k\) after observing
each \(D_k\), then

\[
\Gamma_k(D_k)>0
\tag{SPL.8}
\]

is automatic up to degeneracy. Defining \(P_k=\Gamma_k Z\) would create
positive primitive increments, but there is no common stopped potential whose
negative returns are being paid. The missing cost is the rotation from
\(\Gamma_k\) to \(\Gamma_{k+1}\):

\[
\Gamma_{k+1}-\Gamma_k .
\tag{SPL.9}
\]

In the repo currency this is selector/projector/channel rotation, detector-
silent service, order-lock partner deficit, collar/legal loss, or reset. It is
not free primitive lift.

Thus the fixed-channel lift cannot prove stopped selector aperture. It assumes
the aperture or charges its failure.

## 5. Consequence for record/return

Once `(SPL.7)' is supplied, the scalar BV part is elementary:

\[
(dP_R)_+
\le
dRec(P_R)+(dP_R)_- .
\tag{SPL.10}
\]

The potential-average note is also a consumer once the endpoint-corrected
parent-known record is built. Therefore the fixed-core branch now has exactly
two live production duties:

\[
\begin{gathered}
\text{same-edge fixed-channel admission before readout},\\
\text{finite negative return/no-free-oscillation in original-data currency.}
\end{gathered}
\tag{SPL.11}
\]

The second duty is

\[
\texttt{StoppedNegativeScaleReturnCharge.A}
\quad\text{or}\quad
\texttt{StoppedReturnBVFiniteFromOriginalData.A}.
\tag{SPL.12}
\]

Bounded oscillation of \(P_R\) does not suffice; a bounded scalar record can
reset infinitely often. The negative motion must be a real same-fluid return,
relaxation, exchange, frame, collar, donor/order-lock, or legal/stop bill from
the original history.

## 6. Result

The stopped primitive lift should be read as

\[
\text{fixed parent-known channel}
\Longrightarrow
\text{primitive signed scale-potential consumer}.
\tag{SPL.13}
\]

It should not be read as

\[
\text{future-positive edge}
\Longrightarrow
\text{fixed parent-known channel}.
\tag{SPL.14}
\]

The latter is the open producer. In the current c0 chain it returns to same-edge
pre-readout custody, selector/common-channel refinement, exact-projector/chart
ownership, detector-silent or paid-rotation service, and the same WLF/ODP
selected-critical payment before readout. No c0 closure is obtained by invoking
the fixed-channel lift alone.
