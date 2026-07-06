---
theorem_id: forward-gold-overlap-bath-bounded-custody-wkb-no-neutral-persistence-20260706
status: strict-reduction-bounded-custody-wkb-bath-cannot-supply-unbounded-active-service
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - BoundedCustodyWKB.NoNeutralPersistence
  - WKBActiveService.CurrencyDichotomy
  - TerminalFrequencyOrRefresh.RemainingBranches
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-material-phase-service-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-variable-weight-refresh-variation-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-bank-scale-motion-variation-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-high-re-log-reservoir-persistence-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-terminal-frequency-escape-fork-20260706.md
completion_truth: >-
  Strict reduction only. Combining the material Beltrami service identity,
  the variable-weight ledger, the moving-bank ledger, and the high-Re log-room
  reduction gives one bounded-custody no-persistence theorem. On any same-bank
  WKB bath whose active carriers remain in a relative log-window of width
  Delta, with total mixture weight W, weight total variation V_w, and bank
  log-variation V_D, the sign-coherent active service A satisfies
  A <= W Delta + (Delta/2) V_w + W V_D. If Delta is supplied by the high-Re
  endpoint reservoir, Delta <= (1/2) log P_+ with
  P_+=Re_D theta_+^2, so service A forces either refresh/reassembly
  variation, bank log-variation, or exponential carrier persistence. Therefore
  a bounded-custody same-bank WKB bath cannot be an indefinite neutral
  pressure-service supplier. This proves no uniform confinement floor because
  unbounded refresh, unbounded bank motion, terminal-frequency/high-factor
  escape, orthogonal service, or full dynamic construction/exclusion remain.
---

# Bounded-custody WKB bath: no neutral persistence

## 1. Kill question

The WKB overlap bath still has one tempting escape phrase:
\[
  \text{keep serving pressure with the same bath, at high Reynolds number.}
  \tag{BCW.1}
\]

The kill question is whether that can be a neutral persistence mechanism after
the already filed material-phase identities are imposed.

The checked answer is no under bounded custody. A same-bank WKB bath can serve
only by spending one of three currencies: relative carrier log room, population
weight variation, or bank log variation. If all three stay bounded, the total
sign-coherent service is bounded.

## 2. Input ledgers

For Beltrami WKB pressure shapes,
\[
  K=\sum_i w_i\left({1\over3}I-n_i\otimes n_i\right),
  \qquad
  S:K=\sum_i w_i D_t\log\lambda_i.
  \tag{BCW.2}
\]

For a moving bank scale \(D(t)\), set
\[
  z_i=\log(\lambda_iD).
  \tag{BCW.3}
\]

Assume the active carriers stay in one relative WKB log-window
\[
  a\le z_i(t)\le b,
  \qquad
  \Delta=b-a,
  \tag{BCW.4}
\]
with fixed total mixture weight
\[
  W=\sum_i w_i(t).
  \tag{BCW.5}
\]

Let
\[
  V_w(I):=\int_I\sum_i |D_tw_i|\,dt,
  \qquad
  V_D(I):=\int_I |D_t\log D|\,dt.
  \tag{BCW.6}
\]

The moving-bank ledger gives, for every interval \(I\),
\[
  \left|\int_I S:K\,dt\right|
  \le
  W\Delta+{\Delta\over2}V_w(I)+WV_D(I).
  \tag{BCW.7}
\]

## 3. No neutral persistence

Let
\[
  A(I):=\left|\int_I S:K\,dt\right|
  \tag{BCW.8}
\]
be the sign-coherent active service demanded from the bath. From (BCW.7),
\[
  A(I)\le W\Delta+{\Delta\over2}V_w(I)+WV_D(I).
  \tag{BCW.9}
\]

