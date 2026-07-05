---
theorem_id: forward-gold-bfg4-record-self-financing-direct-attack-20260704
status: direct-attack-complete-self-financing-identity-not-proved-two-clock-countermodel
created: 2026-07-04
problem: navier-stokes
route: forward-gold / bathtub flux-gate / BFG.4
proof_role: checked obstruction and strict refinement of the BFG.4 target
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bathtub-momentum-flux-gate-producer-attempt-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wlf60-parent-weighted-first-admission-proof-pressure-test-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-predictable-active-weight-transition-producer-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wlf60-same-carrier-identity-primitive-channel-boundary-20260704.md
completion_truth: >-
  BFG.4 is not proved by the flux-gate identity plus record-cost accounting. The
  gate identity gives a true admission constraint: positive child-scale transfer
  needs co-located resolved strain. The record-cost lower bound gives high
  currency dissipation on the record interval. These are not automatically the
  same same-carrier object. A two-clock model separates the gate pulse from the
  later high-mode dissipation while preserving the record accounting, showing
  that record self-financing is not a formal consequence of BFG.1--BFG.3. The
  surviving theorem is a stricter co-location/alignment/persistence statement:
  every record-forced high-currency dissipation packet must remain tied to the
  parent-announced resolved strain that gates the next selected admission, or the
  mismatch must be evacuated to paid reset/return/legal/stop/endpoint branches.
---

# BFG.4 Record Self-Financing Direct Attack

## 1. Target

The open question from the bathtub flux-gate note is:

\[
\text{record-forced } \dot H^{3/2}\text{ dissipation}
\stackrel{?}{=}
\text{same-window gate strain for continued admission.}
\tag{RSG.1}
\]

The attraction is clear.  The flux-gate identity says child-scale admission is
stress worked against co-located resolved strain,

\[
\Pi_\ell=-\tau_\ell:\nabla u_\ell ,
\tag{RSG.2}
\]

while record accounting says an upcrossing from height \(\lambda\) to \(2\lambda\)
forces

\[
\int_a^b \|\Lambda^{3/2}u(t)\|_2^2\,dt
\gtrsim
\sqrt{\lambda}.
\tag{RSG.3}
\]

The proposed self-financing reading is that the record generates the very strain
resource that the next admission needs.

## 2. First split: admission versus recycling

`(RSG.2)` proves an admission fact:

\[
\Pi_\ell^+(t,x)>0
\quad\Longrightarrow\quad
|\tau_\ell(t,x)|>0
\text{ and }
|\nabla u_\ell(t,x)|>0
\text{ with positive alignment.}
\tag{RSG.4}
\]

This is useful.  It identifies a parent-announced active weight candidate:
\(\nabla u_\ell\) is present at the admission time and is not chosen from a future
selected tail.

But `(RSG.3)` is different.  In dyadic language,

\[
\|\Lambda^{3/2}u\|_2^2
\simeq
\sum_k 2^{3k}\|P_k u\|_2^2.
\tag{RSG.5}
\]

This is high-currency viscous dissipation of existing modes.  It is positive and
global in frequency.  It does not by itself specify:

1. the scale \(\ell\) at which the next gate is read;
2. the location of the resolved strain;
3. the sign/alignment of \(-\tau_\ell:\nabla u_\ell\);
4. persistence of \(\nabla u_\ell\) after the record-producing interaction;
5. identity between the dissipating high shell and the parent carrier selected
   for the next admission.

So BFG.4 is not one statement.  It is:

\[
\begin{array}{ll}
\text{BFG.4a} & \text{positive flux requires same-window resolved strain;}\\
\text{BFG.4b} & \text{record-forced dissipation recycles into the next gate strain.}
\end{array}
\tag{RSG.6}
\]

`BFG.4a` follows from the flux identity.  `BFG.4b` is the unproved theorem.

## 3. Two-clock countermodel to the formal implication

This is not a Navier-Stokes counterexample.  It is an insufficiency model showing
that `(RSG.2)` and `(RSG.3)` do not imply BFG.4b.

Let one parent window split into two subwindows \(A\cup B\).

On \(A\), a resolved strain gate is present:

\[
S_A(t)=L,\qquad \tau_A(t)=M,\qquad \Pi_A(t)=LM>0.
\tag{RSG.7}
\]

This short gate pulse transfers energy into a high shell and raises the critical
height.  On \(B\), the gate has rotated away or vanished:

\[
S_B(t)=0,\qquad \Pi_B(t)=0,
\tag{RSG.8}
\]

