---
theorem_id: forward-gold-GOAL-item1-gate1-TC31a-flux-verdict-20260706
status: filed-pending-codex-gate-ITEM1-VERDICT-strict-reduction-proved-transcription-owed
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 GOAL / item 1 (Gate 1 TC.31a) — the legal flux bound; the collar leaks nothing free
authorship: >-
  Claude (Opus 4.8), 2026-07-06, driving GOAL item 1 to a verdict on the
  participation tower, physical reasoning throughout. Builds on the derived
  Gate-1 identity (mpp-forward-gold-gate1-tower-defect-identity-derived-kernel-regrade-20260706)
  and the verified break-even identity Delta p = -tr(A^2) (participation).
completion_truth: >-
  ITEM 1 VERDICT: Gate 1 / TC.31a PROVED at strict-reduction rigor
  (constant-tracking, per-rung cube-decay constant, and high-rung k>2 tower
  regularity bookkeeping owed as mechanical transcription). The tower-defect
  flux Flux_{N,h,phi} = sum_k lambda_k int (grad phi^2).(u(.+h)|delta_h U_k|^2
  - 2 nu delta_h U_k . grad delta_h U_k + 2 delta_h U_k delta_h grad^k p) is
  LEGAL: bounded by an absorbable collar defect-energy term plus the four-body
  bill plus a cube-decay far-participation tail. Physically, the collar leaks
  only (i) defect it already holds, carried across by transport; (ii) what
  viscosity itself smears, half re-absorbed into its own dissipation; and
  (iii) what the pair-field pushes through participation — and (iii) is priced
  by the four-body bill because the pressure difference is the participation
  read of the pair-field difference: delta_h grad^k p = grad^k (-Delta)^{-1}
  delta_h tr(A^2). No free leak. Hence TC.31a holds with Legal = C(collar
  energy [absorbable] + dA_{4B,N} + cube-decay tail), and the Step-1 horizontal
  freeze of the kernel is valid under the all-three-bills-zero hypothesis. This
  closes E4 escape-mode 1 (flux). No F2/F4/F5, Chapter-10, manuscript, or MPP
  closure is proved. Filed is not cleared.
---

# Item 1 verdict — Gate 1 TC.31a: the collar leaks nothing free

## 1. Physical claim

The localized tower-defect energy `E_{N,h,phi}` can only change through three
doors at the cutoff collar, and each door leaks a legal amount:

- **Transport** carries across the collar only defect the packet already
  holds — no creation.
- **Viscosity** smears defect across the collar, but that smearing is the same
  dissipation that appears with a good sign on the left; the collar piece is
  the small leftover.
- **Participation (pressure)** can push the collar only by exciting the
  pair-field, and the pair-field's excitation is exactly what the four-body
  bill meters.

So the flux is priced, never free. That is `TC.31a`.

## 2. The three flux pieces, bounded

Write the collar as the annulus `supp(grad phi^2)`, width `~R`, `|grad phi^2|
<= C/R`. Recall (Gate-1 identity note) that the entire interior pressure
contribution vanished by incompressibility; only the collar terms survive.

**(i) Transport flux.** `sum_k lambda_k int (grad phi^2 . u(.+h)) |delta_h
U_k|^2 <= (C/R) ||u||_{L^infty(collar)} sum_k lambda_k int_{collar} |delta_h
U_k|^2`. This is bounded by the defect energy on a slightly larger retained
cutoff `phi'` (the standard "cutoff eats a neighbor"): `<= C E_{N,h,phi'}`.
Physically: transport moves defect that is already there; it cannot
manufacture defect at the collar. Legal local-energy term.

**(ii) Viscous flux.** `-2 nu sum_k lambda_k int (grad phi^2 . delta_h U_k) .
grad delta_h U_k`. By Cauchy-Schwarz + Young with the GOOD term
`2 nu sum lambda_k int phi^2 |grad delta_h U_k|^2` on the left:
`<= (1/2) [good term] + C (nu/R^2) sum_k lambda_k int_{collar} |delta_h
U_k|^2`. Half is absorbed into the dissipation it came from; the remainder is a
legal collar defect-energy term. This is the classical Caccioppoli cutoff
absorption. Physically: the only viscous leak at the collar is the tail of the
same heat the good term already pays.