Thus a same-bank WKB bath with bounded \(\Delta\), \(V_w\), and \(V_D\)
has bounded total active service. In particular, if a record ladder demands a
sequence of same-sign services \(A_N\to\infty\) on increasing intervals, then
at least one of
\[
  \Delta_N,\qquad V_w([t_0,t_N]),\qquad V_D([t_0,t_N])
  \tag{BCW.10}
\]
must diverge.

Equivalently, after endpoint relative room is spent, any further service must
appear as refresh/reassembly variation or bank log-motion:
\[
  { \Delta\over2}V_w(I)+WV_D(I)
  \ge
  \bigl(A(I)-W\Delta\bigr)_+.
  \tag{BCW.11}
\]

This is the no-neutral-persistence statement.

## 4. High-Re endpoint room

The high-Re reservoir is not a fourth currency. It is endpoint room:
\[
  \Delta\le {1\over2}\log P_+,
  \qquad
  P_+:=\operatorname{Re}_D\theta_+^2.
  \tag{BCW.12}
\]

Combining (BCW.9) and (BCW.12),
\[
  A(I)
  \le
  {1\over2}\left(W+{1\over2}V_w(I)\right)\log P_+
  +
  WV_D(I).
  \tag{BCW.13}
\]

Therefore, whenever \(A(I)>WV_D(I)\),
\[
  P_+
  \ge
  \exp\!\left(
    {2(A(I)-WV_D(I))\over W+\frac12 V_w(I)}
  \right).
  \tag{BCW.14}
\]

In the fixed-population, fixed-bank case \(V_w=V_D=0\), this reduces to the
already filed exponential persistence price
\[
  P_+\ge \exp(2A(I)/W).
  \tag{BCW.15}
\]

So the high-Re reservoir buys service only by terminal carrier persistence. It
does not reset itself rung by rung.

## 5. Terminal fork

If the same material population uses (BCW.12) repeatedly and
\[
  A_N\to\infty,
  \tag{BCW.16}
\]
then the endpoint-room term forces terminal carrier-frequency travel. The
terminal-frequency fork has only two horns:
\[
  \phi |K|\not\to0
  \quad\Rightarrow\quad
  \text{high-Sobolev Field/readout material,}
  \tag{BCW.17}
\]
and
\[
  \phi |K|\to0
  \quad\Rightarrow\quad
  \text{intermittent high-factor source/upcascade branch.}
  \tag{BCW.18}
\]

Thus terminal frequency is not a hidden smooth pressure supplier. It is a
Field/readout horn or the already named high-factor source horn.

## 6. Consequence for the survivor

The same-bank WKB overlap bath now has the exact bounded-custody split:
\[
  \text{active service}
  \Rightarrow
  \begin{cases}
  \text{finite endpoint room, hence bounded total service,}\\
  \text{weight variation / refresh / reassembly,}\\
  \text{bank log-variation / scale custody,}\\
  \text{terminal frequency Field or high-factor source horn,}\\
  \text{orthogonal service with a separate frame-holding cost,}\\
  \text{or full dynamic construction/exclusion.}
  \end{cases}
  \tag{BCW.19}
\]

This removes the neutral same-bank persistence escape. It does not prove the
confinement constant, because the unbounded-custody branches in (BCW.19) still
need Gate-8/custody pricing, terminal admission, no-free-upcascade, or a
dynamic WKB construction/exclusion theorem.

## 7. Four-sentence result

For a same-bank WKB bath in a relative carrier log-window of width
\(\Delta\),
\[
  A\le W\Delta+{\Delta\over2}V_w+WV_D.
\]
Thus bounded log room, bounded population variation, and bounded bank motion
allow only bounded sign-coherent pressure service. If the log room is supplied
by high Reynolds number, then \(P_+=\operatorname{Re}_D\theta_+^2\) must grow
exponentially with the unpaid service after variation is accounted for.
Unbounded service therefore routes to refresh/reassembly, bank custody,
terminal frequency Field/high-factor horns, orthogonal service, or
construction/exclusion; it is not a neutral persistent bath.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
