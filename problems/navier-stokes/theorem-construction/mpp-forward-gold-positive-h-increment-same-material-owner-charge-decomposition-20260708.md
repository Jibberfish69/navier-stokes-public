---
theorem_id: forward-gold-positive-h-increment-same-material-owner-charge-decomposition-20260708
status: strict-reduction-owner-charge-decomposition-not-proof
created: 2026-07-08
problem: navier-stokes
route: forward-gold signed-critical-height / pre-readout owner-charge law
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - SignedHeightRecordNetWorkAdmission.A
  - RetainedRecordEdgePreReadoutCustodyTuple.A
  - ParentKnownPreReadoutActiveStateCapacityOrPaidBoundary.A
  - OriginalHistoryRecordResetRootPayment.A
  - RecordAdmittedActiveFullExchangeCoupledStorage.A
  - ParentOwnedPositiveRecordBillCurrency.A
role: >-
  Takes a positive increment of the critical height and rewrites it as the
  same-material owner/charge obligation required before selected readout. The
  note records the forced decomposition and the exact remaining proof gap: the
  parent-known owner map and original-history charge measure are not installed
  from arbitrary original data.
source_refs:
  - problems/navier-stokes/spine.md
  - problems/navier-stokes/claim-ladder.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-fluid-physical-story-entrance-order-consolidation-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-local-active-density-witness-cover-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-meter-entropy-flux-split-same-history-capacity-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-active-state-root-payment-same-parent-projection-synthesis-20260704.md
completion_truth: >-
  This does not prove signed-height peak control, c0 positivity, or global
  regularity. It gives the correct pre-readout shape of the height-increment
  problem: every positive record increment must be owned by the same retained
  material edge and charged by one original-history measure before scalar
  selected readout.
---

# Positive H-increment same-material owner/charge decomposition

## 1. Start from the height increment, not the bill

Let

\[
H(t)={1\over2}\|\Lambda^{1/2}u(t)\|_2^2
\]

for one smooth Navier-Stokes field on a record interval \(I=[a,b]\). The
installed record-net identity is

\[
{dH\over dt}=P(t)-\nu D(t),
\qquad
\int_I P(t)\,dt
=H(b)-H(a)+\nu\int_I D(t)\,dt .
\tag{PHO.1}
\]

For a positive record increment

\[
\Delta H_I:=H(b)-H(a)>0,
\]

the same interval forces

\[
\Delta H_I
\le
\int_I P(t)\,dt .
\tag{PHO.2}
\]

The production work \(\int_I P(t)\,dt\) is therefore the first lawful carrier of
the positive height increment. The viscous term is already on the charge side of
the same identity; it is not a separate child readout.

## 2. The owner is the retained record edge

Before the scalar \(H\)-readout is allowed to count the increment, the positive
record work must be attached to the same material edge

\[
e_I=
(\text{retained high packet},
\text{low pressure/strain/current coefficient},
\text{material time window }I,
\text{signed polarity}).
\tag{PHO.3}
\]

This is the same object described by the current same-fluid consolidation
surface. It is not a packet selected after the fact because \(H\) went up. Its
high packet, low coefficient, material window, pressure/Hodge chart, and signed
polarity must all be addressed inside the original parent packet before the
positive scalar readout.

Thus the owner map is a pre-readout map

\[
\alpha:\{\text{record-positive primitive work pieces of }e_I\}
\longrightarrow
\{\text{parent-known primitive keys in }Z_P\}.
\tag{PHO.4}
\]

The map \(\alpha\) must include the parent address, exact-projector chart
license, detector/channel rotation, face-boundary motion, return/re-entry
address, and selected-critical root face for the same edge. These are not
separate owners; they are coordinates of one retained record edge.

## 3. The charge is one original-history measure

The charge side is one measure on the same parent-known event keys:

\[
\Gamma_{\rm pre}
=
\Gamma_{\rm addr}
+\Gamma_{\rm chart}
+\Gamma_{\rm root}
+\Gamma_{\rm FE}
+\Gamma_{\rm AT}
+\Gamma_{\rm reset/return}
+\Gamma_{\rm legal/stop/exit}.
\tag{PHO.5}
\]

This notation is bookkeeping, not a new separable bill. The summands name
faces of the same original pressure-viscosity-incompressibility-velocity
history: address/custody, chart service, selected-critical root payment, active
full-exchange storage, active-transit storage, reset/return payment, and typed
legal/stop/exit routing.

For a normalized thin record upcrossing with base height \(\lambda_I\), the
pre-readout owner/charge demand is

\[
\lambda_I^{-1}\Delta H_I
\le
C_N\,\Gamma_{\rm pre}(\alpha(e_I))
+Legal(I)+Stop(I)+Exit(I).
\tag{PHO.6}
\]

For a finite or countable family of disjoint retained record-positive primitive
pieces \(A_j\) of the same parent history, the same demand is

\[
\sum_j \lambda_j^{-1}\mu_j^+(A_j)
\le
C_N\,
\Gamma_{\rm pre}\!\left(\bigcup_j\alpha(A_j)\right)
+Legal+Stop+Exit .
\tag{PHO.7}
\]

Equation `(PHO.7)' is the height-increment version of the existing
owner-and-charge reading: selected positive work, address change, chart
transfer, detector/channel rotation, face-boundary motion, return re-entry, and
selected-critical root weight must be paid on the same primitive key before the
record is read as positive.

## 4. What this proves and what it does not

The forced part is the record-net reduction:

\[
\Delta H_I>0
\quad\Longrightarrow\quad
\text{same-interval signed production work } \int_I P(t)\,dt
\text{ carries the record increment.}
\tag{PHO.8}
\]

The admissible decomposition is:

\[
\text{positive }H\text{-increment}
\longrightarrow
\text{retained same-material edge }e_I
\xrightarrow{\ \alpha\ }
\text{parent-known primitive key}
\xrightarrow{\ \Gamma_{\rm pre}\ }
\text{same-history charge}.
\tag{PHO.9}
\]

The installed sources support the first arrow and the menu/admission shape:
record-net work is the right signed object, and the before-readout native work
menu is the right place to read it. The unproved arrow is the uniform
original-data construction of \(\alpha\) and \(\Gamma_{\rm pre}\) for every
positive record increment.

So the positive height increment does not by itself prove a bill lower bound.
It becomes a legitimate proof object only after the same material edge has a
parent-known owner and one same-history charge before the scalar readout. The
remaining theorem is exactly that construction:

\[
\boxed{
\text{for every positive signed-height record increment, construct }
(\alpha,\Gamma_{\rm pre})
\text{ from the original same NS history.}
}
\tag{PHO.10}
\]

Current repo authority marks this as a strict reduction toward
`SignedCriticalHeightSignPersistenceOrPeakBound.A`, with arbitrary-original-data
proof still open.
