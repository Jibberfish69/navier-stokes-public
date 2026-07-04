---
theorem_id: forward-gold-primitive-chamber-same-face-negative-return-budget-reduction-20260704
status: conditional-proof-and-strict-reduction-not-gold-closure
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive chamber same-face return
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveStoppedChamberSameFaceNegativeReturnBudget.A
  - StoppedPrimitiveFaceAddressProcess.A
  - StoppedReturnBVFiniteFromOriginalData.A
role: >-
  Makes the physical content of the primitive chamber same-face negative-return
  budget explicit. The budget is not a new scalar BV request. It follows
  conditionally once the selector-owned primitive signed channel has a stopped
  face-address process on its events and the negative return of that same
  stopped primitive channel has original-data BV budget.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-chamber-face-local-signed-channel-construction-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-face-address-process-unification-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-face-address-process-event-map-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-selected-face-negative-return-budget-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-return-face-no-duplication-boundary-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-return-first-face-address-stopping-partition-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fixed-stopped-score-return-bv-closure-20260627.md
completion_truth: >-
  This note does not prove StoppedPrimitiveFaceAddressProcess.A and does not
  close Gold. It proves the conditional implication from event-level stopped
  face-address ownership plus same-channel stopped return/BV to the chamber
  same-face negative-return budget. The remaining physical producer is the
  event address process itself, together with its already isolated admission,
  coordinate-lift, overlap-priority, and address-change charges.
---

# Primitive chamber same-face negative-return budget reduction

## 1. Physical object

Work inside the same admitted stopped common-selector chamber used by the
face-local signed-channel construction. The primitive signed channel is

\[
Y_{\kappa,C}\,d\sigma dt .
\tag{SFN.1}
\]

One negative event of this measure is one physical return of the same
Navier-Stokes packet. Transport has carried the packet, pressure and
incompressibility have selected the projected stress, viscosity and frame motion
have changed the scale and direction, and the signed channel has turned
negative at a scale-time point.

The same-face budget asks where that return event is allowed to be spent. It
can be spent on the face through which the same event is returning. It cannot be
spent on a different face, on a later positive face chosen after readout, or on
several selected faces at once.

With the face fiber from the face-local construction,

\[
dJ_{C,F}
:=
\mathbf 1_{\{\pi_F=F\}}Y_{\kappa,C}\,d\sigma dt ,
\tag{SFN.2}
\]

the desired budget is

\[
\sum_{C,F}\int dJ_{C,F}^{-}
\le
C_N(u_0)+Paid+Legal+Stop+Exit+Err .
\tag{SFN.3}
\]

This is not "finite negative variation somewhere in the chamber." It is finite
negative variation after the primitive event has already been assigned to its
active stopped face address.

## 2. Physical lower inputs

The first lower input is event ownership:

\[
\texttt{StoppedPrimitiveFaceAddressProcess.A}.
\tag{SFN.4}
\]

For primitive signed-channel events \(z\), this supplies before readout a
parent-announced active address

\[
\mathfrak A(z)
=
(\mathfrak R(z),\mathfrak X(z),\mathfrak D(z),\mathfrak F(z)),
\tag{SFN.5}
\]

whose fibers form a stopped partition or active laminar address tree of the
primitive channel measure, modulo paid, legal, stopped, and exited boundaries.
The face coordinate \(\mathfrak F(z)\) is the same-face owner of both positive
trace and negative return.

The second lower input is same-channel return currency:

\[
\texttt{StoppedReturnBVFiniteFromOriginalData.A}.
\tag{SFN.6}
\]

In the fixed stopped-score closure, this is not a free scalar oscillation bound.
It is the negative variation of a parent-known stopped primitive score, paid by
the same routed carrier derivative plus selector, frame, connection, and legal
motion already demanded by the original-history root-geometry currency.

So the physical statement is:

\[
\text{event ownership}
\quad+\quad
\text{same-channel return/BV}
\quad\Longrightarrow\quad
\text{same-face return budget}.
\tag{SFN.7}
\]

## 3. Conditional proof

Assume `(SFN.4)' and `(SFN.6)' on the selector-owned primitive signed channel of
the admitted stopped chamber. The address process gives active fibers

\[
E_a=\{z:\mathfrak A(z)=a\}
\tag{SFN.8}
\]

that partition the primitive channel measure up to paid/legal/stop/exit overlap
and boundary pieces. The face fiber in `(SFN.2)' is the face coordinate of this
same address process:

\[
\{\pi_F=F\}
=
\bigcup_{a:\mathfrak F(a)=F}E_a
\tag{SFN.9}
\]

modulo the paid detachment and overlap-boundary pieces already carried by the
event-map branch.

Therefore restricting the negative measure to faces cannot create more
physical return than the stopped primitive channel has:

\[
\sum_{C,F}\int dJ_{C,F}^{-}
\le
M_N\int [Y_{\kappa,S}]_-\,d\sigma dt
+Paid+Legal+Stop+Exit+Err .
\tag{SFN.10}
\]

The finite multiplicity \(M_N\) is the fixed-depth overlap constant of the
stopped chamber/address family after parent priority is installed. When the
active address fibers are disjoint, \(M_N=1\).

By `(SFN.6)',

\[
\int [Y_{\kappa,S}]_-\,d\sigma dt
\le
C_N(u_0)+Err .
\tag{SFN.11}
\]

Combining `(SFN.10)' and `(SFN.11)' proves `(SFN.3)'. Hence, relative to the
already admitted primitive chamber and face-local measure construction,

\[
\texttt{StoppedPrimitiveFaceAddressProcess.A}
+
\texttt{StoppedReturnBVFiniteFromOriginalData.A}
\Longrightarrow
\texttt{PrimitiveStoppedChamberSameFaceNegativeReturnBudget.A}.
\tag{SFN.12}
\]

This is a conditional proof and a strict reduction. The analytic difficulty has
not disappeared; it has been put into the physical event-address process and
same-channel original-history return currency.

## 4. Why scalar or chamber BV is still only support

Scalar BV proves that some stopped score has finite negative variation. Chamber
BV proves that the chamber has negative return somewhere. Neither statement
chooses the face that owns a return event.

The local obstruction is the same wrong-face pattern already isolated in the
face-local construction:

\[
dL_A=dx,\qquad
dJ_A^-=0,\qquad
dL_B=0,\qquad
dJ_B^-=dx .
\tag{SFN.13}
\]

Total negative return balances total lost positive mass, but face \(A\) remains
unpaid. The physical failure is not lack of return. The failure is that the
return event was not owned by the face that lost sign.

The stopped face-address process is exactly the missing ownership statement. It
turns "there is return" into "this same primitive return belongs to this same
pre-readout face, or every extra face claim is paid, legal, stopped, or exited
before counting."

## 5. Current proof truth

Installed here:

\[
\text{stopped event address process}
+
\text{same-channel stopped return/BV}
\Longrightarrow
\text{primitive chamber same-face negative-return budget}.
\tag{SFN.14}
\]

Still open:

\[
\texttt{StoppedPrimitiveFaceAddressProcess.A}
\tag{SFN.15}
\]

for the primitive signed-channel measure itself. The repo has already reduced
that producer to event-address map plus address-change variation, and further
to chamber admission, nonselector coordinate lift, overlap priority, and the
four physical address-change coordinates. Those are the remaining physical
places where Gold can still fail to own the return event before readout.