but the high shell created on \(A\) dissipates:

\[
D_{3/2,B}(t)=K>0.
\tag{RSG.9}
\]

Choose \(L,M,|A|,K,|B|\) so that the record balance holds:

\[
\Delta H+\nu\int_{A\cup B}D_{3/2}\,dt
\le
\int_A \Pi_A\,dt,
\qquad
\Delta H\simeq\lambda,
\tag{RSG.10}
\]

and so that

\[
\int_{A\cup B}D_{3/2}\,dt
\gtrsim
\sqrt{\lambda}.
\tag{RSG.11}
\]

The record has generated the high-currency dissipation required by `(RSG.3)`.
Yet the same-window gate for the next admission on \(B\) is zero.  The dissipated
high shell is not the resolved strain gate.

This model preserves the record accounting while falsifying the formal
inference:

\[
\int_I D_{3/2}\text{ large}
\Longrightarrow
\int_I |\nabla u_\ell|^2\text{ available as next gate currency}.
\tag{RSG.12}
\]

The missing information is co-location, scale matching, and alignment on the
same selected carrier.

## 4. Physical reason the recycling step is suspect

Viscosity does not turn high-frequency dissipation back into resolved strain.
It converts high-mode energy into heat.  That is a spend, not a refill.

Therefore the self-financing phrase must not be read as:

\[
\text{dissipation creates future admission resource for free.}
\tag{RSG.13}
\]

The only viable reading is stricter:

\[
\text{a record-producing gate leaves a parent-visible debt or storage mark on the
same carrier before the dissipating shell is allowed to disappear.}
\tag{RSG.14}
\]

That is no longer a consequence of the standard flux identity.  It is a
same-carrier storage theorem.

## 5. Relation to WPT.19

The BFG note correctly repairs one circularity risk in `(WPT.19)`: resolved
strain is parent-announced at the admission time, so it is not a future-tail
weight.

But the older predictable-weight attack already shows that measurability is not
packing.  A parent-predictable weight can still support a critical half-tail
unless the admitted intervals are packed by original-history movement, reset,
turnstile, exchange, covector rotation, return, or a bounded-below service
storage.

Thus the flux gate supplies:

\[
\text{parent-announced active weight candidate,}
\tag{RSG.15}
\]

not:

\[
\text{PredictableActiveWeightTransitionCarleson.A.}
\tag{RSG.16}
\]

The Carleson/storage theorem remains the producer.

## 6. Surviving sharpened target

BFG.4 should be replaced by the following strict target.

`RecordGateDissipationSameCarrierPersistence.A`

For each record-producing selected scale \(\ell\) and parent packet \(P\), the
positive flux gate has a pre-readout owner \(\alpha\) such that the flux work,
the dissipating high shell, and the next selected gate interval remain on the
same primitive key, or else the mismatch is paid before child positive readout:

\[
\begin{aligned}
&\int_{I_e}\Pi_\ell^+\,dt
+\nu\int_{I_e}D_{3/2,e}\,dt
+\mathrm{NextGate}_e\\
&\qquad\le
\Gamma_{\rm pre}(\alpha(e))
+\mathrm{Return}_e
+\mathrm{Reset}_e
+\mathrm{Legal}_e
+\mathrm{Stop}_e
+\mathrm{Endpoint}_e .
\end{aligned}
\tag{RSG.17}
\]

Here `NextGate_e` is not raw \(\int |\nabla u_\ell|^2\).  It is the
parent-announced resolved-strain/alignment currency actually used by the next
positive selected admission.

If `(RSG.17)` is proved, BFG.4 becomes a real same-carrier storage row.  If it is
not proved, the two-clock model shows the exact failure mode: a record gate can
produce high-shell dissipation and then lose the resolved gate before the next
admission.

## 7. Verdict

The direct attack does not prove record self-financing.

It gives a strict reduction:

\[
\text{BFG.4}
\quad\leadsto\quad
\texttt{RecordGateDissipationSameCarrierPersistence.A}.
\tag{RSG.18}
\]

It also gives a checked obstruction to the cheap version:

\[
\text{flux gate identity}
+\text{record-cost lower bound}
\not\Rightarrow
\text{self-financing}.
\tag{RSG.19}
\]

The flux-gate coordinate remains valuable as the parent-announced admission
weight and as a Tao-surviving test.  It is not yet the WLF.60 producer until the
same-carrier persistence/storage statement `(RSG.17)` is proved from original
Navier-Stokes history.
