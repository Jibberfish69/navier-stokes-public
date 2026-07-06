---
theorem_id: forward-gold-wI-extraction-laws-manley-rowe-reclassification-20260706
status: filed-pending-codex-gate
created: 2026-07-06
problem: navier-stokes
route: forward-gold / W-I / are the extraction laws a missing derivation, or a model-faithfulness gap?
authorship: >-
  Derivation: Claude (Opus 4.8), 2026-07-06. Physical story / Gate-6-rho
  monomial and Waleffe machinery: Thomas Birnie, Claude (Fable), Codex.
  Follow-up to
  mpp-forward-gold-consolidation-product-dissolves-pincer-verified-20260706
  (which named the extraction laws as wall W-I) and
  mpp-forward-gold-codex-gate6-rho-signed-measure-reduction-20260705 (which
  states them). This note reclassifies W-I.
depends_on:
  - mpp-forward-gold-consolidation-product-dissolves-pincer-verified-20260706.md
  - mpp-forward-gold-codex-gate6-rho-signed-measure-reduction-20260705.md
  - mpp-forward-gold-return-race-elliptic-writeup-and-w1-20260705.md
completion_truth: >-
  The extraction laws dI_1=dI_2=-rho X and dG_0^2=-rho G_0^2 are NOT a
  missing calculation. Within the Waleffe relay model they follow from the
  three-wave Manley-Rowe structure: rho is DEFINED as the relative drain of
  the shared package mode X=|a_3|^2 (rho X dt = -dX|_ext), the two Manley-Rowe
  invariants each carry that shared action with equal coefficient, and
  extraction acts only through the shared mode; hence both drop at the equal
  rate -rho X and the gap I_2-I_1 is conserved exactly, while the Casimir
  G_0^2 (leading-order homogeneous of degree one in the drained action)
  scales as -rho G_0^2. So the gap-conservation that Part I needs is derived,
  not posited. The residual W-I gap is therefore MODEL FAITHFULNESS, not
  analysis: (i) single-mode handoff — extraction touches only the shared mode
  — and (ii) the reduction of full Navier-Stokes to a relay of Waleffe triads.
  Both fold into the meta-gap W-0 (the NS-to-triad reduction). This
  strengthens Part I's footing but does not touch W-II (blowup => unbounded
  climb, ESS-class) or W-0. No F2/F4/F5, Chapter-10, manuscript, or MPP
  closure is proved. Filed is not cleared.
---

# W-I is a model-faithfulness gap, not a missing derivation

## 1. The laws and where rho comes from

The rho-signed-measure note defines the extraction drain of the package
mode `X = |a_3|^2` as
\[
  d\mathfrak e := -\,dX|_{\rm ext} = \rho X\,dt,
  \qquad \rho(t) = -\,\dot X|_{\rm ext}/X .
\]
So `rho` is not a sign assumption; it is the exact signed relative drain
of the shared mode. The slow system asserted is
\[
  \dot I_1 = \dot I_2 = -\rho X, \qquad \dot G_0^2 = -\rho G_0^2 .
\]

## 2. Gap conservation is forced by Manley-Rowe

For a Waleffe helical triad `da_i/dt = g_i \overline{a_j a_k}`, the two
independent quadratic invariants are the Manley-Rowe combinations, each
pairing the shared "package" mode `a_3` with one daughter:
\[
  J_1 = \frac{|a_1|^2}{g_1} + \frac{|a_3|^2}{g_3},
  \qquad
  J_2 = \frac{|a_2|^2}{g_2} + \frac{|a_3|^2}{g_3}.
\]
The isolated triad conserves `J_1, J_2` (fast motion). The NEXT triad in
the relay couples in through the SHARED mode `a_3` and drains only it:
`d|a_3|^2/dt|_{\rm ext} = -\rho X`, with `a_1, a_2` untouched by this
handoff. Therefore
\[
  \dot J_1|_{\rm ext} = \dot J_2|_{\rm ext} = \frac{1}{g_3}(-\rho X),
\]
and after the ceiling normalization `I_k := g_3 J_k` (so the package mode
enters each ceiling with unit coefficient, matching the cubic
`X(I_1-X)(I_2-X)`), both ceilings drop at the SAME rate:
\[
  \dot I_1 = \dot I_2 = -\rho X
  \quad\Longrightarrow\quad
  \frac{d}{dt}(I_2 - I_1) = 0 \quad\text{EXACTLY}.
\]
The gap is conserved because the shared action `|a_3|^2` sits in BOTH
Manley-Rowe invariants with equal weight, and extraction can only spend it
once. This is the exact mechanism Part I's top-endpoint floor needs
(`U_+ \to I_1(I_2-I_1) > 0` on the horn), now derived rather than displayed.

The Casimir law `\dot G_0^2 = -\rho G_0^2` is the consistent
degree-one-homogeneous scaling of the third invariant under the same
relative drain (`G_0^2` is leading-order linear in the drained package
action), which is what makes `r_- = G_0^2/(r_+ r_*)` a monotone
prepaid transient. It is a normalization consistent with the two ceiling
laws, not an independent estimate.

## 3. Consequence: reclassify W-I

W-I is not "prove a hard estimate." Within the relay model the extraction
dynamics are essentially forced by Manley-Rowe. What actually remains
unverified is model faithfulness:

- (F1) **single-mode handoff** — that consecutive cascade steps share
  exactly one mode and that extraction acts only through it. If a handoff
  touches a daughter directly, the two invariants no longer drop equally
  and the gap is not conserved.
- (F2) **the reduction NS -> relay of Waleffe triads** — the deep meta-gap
  W-0. Real NS couples all triads through the pressure Leray projection and
  damps by viscosity; the relayed single-triad picture captures resonant
  transfer but not the collective, non-resonant, spatially non-local
  coupling in which blowup (if any) would actually live.

## 4. Honest net

This removes W-I from the "hard analysis" column and files it under model
faithfulness (F1, F2 -> W-0). It does NOT weaken W-II (blowup => unbounded
readout climb), which stays ESS-class, and it does not close W-0. Part I is
on firmer ground; the route's true remaining hardness is now sharply two
items: the unbounded-climb necessity (W-II) and the NS-to-triad reduction
(W-0). Filed is not cleared. No closure claimed.
