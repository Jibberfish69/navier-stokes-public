---
theorem_id: forward-gold-c0-section17-compactness-critical-gap-obstruction-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / no-free-collar / §17 compactness audit
status: OBSTRUCTION LOCATED (physics-first, exponent-counting; no numerics). The §17
  compactness proof of the uniform packet inequality does not close: (A3) is the theorem
  restated, and the load-bearing step (A5) service-continuity fails exactly at the NS
  critical L²→L³ gap. CORRECTION (owner turn-off computation, integrated): my first-draft
  "concrete escape" put the concentrating bubble on the P4-free branch — that realization is
  DEAD in the axisymmetric class (P4-free ⟹ u~r^{+0.16} grows ⟹ no finite-energy attach), so
  §10/§11 hold in-class via a decay-rate obstruction. The §2 obstructions (A3-restatement,
  A5-critical-gap) and §4 either-or STAND; the live escape relocates to (1) the axisymmetric
  spreading turn-off = onsite-vs-derivative mass-gap, and (2) unproven non-axisymmetric hiding.
  NO PROOF, NO CLOSURE either way.
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous Navier-Stokes history
  service_is: cubic self-stretching production −tr S³ (L³-natural), the scalar (l=0) channel
  bill_is: quadratic viscous strain energy / Korn quotient distance (L²-natural) + the cubic
    l=4 pressure channel ‖Π₄f‖ (a DIFFERENT contraction from the scalar service)
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707.md   # §14, §16, §17 (VPL.88–145)
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-collar-p4free-branch-refutes-core-rigidity-turnoff-relocation-20260707.md
completion_truth: >-
  PHYSICS FIRST. The collar turns the affine Vieillefosse self-stretcher off into a
  finite-energy participant. The §17 contradiction proof (assume S(u_n)=1, bill→0; Korn-Hodge
  gives ∇u_n−∇b_n→0; compactness gives affine b_∞ with λ≠0; (A3) forces λ=0; contradiction)
  is a VALID IMPLICATION but not a proof of the uniform packet inequality VPL.133, for two
  linked reasons. (i) (A3) "a nonzero affine core cannot attach at zero collar cost" is
  verbatim the no-free-collar theorem VPL.120; listing it as an atom hypothesis and deriving
  VPL.133 assumes the conclusion. (ii) The real analytic step is (A5) service-continuity, and
  it fails at criticality: Korn-Poincaré (VPL.139) gives ∇u_n−∇b_n→0 only in L² (QUADRATIC),
  but the service is −tr S³ (CUBIC, L³-natural); in 3D L² strain does not embed in L³ (the NS
  critical gap), so the cubic service is NOT continuous under the convergence the quadratic
  bill supplies. S(b_∞) can be 0, λ=0, no contradiction. CONCRETE ESCAPE surviving §17
  (exponent count on critical scaling u=a r⁻¹U(·/r), σ=|∇u|~a r⁻²): service 𝒮~σ³r³=a³r⁻³,
  normalize=1 ⟹ a=r; viscous bill 𝒢~σ²r³=a²r⁻¹=r→0; put the bubble on the verified P4-free
  branch ⟹ ‖Π₄f‖≈0; attach to background across the log-gap [r,1] (gentle taper) ⟹ 𝒢~r→0.
  A shrinking nearly-axisymmetric Vieillefosse bubble thus has unit scalar service and every
  bill term →0. The fixed reference packet (VPL.88) does NOT forbid it — the sub-bubble is
  itself a lawful finer-scale atom; concentration IS the log-endpoint/tower in atom form. WHY
  UNPATCHABLE (structural, from exact NS scale-covariance): making cubic service lower-
  semicontinuous needs an L³/supercritical bill, but the tower sum VPL.122 needs the bill
  critical/scale-invariant to add up; ratio 𝒢/𝒮~r²/a=r→0 shows a quadratic coercive bill is
  dwarfed by cubic service at small scale. (A1) uniform-critical constants and (A5) service-
  continuity cannot both hold. A coercive (quadratic) mechanism cannot dominate the cubic
  service uniformly — sign, not rate. ONLY SURVIVING LEVER: a scale-invariant SIGN on the
  pressure channel that does not weaken under concentration — i.e. the turn-off rigidity
  (does every finite-energy A→0 cutoff emit an l=4 channel bounded below by a sign, not a
  Korn bound). §17's engine is quadratic and cannot reach it. c_0 open.
---

# §17 compactness does not close: the critical L²→L³ gap is the obstruction

Physics-first audit of Section 17 (VPL.128–145) of
[the participation-lawfulness inquiry](mpp-forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707.md).

## 1. The object and the two homogeneities

The collar turns the affine self-stretcher off into a finite-energy participant. The whole
question is a mismatch of homogeneity between three quantities:

| quantity | contraction | homogeneity | natural space |
|---|---|---|---|
| Vieillefosse **service** `−tr S³` | scalar (`l=0`) | **cubic** | `L³` |
| viscous **bill** `𝒢` (Korn quotient) | — | **quadratic** | `L²` |
| pressure **channel** `‖Π₄f‖` | `l=4` | cubic | — |

The service is the cubic production. The Korn bill is quadratic strain energy. They are not
the same order, and the `l=4` channel is a *different* contraction from the scalar service.

