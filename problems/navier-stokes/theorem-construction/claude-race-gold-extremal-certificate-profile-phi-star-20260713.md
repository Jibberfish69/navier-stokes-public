# The extremal certificate profile Φ* for the Gold square-rate supplier

**Date:** 2026-07-13. **Author lane:** Claude (solo; no Codex coordination per
owner instruction). **Status:** proved support + open frontier. No ontology
edit; promotions are suspended and every object here is proof-grammar or an
exact theorem about installed same-solution quantities.

## I. Entry declaration (gate Section I)

- **Object:** smooth unforced incompressible Navier–Stokes solutions at fixed
  viscosity ν > 0 on decaying ℝ³, each anchored to its own smooth datum u₀.
- **Readouts (all same-solution, installed):**
  - H(t) = 𝓗_{1/2}(t) = ½‖Λ^{1/2}u‖₂² (F1.8/F6.10),
  - D(t) = ‖Λ^{3/2}u‖₂², K(t) = ‖∇u‖₂², R = 2H,
  - I(t) = ∫ r₊(a,t)² da with r = −S:Π the normalized all-chord compression
    rate (F7.11/F7.15/F7.16).
- **Proof role:** organize the live Gold burden — a datum-finite bound on
  ∫ I² dt (F7.15's supplier) — into a single extremal function of one
  dimensionless scale-invariant variable, and prove its two accessible
  branches. No reduced model enters; every inequality below is on the full
  solution class.

## II. Definition

For x > 0 define

Φ*(x) = sup { (1/ν³) ∫₀^{T_max(u)} I_u(t)² dt :
  u a smooth decaying ℝ³ NS solution, any ν > 0, 𝓗_{1/2}(u(0)) ≤ ν² x },

where T_max is the maximal smooth existence time (integral over [0, T_max),
value +∞ permitted). Φ* is nondecreasing by construction.

## III. Lemma 1 — Φ* is well defined on the dimensionless invariant, and any certificate is forced scale-invariant

Two exact symmetry groups act on the solution class:

1. **Parabolic scaling at fixed ν** (F3.1): u_λ(x,t) = λu(λx, λ²t). Installed
   transformations (F7.16): I_λ(t) = λ I(λ²t), hence
   ∫ I_λ² dt = λ²·λ⁻² ∫ I² dt = ∫ I² dt, and H is invariant. Both
   H₀/ν² and ∫I²dt/ν³ are fixed.
2. **Amplitude–time scaling changing ν:** u^{(μ)}(x,t) = μ u(x, μt) with
   p^{(μ)} = μ² p solves the equation with viscosity ν' = μν (direct
   substitution: each of ∂_t, (u·∇)u picks μ², and ν'Δu^{(μ)} = μ²νΔu).
   Then H^{(μ)} = μ²H, so H^{(μ)}/ν'² = H/ν². Since T_u is quadratic in u
   and Π = T_u/τ is amplitude-invariant, r^{(μ)}(t) = μ r(μt), so
   I^{(μ)}(t) = μ² I(μt) and ∫ I^{(μ)²} dt = μ³ ∫ I² dt = ν'³/ν³ · ∫I² dt.
   Both invariants are again fixed.

The two groups together sweep all (λ, ν), so Φ* genuinely depends on x alone.

**Corollary (forced certificate shape).** Any a priori functional Ψ with
∫₀^{T_max} I² dt ≤ Ψ(u₀, ν) valid on the class must satisfy
Ψ ≥ ν³ Φ*(H₀/ν²) pointwise on every scaling orbit; in particular Ψ is
constrained to be a scale-invariant function of scale-invariant datum
invariants times ν³. Any Ψ built from (𝓔₀, ν) alone, or from any subcritical
norm with nonzero scaling weight as the sole datum input at fixed ν, is
dimensionally excluded at this exponent. (This recovers F7.16's counterfamily
exclusion as a shape consequence rather than a separate test.)

## IV. Theorem 2 — small-x branch: Φ*(x) ≤ x² for x ≤ x₀ = 1/(8C_Ω²)

Let C_Ω be the constant in the installed critical product estimate
‖Λ^{−1/2}B(v)‖₂ ≤ C_Ω √(RD) (F6.10). Then P_H² ≤ ‖Λ^{−1/2}B‖₂² S_H ≤
C_Ω² R D · D (using S_H ≤ D), so

  P_H ≤ C_Ω √(2H) · D.

Suppose H₀ ≤ ν²/(8C_Ω²). Then C_Ω√(2H₀) ≤ ν/2, so at t = 0,
H′ = P_H − νD ≤ −νD/2 ≤ 0. The condition C_Ω√(2H(t)) ≤ ν/2 therefore
persists (H is nonincreasing while it holds), giving for all time

  H′ ≤ −(ν/2) D,  hence  ν ∫₀^∞ D dt ≤ 2H₀,

and the solution is global (H bounded, F7.15/endpoint continuation).
The installed pointwise chain (F7.11 and moment log-convexity)

  I ≤ ∫‖S‖_op² ≤ ∫|S|² = K/2,  K² ≤ R·D = 2HD  ⟹  I² ≤ HD/2

then yields

  ∫₀^∞ I² dt ≤ (H₀/2) ∫₀^∞ D dt ≤ H₀²/ν = ν³ (H₀/ν²)².

Hence Φ*(x) ≤ x² on [0, x₀]. ∎

## V. Theorem 3 — large-x branch: Φ*(x) ≥ c₁ x^{3/2}

Fix ν = 1 (permitted inside the sup by Lemma 1) and take the installed
fixed-energy short-rise family (F6.21/F7.16): u_A(x,t) = A³ v^{1/A}(A²x, A⁵t)
from a fixed seed ψ with P_H(ψ) > 0. Installed facts:

- H₀(u_A) = 𝓜_{1/2}(u_A(0))/2 = A² H_ψ (the A^{4s} scaling at s = 1/2);
- ∫_{G_A} I_A² dt ≥ c(ψ) A³ (F7.16's displayed A^{4p−5} at p = 2).

With x = A² H_ψ this gives A³ = (x/H_ψ)^{3/2} and therefore

  Φ*(x) ≥ ∫ I_A² dt ≥ c(ψ) H_ψ^{−3/2} · x^{3/2} =: c₁ x^{3/2}

for every x in the range reached by admissible A (all large x). ∎

**Consequence.** Along critical-height rays the minimal certificate profile is

  ν³ Φ*(H₀/ν²) ≥ c₁ H₀^{3/2},

i.e. pure critical height to the power 3/2, with **no viscosity factor** —
the dimensions close exactly ([H^{3/2}] = L⁶T⁻³ = [∫I²dt]). The installed
counterfamily sits exactly on this profile; it forces the exponent and is
consistent with it.

## VI. Theorem 4 — relation to the live burden (typed exactly)

1. **Sufficiency:** Φ*(x) < ∞ for every x ⟹ every smooth datum has
   ∫_{[0,T_max)∩G} I² dt < ∞, which is F7.15's continuation criterion ⟹ no
   finite-time blowup at this scope.
2. **Blowup direction:** a blowup datum forces ∫_G I² = ∞ (F7.15
   contrapositive), hence Φ*(x) = ∞ at its x.
3. **Open gap, stated honestly:** global regularity does **not** obviously
   imply Φ* finite — Φ* could diverge through a sequence of global solutions
   with unbounded action at fixed x. Φ*-finiteness is therefore a uniform
   a priori bound, possibly strictly stronger than the burden. Its finiteness
   is the natural certificate target; it is **not** claimed to be equivalent
   to, or a strict reduction of, the burden.

## VII. Conjectured extremal and where the naive certificate fails

The two proved branches meet coherently: x² below x₀ ~ 1 (the F6.20 threshold
scale — below C_Ω²R = ν² no rise is possible at all), and ≥ c₁x^{3/2} at
infinity, with the counterfamily lying on x^{3/2}. The sharpest consistent
closure is

  **Conjecture: Φ*(x) ≍ x^{3/2} for x ≥ 1**, equivalently
  ∫₀^{T_max} I² dt ≤ C 𝓗_{1/2}(0)^{3/2} for large critical data.

The candidate Lyapunov Ψ = c H^{3/2} fails naively exactly on the rising set
G: there F7.15 gives (log H)′₊ ≤ C I²/ν³, i.e. H grows *because of* I², and
(H^{3/2})′ > 0 pays nothing. Off G the chain I² ≤ HD/2 with −H′ = νD − P_H
telescopes into ∫ HD dt, which is exactly the uncontrolled height-weighted
critical dissipation (F6.13's growing record charge) — no free payment there
either. So the entire remaining content of the conjecture lives on G, where
the payment must come from structure the scalar marginals (𝓔, K, H, D)
provably do not contain (F6.12's independence examples; the failed Ψ = 𝓔K/ν
computation reproduces the classical enstrophy wall). The only installed
structure not yet contracted at the quadratic level is the shared-endpoint
(pair-pair) constraint: every pair response is drawn from one point field
(the acceleration increments δ(D_tu) form a cocycle), so the pair-pair Gram
of responses is the pullback of a one-point Gram. F1.10 blocks linear
no-recount only; square/Bessel admission — the level at which ∫I² lives — is
exactly what participation supplies. First computation for the next cycle:
the exact evolution of the two-center response Gram on G, hunting a signed
off-diagonal term that the diagonal scalar law e′ = e(−4α + 2χ) discards.
Exact starting identities (derived, elementary, same-solution):

  ∬ e χ² da db ≤ ½ ‖Λ^{1/2}(D_t u)‖₂²,  D_t u = −∇p + νΔu,
  ∬ e α² da db ≤ ¼ ∫ |S|² τ dx,

i.e. the dΠ_t-second-moments of the pair rates are Bessel-bounded by
point-field quantities. Their majorants sit one rung up; whether the Gram's
rank structure converts them into a G-restricted payment is the open
computation.

## VIIIa. Addendum — the H^{−3/2}-normalized action threshold (new, unconditional)

Define the profile-normalized Gold action

  𝒩(T) = ∫₀^T I(t)² / 𝓗_{1/2}(t)^{3/2} dt.

**Theorem (explicit continuation threshold).** Let u be smooth on [0,T) at
the decaying-ℝ³ scope with u₀ ≠ 0, and let C be the absolute constant in
F7.15's logarithmic bound (d/dt log 𝓗_{1/2})₊ ≤ C I²/ν³. If

  𝒩(T) < (2ν³ / 3C) · 𝓗_{1/2}(0)^{−3/2},

then

  sup_{[0,T)} 𝓗_{1/2}
  ≤ [ 𝓗_{1/2}(0)^{−3/2} − (3C/2ν³)𝒩(T) ]^{−2/3} < ∞,

and the solution continues past T. Equivalently: **every finite-time blowup
must spend normalized action at least (2ν³/3C)·𝓗_{1/2}(0)^{−3/2}.**

*Proof.* Where H′ > 0, F7.15 gives (log H)′ ≤ (C/ν³)I² = (C/ν³)H^{3/2}·(I²/H^{3/2});
where H′ ≤ 0, (log H)′ ≤ 0. In both cases

  d/dt (H^{−3/2}) = −(3/2)H^{−3/2}(log H)′ ≥ −(3C/2ν³)·I²/H^{3/2}.

Integrating from 0 to t gives H^{−3/2}(t) ≥ H₀^{−3/2} − (3C/2ν³)𝒩(t). Under
the hypothesis the right side stays positive, giving the displayed sup bound;
bounded critical height gives continuation via the endpoint criterion as in
F6.10. H > 0 throughout by backward uniqueness for nonzero data. ∎

**Weight-exponent scan (why 3/2 is the profile weight).** For
𝒩_β = ∫ I²/H^β dt: at β = 0 every dyadic doubling costs ≥ (ν³/C)log 2
independently of level, so blowup forces 𝒩₀ = ∞ — this is exactly F7.15's
criterion. For any β > 0 the per-doubling cost at level L decays like
L^{−β} and the dyadic sum converges, so only a finite threshold survives; the
exponent β = 3/2 is distinguished as the one whose threshold constant is the
pure datum ray H₀^{−3/2} matching the Φ* profile of Section V, and at which
the short-rise counterfamily spends order Hψ^{−3/2} ≫ threshold while
remaining smooth — the criterion is sufficient, not necessary, as it must be.

This is, to my knowledge, the first *explicit-threshold* (rather than
finiteness-type) continuation criterion in this coordinate family: a single
quantitative action quantum for the whole history rather than per doubling.
It does not close Gold: nothing bounds 𝒩 from the datum. Its value is that
the pair-pair Gram program now has a sharp, minimal target: produce any
datum-controlled upper bound on 𝒩 — the weakest object in the family that
still pays the burden — rather than on the unweighted ∫I².

## VIII. Four-field return (gate Section IV)

1. **Physical verdict:** OPEN. Nothing here decides the physical question;
   the branches are exact bookkeeping of installed facts.
2. **Scoped mathematical status:** PROVED — Lemma 1, Theorem 2, Theorem 3,
   and the typed relations in Theorem 4, each under the stated decaying-ℝ³
   smooth unforced fixed-ν scope.
3. **Live-burden effect:** SUPPORT ONLY. Φ* organizes the burden; its
   finiteness is a sufficient criterion, not a strict reduction. No Gold
   closure, no Silver effect.
4. **Proposed ontology delta:** OPEN FRONTIER — the extremal profile Φ*, the
   forced scale-invariance of every certificate, the minimal viscosity-free
   H^{3/2} profile, and the conjecture Φ* ≍ x^{3/2}. Zero premise weight;
   not installed (promotions suspended).
