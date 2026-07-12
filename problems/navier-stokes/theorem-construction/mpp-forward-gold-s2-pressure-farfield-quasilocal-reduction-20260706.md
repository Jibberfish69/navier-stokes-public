---
theorem_id: forward-gold-s2-pressure-farfield-quasilocal-reduction-20260706
status: filed-pending-codex-gate
created: 2026-07-06
problem: navier-stokes
route: forward-gold / K3 / s2 pressure far-field — the quasi-local estimate and its reduction to the velocity side
authorship: >-
  Derivation: Claude (Opus 4.8), 2026-07-06, at the owner's request to
  attempt s2 (the nonlocal pressure far-field) of the starved-background
  theorem K3. Every exponent and the scale-invariance were independently
  verified by a 2-agent adversarial PDE pass (both high-confidence,
  correct-with-caveat); the two caveats below are incorporated verbatim in
  intent. Physical story / F3 near-far cube-decay allocation: Thomas Birnie,
  Claude (Fable), Codex.
depends_on:
  - mpp-forward-gold-wII-assessment-chapter2-starved-background-scale-margin-20260706.md
  - mpp-forward-gold-wiib-strike-accepted-carrier-split-starved-background-20260706.md
  - mpp-forward-gold-chapter2-refereegrade-closedness-limit-20260705.md
completion_truth: >-
  Result on s2 (nonlocal pressure far-field in K3): the far pressure is
  QUASI-LOCAL and is NOT an independent wall. Splitting p = p_near + p_far at
  2B_r, p_far is harmonic in B_r, and (verified exponents) its scaled
  contribution to the local energy budget is
  P_far(r) <~ A(r)^{1/2} * sum_{k>=1} 2^{-3k} A(2^k r), with the cube-decay
  multiplier sum_{k>=1} 2^{-3k} = 1/7 — exactly F3's installed pressure
  near/far cube-decay moment, here reconstructed from first principles. The
  far pressure introduces NO new unpriced channel and NO non-quasi-local
  term: the pressure relation is the elliptic row of the same-time participation tangent (no time-derivative
  coupling) and in the local energy inequality the pressure appears ONLY
  paired with u, so p_far is a bounded tail functional of the scaled VELOCITY
  energies A(2^k r), which the ledger already carries at every dyadic scale.
  In the smallness regime it is cubic order (~eps^{3/2}), absorbed alongside
  the velocity nonlinear term r^{-2}int|u|^3 ~ A^{3/2}; the coarse-scale bulk
  contributes a tail vanishing like (r/rho_0)^3 (Leray). This matches why CKN
  gives PARTIAL regularity: pressure is dispatched by exactly this tail
  estimate; the criticality of the velocity nonlinear transport is the wall.
  HONEST CAVEATS: (c1) s2 does not simply collapse to nothing — it reduces to
  the velocity side PLUS a mild surviving content, a bounded cross-scale
  coupling constant (the 1/7 tail) that the CKN excess-decay iteration must
  carry so it does not spoil geometric decay; this folds into the same
  scale-margin condition c_0 > 1 - 2^{1-w} as s1. (c2) the estimate pulls
  sup_t out of each annular A and is therefore time-lossy; the sharp version
  keeps a time-integrated pressure current (Lin / Ladyzhenskaya-Seregin).
  So K3's difficulty is now essentially ALL on the velocity-side scale-margin
  s1; the pressure is priced, quasi-local, and no longer an independent
  obstruction. No product positivity, F2/F4/F5, Chapter-10, manuscript, or
  MPP closure is proved. Filed is not cleared.
---

# s2: the pressure far-field is quasi-local and reduces to the velocity side

## 1. Setup

Suitable weak solution `u` of 3D incompressible Navier-Stokes; pressure
`p = R_iR_j(u_iu_j)`, i.e. `-Delta p = partial_i partial_j (u_iu_j)`. Fix a
candidate singular point (origin), dyadic balls `B_r`, parabolic cylinders
`Q_r = B_r x (t_0-r^2, t_0)`, and the CKN scaled energy
`A(rho) := sup_t rho^{-1} int_{B_rho} |u|^2`. In the suitable solution's
local energy inequality the pressure enters ONLY through
`int int_{Q_r} 2p (u . grad phi)`, and only through `p - (p)_{B_r}` because
`int u . grad phi = 0` by incompressibility.

Split at scale `r`: `p = p_near + p_far`,
`p_far := R_iR_j[(u_iu_j) 1_{(2B_r)^c}]`, which is HARMONIC in `B_r` (source
supported in the complement of `2B_r`).

## 2. The far-pressure estimate (exponents verified)

`R_iR_j` is a Calderon-Zygmund operator of order 0 (kernel homogeneous of
degree `-3`), so `p ~ |z|^{-3} * u^2` and `grad p ~ |z|^{-4}`. For `x in B_r`
and `y` in the k-th dyadic annulus `A_k` (`|y| ~ 2^k r`, `k>=1`; the source's
exclusion of `2B_r` correctly removes `k=0`):

\[
  \sup_{B_r}|\nabla p_{\rm far}|
  \lesssim \sum_{k\ge1} (2^k r)^{-4}\!\int_{A_k}\!|u|^2 .
\]

Since `p_far` is harmonic in `B_r`, `osc_{B_r} p_far <~ 2r sup_{B_r}|grad p_far|`,
and with the annular mean `<|u|^2>_k := (2^k r)^{-3}\int_{A_k}|u|^2`:

\[
  \operatorname{osc}_{B_r} p_{\rm far}
  \lesssim \sum_{k\ge1} 2^{-k}\,\langle|u|^2\rangle_k
  = r^{-2}\sum_{k\ge1} 2^{-3k}\,A(2^k r),
\]

