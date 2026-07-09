---
theorem_id: theorem-b-consolidated-statement-and-wall-maps-20260709
date: 2026-07-09
route: forward-gold / c_0 / one surviving object / consolidated statement
status: consolidated-statement; the theorem is OPEN; no closure claimed (gate rule 14)
supersedes-noise-in:
  - mpp-forward-gold-c0-claude-codex-sync-transverse-coupling-20260707.md (name drift, cycles 1-8, §22 static-limit line)
  - mpp-forward-gold-c0-axisymmetric-swirl-fixed-endpoint-coefficient-audit-20260708.md (subsumed as subcase B-ax)
  - one-certificate-eta-current-draft-v1-20260708.md (R1/R2: this file is the artifact the R2 refutation demanded)
names-deleted-by-identification:
  - OrientedL2QuadrupoleCurrentAdmittedBySchurMetric.A (= Face A, declared same theorem at sync §23)
  - OrientedSpinTwoFrameTVPaidOrCounterprofile.A (= Face A, sharpened form)
  - RotatingWaveSpinTwoRecordIsAdmissibleOrPaysOrderLock.A / RotatingWaveSpinTwoRecordAdmittedOrPaysOrderLock.A (= Face A on the rotating-wave branch)
  - SameFieldAlignedZeroBillLiouvilleUCPOrCounterprofile.A (conversation-only, no repo file; retired into the main statement)
  - AxisymmetricSwirlFixedEndpointCoefficientLiouville.A (= subcase B-ax of Face B; owner supersession note sync §31)
---

# The one surviving object: consolidated theorem statement and the four wall-to-clause maps

## 0. What this document is

The R2 refutation (one-certificate draft, C379) accepted the ownership-deletion
ontology but refused the reduction typing for want of two artifacts: (i) ONE
exact statement of the surviving theorem — class, hypotheses, conclusion, as a
single attackable display; (ii) explicit maps from each wall (W3, W7, W8, W9)
into that theorem's clauses. This file is those two artifacts. It consolidates
the scattered sources (sync note SYNC.13/CLS.133-139, the in-plane spin-2 law
IP.2-IP.5, the aligned-record ATH tags, the log-chain LHP tags, the ASW audit,
the counterobject note, the covariance filter and weld, C148/C251) into one
statement, adjudicating every supersession conflict found in them (§9). Nothing
in this file claims the theorem proven. The theorem is open at exactly the two
faces displayed in §6.

## 1. The object and the class (hypothesis H1)

Let u be a Leray–Hopf weak solution of incompressible Navier–Stokes on
ℝ³ × [0, T), ν > 0, from a smooth, finite-energy datum u₀, with pressure slaved
to the same field:

```math
p = (-\Delta)^{-1} Q,\qquad Q = \partial_i u_j\,\partial_j u_i,\qquad
H := \nabla^2 (-\Delta)^{-1} Q = \operatorname{Hess} p .
```

S := ½(∇u + ∇uᵀ) is the strain, ω the vorticity. Class clauses (each is a
definition of the object, not an estimate): finite energy; viscous (ν > 0);
pressure slaved (no amputation, no posed Hessian); reachable (a transported
history of the equation, not a posed snapshot). These clauses are what exclude
the ghost objects in §8 (restricted-Euler, ambient Burgers, infinite-energy
collar, frozen snapshot) — by definition of the class, not by estimate.

## 2. The record tower and its normalization (hypothesis H2)

The readout is the critical height H_crit = ½‖u‖²_{Ḣ^{1/2}} and its records.
Normalization is declared, not derived (certificate C148 + C251, Rule-14
sentence: the clock table IS the declaration):

- length-dyadic rungs δ_m = 2^{-m} δ₀ with fixed circulation scale Γ,
  Ω_m = Γ δ_m^{-2} (C148);
- the rung clock Ω := sup_patch |∇u| and material time dτ = Ω dt (C251),
  giving the top-row normalization dX/dτ ≤ 1 exactly.

**(H2) Marginal recurrent record tower.** There exist times t_m ↑ T and a
retained atom (a spatial support of diameter ≍ δ_m carrying the record
readout) on which Ω(t_m) ≍ Γ δ_m^{-2} for every m — the B ≡ 1 marginal
cascade — with positive retained critical service at every rung.

