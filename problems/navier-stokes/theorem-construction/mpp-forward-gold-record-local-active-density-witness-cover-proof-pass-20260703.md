---
theorem_id: forward-gold-record-local-active-density-witness-cover-proof-pass-20260703
status: proof-pass-strict-obstruction-open
created: 2026-07-03
problem: navier-stokes
route: forward-gold-signed-critical-height-restart
logical_landing_node: RecordLocalActiveDensityWitnessCover.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/target-operating-contract.yaml
  - problems/navier-stokes/theorem-packet.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-local-positive-production-witness-cover-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-upcrossing-branch-exhaustion-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-witness-cover-active-density-source-wall-unification-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-strict-storage-compactness-rigidity-attack-20260701.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-coupled-storage-loop-audit-20260702.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-noncircular-same-parent-coupled-storage-proof-pressure-20260702.md
completion_truth: >-
  This is a proof pass and obstruction note, not Gold closure. It proves the
  conditional implication that signed-height positive-production trace admission
  plus noncircular same-parent coupled storage implies RecordLocalActiveDensityWitnessCover.A.
  It also records that current repo surfaces do not yet prove that the actual
  record-local positive production trace is admitted to the parent-announced
  active source.
---

# Record-local active-density witness cover proof pass

## 1. Physical target

There is one evolving velocity field and one signed critical-height equation,

\[
{dH\over dt}=P(t)-\nu D(t).
\tag{ADW.1}
\]

A thin record upcrossing \([a,b]\) is produced by the same fluid when the positive
part of \(P\) lifts \(H\). The proof is not allowed to choose a useful witness
after the child readout is seen. The witness must already be present as a
parent-known active source of the same packet before the record is read as a
positive event.

That is the physical content of

\[
\texttt{RecordLocalActiveDensityWitnessCover.A}.
\tag{ADW.2}
\]

It asks for the record-local \(P_+dt\) trace to be represented by finite-overlap
same-parent witnesses whose source is paid by the parent-announced
active-density/full-exchange storage.

Here \(P_+\) is not a clipping method. It is only the positive part of the signed
production after the signed record interval has been fixed. The theorem must show
that this signed production was already carried by the parent packet; it may not
manufacture a new source by clipping the readout.

## 2. Direct implication once trace admission and storage are granted

Let the same stopped parent packet carry the coupled active faces

\[
\mathcal F_P
=
\begin{pmatrix}
dZ_P^{crit}\\
d\Xi_P^{FE,act}\\
dA_P^{AT}
\end{pmatrix}.
\tag{ADW.3}
\]

Assume the noncircular same-parent coupled storage inequality

\[
\mathcal F_P
\le
-d\mathcal M_P
+K_P\mathcal F_P
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
\rho(K_P)<1,
\tag{ADW.4}
\]

with \(\mathcal M_P\) bounded below from the original pre-clipping packet. By
Perron-Frobenius absorption, there is a positive vector \(q_P\) and a number
\(\eta>0\) such that

\[
\eta\,q_P^T\mathcal F_P
\le
-d(q_P^T\mathcal M_P)
+q_P^T(d\Theta_P^0+dPaid_P+dStop_P).
\tag{ADW.5}
\]

Now add the missing signed-height trace admission. For every thin record
upcrossing \([a,b]\), the record-positive production measure

\[
d\mu_H^+ := P_+(t)\,dt\big|_{[a,b]}
\tag{ADW.6}
\]

must be admitted into the same parent active faces before the record-positive
readout is used as a charge:

\[
d\mu_H^+
\le
C_N\sum_{W\in\mathcal W_{[a,b]}}p_W^+(t)\,dt
+dLegal+dStop,
\tag{ADW.7}
\]

where the family \(\mathcal W_{[a,b]}\) has finite overlap, and every \(W\)
has its parent interval, carrier, selected direction or score, and charge
coordinate fixed before the child positive readout. The same family must satisfy

\[
\sum_{W\in\mathcal W_{[a,b]}}Source(W)
\le
C_N\int_{[a,b]}q_P^T\mathcal F_P
+Legal([a,b])+Stop([a,b]).
\tag{ADW.8}
\]

Integrating `(ADW.5)' over the stopped parent histories that meet \([a,b]\)
then gives the original-data bound for the right side of `(ADW.8)'. Equations
`(ADW.7)' and `(ADW.8)' are exactly the active-density witness cover required
by the record-local positive-production theorem. The branch notes may then act
as consumers: reset, fixed stopped-score return, Schur-visible residence,
Schur-thin paid motion, superheat/thickness, legal, or stop can pay an admitted
witness according to its already declared coordinate.

