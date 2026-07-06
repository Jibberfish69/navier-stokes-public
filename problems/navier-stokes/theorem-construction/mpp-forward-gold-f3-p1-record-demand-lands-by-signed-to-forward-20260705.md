---
theorem_id: forward-gold-f3-p1-record-demand-lands-by-signed-to-forward-20260705
status: filed-pending-codex-gate
created: 2026-07-05
problem: navier-stokes
route: forward-gold / FROZEN FRONTIER F3 / P1(ii) record-demand localization - the demand lands through the declared row
authorship: >-
  Derivation: Claude (Fable), 2026-07-05. Physical story Thomas Birnie:
  the record does not ask the water for a new payment - it asks that
  the work already done be found in the admission book. Once the gate
  row is written in the band's own hand, the finding is bookkeeping:
  work is the sum of the signed rows plus the routed remainder, and a
  sum's positive part never exceeds the sum of positive parts. What the
  record demands, the admitted column already holds - up to exactly
  the remainder the routing execution was always going to carry.
depends_on:
  - mpp-forward-gold-f3-p1-row-declaration-modified-channel-gross-transcription-20260705.md
  - mpp-forward-gold-codex-f3-p1-srp-throughput-front-reduction-20260705.md
  - mpp-forward-gold-codex-srp-production-projection-localization-reduction-20260705.md
  - mpp-forward-gold-codex-signed-net-to-forward-record-demand-reduction-20260705.md
  - mpp-forward-gold-codex-f3-p1-transcription-exact-slot-regate-20260705.md
completion_truth: >-
  CONDITIONAL ONLY ON THE ROW DECLARATION GATE (same date, pending):
  collapses P1's two obligations into ONE routing burden, by deriving
  the record-demand localization inequality from three PAID pieces.
  (THE CHAIN) On any record interval I, at fixed prelimit data: (1)
  the paid projection-identity bookkeeping gives int_I P dt =
  sum_{c,Q retained} nu^SRP_{c,Q}(I) + R_out^L(I) - an identity; (2)
  positive parts are subadditive (the paid signed-to-forward lemma:
  (sum nu)_+ <= sum nu^+), so int_I P <= sum (nu^SRP_{c,Q})^+(I) +
  (R_out^L)_+(I); (3) under the row declaration the oriented currency
  is exact, (nu^SRP_{c,Q})^+ = kappa_c A^fg_{c,Q}, hence sum
  (nu^SRP)^+(I) = sum kappa_c A^fg_{c,Q}(I) =: A^w_ret(I) - the
  retained weighted admission row itself, with the SRP critical
  weight kappa_c predictable per the paid weighting lemma. THEREFORE:
  int_I P dt <= A^w_ret(I) + (R_out^L)_+(I) - EXACTLY the shape the
  front reduction demanded, Lambda_record <= A^w_ret + R_{+,routed},
  once the record demand is fed by SRP.3's paid threshold direction
  Lambda_record <= int_I P on record intervals (the signed-height
  record-size dichotomy; GUARD: if SRP.3's paid direction is stated
  differently at the use site, this note's claim narrows to the
  displayed inequality int_I P <= A^w_ret + (R_out)_+, which is the
  localization's entire analytic content). (CONSEQUENCE - P1
  COLLAPSES TO ONE BURDEN) P1(ii) needs no separate producer theorem:
  the record demand lands in retained weighted admission BY
  BOOKKEEPING once the declaration stands, up to the positive routed
  remainder (R_out^L)_+ - and routing (R_out^L)_+ into its named
  tail/boundary/Silver/failure channels is ALREADY P1(i)'s open
  routing execution (the projection note's open item 3 and the
  six-family list are the same remainder read twice). One motion, one
  row, one remaining routing job. (HONEST SCOPE) Nothing here routes
  the remainder: (R_out^L)_+ = high-readout production + off-retained
  cells + replacement tails + boundary/locality pieces + Silver
  complement, each still to be executed into its terminal channel;
  the record-charge PLACEMENT (clause 5 formal theorem) then applies
  to A^w_ret as already paid. NOT PAID: the routing execution itself;
  the conditional weighted high-channel tail; P2 dial/carry and
  dK^tax; F2/F4 positivity; F5. If the declaration gate FAILS, this
  note falls with it and P1(ii) reverts to the front reduction's open
  statement - stated so the dependency is falsifiable. Payment type:
  a composition of three paid results closing a frontier clause's
  inequality modulo an already-named remainder - the collapse is the
  payment; no new estimate is claimed. Filed is not cleared. No
  closure claimed.