Justification for taking (H2) as the normal form of the blowup candidate
(repo-internal, status as filed): single-scale c₀ is exactly 0, and the sole
surviving counterobject is the log-self-similar marginal tower N_L ~ 2^{-L}/L
(surplus-zero note, 2026-07-06; marked proved on the medium-confidence pincer
B/(1+B²), the exclusion itself open). 3D NS scaling
u_λ = λu(λx, λ²t), p_λ = λ²p is exact including viscosity, so this tower is a
scaling fixed point on which every rate — strain order, turnover lag, the
viscous clock ℓ²/ν itself — is marginal (weld note; the earlier ε_* ~ Re⁻¹
lever is withdrawn). Only sign/rigidity facts survive as levers against (H2).

## 3. The zero-bill alignment hypothesis (H3)

**(H3) Aligned (zero transverse brake) on the record set.** At every retained
rung, pointwise on the retained atom,

```math
[\,S^2,\ H\,] = 0 .
```

Consolidation decision (flagged for attack, adjudicating the notation drift of
§9.1): the hypothesis is stated with S², the form that enters the production
balance, because it is the WEAKER condition — [S, H] = 0 implies [S², H] = 0,
so the survivor class is larger and the nonexistence claim stronger. Where the
spectrum of S² is simple this is three pointwise scalar conditions
(λ_i² − λ_j²)H_ij = 0 (i ≠ j, S-eigenframe) on a divergence-free field with
two local degrees of freedom, nonlocally slaved (H is the double-Riesz image of
Q from the same field) — the overdetermination that makes the exclusion a
unique-continuation/Liouville question and not an estimate.

The two degenerate walls of (H3), where the commutant grows and the condition
loses grip, are exactly where the theorem's two hard cases live:

- **h-degenerate plane** (pressure Hessian isotropic in a plane P): [H,S] = 0
  for every in-plane strain phase; the spin-2 phase e₁⊗e₁ − e₂⊗e₂ is invisible
  to the pressure channel (sync §18). This is Face A's domain.
- **λ²-degenerate pair** (λ_i = −λ_j, shear-dominated strain): S² cannot see
  the pair's relative frame. This is where the shear-cell bank (§8.1) lives.

Known and kept: the LOCAL version of the rigidity is refuted — shear-cell
pressure banks realize an arbitrary trace-free Hessian at a station with zero
local velocity gradient (census A.4), so no local Codazzi/UCP/jet argument can
close (H3); the exclusion must be nonlocal and signed. The nonlocal structures
available are exactly: H is a Hessian (third-derivative integrability
∇_k H_ij = ∇_i H_kj) and H is the Riesz response of the same field's Q
(SYNC/CLS.136-137, surviving in nonlocal reading only).

## 4. The zero-payment clause (H4)

**(H4) Zero bill along the tower.** Along the tower of (H2) the four payment
and route-out functionals vanish identically: no collar/exit payment, no
Field/parent-bank payment, no order-lock/selector payment, no service loss in
atomization — with the F2 accounting items as the definitions of these rows
(same-field Hodge/payment extraction; parent-owned endpoint kernel; channel
extraction without service loss; atomization without double-counting; sync
§13). (H4) is what makes the retained sequence compact to a genuine aligned
atom rather than a concentration/Young-measure escape.

Proven-in-repo support carried into this clause (status as filed): a remote
pressure bank at parent scale R ≫ r contributes to the child's normalized
Hessian at size (r/R)⁴ and is summable — an order-one aligned Hessian at every
rung requires a comparable-scale bank, which is then atom/collar/parent/Field
OWNED and billed (sync §19-20); the zero-bill aligned cell with a detached bank
is empty by admission under VPI non-separability (07-08 note).

## 5. The theorem (one display)

```math
\textbf{Theorem (NoAlignedIncompressibleCriticalRecordAtomExceptEscapes.A).}
```

**No solution in the class of §1 satisfies (H2), (H3), (H4) simultaneously.**
Equivalently: a finite-energy viscous NS history cannot sustain an infinite
marginal recurrent record tower whose slaved pressure Hessian stays in the
commutant of S² on every retained atom while paying nothing — every such
configuration terminates (finitely many records), routes out (pass /
service-zero / collar-paid / bank-billed), or collapses to the parent-owned
smooth affine endpoint kernel u = C·A·x, which finite energy excludes
(LHP.16-17). Consequently c₀ > 0 in the only lawful sense: recurrent
record-setting forces unbounded accumulated signed payment, and the payment
row is the exclusion itself, not a bill charged between parts.

**Status: OPEN.** The proof perimeter is exactly two lemmas (§6), everything
else being definitional (§2), proven-in-repo (§3, §4 items as filed), or
classical (§6B citations).

## 6. The phase dichotomy and the two open faces