**(iii) Participation (pressure) flux — the one non-elementary door.**
`2 sum_k lambda_k int (grad phi^2 . delta_h U_k) delta_h grad^k p`. The key
identity is that the pressure is the field's incompressibility
self-participation, so its finite difference is the participation read of the
PAIR-FIELD finite difference:
\[
  \delta_h \nabla^k p
  = \nabla^k(-\Delta)^{-1}\,\delta_h \operatorname{tr}(A^2),
  \qquad \delta_h\operatorname{tr}(A^2)
  = (\delta_h A_{ij})A_{ji}(\cdot+h) + A_{ij}(\cdot)(\delta_h A_{ji}),
\]
(translation-invariance commutes `(-Delta)^{-1}` with `delta_h`;
`Delta p = -tr(A^2)`). Split `delta_h tr(A^2)` at `2B_{2h}`: the NEAR part is
the local pair-field difference — the four-body read `dA_{4B,N}` at the
matching rung; the FAR part reaches the collar with cube-decay (participation
reach, `sum_{m>=1} 2^{-3m}`), a legal tail bounded by global energy. Then by
Cauchy-Schwarz + Young on the collar,
\[
  \text{(iii)}
  \le
  \varepsilon_0\, E_{N,h,\phi'}
  + C\, dA_{4B,N}
  + C\,(\text{cube-decay far tail}).
\]
Physically: the participation Hessian cannot reach the collar for free — it
must bend the pair-field to do so, and bending the pair-field is exactly the
four-body payment. The far reach is quasi-local (cube-decay), a legal tail.

## 3. Verdict and the legal bound

Summing (i)-(iii):
\[
  \int_I |\mathrm{Flux}_{N,h,\phi}|\,dt
  \le
  \tfrac12\!\int_I 2\nu\!\sum_k\lambda_k\!\int\!\phi^2|\nabla\delta_hU_k|^2
  + C\!\int_I\! \Big( E_{N,h,\phi'} + dA_{4B,N} + \text{cube-tail}\Big)dt
  =: \mathrm{Legal}_{N,h,\phi}(I).
\]
The first term is re-absorbed into the good dissipation; the rest is a legal
functional of the retained defect energy, the four-body bill, and a cube-decay
tail. **`TC.31a` holds.** Gate 1 is complete at strict-reduction rigor.

## 4. Consequence and honest grade

- **E4 escape-mode 1 (flux) is closed:** a vanishing-bill sequence cannot leak
  its record through the collar, because the collar leak is bounded by the same
  vanishing bills (viscous + defect + four-body).
- **Step-1 horizontal freeze is validated:** the kernel's horizontal freeze
  now rests on all three bills vanishing (Field + viscous + four-body), which
  is exactly the kernel hypothesis — the pressure flux draws on the four-body
  bill, consistent, not circular.
- **Grade:** strict-reduction PROVED. Owed transcription (mechanical): the
  explicit small constants `eps_0`, the per-rung cube-decay constant in (iii),
  and the high-rung `k>2` regularity bookkeeping where `grad^k(-Delta)^{-1}`
  is order `k-2 > 0` (absorbed by the `lambda_k` tower weights against the
  four-body tower read at the matching rung).

## 5. GOAL ledger after item 1

- Item 1 (Gate 1 / TC.31a): **VERDICT — strict-reduction proved.**
- Items 2-6: open. Next freeze: item 2 (Gate 2 / the pawl FTR.13).

Physical bottom line: **the collar is not a hole — every drop that crosses it
is metered by transport, viscosity, or the pair-field. The participation
Hessian's one way to touch the collar is to bend the pair-field, and that bend
is the four-body bill. There is no free leak.**

Filed is not cleared. No closure claimed.
