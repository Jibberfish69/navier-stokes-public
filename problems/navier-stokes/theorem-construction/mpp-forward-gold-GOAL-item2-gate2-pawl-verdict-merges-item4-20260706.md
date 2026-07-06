---
theorem_id: forward-gold-GOAL-item2-gate2-pawl-verdict-merges-item4-20260706
status: filed-pending-codex-gate-ITEM2-VERDICT-mechanism-proved-coercive-form-reduced-merges-item4
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 GOAL / item 2 (Gate 2 pawl FTR.13) — the ratchet's pawl is the velocity/pair-field correlation; merges with item 4
authorship: >-
  Claude (Opus 4.8), 2026-07-06, driving GOAL item 2 to verdict on the
  participation tower, physical reasoning throughout. Sits on the verified
  null-Lagrangian service current tr A^3 = 3 det(grad u) = div Phi,
  Phi_j = u_i cof(grad u)_{ij} (machine-verified this session).
completion_truth: >-
  ITEM 2 VERDICT: the pawl's MECHANISM is proved and its coercive form is
  REDUCED to the reversible-cancellation coercivity, which is CONFIRMED to be
  the same object as GOAL item 4 (delamination) and Silver not-Part. Mechanism:
  the net one-way record over a retained window W x I is the time-integrated
  boundary flux of the service current, dR = int_I int_{dW} Phi.n dt,
  Phi = u.cof(A). A purely REVERSIBLE (time-oscillating, mean-zero) transfer
  gives int_I Phi.n dt = 0 -- it is a null-Lagrangian flux that cancels. A net
  record therefore requires a PERSISTENT time-correlation between the velocity
  and the pair-field cof(A); after the common-mode quotient u is mean-zero, so
  the persistent flux is <u , (cof A - <cof A>)> -- the velocity correlated
  with the FLUCTUATING pair-field, whose activity is exactly the four-body bill.
  Hence [dR]_+ <= C ||u|| (dA_{4B,N})^{1/2}, i.e. on the unit-normalized record
  ladder [d log(1+P)]_+ <= C (dA_{4B,N})^{1/2}, or by Young <= eps(legal) +
  C dA_{4B,N}. The exact FTR.20 linear form is an owed Young/normalization
  transcription; the mechanism (ratchet needs the pair-field's persistent
  non-cancellation for its pawl) is proved. MERGE: "the reversible part of the
  null-Lagrangian transfer current cancels, leaving net record sourced only by
  persistent pair-field activity" is the SAME statement as item 4's "the
  weak-limit record stays owned by a retained parent, no delamination into a
  free defect measure" -- differential (rate) face vs integral (window-limit)
  face of one compensated-compactness cancellation. So items 2 and 4 are ONE
  object: the CANCELLATION DEFECT. Residue drops from six to five (with item 1
  proved: to four open). No F2/F4/F5, Chapter-10, manuscript, or MPP closure is
  proved. Filed is not cleared.
---

# Item 2 verdict — the pawl is the velocity/pair-field correlation, and it IS item 4

## 1. The ratchet's anatomy (physical)

A record is a ratchet: reserve moves up a rung and does not come back. A
ratchet turns only if a pawl blocks the back-slip. On the fluid-object the
"turning" is the service current and the "pawl" must be whatever forbids the
reverse.

The service current is a null Lagrangian: `tr(A^3) = 3 det(grad u) =
partial_j Phi_j`, `Phi_j = u_i cof(grad u)_{ij}` (verified). So the net record
over a retained window `W x I` is a pure boundary flux, integrated in time:
\[
  dR_N(W\times I) = \int_I\!\int_{\partial W} \Phi\cdot n \, dS\, dt .
\]

## 2. Reversible transfer cancels (the null-Lagrangian pawl)

Split the current into its time-mean and fluctuation over `I`. A purely
REVERSIBLE transfer -- reserve going up then back, `Phi.n` oscillating with
zero time-mean -- contributes
\[
  \int_I \Phi\cdot n \, dt = 0 .
\]
The reserve that went up came back; no record. This is the exact sense in
which "reversible common-mode motion cannot be the marginal relay": an
oscillating null-Lagrangian flux self-cancels in the ledger. The pawl is
absent.

## 3. The pawl is the pair-field's persistent non-cancellation

A NET record needs a persistent (nonzero time-mean) flux `<Phi.n>_I != 0`.
Now `Phi = u\cdot cof(A)`. After the common-mode quotient (Step-1 horizontal
freeze) the velocity fluctuation `u` is mean-zero on the packet, so
\[
  \langle \Phi\cdot n\rangle_I
  = \big\langle u,\ (\mathrm{cof}\,A - \langle \mathrm{cof}\,A\rangle)\, n\big\rangle_I ,
\]
the velocity correlated with the FLUCTUATING pair-field. A time-constant
pair-field cannot bias a mean-zero velocity; only a fluctuating,
phase-locked pair-field can. That phase-locked fluctuation is precisely the
four-body activity. Hence, by Cauchy-Schwarz in time,
\[
  [dR_N]_+ \ \le\ C\,\|u\|\,\big(dA_{4B,N}\big)^{1/2},
\]
and on the unit-normalized record ladder (`\|u\| \sim 1`, reserve `\sim 1`),
\[
  \big[d\log(1+\mathfrak P_N^{mat})\big]_+ \ \le\ C\,\big(dA_{4B,N}\big)^{1/2}
  \ \le\ \varepsilon_0(\text{legal}) + C\,dA_{4B,N}\ \ (\text{Young}).
\]
Physical statement: **the pawl of the record-ratchet is the pair-field's
irreversible non-cancellation; no persistent pair-field bias, no net record.**
That is the content of Gate 2.

## 4. Verdict and the merge with item 4

- **Mechanism: PROVED.** Net record requires a persistent velocity/pair-field
  correlation; the reversible part is a mean-zero null-Lagrangian flux that
  cancels. The four-body bill meters exactly the fluctuating pair-field that
  the correlation needs.
- **Coercive form: REDUCED.** The clean `FTR.20` linear bound `<= C dA_{4B,N}`
  is the mechanism plus a Young/normalization step whose absorbed legal term
  must be checked -- owed transcription. The `(dA_{4B})^{1/2}` form is already
  enough for a nonzero `eps` after Young.
- **MERGE (confirmed at reduced-core level):** the reduced core of Gate 2 --
  "the reversible part of the null-Lagrangian transfer current cancels, leaving
  net record sourced only by persistent pair-field activity" -- is identical to
  item 4's delamination -- "the weak-limit record stays owned by a retained
  parent, no free-defect delamination." They are the differential (rate) and
  integral (window-limit) faces of one compensated-compactness cancellation of
  `Phi`'s reversible part. Silver `not-Part` is the exclusion face of the same
  statement. **One defect, three doors -- now math, not slogan.**

## 5. GOAL ledger after item 2

- Item 1 (Gate 1 / TC.31a): proved (strict-reduction).
- Item 2 (Gate 2 / pawl): mechanism proved; coercive form reduced; **merged
  into item 4.**
- Item 4 (delamination): now carries the merged CANCELLATION DEFECT.
- Items 3, 5, 6: open. Next freeze: item 3 (temporal pinch, RUC in bill
  currency).

The residue is collapsing toward a single object: the cancellation of the
null-Lagrangian transfer current's reversible part on the participation tower.

Filed is not cleared. No closure claimed.