On the retained atom define the oriented spin-2 phase φ_r at rung r: the
orientation of the deviatoric in-plane part K of H (equivalently of the strain
pair e₁⊗e₁ − e₂⊗e₂) inside its plane, defined wherever the in-plane gap
λ₁ ≠ λ₂ holds. Let Δφ_r be its material change across rung r. The dichotomy:

```math
\sum_r |\Delta\varphi_r| = \infty
\quad\text{(rotating)}\qquad\vee\qquad
\sum_r |\Delta\varphi_r| < \infty
\quad\text{(fixed-phase)} .
```

This is exhaustive because a series of nonnegative terms either diverges or
converges — no third case, no tuning. (Attack surface: the phase must be
well-defined along the tower; where the gap closes, the phase hand-off is an
admission clause. Named below as A-iii.)

### 6A. Face A (rotating): the signed orientation charge — OPEN

**Statement (RetainedSpinTwoFrameVariationAdmittedBySchurMetric.A).** Unit
retained record plus retained spin-2 frame change |Δθ_r| forces positive
route-metric variation 𝔖_J · d𝒦_J^{geom} ≳ |Δθ_r| per rung; hence in the
rotating case Σ_J ∫ 𝔖_J d𝒦_J^{orient} = ∞ in strict participation currency,
contradicting the finite initial reservoir — or the spin-2 phase is not
retained and the branch routes out (phase hiding, parent endpoint,
pass/service-zero, collar/Field, stop).

What stands under it (as filed): the exact material generator
Dφ/Dt = −(¼ω₁ω₂ + H₁₂)/(λ₁ − λ₂), reducing on the h-degenerate wall to the
pressure-free law Dφ/Dt = −¼ω₁ω₂/(λ₁ − λ₂) (IP.2-3), proved T-ODD — the right
parity for a c₀ lever, impossible for any |·| magnitude bill; the
finite-dimensional Schur motion lemma (|q_a|²/N_a)|d log N_a/dt|² ≤
𝔖‖G^{-1/2}ĠG^{-1/2}‖²_op giving the sup 𝔖 + ∫𝔖 d𝒦 bill for a FIXED
parent-known detector; and the negative fact that forces the Schur channel:
a rigidly precessing rotating wave has Q phase-blind and H|_P isotropic
through the precession (IP.4) — the pressure channel cannot charge the
precession, only the retained-record selection metric can.

What is open (the exact residue): (A-i) detector admission — the oriented
spin-2 detector admitted as parent-known and stopped before readout
(CausalStoppedSpinTwoSelectorAdmission.A; discharged only conditionally on the
strict-atom m = ±2 branch); (A-ii) SchurThinAdmissionRule.A, orientation (not
magnitude) admission of the l = 2 quadrupole current — magnitude-only tails
are T-even and telescope; (A-iii) the phase hand-off across gap-closing rungs
(the well-definedness clause of the dichotomy); (A-iv) the signed no-free-
upcrossing charge on record drift (SignedRecordDriftCollarNoFreeUpcrossing.A).

### 6B. Face B (fixed-phase): the material-time Liouville — OPEN

Fixed-phase means D_t(K/|K|) = 0 asymptotically (ATH.50): the oriented unit
quadrupole of the aligned Hessian is materially constant; equivalently the
phase series converges. Then the aligned bank converges to a fixed
parent-harmonic l = 2 quadrupole endpoint
p_par = p₀ + b·x + ½ x·K_par·x, K_par ∈ Sym²₀ (the endpoint BANK — pressure
object), with the parent-owned smooth affine kernel u = C·A·x (the endpoint
KERNEL — velocity object) as the unique zero-payment interior mode (LHP.16-17;
the two "parent endpoint" senses are distinct objects, adjudication §9.3).

**Statement (FixedAlignedParentQuadrupoleEndpointExcludedByMaterialTimeLiouville.A).**
No marginal retained fixed-phase endpoint with positive service exists: any
limit object of the (H2)-(H4) tower along a fixed-phase subsequence — a
scaling-marginal, finite-local-energy, viscosity-compatible profile with
retained positive record and aligned quadrupole bank — is trivial (kernel
u = C·A·x, excluded by finite energy) or pass/service-zero.

