---
theorem_id: forward-gold-GOAL-items3and5-verdicts-discharge-to-cancellation-defect-20260706
status: filed-pending-codex-gate-ITEM3-and-ITEM5-VERDICTS-both-discharge-no-new-open-object
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 GOAL / items 3 (temporal pinch) and 5 (tower transcription) — both discharge into bill-or-cancellation-defect
authorship: >-
  Claude (Opus 4.8), 2026-07-06, driving GOAL items 3 and 5 to verdicts on the
  participation tower, physical reasoning throughout. Each reasoned separately;
  both land on the same engine (the cancellation defect / compensated
  compactness), so filed together.
completion_truth: >-
  ITEM 3 VERDICT (temporal pinch): REDUCED, no new open object. A record of
  height lambda crammed into vanishing material time tau forces |d_t u| ~
  lambda/tau, and the equation d_t u = -u.grad u - grad p + nu Lap u can supply
  that acceleration ONLY through spatial activity (|d_t u| <= |u||grad u| +
  |grad p| + nu|Lap u|). So a temporal pinch posts at least one bill -- strain,
  participation (pair-field, since grad p is sourced by tr A^2), or viscous --
  matching the RUC thickness-or-charge dichotomy in bill currency (thickness
  fails => a bill is paid). The only alternative is that the temporal Dirac
  delaminates from its material parent -- a parentless post-readout spike --
  which is item 4 (the cancellation/delamination defect) in the time direction.
  So item 3 discharges into (bill) OR (item 4); it adds no new open object. The
  quantitative RUC threshold constant (c*/lambda^2) is owed transcription.
  ITEM 5 VERDICT (tower transcription): REDUCED, no new open object. The base
  record is the null Lagrangian det(grad u) (Reshetnyak weak continuity). The
  TOWER transfer at every rung is (delta_h u).grad U_k -- a divergence-free
  field (delta_h u, since delta_h of div-free is div-free) times a gradient
  (grad U_k) -- which is exactly a div-curl pair, weakly continuous by the
  Murat-Tartar div-curl lemma absent concentration. So compensated compactness
  extends up the tower automatically; concentration is forbidden by the same
  bills (item E4). Owed transcription: the finite-difference div-curl setup and
  per-rung equi-integrability. Item 5 discharges into the same compensated-
  compactness engine as item 4; no new open object. NET: after items 1,2,3,5,
  the entire open residue is the SINGLE CANCELLATION DEFECT (item 4, with item
  2 merged). No F2/F4/F5, Chapter-10, manuscript, or MPP closure is proved.
  Filed is not cleared.
---

# Items 3 and 5 — both discharge into the cancellation defect

## Item 3 (temporal pinch): time cannot sharpen without space paying

**Physical claim.** A record cannot be crammed into vanishing material time
for free, because the fluid-object has no way to accelerate a tower reading
except through space.

Cram a record of height `lambda` into material time `tau`. The tower readout
must change by `~lambda` in time `tau`, so `|d_t U_k| ~ lambda/tau`. The
material equation is the only supplier of that rate, and it is spatial:
\[
  \partial_t u = -\,u\cdot\nabla u \;-\; \nabla p \;+\; \nu\Delta u,
  \qquad
  |\partial_t u| \le |u||\nabla u| + |\nabla p| + \nu|\Delta u| .
\]
So a large `|d_t u|` forces at least one of: strain activity `|u||\nabla u|`
(a strain bill, locked to dissipation by break-even), participation activity
`|\nabla p|` (a pair-field bill, since `\Delta p = -\mathrm{tr}(A^2)`), or
viscous activity `\nu|\Delta u|` (a viscous bill). **Time-sharpening is
space-sharpening; space-sharpening is a bill.** This is the RUC
thickness-or-charge dichotomy in bill currency: if the record lacks temporal
thickness, it pays a bill.

The only escape is that the temporal Dirac is a post-readout spike with no
parent -- a free temporal defect measure -- which is exactly item 4
(delamination) read in the time direction. So **item 3 discharges into
(bill) OR (item 4)**; it is not a new wall. Owed: the quantitative
`c*/lambda^2` threshold constant.

## Item 5 (tower transcription): the tower transfer is a div-curl pair

**Physical claim.** Weak continuity of the record climbs the tower for free,
because at every rung the transfer is a divergence-free flow against a
gradient -- the canonical compensated-compactness structure.

Base rung: the record core is the null Lagrangian `det(\nabla u)`, weakly
continuous by Reshetnyak/Ball absent concentration. Higher rungs: the transfer
into rung `k` is `(\delta_h u)\cdot\nabla U_k`. Here `\delta_h u` is
divergence-free (`\delta_h` of a divergence-free field is divergence-free) and
`\nabla U_k` is a gradient. A (divergence-free) x (gradient) product is exactly
the Murat-Tartar div-curl pair: it is weakly continuous whenever the factors
converge weakly and do not concentrate. So compensated compactness holds at
every rung with no new idea -- the div-curl structure is intrinsic to the
incompressible tower. Concentration is forbidden by the same three bills
(item E4). **Item 5 discharges into the same compensated-compactness engine as
item 4**; owed only the finite-difference div-curl setup and per-rung
equi-integrability.

## GOAL ledger after items 3 and 5

- Item 1 (Gate 1 / TC.31a): proved (strict-reduction).
- Item 2 (Gate 2 / pawl): mechanism proved; merged into item 4.
- Item 3 (temporal pinch): reduced -> (bill) OR item 4.
- Item 5 (tower transcription): reduced -> div-curl compensated compactness =
  item 4's engine.
- **Item 4 (the CANCELLATION DEFECT): the single surviving open object.**
- Item 6 (assemble) + the irreducibility argument: next, to the terminus.

Every road now leads to one place: the weak/mean cancellation of the
null-Lagrangian transfer current's reversible part on the participation tower.

Filed is not cleared. No closure claimed.