---

# F3/P1(ii): the record demand lands by signed-to-forward

## 1. The chain - three paid pieces, one inequality

Fix a record interval \(I\) at fixed prelimit data
\((\varepsilon,L,\text{frame})\), under the row declaration (same
date, pending gate).

PIECE 1 (paid bookkeeping - projection identity):

\[
  \int_IP(t)\,dt
  =
  \sum_{c,Q\ \rm retained}\nu^{\rm SRP}_{c,Q}(I)
  +
  \mathcal R^{L}_{\rm out}(I)
  \qquad\text{(identity).}
\]

PIECE 2 (paid signed-to-forward - positive-part subadditivity):

\[
  \int_IP
  \le
  \Big(\sum\nu^{\rm SRP}_{c,Q}(I)\Big)_+
  +\big(\mathcal R^{L}_{\rm out}(I)\big)_+
  \le
  \sum\big(\nu^{\rm SRP}_{c,Q}\big)^+(I)
  +\big(\mathcal R^{L}_{\rm out}\big)_+(I).
\]

PIECE 3 (the declaration's oriented exactness):

\[
  \big(\nu^{\rm SRP}_{c,Q}\big)^+
  =
  \kappa_c\,A^{\rm fg}_{c,Q},
  \qquad\text{so}\qquad
  \sum\big(\nu^{\rm SRP}_{c,Q}\big)^+(I)
  =
  \sum\kappa_c\,A^{\rm fg}_{c,Q}(I)
  =:
  A^{w}_{\rm ret}(I),
\]

the retained weighted admission row, with the critical weight
\(\kappa_c\) predictable per the paid weighting lemma.

CONCLUSION:

\[
  \int_IP(t)\,dt
  \;\le\;
  A^{w}_{\rm ret}(I)
  +
  \big(\mathcal R^{L}_{\rm out}\big)_+(I).
\]

With SRP.3's paid threshold direction feeding
\(\Lambda_{\rm record}\le\int_IP\) on record intervals, this is
exactly the front reduction's demanded inequality

\[
  \Lambda_{\rm record}
  \le
  A^{w}_{\rm ret}
  +
  \mathcal R_{+,\rm routed}.
\]

GUARD: if SRP.3's paid direction is stated differently at the use
site, the claim narrows to the displayed inequality
\(\int_IP\le A^w_{\rm ret}+(\mathcal R_{\rm out})_+\) - which is the
localization's entire analytic content in any case.

## 2. Consequence: P1 collapses to one burden

P1(ii) needs no separate producer theorem. Once the declaration
stands, the record demand lands in retained weighted admission BY
BOOKKEEPING, up to the positive routed remainder
\((\mathcal R^{L}_{\rm out})_+\). And routing that remainder into its
named tail/boundary/Silver/failure channels is ALREADY P1(i)'s open
routing execution: the projection note's open item 3 and the
declaration note's remaining families (b)-(f) are the same remainder
read twice. One motion, one row, one remaining routing job.

The record-charge PLACEMENT is then the clause-5 formal theorem
applied to \(A^w_{\rm ret}\) - already paid.

## 3. Register - paid / open, exactly

PAID (conditional only on the declaration gate): the localization
inequality
\(\int_IP\le A^w_{\rm ret}+(\mathcal R^{L}_{\rm out})_+\) by
composition of three paid results; the collapse of P1(ii) into
P1(i)'s routing execution.

OPEN, exactly: the routing execution itself - high-readout
production, off-retained cells, replacement tails, boundary/locality
pieces, Silver complement, each into its terminal channel; the
conditional weighted high-channel tail; P2 dial normalization, carry
edges, \(dK^{\rm tax}\); F2/F4 positivity; F5.

DEPENDENCY, falsifiable: if the row-declaration gate fails, this note
falls with it and P1(ii) reverts to the front reduction's open
statement.

Filed is not cleared. No closure claimed.