Position against the literature (external anchors, stated with their actual
hypotheses since no repo file states them): Nečas–Růžička–Šverák (1996): no
nontrivial backward self-similar Leray solution with profile in L³(ℝ³).
Tsai (1998): extension to profiles with finite local energy (uniformly locally
L², under natural conditions); Chae–Wolf: partial discretely-self-similar
extensions. The tower endpoint of this theorem is precisely OUTSIDE these
classes: the log-drift 1/L off exact self-similarity makes it marginal, not
exactly (−1/2)-homogeneous, and no exact-profile hypothesis holds. Closing
Face B = extending the self-similar exclusion to the log-marginal fixed-phase
class — the un-installed implication ASW.17 generalized from the axisymmetric
subcase to the full parent-quadrupole class. What stands under it: the
off-kernel log-chain Hodge payment forcing the affine endpoint kernel; the
finite-energy exclusion of persistent global affine B ≠ 0; the conditional
Door-2b kill of the degree −1 pressure-bank cone via Landau/Šverák — all
conditional on the (H4) bill-admission accounting.

## 7. The four wall-to-clause maps

Each wall, in its LAST gated form (terminal document / stall report), maps to
exactly one clause of §5-§6. Two walls land on hypothesis-formation clauses,
two land on the open faces. The maps carry the wall's exact missing fact to
its address inside the theorem.

**W3 (row admission = CriticalServicePersistenceFromPayment.A) ↦ clause
(H2)+(H4): atom formation with persistent critical service.** The wall's
missing fact — finite same-selected-ledger assignment of axis-motion,
boundary-motion, cutoff, and reseed rows uniformly in the tower index, plus
|P_A|-nondegeneracy of the moving owned-axis functional — is verbatim the F2
accounting that (H4) carries: it is what lets a zero-bill sequence compact to
a genuine retained atom with service intact (the L² → L³ service-concentration
Door 1). W3 open ⇔ the (H2)/(H4) compactness clause unproved.

**W7 (graph closure = RecordAdmissionClosedness.A) ↦ clause 6B endpoint
formation.** The wall's demand — passage of the pressure source, pressure row,
material-frame and material-time rows, and positive VPI record through the
critical weak limit with reseed/no-double-count bookkeeping — is exactly the
step "the fixed-phase tower has a lawful limit object in the marginal class
and (H3) survives the limit." W7 open ⇔ the subsequential-limit clause of
Face B unproved. (No identity-through-time survives in the statement: the
limit is subsequential compactness of readouts, not persistence of an owner.)

**W8 (payment/import, retyped dynamical sign-selection) ↦ Face A.** The
wall's final demand — a gauge-free per-component selected-ledger
sign-selection/Liouville excluding recurrent transport focusing against
viscous drains (the recurrent sign of (Γ²/r⁴)n_z − ν|∂_nη|) — is the signed
orientation charge of 6A: the payment row is T-odd, per-increment, and
one-way; magnitude bills telescope. W8 open ⇔ Face A open (residues A-i..iv).

**W9 (action/normalization = MaterialTimeCertificateFlowInvariance.A) ↦
Face B.** The wall's demand — metric coercivity or typed route-out for every
uncharged material-time path direction on the compact certified shift-hull
(with the S¹ model showing W3+W7+W8 cannot supply it) — is the material-time
Liouville of 6B: the statement that the zero-surplus certificate flow on the
endpoint hull has no nontrivial invariant object. W9's independence from the
other three walls is exactly Face B's independence from Face A. W9 open ⇔
Face B open.

Summary of the correspondence: {W3, W7} = the two hypothesis-side lemmas
(atom formation; limit closure) — hard but of standard compactness type;
{W8, W9} = the two open faces (signed charge; material-time Liouville) — the
genuine frontier. Nothing about any wall is discarded; each wall's exact
missing fact has a unique address in the statement.

## 8. Test-object ledger (what kills what; honest OPEN marks)

1. **Exact shear cell** u = U(cos(x₂/D)−1)e₁ + U(cos(x₁/D)−1)e₂ — realizes an
   arbitrary trace-free Hessian locally with ∇u(0) = 0. Killed by: bank
   ownership in (H4) — remote banks summable (r/R)⁴, comparable-scale banks
   owned and billed; and (H2) fails (no record tower). Kept as the proof that
   (H3) cannot close locally.
2. **Restricted-Euler / Vieillefosse ghost** (u = Ax, pressure amputated) —
   blows up in finite time; excluded by (H1) class clause (pressure not
   slaved; snapshot unreachable). Kept structurally: the aligned/on-frame
   Hessian part carries no braking sign, so all of c₀ is transverse.
3. **Straight uniform filament** (2.5D) — locked alignment, no self-stretch:
   (H2) fails. Forces real blowup to pay for axial nonuniformity.