## 2. Two linked reasons §17 is not a proof

**(A3) is the theorem restated.** "A nonzero affine Vieillefosse core cannot attach to the
parent at zero collar cost" is verbatim VPL.120. The compactness argument consumes it at
VPL.144; it does not prove it.

**(A5) fails at criticality — the load-bearing step.** VPL.139 gives `∇u_n − ∇b_n → 0` in
`L²` (quadratic). Passing the cubic service through that limit (VPL.142, `S(b_∞)=1`) needs
`L³` strain control. In 3D `L² ⊄ L³` — the NS critical gap. So the service is not continuous
under the bill's convergence; it can concentrate. `S(b_∞)` may be `0`, giving `λ=0` with no
contradiction.

## 3. The candidate escape — and the correction that kills its axisymmetric realization

Critical scaling `u = a r⁻¹ U(·/r)`, strain amplitude `σ ~ a r⁻²`:

```
service   𝒮 ~ σ³ r³ = a³ r⁻³   ── normalize to 1 ⟹ a = r
viscous   𝒢 ~ σ² r³ = a² r⁻¹ = r → 0     (as r → 0)
```

The viscous (Korn) part vanishes on the concentrating bubble. The remaining bill term is the
pressure channel `‖Π₄f‖`. My first draft put the bubble on the verified P4-free branch to make
`‖Π₄f‖ ≈ 0` too, and claimed it attaches across the log-gap `[r,1]`. **That realization is
wrong in the axisymmetric class**, corrected by the turn-off computation (owner, 2026-07-07):

- The P4-free + div-free flow leaving the core (`ρ ~ C r²`) flows to the **attracting** fixed
  point `ρ* = (−2+√10)/3 ≈ 0.387`, where `τ = dlnA/dlnr → ρ*(3ρ*−5)/(2ρ*+1) ≈ −0.84`. So on
  the P4-free locus `A ~ r^{−0.84}` and `u ~ A·r ~ r^{+0.16}` — the field **grows**. Finite
  energy needs the velocity exponent `< −3/2`. Hence **no finite-energy (decaying/compact)
  P4-free axisymmetric collar exists**: staying P4-free precludes attachment. A "gentle taper
  over `[r,1]`" is a departure *from* the P4-free branch, not a stay on it, so it does emit P4.

So the P4-free bubble does not attach, and the axisymmetric no-free-collar conclusion (§10/§11)
is rehabilitated **via a decay-rate obstruction**, not §10's refuted core-uniqueness argument.

## 3′. What actually remains of the escape

The homogeneity facts (viscous `𝒢 → 0`, `a=r`) and the two reasons in §2 stand; only the
*P4-free realization* is dead. The live escape is now one of two, both open:

1. **Spreading turn-off (log-endpoint, axisymmetric).** Leave the P4-free branch *slowly* over
   the octaves `[r,1]`. Per-octave P4 emission is small; the question is whether the integrated
   emission is an **onsite mass** (uniform, `‖Π₄f‖ ≳ c𝒮`, escape dead, in-class `c₀>0`) or a
   **log-derivative** (spreadable to `0`, escape lives). The decay-rate obstruction shows the
   emission is *nonzero* per finite turn-off; it does **not** yet show the infimum over
   spreading turn-offs is positive. This is the same onsite-vs-derivative mass-gap as §4/§12.3.
2. **Non-axisymmetric hiding.** The decay-rate obstruction is derived from the axisymmetric
   `l=2` ODE. In 3D the collar has all `m`-modes, so the P4-free locus is higher-dimensional
   and may contain a **decaying** (finite-energy) turn-off. Whether "P4-free ⟹ grows" survives
   to 3D is not established (§12.1 is asserted, not proved).

Concentration is still the log-endpoint tower in atom form; the fixed reference packet (VPL.88)
does not forbid a finer sub-bubble. What the correction removes is only the *cheapest* claimed
realization of it.

## 4. Why no patch: the critical/supercritical either-or

- To pass the cubic service (fix (A5)) ⟹ need an `L³`/supercritical bill.
- To sum the tower (VPL.122) ⟹ need a critical, scale-invariant bill.

These conflict. Quantitatively `𝒢/𝒮 ~ a²r⁻¹ / a³r⁻³ = r²/a = r → 0`: a quadratic coercive
bill is dwarfed by the cubic service at small scale. So (A1) uniform-critical constants and
(A5) service-continuity cannot both hold. Forced by exact NS scale-covariance, not a missing
lemma. A coercive (quadratic) mechanism cannot dominate cubic service uniformly. Sign, not
rate — consistent with the scale-covariance filter and the defect-measure relocation.

## 5. The only surviving lever

Stop trying to make the service visible to a coercive bill. The remaining lever is a
**scale-invariant sign on the pressure channel that does not weaken under concentration**:

> Does every finite-energy cutoff (`A → 0`) of the affine core emit an `l=4` pressure channel
> bounded below by a fixed **sign**, uniform in how fine the bubble is — as opposed to a
> Korn/coercive lower bound, which provably cannot survive concentration?

This is the turn-off rigidity. §17's compactness engine is quadratic (`L²`) and cannot reach a
cubic (`L³`) sign. That is why the no-free-collar reduction is honest as a reduction and still
the wall.