using `<|u|^2>_k <~ (2^k r)^{-2} A(2^k r)`. Feeding this into the pressure
term (`|grad phi| ~ 1/r`, `int_{B_r}|u| <~ r^2 A(r)^{1/2}`, time factor
`r^2`) and dividing the energy inequality by `r` to form scaled quantities,
the leftover `r` cancels exactly and

\[
  \boxed{\;
  \mathcal P_{\rm far}(r)
  \lesssim
  A(r)^{1/2}\sum_{k\ge1} 2^{-3k} A(2^k r),
  \qquad \sum_{k\ge1} 2^{-3k} = \tfrac17.
  \;}
\]

The multiplier `1/7` is exactly the pressure near/far cube-decay moment F3
already carries; the estimate reconstructs it from first principles.

The near part `p_near = R_iR_j[(u_iu_j)1_{2B_r}]` is a local CZ object,
`\|p_near\|_{L^{3/2}(B_r)} <~ \|u\|_{L^3(2B_r)}^2`, priced by F3's near
allocation and cubic in the velocity smallness — absorbed in the standard
way, and outside the far-field question.

## 3. Why s2 is not an independent wall

Three facts, all checked:

1. **No hidden channel.** The pressure relation is the elliptic row of the same-time participation tangent —
   there is NO time-derivative coupling — and in the local energy inequality
   the far pressure multiplies ONLY `u` (never a non-`u` factor). So
   `P_far` is a bounded tail functional of the scaled VELOCITY energies
   `A(2^k r)`; it adds no functional the velocity-side ledger does not
   already carry at every dyadic scale.
2. **Cubic order under smallness.** If `A(rho) <~ eps` on the relevant range,
   `P_far <~ eps^{1/2}·eps = eps^{3/2}` — the same order as the velocity
   nonlinear term `r^{-2}\iint|u|^3 ~ A^{3/2}`, and absorbed alongside it.
3. **Vanishing bulk tail.** Past unit scale, Leray's bound `A(rho) <= rho^{-1}E_0`
   gives `\sum_{k\ge K}2^{-3k}A(2^k r) <~ (E_0/r)\sum 2^{-4k} ~ (r/rho_0)^3 -> 0`.

This is precisely the structure by which CKN (1982) / Lin (1998) /
Ladyzhenskaya-Seregin dispatch the pressure and obtain PARTIAL regularity:
the pressure is not the obstruction. The obstruction is the criticality of
the velocity nonlinear transport — the scale-invariant `\iint|u|^3` that must
be beaten by the dissipation gain in the excess-decay iteration. That is the
velocity-side scale-margin, s1.

## 4. The surviving content of s2 (honest — not zero)

s2 does not vanish into s1; it reduces to s1 PLUS a mild, explicit remainder:

- **A tracked cross-scale coupling.** `P_far(r)` couples the inner scale to
  the COARSER energies `A(2^k r)`, `k>=1`, with total weight `1/7`. This is
  not circular — the coarse energies are a-priori Leray inputs, not the
  scale-`r` conclusion — but the `1/7` coupling must be carried through the
  excess-decay iteration so it does not spoil the geometric contraction.
  Concretely it competes with the pincer contraction exactly as in the
  scale-margin gate: a coupling weight `2^{-3k}` is dominated whenever the
  running contraction `q = (1-c_0)/2` satisfies the section-4 rule of the
  s1 note, so the coupling folds into `c_0 > 1 - 2^{1-w}` rather than adding
  a new threshold. The boundedness `Sigma = 1/7` IS the mathematical content
  here — a triviality it is not, but it is in hand.
- **Time sharpness owed.** The estimate pulls `sup_t` out of each annular
  `A(2^k r)` before integrating in time; this is a valid but lossy bound. The
  sharp form keeps a time-integrated pressure current (Lin;
  Ladyzhenskaya-Seregin) and is the transcription owed for a referee-grade
  K3.

## 5. Consequence for K3 and the route

Before this note, K3 (the starved-background theorem) had two load-bearing
sub-gaps: (s1) the velocity-side scale-margin decay, and (s2) the nonlocal
pressure far-field. s2 is now discharged in the sense that matters: the far
pressure is quasi-local (`1/7` cube-decay), priced by the velocity-side
ledger, cubic in the smallness regime, with a bulk tail that vanishes like
`(r/rho_0)^3` — no independent wall, no unpriced channel, no fatal
circularity. What remains of s2 is a bounded cross-scale coupling that folds
into the s1 scale-margin and a time-integration sharpening. Therefore:

> K3's genuine remaining difficulty is essentially ALL on the velocity-side
> scale-margin s1 — the supercritical `\iint|u|^3` transport clearing the
> excess-decay iteration uniformly in scale, gated by `c_0 > 1 - 2^{1-w}`.

The pressure, long named "the classic hardest step," is not the wall here.
That does not lower the wall — s1 is still the critical core, equivalent in
strength to NS regularity — but it removes one of the two sub-gaps and
confirms the difficulty is concentrated on the velocity nonlinearity, exactly
where CKN locates it.

## 6. Both endings

- **If the s1 scale-margin is proved** (the priced velocity column clears the
  excess-decay contraction uniformly in scale), then with this note's
  pressure control and the CKN import, K3 closes at referee shape modulo the
  time-integrated-current transcription.
- **If not**, the deliverable is exact: the pressure far-field has been
  reduced from "the hardest step" to a verified quasi-local `1/7`-tail
  estimate that reconstructs F3's installed cube-decay allocation, leaving
  the entire remaining difficulty on the one velocity-side scale-margin — the
  Millennium core, now standing alone.

Filed is not cleared. No closure claimed.