4. **Ambient Burgers strain / Burgers vortex** — strain sourced at infinity;
   (H1) finite energy fails. The Burgers ceiling δ_eq = √(ν/α) stays an
   external anchor only.
5. **Exact backward self-similar (Leray) profiles** — excluded classically
   (NRS in L³; Tsai local-energy). Enter only as equality models after
   compactness.
6. **Log-self-similar marginal tower N_L ~ 2^{-L}/L** — the true
   counterobject. Walks through (H1)-(H4); dies only at Face B, which is
   OPEN. This theorem does not yet exclude it; its exclusion IS Face B.
7. **Rigidly precessing rotating wave** — pressure channel provably cannot
   charge it (IP.4); dies only at Face A's selection-metric charge, which is
   OPEN. Its admission as counterprofile is the honest failure mode of A.

## 9. Supersession adjudications (each a consolidation decision, attackable)

1. **Commutator form.** Corpus carries [S², ∇²q] = 0 (CLS.2/4), [H,S] = 0
   (CLS.133, cycle-9, R1) with different kernels on λ_i = −λ_j. Adjudicated:
   (H3) uses [S², H] = 0 (weaker hypothesis, stronger theorem, and the form
   in the production balance); [H,S] = 0 implies it. The degenerate-kernel
   discrepancy is now a displayed structure (the two walls of §3), not noise.
2. **Axisymmetric Gate-B.** Owner supersession (sync §31) demotes the swirl
   framing to a support filter. Adjudicated: ASW.18 is subcase B-ax of 6B;
   the general object is the parent-quadrupole endpoint. ASW.17's implication
   requirement survives, generalized.
3. **"Parent endpoint" ambiguity.** Two objects: the velocity endpoint KERNEL
   u = C·A·x (LHP; Landau/Šverák territory) and the pressure endpoint BANK
   K_par (ATH/sync; NRS/Tsai territory). Adjudicated: both displayed in 6B
   with separate roles; citations attach correspondingly.
4. **Static limit ω₁ω₂ → 0.** Sync §22 called it routed-out; the in-plane
   note's later correction says it is the hard core. Adjudicated: the static
   limit is Face B (it IS the fixed-phase case); the in-plane correction
   stands.
5. **Face A name drift.** Five names identified as one theorem (frontmatter);
   the survivor name is RetainedSpinTwoFrameVariationAdmittedBySchurMetric.A.
6. **NRS/Tsai hypotheses.** No repo file states the function spaces; this
   file states them (L³; finite local energy) as external anchors and marks
   the marginal/log-drift class as strictly outside both — that gap is the
   exact content of Face B, not a citation detail.
7. **Clock convention.** ΔX = log 2 remnants (§8d) superseded by C148
   length-dyadic (ΔX = log 4); C251 clock Ω := sup_patch|∇u| authoritative;
   the Ω ~ |ω| bridge remains a transfer clause, not an identity.

## 10. Status table (the exact perimeter)

| Clause | Status |
|---|---|
| (H1) class clauses | definitional |
| (H2) normalization C148/C251; clock table | declared (Rule-14: proves nothing) |
| (H2) tower normal form (counterobject) | repo-internal proved (medium-confidence pincer, as filed) |
| Scaling exactness; viscosity marginal on counterobject | repo-internal proved |
| (H3) local-rigidity kill (shear cell) | verified refutation, kept |
| (H3) overdetermination count | stated; the "2 dof" half derived nowhere — flagged |
| (H4) remote-bank summability (r/R)⁴ | repo-internal proved |
| (H4) F2 accounting (four items) | OPEN (= W3 content) |
| §6 dichotomy exhaustiveness | convergence/divergence, exact; phase well-definedness at gap-closing = A-iii, OPEN |
| Face A: IP.2-3 generator, T-parity | proved as filed |
| Face A: finite-dim Schur motion lemma | proved (finite-dimensional only) |
| Face A: admissions A-i, A-ii, A-iii, A-iv | OPEN (= W8 content) |
| Face B: limit-closure clause | OPEN (= W7 content) |
| Face B: material-time Liouville on log-marginal fixed-phase class | OPEN (= W9 content; the NRS/Tsai extension) |
| Endpoint kernel unique / affine excluded by finite energy | repo-internal proved (LHP.16-17) |
| Degree −1 cone kill (Landau/Šverák) | conditional on (H4) accounting |

The theorem is one statement, open at exactly {F2 accounting, limit closure,
Face A admissions, Face B Liouville} — and the four walls map onto exactly
those four addresses, one each. That is the artifact the R2 refutation
demanded. Unproven is stated as unproven.
