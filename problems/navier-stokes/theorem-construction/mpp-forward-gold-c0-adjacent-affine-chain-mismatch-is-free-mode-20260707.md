---
theorem_id: forward-gold-c0-adjacent-affine-chain-mismatch-is-free-mode-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / no-free-collar / adjacent-rung affine-chain audit
status: REFUTATION (physics-first, mode-structure; no numerics) of the "kill the long
  unpaid same-normalized-affine chain" closure. The forced adjacent-rung mismatch is an
  AFFINE field = the Korn/participation NULL (free) mode, not a charged mode; and the
  invoked adjacent-scale scaling law is the smooth (degree +1) fingerprint, which assumes
  the regularity in question. Reduces once more to the open turn-off rigidity. NO CLOSURE.
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous Navier-Stokes history
  affine_mode: rigid+strain (degree +1) fields = the exact scale-covariance null direction;
    free under Korn and under the participation quotient; can never be the payer
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-section17-compactness-critical-gap-obstruction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-collar-p4free-branch-refutes-core-rigidity-turnoff-relocation-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707.md
completion_truth: >-
  PHYSICS FIRST. The proposed final step tries to exclude the surviving c_0=0 object — a long
  band of adjacent rungs each carrying positive Vieillefosse service while paying no transition
  cost — by claiming the NS adjacent-scale tie U_r(y)=(r/R)U_R((r/R)y) forces two same-amplitude
  affine cores to disagree by a fixed jet (3/4)Ay that Korn/participation charges. TWO PHYSICAL
  ERRORS. (1) The mismatch (A_r − (1/4)A_R)y — and (3/4)Ay in the equal-amplitude case — is a
  LINEAR/affine field. Affine fields (rigid + strain, degree +1) are exactly the NULL space of
  Korn and of the participation quotient — the one mode that carries ZERO charge. So "outside
  the affine null mode" is inverted; the mismatch is inside it, cost zero. The pivotal line
  charges the free mode. (2) U_r=(r/R)U_R((r/R)y) is not a law of adjacent scales; it is the
  smooth (degree +1) field fingerprint (velocity increments ~ linear in scale). It is
  self-consistent ONLY with geometric amplitude A_r=(1/4)A_R, under which it holds with ZERO
  error; the mismatch arises only from demanding smooth-scaling AND equal amplitude at once,
  which is contradictory (names no object). Worse, imposing that relation ASSUMES the regularity
  being proved — the counterobject is precisely the field whose increments fall off slower than
  linear (rougher, drifting toward critical degree −1), so a "mismatch" against smooth scaling
  is the roughness itself, i.e. the non-affine content, not a contradiction. Begs the question.
  THE REAL SURVIVOR is neither the equal-amplitude jet (hoped charged) nor the degree −1 profile
  (the author's own escape-closer, which only kills the EXACT self-similar singularity, already
  gone by NRS/Tsai). It is the marginal SLOWLY-VARYING-amplitude tower: amplitude drifts
  sub-geometrically so service spreads thinly across the band (log-endpoint), locally-affine
  cores, per-step mismatch small AND affine hence free. THE ACTUAL CHARGE is not the affine
  amplitude-mismatch but the non-affine incompressible collar repair (turning the quadrupole
  through each annulus). Both extremes collapse onto it and pay ONCE, not per-free-rung:
  equal-amplitude => the chain is one global affine jet Ax, turned off once at the outer scale
  (charged there); geometric-amplitude => service concentrates on the top rung (single scale,
  paid). Neither yields infinitely many free rungs, but the PER-RUNG floor is exactly the open
  turn-off rigidity — a non-affine, concentration-proof SIGN — which this step does not reach
  because it charges the affine (free scaling) mode. Consistent with the scale-covariance filter
  (affine = exact null incl. viscosity) and the sign-not-rate verdict. c_0 open.
---

# The adjacent-affine-chain mismatch is the free mode; the scaling law assumes regularity

Physics-first audit of the "kill the long unpaid same-normalized-affine chain" step.

## 1. Object and claim

Survivor: a long band of adjacent rungs, each straining itself (positive Vieillefosse service),
handing off scale-to-scale with no charged transition. Proposed kill: the NS scale-tie
`U_r(y)=(r/R)U_R((r/R)y)` forces two equal-amplitude affine cores to disagree by `(3/4)Ay`,
"outside the affine null mode," so Korn charges it; sum over the tower ⟹ `P(T) ≥ cS(T) ⟹ c₀>0`.

## 2. Error 1 — the mismatch is the free (affine) mode

`(A_r − ¼A_R)y`, and `(3/4)Ay` in the equal-amplitude case, is a **linear field**. Rigid + strain
(affine, degree +1) fields are the **null space** of Korn and of the participation quotient — the
mode with *zero* charge. "Outside the affine null mode" is inverted: it is inside it. The step
assigns cost to exactly the mode that has none.

## 3. Error 2 — the scaling law is the smooth fingerprint, and assumes the conclusion

`U_r=(r/R)U_R((r/R)y)` is the scaling of a **smooth (degree +1)** field (linear-in-scale
increments). It is self-consistent only with geometric amplitude `A_r=¼A_R`, under which it holds
with **zero error**. The `(3/4)Ay` mismatch requires smooth-scaling *and* equal amplitude at
once — contradictory, naming no object. And imposing the smooth law **assumes the regularity in
question**: the counterobject has increments rougher than linear (toward critical degree −1), so
the "mismatch" against smooth scaling *is* the roughness — the non-affine content — not a
contradiction. Circular.

## 4. The real survivor and the real charge

Neither case in the dichotomy. Not the equal-amplitude jet (hoped charged); not the degree −1
profile (kills only the exact self-similar singularity, already excluded by NRS/Tsai). It is the
**marginal slowly-varying-amplitude tower**: sub-geometric amplitude drift, service spread thinly
(log-endpoint), locally-affine cores, per-step mismatch small and affine — free.

The charge is the **non-affine incompressible collar repair** (quadrupole through each annulus).
Both extremes collapse to a single payment, not infinitely many free rungs:

- equal amplitude ⟹ the chain *is* one global affine jet `Ax`, turned off once at the outer scale
  (charged there);
- geometric amplitude ⟹ service concentrates on the top rung (one scale, paid).

The per-rung floor is exactly the open **turn-off rigidity** — a non-affine, concentration-proof
**sign**. This step cannot reach it: it charges the affine mode, which is the exact scale-
covariance null direction (viscosity included) and can never be the payer.
