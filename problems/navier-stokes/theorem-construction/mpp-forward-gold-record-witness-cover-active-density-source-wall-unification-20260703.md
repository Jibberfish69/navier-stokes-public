---
theorem_id: forward-gold-record-witness-cover-active-density-source-wall-unification-20260703
status: strict-reduction-unification-open
created: 2026-07-03
problem: navier-stokes
route: forward-gold-signed-critical-height-restart
logical_landing_node: RecordLocalPositiveProductionWitnessCover.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-local-positive-production-witness-cover-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-upcrossing-branch-exhaustion-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-local-active-density-witness-cover-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-strict-storage-compactness-rigidity-attack-20260701.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-coupled-storage-loop-audit-20260702.md
completion_truth: >-
  This note is a strict unification/reduction, not Gold closure. It identifies
  RecordLocalPositiveProductionWitnessCover.A as the signed-height record-local
  projection of the before-clipping parent active-density/full-exchange source
  wall. The sharpened proof pass shows that this projection still needs
  signed-height positive-production trace admission plus noncircular same-parent
  coupled storage from arbitrary original data.
---

# Record witness cover and active-density source-wall unification

## 1. Same physical transaction

There is one Navier-Stokes evolution and one signed critical-height equation

\[
{dH\over dt}=P(t)-\nu D(t).
\tag{RAW.1}
\]

A thin record upcrossing of \(H\) is not asking for an abstract branch ledger.
It is asking where the positive production \(P_+\) that lifted the same velocity
field was already visible in the parent packet before the child positive readout
was clipped and counted.

The older TFE2748B storage wall asks for the same physical act in global parent
language. It constructs a parent-known active meter/source from the original
pressure-Hodge, viscosity/Stokes, self-advection, incompressibility, collar,
frame, reset, legal, and stop packet before the child record is read, and then proves a
strict no-self-feeding storage inequality for that source.

Thus the witness-cover theorem is not an independent fourth branch. It is the
record-event projection of the before-clipping parent active-density/full-exchange
source wall.

## 2. Parent source form

The checked TFE source package has the form

\[
dQ_P^{meter}+[d\mathcal C_P^{crit}]_+
\le
C_Nd\Xi_P^{FE}
+
d\Theta_P^0+dPaid_P+dStop_P
\tag{RAW.2}
\]

and

\[
d\Xi_P^{FE}
\le
-dM_P^{FE}
+
\theta_{FE}d\Omega_P^{gen}
+
d\Theta_P^0+dPaid_P+dStop_P,
\qquad C_N\theta_{FE}<1.
\tag{RAW.3}
\]

Later reductions rewrite the same parent object as

\[
\texttt{ActiveTransitLocalStorage.A}
+
\texttt{FullExchangeNoSelfFeedingStorage.A},
\tag{RAW.4}
\]

with strict absorption \(C_N(\theta_A+\theta_{FE})<1\). The repo state is that
these are nonduplicate coordinates of one parent source wall, and that the
parent source wall is support under current Gold unless it proves the signed
critical-height peak/sign theorem.

## 3. Event-local theorem

The nonduplicative event-local theorem is:

\[
\texttt{RecordLocalActiveDensityWitnessCover.A}.
\tag{RAW.5}
\]

For every thin high record upcrossing \([a,b]\), restrict the parent active
source package `(RAW.2)'--`(RAW.4)' to the parent packets that meet \([a,b]\).
It must produce a finite-overlap witness family
\({\mathcal W}_{[a,b]}\) whose parent interval, material carrier, selected
direction or score, and charge coordinate are fixed before the child positive
readout. The family must dominate the record production trace:

\[
\int_a^b P_+(t)\,dt
\le
C_N\sum_{W\in{\mathcal W}_{[a,b]}}
\int_{I_W}p_W^+(t)\,dt
+
Legal([a,b])+Stop([a,b]),
\tag{RAW.6}
\]

and its total source must be charged to the strict parent storage:

\[
\sum_{W\in{\mathcal W}_{[a,b]}} Source(W)
\le
\int_{[a,b]}d\Xi_P^{FE,act}
+d\Theta^0+dPaid+dStop .
\tag{RAW.7}
\]

The branch routing is then a consumer step: each admitted witness is sent to
first-exit/reset, fixed stopped-score return, Schur-visible residence,
Schur-thin paid motion, superheat/thickness, legal, or stop.

## 4. Conditional implication

Assume `RecordLocalActiveDensityWitnessCover.A' and the already separated finite
branch budgets for the witness currencies actually used.

Then `RecordLocalPositiveProductionWitnessCover.A' follows immediately. The
parent active source gives the witness family before child clipping; `(RAW.6)'
gives capture of the positive production that raises \(H\); finite overlap keeps
the same record spike from being counted repeatedly; `(RAW.7)' and the strict
full-exchange storage give the original-data budget; and branch routing assigns
each witness to a finite same-fluid charge coordinate.

Combining this with the branch-exhaustion reduction gives
`RecordLocalCriticalServiceChargeExhaustion.A'. The installed signed-height
record criterion then yields peak control for \(H(t)\).

## 5. Converse boundary

A record-local witness cover for signed-height upcrossings does not prove the
global TFE2748B storage wall. It only proves the trace of that wall on record
events where \(P_+\) is doing signed-height work. The global wall still asks for
the before-clipping parent active-density/full-exchange storage from arbitrary
original data, with strict no-self-feeding margin and no terminal source atom.

This boundary prevents two wrong readings:

1. The record witness theorem is not a solved consequence of the existing branch
   notes; those notes pay admitted witnesses.
2. The TFE2748B source wall is not a competing Gold primitive; under the signed
   restart it matters exactly where it supplies the parent-known record witnesses
   needed by \(H(t)\).

## 6. Resulting single roof

The consolidated Gold story is:

\[
\text{original same-fluid packet}
\longrightarrow
    \text{parent-announced active-density/full-exchange source}
\longrightarrow
\text{record-local }P_+\text{ witnesses}
\longrightarrow
\text{finite branch charges}
\longrightarrow
\sup_{t<T}H(t)<\infty .
\tag{RAW.8}
\]

The open producer is the first arrow that is not already a consumer: construct
the parent active-density/full-exchange source in the event-local form
`RecordLocalActiveDensityWitnessCover.A' from arbitrary original smooth data,
with strict no-self-feeding margin before the record is read as positive
production.

The proof pass
`mpp-forward-gold-record-local-active-density-witness-cover-proof-pass-20260703.md`
sharpens this first arrow into two coupled obligations. The actual signed-height
positive production trace \(P_+dt\) must be admitted to the parent active source
before it is counted, and that same parent source must carry a noncircular strict
coupled storage inequality. Parent storage without trace admission budgets the
wrong measure; trace admission without strict storage localizes the spike without
an original-data finite budget.
