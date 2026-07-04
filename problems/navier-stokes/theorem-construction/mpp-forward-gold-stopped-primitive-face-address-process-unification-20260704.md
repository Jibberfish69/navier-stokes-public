---
theorem_id: forward-gold-stopped-primitive-face-address-process-unification-20260704
status: physical-unification-and-strict-reduction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / same-packet face-address custody
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - StoppedPrimitiveFaceAddressProcess.A
  - RecordFacePrimitiveChannelPredictableTrace.A
  - PrimitiveReturnFaceAddressStoppingPartition.A
  - PrimitiveReturnFaceAddressChangePaidOrExit.A
role: >-
  Consolidates the positive trace, same-face negative return, first-address
  partition, and paid re-entry problems into one physical missing object: a
  parent-announced stopped face-address process for the selector-owned primitive
  channel of the same retained packet.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-primitive-channel-predictable-trace-custody-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-return-first-face-address-stopping-partition-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-face-signed-channel-localization-proof-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-pre-readout-custody-tuple-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-admission-no-detachment-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fixed-stopped-score-return-bv-closure-20260627.md
completion_truth: >-
  This note is not a proof of the stopped face-address process or Navier-Stokes
  smoothness. It identifies the shared physical producer underneath several open
  Gold rows. Current sources prove edge-custody, no-detachment, local thickness,
  stopped return/BV, and formal same-face localization only as support until the
  primitive channel carries a single stopped address process for both positive
  and negative signed events.
---

# Stopped primitive face-address process unification

## 1. One physical object

The same packet is being asked to do two jobs. Its positive signed work must be
traced on an admitted record face before readout. Its negative return must be
spent only on the face that the same packet is returning through.

Those are not separate physical stories. They are the positive and negative
halves of one selector-owned primitive signed channel

\[
Y_{\kappa,S}\,d\sigma dt
\tag{SAP.1}
\]

inside one Navier-Stokes velocity field. Transport carries the material packet,
pressure and incompressibility choose the projected direction, viscosity and
frame motion rotate or dissipate the channel, and the stopped selector/chart/
detector/face coordinates say which face-address owns the event.

The missing object is therefore a stopped address process, not another detached
return ledger.

## 2. Stopped primitive face-address process

The consolidated producer is:

\[
\texttt{StoppedPrimitiveFaceAddressProcess.A}.
\tag{SAP.2}
\]

Statement. For each selector-owned primitive channel admitted before readout,
there is a parent-announced measurable process

\[
\mathfrak A_{\kappa,S}(z)
=
(\mathfrak R(z),\mathfrak X(z),\mathfrak D(z),\mathfrak F(z))
\tag{SAP.3}
\]

for primitive channel events \(z=(\sigma,t,x,\kappa)\), where
\(\mathfrak R\) is the stopped selector record, \(\mathfrak X\) is the retained
chart/projector coordinate, \(\mathfrak D\) is the detector/service split, and
\(\mathfrak F\) is the root/endpoint/full-exchange face address.

Its fibers form a stopped partition of the primitive signed channel measure,
modulo legal/stop/exit null boundaries. Address changes are actual same-packet
events and are charged by stopped selector first exits, chart/projector transfer,
detector/channel rotation, face-address no-detachment charge, local thickness
charge, legal loss, stop, or exit.

This is the single physical object that prevents double spending: every positive
or negative event of \(Y_{\kappa,S}\) has the same active address process before
bookkeeping asks what it pays.

## 3. What the process immediately supplies

First, the positive trace side. With stopped primitive-channel admission and
local face thickness, `(SAP.2)' gives a lawful restriction

\[
\mathbf 1_{\{\mathfrak A_{\kappa,S}=a\}}Y_{\kappa,S}\,d\sigma dt
\tag{SAP.4}
\]

on each parent-announced address fiber. Hence the record face is not selected
after seeing \([Y_{\kappa,S}]_+\). It is a fiber of the same stopped process.
This supplies the missing face-address part of
`RecordFacePrimitiveChannelPredictableTrace.A`.

Second, the negative return side. For a primitive return event \(z\), define
\(\alpha(z)=\mathfrak A_{\kappa,S}(z)\). The address fiber is the first active
face address before selected-face counting. If another selected face claims
\(z\), it has either the same address or it crosses an address-change event
charged by the process. This gives

\[
\texttt{PrimitiveReturnFaceAddressStoppingPartition.A}
+
\texttt{PrimitiveReturnFaceAddressChangePaidOrExit.A}.
\tag{SAP.5}
\]

Third, the same-face partner-return side. The negative part of `(SAP.4)' is
already attached to the same address fiber as the positive part. Once the local
domination input is proved on those fibers, the formal same-face localization
lemma applies without a cross-face subsidy.

Thus the unified reduction is:

\[
\begin{aligned}
&\texttt{RetainedRecordEdgeStoppedPrimitiveChannelAdmission.A}\\
&+\texttt{StoppedPrimitiveFaceAddressProcess.A}\\
&+\texttt{LocalRecordFaceThicknessOrChargeModulus.A}\\
&+\texttt{StoppedReturnBVFiniteFromOriginalData.A}
\end{aligned}
\Longrightarrow
\texttt{RecordFacePrimitiveChannelTraceAndReturnBudget.A}.
\tag{SAP.6}
\]

And, on the return-address side alone,

\[
\texttt{StoppedPrimitiveFaceAddressProcess.A}
\Longrightarrow
\texttt{PrimitiveReturnFirstFaceAddressOrPaidReentry.A}.
\tag{SAP.7}
\]

## 4. What current sources prove and do not prove

The retained-edge custody tuple names the right coordinates for one positive
record edge. The no-detachment modulus names the right paid failures when those
coordinates drift. Local thickness names the right same-face compactness
condition. Stopped return/BV names real finite negative-return currency. Formal
same-face localization proves the measure step after a face-local signed channel
exists.

None of those surfaces yet constructs one process
\(\mathfrak A_{\kappa,S}\) on the primitive channel measure itself. Without that
process, the proof can still have lawful positive faces, lawful negative return,
and lawful local compactness statements that live on different address fibers.

This is the physical obstruction:

\[
\text{edge custody without a primitive address process is still not event
ownership.}
\tag{SAP.8}
\]

## 5. Current proof truth

This is a simplification of the Gold route, not closure. The lower physical
producer is `StoppedPrimitiveFaceAddressProcess.A`.

It absorbs the detached wording around predictable trace, return first address,
address-change re-entry, and same-face negative-return ownership into one
construction problem: build the parent-announced stopped address process on the
selector-owned primitive signed channel from original Navier-Stokes history, or
route every failed address change to paid/legal/stop/exit before readout.
