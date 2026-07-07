---
theorem_id: forward-gold-c0-collar-p4free-branch-refutes-core-rigidity-turnoff-relocation-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / no-free-collar / Leray-corrected collar audit
status: VERIFIED CORRECTION (symbolic + numerical) of an overstated sub-claim in the
  no-free-collar inquiry; NO PROOF, NO CLOSURE. The core-region "collar rigidity" (VPL.54,
  §10) does not hold; the in-class no-free-collar bite, if any, lives at the finite-energy
  TURN-OFF, which the note never computes.
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous Navier-Stokes history
  participant: same-field packet read by a lawful participation weight; the collar is the
    finite-energy turn-off that attaches the affine Vieillefosse core to the parent field
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-participation-hessian-not-pressure-hessian-20260707.md
verification:
  tool: sympy 1.14 (exact) + numpy/scipy (independent quadrature)
  scripts: scratchpad/collar_check.py, collar_check2.py, branch_check.py (session-local)
completion_truth: >-
  PHYSICS FIRST. The dangerous object is a same-fluid strain packet trying to eat itself on
  the frictionless Vieillefosse direction. The proposed c_0 floor is a "no-free-collar" law:
  the parent field cannot turn the affine self-stretcher off into a finite-energy participant
  without emitting a transverse (l=4) pressure stress or paying comparable viscous cost. The
  inquiry note offered, as its one closed piece of evidence, a Leray-corrected axisymmetric
  collar computation (VPL.40-54) claiming every NONTRIVIAL incompressible same-symmetry collar
  emits a nonzero l=4 pressure channel. AUDIT RESULT: all algebra is correct (VPL.44,47,49,50,
  51,52 verified exactly in sympy), but the CONCLUSION is overstated and false in-class. The
  P4-free + divergence-free reduced flow r rho' = -rho(3rho^2+4rho-2)/(2rho+1) has rho=0 (the
  affine core) as a HYPERBOLIC fixed point with linearization exponent +2 (g'(0)=2). Hence a
  one-parameter family of NONTRIVIAL, regular, incompressible, axisymmetric, exactly P4-FREE
  collars rho(r) ~ C r^2 emanates from the core. Direct spherical quadrature of the true
  pressure source f = d_i u_j d_j u_i on this branch at r=0.5 gives l=4 coefficient
  = -1.5e-12 (machine zero) while B = 0.046 != 0 (genuinely nontrivial). The note's own
  uniqueness argument only excludes collars that coincide with the affine core on a FULL
  interval -- a triviality (affine-on-interval => affine), not the physics. So there IS a free
  collar in the axisymmetric l=2 class at the core; the "first concrete evidence for the SK
  bite" does not hold. RELOCATION: this P4-free branch does not turn the stretcher off -- it
  flows to the fixed point rho*=(-2+sqrt10)/3=0.387 where tau=rA'/A -> -0.838, so A ~ r^{-0.838}
  and u GROWS; it is a self-similar tail, not a compact finite-energy collar. A genuine
  finite-energy turn-off needs A -> 0, i.e. tau -> -infty, i.e. rho -> -1/2 where 2rho+1 -> 0,
  which is OFF the P4-free locus and where the profile develops an infinite-slope singularity.
  So the only place a same-symmetry no-free-collar law could bite is the finite-energy TURN-OFF
  regime (A->0 cutoff), NOT the core -- and that computation is absent from the note. NET: the
  no-free-collar reduction (VPL.71 / ν ≤ Cμ, and the normalize-and-sum tower argument) is
  logically valid but circular -- the onsite per-rung inequality it assumes is equivalent to
  c_0>0 -- and its supporting local computation is refuted. c_0 remains open; the correct next
  target in this coordinate is the turn-off rigidity, not the core rigidity.
---

# The P4-free collar branch refutes the core rigidity; the bite (if any) is at the turn-off

Physics-first audit of the one closed computation in
[the Vieillefosse participation-lawfulness inquiry](mpp-forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707.md).

## 1. The physical claim under test

A same-fluid strain packet on the biaxial Vieillefosse branch stretches itself with almost no
frictional cost. To be a *lawful finite-energy participant* it must be attached to the parent
field through a gluing **collar** — the region where the parent turns the affine self-stretcher
off. The proposed `c_0` floor is the physical sentence:

> a lawful finite-energy collar cannot turn a Vieillefosse stretcher off without emitting
> transverse (l=4) pressure stress, or paying comparable viscous cost to cancel it.

The inquiry note's evidence for this was a model computation: within the axisymmetric no-swirl
`l=2` class, **every nontrivial incompressible collar emits a nonzero `l=4` pressure channel**
(VPL.38, VPL.54, §10 boxed). This note tests that claim.

## 2. The algebra is correct

With `u = A(r) D x + B(r) Q x`, `D = diag(1,1,-2)`, `Q = x·Dx`, the following were re-derived
symbolically from scratch and match the inquiry note exactly:

- divergence-free relation `A'/r + r B' + 5B = 0` (VPL.44);
- pressure source `f = ∂_i u_j ∂_j u_i`, its `l=4` projection `= (72/35) r^4 C_4` with
  `C_4 = (A'/r + rB')^2 + 11B^2 + 2AB'/r + 2BA'/r + 6rBB'` (VPL.47);
- in `ρ = r²B/A`, `τ = rA'/A`, after div-free: `C_4 ∝ 6ρ² − 10ρ − (4ρ+2)τ` (VPL.49);
- P4-free ⟹ `τ = ρ(3ρ−5)/(2ρ+1)` (VPL.50);
- div-free ⟹ `(1+ρ)τ + rρ' + 3ρ = 0` (VPL.51);
- combined ⟹ `r ρ' = −ρ(3ρ²+4ρ−2)/(2ρ+1)` (VPL.52).

No error in the note's calculation.

## 3. The conclusion is false in-class

VPL.52 is `r dρ/dr = g(ρ)`. At the affine core `ρ = 0`:

```
g(0) = 0,   g'(0) = 2.
```

`ρ = 0` is a **hyperbolic fixed point with a positive exponent**, so the local solutions are
`ρ(r) ~ C r²`. There is a one-parameter family (`C ≠ 0`) of **nontrivial, regular,
incompressible, axisymmetric, exactly P4-free** collars leaving the core. Direct spherical
quadrature of the true pressure source on the integrated branch (`C = 0.05`, at `r = 0.5`):

```
B = 0.046  (≠ 0, genuinely nontrivial: a real Q x component)
l=0 (isotropic) coeff = 5.52
l=4 (transverse) coeff = −1.5e-12   ≈ machine zero
div-free residual = −2.8e-17
```

So a **free collar exists at the core**. The note's uniqueness argument proves only that a
collar coinciding with the affine core on a *whole interval* stays affine (`ρ ≡ 0`) — which is
just ODE uniqueness at an exact fixed point, a triviality, not "nontrivial ⟹ P4 ≠ 0."

## 4. Where the bite actually has to live: the turn-off, not the core

The P4-free branch does **not** turn the stretcher off. It flows to the fixed point
`ρ* = (−2+√10)/3 ≈ 0.387`, where `τ = ρ*(3ρ*−5)/(2ρ*+1) ≈ −0.838`, so `A ~ r^{−0.838}` and
`u ~ r^{0.162}` **grows**. It is a self-similar tail, not a compact finite-energy collar.

A genuine finite-energy turn-off needs `A → 0`, i.e. `τ = rA'/A → −∞`, i.e. `ρ → −1/2`, where
`2ρ + 1 → 0` — **off** the P4-free locus, and where the P4-free profile develops an
infinite-slope singularity (`g → −∞` as `ρ → −1/2⁺`).

**This is the real content of the physical sentence in §1**: it is not the core that forbids a
free collar (the core admits one), it is the *finite-energy cutoff* `A → 0` that appears to be
forced off the P4-free locus. That turn-off rigidity is a different computation from the one the
note performed, and it is not done anywhere yet.

## 5. Consequence for the no-free-collar reduction

The proposed closure

```math
\|\Pi_4 f[u]\|_{\rm press} + \mathcal V_{\rm cancel}(u) \ge c\,\mathcal S_{\rm Vieillefosse}(u)
\quad\text{(uniform in scale and tower depth)}
```

with the normalize-and-sum tower argument is **logically valid but circular**: the onsite
per-rung form needed for the sum to close is equivalent to `c_0 > 0` (it is the mass-gap /
"onsite measure, not derivative-in-log-scale" statement, VPL.68). Its one closed piece of
supporting evidence — the core collar rigidity — is refuted above. The reduction's single
genuine merit stands: unlike the pruned defect-measure route, the service measure and the bill
measure share the same scaling homogeneity (both `∼ a³ r^{−3}`, VPL.10-11), so it is a **sign /
rigidity** target, not a scale-mismatched rate — which is the correct kind of target. But it is
the true wall restated, not moved.

## 6. Corrected next target

In this coordinate, compute the **turn-off**: does every axisymmetric incompressible collar with
`A(0) = A_0`, `A(R) = 0` (finite-energy cutoff) necessarily carry `∫ \|\Pi_4 f\| \gtrsim
\mathcal S`? Equivalently, is the P4-free locus reachable by a smooth compact cutoff, or does
`A → 0` force departure from it with a quantitative `l=4` emission? That is the honest form of
the one-symmetry-class no-free-collar claim; the non-axisymmetric and log-endpoint upgrades
(VPL.86, VPL.87) sit on top of it and remain open.
