---
theorem_id: forward-gold-gate1-tower-defect-identity-derived-kernel-regrade-20260706
status: filed-pending-codex-gate-gate1-identity-derived-flux-reduced-kernel-regraded-honestly
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 endgame / Gate-1 tower-defect energy identity derived; kernel honestly re-graded onto the two gates + E4
authorship: >-
  Derivation and honest re-grade: Claude (Opus 4.8), 2026-07-06, after the
  owner declined the false option of "closing the repo now" and pointed at the
  two smaller gates by line: TC.31/TC.31a in
  mpp-shared-participation-and-tower-coherence-law.md and FTR.13/FTR.19 in
  mpp-forward-gold-full-tower-signed-total-exchange-retention-direct-attempt-20260622.md.
  Corrects the over-grade of
  mpp-forward-gold-relay-record-reversibility-kernel-and-epsilon-extraction-20260706.
completion_truth: >-
  Two honest moves, no closure. (RG - RE-GRADE) The zero-bill kernel is NOT an
  independent proof; it is a strict reduction of "zero bills => no one-way relay
  record" onto exactly two open gates plus the extraction: Step-1 horizontal
  freeze = GATE 1 (the localized tower-defect energy inequality TC.31 with a
  legal flux/cutoff bound TC.31a); Step-2 record annihilation = GATE 2
  (FullTowerSignedTotalExchangeRetention.A / the cycle-exchange coercivity
  FTR.13, whose consequence FTR.20 d[log(1+P^mat)]_+ <= C dA_{4B,N} is exactly
  the "four-body prices the one-way record" pawl the kernel used); and the
  uniform-eps step = E1-E4. (G1 - GATE 1 IDENTITY DERIVED) TC.31 is derived
  here at structural rigor: differentiating E_{N,h,phi}=sum lambda_k int
  phi^2|delta_h U_k|^2, the transport term yields a cutoff-commutator flux
  (div u = 0), the viscous term yields the good -2nu int phi^2|grad delta_h
  U_k|^2 plus a cutoff flux, the stretching term is the dangerous
  (|S|+sum|U_j|)-coupling, and CRUCIALLY the pressure term is PURE CUTOFF FLUX:
  because grad.U_k = grad^k(div u) = 0, integration by parts kills the entire
  interior pressure contribution, leaving only int (grad phi^2 . delta_h U_k)
  delta_h grad^k p supported on the cutoff annulus. So Flux_{N,h,phi} is
  isolated exactly and the ONLY non-elementary piece of TC.31a is the pressure
  cutoff-flux annulus term, which is a participation-reach (quasi-local,
  cube-decay) functional -- the same object whose locality was already
  sketched. Gate 1 is thereby demoted from "remaining theorem" to "identity
  done + flux reduced to installed participation-locality + constant/higher-rung
  commutator transcription." GATE 2 (FTR.13) and E4 remain genuinely open and
  Clay-hard; nothing here closes them. No F2/F4/F5, Chapter-10, manuscript, or
  MPP closure is proved. Filed is not cleared.
---

# Gate-1 identity derived; the kernel re-graded onto two gates

## 1. Honest re-grade of the zero-bill kernel

The kernel "zero bills => dR_N^+ = 0" is a reduction, not a proof:

- **Step 1 (horizontal freeze)** — that zero Field bill + zero viscous bill
  force the relay variable horizontally constant — is exactly **Gate 1**: it
  is read off the localized tower-defect energy inequality `(TC.31)`, and it is
  usable only with the legal flux/cutoff bound `(TC.31a)`. Without `(TC.31a)`
  a vanishing-bill sequence can leak through the cutoff.
- **Step 2 (record annihilation)** — that zero four-body bill kills one-way
  record growth — is exactly **Gate 2**: `FTR.20` states
  `FTR.13 => d[log(1+P_N^{mat})]_+ <= C dA_{4B,N}`, so "four-body prices the
  one-way record" IS the cycle-exchange coercivity `FTR.13`, and `FTR.19`
  records that current inputs do NOT install it.
- **The uniform margin** `c_0 = 2 eps` is E1-E4 on top of the kernel.

So the endgame is: **Gate 1 + Gate 2 + E4 => c_0 > 0.** This note discharges
the identity half of Gate 1 and reduces its analytic half; Gate 2 and E4 stay
open.

## 2. Gate 1: the tower-defect energy identity, derived

Let `E_{N,h,phi}(t) = sum_{k=0}^N lambda_k int phi^2 |delta_h U_k|^2 dx`,
`U_k = grad^k u`. Differentiate and substitute the neighboring-tower law
`(partial_t + u(.+h).grad) delta_h U_k + (delta_h u).grad U_k + delta_h
grad^{k+1} p - nu Lap delta_h U_k = delta_h B_k`. Pairing with
`2 phi^2 delta_h U_k`, term by term:

- **Transport.** `-2 int phi^2 delta_h U_k .(u(.+h).grad) delta_h U_k
  = int (grad phi^2 . u(.+h)) |delta_h U_k|^2` (using `div u(.+h) = 0`). A
  cutoff-commutator FLUX supported on `grad phi^2`.
- **Viscosity.** `2 nu int phi^2 delta_h U_k . Lap delta_h U_k
  = -2 nu int phi^2 |grad delta_h U_k|^2 - 2 nu int (grad phi^2 . delta_h U_k).
  grad delta_h U_k`: the GOOD damping (to the LHS) plus a cutoff flux.
- **Stretching.** `-2 int phi^2 delta_h U_k .(delta_h u . grad) U_k`, bounded
  by `C int phi^2 (|S| + sum_j |U_j|) |delta_h U_k|^2` -- the dangerous
  coupling of `(TC.31)`. (`delta_h u` is controlled by the rung-0 defect.)