So the valid implication is

\[
\texttt{SignedHeightPositiveProductionTraceAdmission.A}
+
\texttt{SameParentCoupledActiveStorage.A}
\Longrightarrow
\texttt{RecordLocalActiveDensityWitnessCover.A}.
\tag{ADW.9}
\]

## 3. Where the current repo stops

The current TFE2748B surfaces do not prove `(ADW.9)' unconditionally.

The storage side is still open. The repo has rejected the sequential chain

\[
\texttt{full-exchange storage}
\Longrightarrow
\texttt{finite excess}
\Longrightarrow
\texttt{critical-source storage}
\Longrightarrow
\texttt{full-exchange storage}
\tag{ADW.10}
\]

as circular. The current noncircular storage burden is a simultaneous
same-parent inequality like `(ADW.4)' with feedback spectral radius strictly
below one, or an independent proof of one coupled face from the original packet.

The trace side is also not installed. A parent active storage theorem budgets
the active source faces it actually contains. A signed-height record spike says
that the scalar trace \(P_+dt\) raised \(H\). The proof still has to show that
this particular trace is one of the parent-announced active sources before the
record is counted as positive production. Without that admission, the proof may
only be selecting a successful child burst after the fact.

The branch surfaces are downstream of this point. The reset, Schur, return,
and superheat notes classify or pay witnesses after the witness family is
already admitted. They do not construct the event-local parent-known family for
an arbitrary thin signed-height record upcrossing.

## 4. Countercheck against storage-only closure

An abstract measure model shows the gap. Let \(dA\) be a parent-announced active
source measure satisfying a storage inequality like `(ADW.4)', and let a scalar
positive trace \(d\mu^+\) have a narrow spike on a subinterval where \(dA=0\).
The storage theorem for \(dA\) remains true, and the scalar record spike remains
real, but there is no finite-overlap witness cover dominated by \(dA\).

This is not a Navier-Stokes counterexample. It is the proof-theoretic obstruction:
a budget for a parent source does not pay the record production unless the record
production has first been admitted into that source.

## 5. Sharpened next theorem

The smallest new named producer exposed by this pass is

\[
\texttt{SignedHeightPositiveProductionTraceAdmission.A}.
\tag{ADW.11}
\]

It must prove, from the original same-fluid Navier-Stokes packet, that every thin
high signed-height record upcrossing admits its record-positive production trace
into the parent active-density/full-exchange faces with
finite overlap and no self-feeding selection. Paired with the simultaneous
same-parent coupled storage inequality, this gives
`RecordLocalActiveDensityWitnessCover.A`; paired with the existing branch
consumer notes, it gives the record-local positive-production witness cover.

The consolidated physical chain is therefore sharper than the previous roof:

\[
\text{original same-fluid packet}
\longrightarrow
\text{signed-height record work admitted into the parent source}
\longrightarrow
\text{strict same-parent active storage}
\longrightarrow
\text{record-local witnesses}
\longrightarrow
\text{finite branch charges}
\longrightarrow
\sup_{t<T}H(t)<\infty .
\tag{ADW.12}
\]

The route remains open exactly at the first two arrows, unless one theorem proves
them simultaneously.

## 6. No-clipping refinement

The pointwise \(P_+dt\) admission form above is sufficient, but it is stronger
than the signed physical story needs. A record upcrossing already fixes the
positive work without clipping. If \(H(a)=\lambda\) and \(H(b)=2\lambda\), then

\[
\int_a^b P(t)\,dt
=
H(b)-H(a)+\nu\int_a^bD(t)\,dt
\ge \lambda .
\tag{ADW.13}
\]

So the cleaner producer is not a child-positive trace. It is record-net signed
work admission: the signed nonlinear work \(\int_a^bP(t)\,dt\) that raises the
same \(H(t)\) must be represented by parent-announced active source faces of the
same packet, before that record is counted by any branch charge.

This replaces the earlier sufficient target
`SignedHeightPositiveProductionTraceAdmission.A' by the weaker and more physical
burden:

\[
\texttt{SignedHeightRecordNetWorkAdmission.A}
+\texttt{SameParentCoupledActiveStorage.A}
\Longrightarrow
\texttt{RecordLocalActiveDensityWitnessCover.A}.
\tag{ADW.14}
\]

Pointwise \(P_+dt\) admission still implies `(ADW.14)', but it is no longer the
preferred theorem to prove. The record interval itself supplies the positive sign;
the remaining work is to identify that signed record-work inside the original
parent packet and give it strict same-parent storage.