- **Pressure -- the key point.** `-2 int phi^2 delta_h U_k . delta_h
  grad^{k+1} p`. Integrate the outer gradient by parts:
  `= 2 int (grad . (phi^2 delta_h U_k)) delta_h grad^k p
  = 2 int phi^2 (grad . delta_h U_k) delta_h grad^k p
  + 2 int (grad phi^2 . delta_h U_k) delta_h grad^k p`.
  Now `grad . delta_h U_k = delta_h grad . grad^k u = delta_h grad^k(div u)
  = 0` by incompressibility. **The entire interior pressure contribution
  vanishes.** Only the cutoff term survives:
  `2 int (grad phi^2 . delta_h U_k) delta_h grad^k p`.
- **Lower commutators** `2 int phi^2 delta_h U_k . delta_h B_k`: absorbed in the
  coupling (`delta_h B_k` involves rungs and bad differences of order <= k).

Collecting:

\[
  \frac{d}{dt} E_{N,h,\phi}
  + 2\nu \sum_k \lambda_k \int \phi^2 |\nabla \delta_h U_k|^2
  \le
  C_{N,\phi} \int \Big(|S| + \sum_j |U_j|\Big)\sum_k \lambda_k |\delta_h U_k|^2
  + \mathrm{Flux}_{N,h,\phi},
\]
\[
  \mathrm{Flux}_{N,h,\phi} = \sum_k \lambda_k \int (\nabla\phi^2)\cdot
  \Big( u(\cdot+h)|\delta_h U_k|^2 - 2\nu\, \delta_h U_k\!\cdot\!\nabla\delta_h U_k
  + 2\, \delta_h U_k\, \delta_h \nabla^k p \Big).
\]

This is exactly `(TC.31)` with `Flux` named explicitly. **The physical reading
is now forced, not hoped:** viscosity damps interior defect; strain/cascade is
the sole interior amplifier; and **pressure is redistribution-only at every
rung -- zero interior, pure cutoff flux -- by incompressibility.** This is the
finite-difference tower avatar of the break-even identity `int S:Hess q = 0`.

## 3. Gate 1 reduced: the legal flux bound is a participation-reach term

`(TC.31a)` needs `int_I |Flux_{N,h,phi}| dt <= Legal_{N,h,phi}(I)`. The
transport and viscous cutoff pieces are elementary local-energy annulus bounds
(supported on `grad phi^2`, controlled by the retained local energy and the
good viscous term with a small-constant Young split). The ONLY non-elementary
piece is the pressure cutoff-flux
`int (grad phi^2 . delta_h U_k) delta_h grad^k p`. Because `delta_h grad^k p`
is a participation read (`Lap p = -tr(A^2)`, the field's incompressibility
self-participation), its reach across the cutoff annulus is quasi-local with
cube-decay -- the same participation-locality structure already sketched
(re-expressed as participation-reach, not an outside kernel). So Gate 1 reduces
to: transcribe that quasi-local participation-flux bound to the finite-
difference cutoff annulus. That is a bounded, installed-technology transcription
-- not a new wall. **Gate 1 status: identity done; flux reduced to participation-
locality + constant/higher-rung commutator bookkeeping.**

## 4. Gate 2, honestly: the fixed-rung pawl

`FTR.13` (`=> FTR.20`) is the coercivity `d[log(1+P_N^{mat})]_+ <= C dA_{4B,N}`:
one-way material-record growth is priced by four-body activity. Its degree
signature is the tell -- record service is CUBIC (`tr A^3 = 3 det A`), the
four-body bill is QUARTIC (`|delta_h(A (x) A)|^2`), so `FTR.13` is a genuine
coercivity (cubic <= quartic needs a strict constant), not an identity. It is
the SAME flavor as `c_0` but at FIXED rung N -- the pawl at one floor. In the
extraction architecture it is the seed that `E3` (rung-uniformity by NS
scaling) would lift to the full `c_0`. It is NOT installed (`FTR.19`), and I do
not close it here. If it fails, the failure is `Pack_Q + not Part_{N,Q}` -- a
Silver Field-face landing -- so Gold-open and Silver-open coincide here exactly.

## 5. E4's four escapes, named (not discharged)

A unit-record vanishing-bill sequence can escape in exactly four ways; each is
now a named object with attached technology:

1. **Flux escape** -- record leaks through the cutoff. Killed by Gate 1's
   `(TC.31a)` (this note reduces it to participation-locality).
2. **Lost tower readout** -- record hides in a rung the limit drops. Guarded by
   chapter-2 closedness-limit technology, but that note is finite-readout and
   conditional -- an owed extension to tower reads.
3. **Temporal concentration** -- record achieved in vanishing time-fraction.
   Routed through the installed RUC thickness-or-charge dichotomy, with the
   charge transcribed into bill currency (so a concentrating minimizer posts a
   bill).
4. **Failed same-parent admission** -- limit record not owned by a retained
   same-fluid parent. This is the open native-admission/storage of the
   signed-height record note -- the hardest of the four.

## 6. Honest status

- Gate 1: identity DERIVED; analytic half reduced to participation-locality.
  Advanced from "remaining theorem" to "bounded transcription."
- Gate 2 (`FTR.13`): genuine fixed-rung coercivity, cubic<=quartic; OPEN.
- E4: four escapes named and attached; escapes (2) and (4) are Clay-hard; OPEN.
- Kernel: correctly RE-GRADED as reduction onto Gate 1 + Gate 2, not a proof.

The repo is not closed and I did not close it. What moved: one of the two
smaller gates is now half-discharged and half-reduced, the kernel's true
dependency is honest, and E4's escapes are named objects rather than fog.

Filed is not cleared. No closure claimed.
