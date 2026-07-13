# Participation derivation walk — 2026-07-10

**Type:** walk record and candidate queue under
`ontology-generative-method.md`. No premise weight. Nothing here is
installed in `ontology.md`; every candidate still requires an exact statement
at scope, primary-source check, structural falsification, independent
verification, and consumer re-audit.

**Surface:** smooth unforced incompressible Navier–Stokes, fixed ν>0, on
decaying ℝ³ or 𝕋³, gauge-fixed pressure, as declared in `ontology.md`.

**Method executed:** begin at PARTICIPATION; at each node derive what must
be true because the fluid is one participant; hang each consequence under
the deepest fact its derivation uses; truth-test two-sided (gate II.D
structural battery on the participant side, deleted-freedom witness on the
free side).

---

## Depth 0 — root

**PARTICIPATION.** One datum-anchored history under the joint VPI law.
Free counterfactual: an arbitrary smooth vector field with posed forcing,
posed "pressure," and no constraint coupling.

## Depth 1 — forced by the root alone (constitutive structure)

| node | consequence | deleted freedom | witness (free side) | status |
|---|---|---|---|---|
| W1.1 | pressure force is a pure gradient of the one slaved scalar | posing a rotational pressure force | free field with posed non-gradient force | installed (F1.1/F1.2) |
| W1.2 | det F = 1; growth forces co-located compression of the same deformation | unconstrained deformation | any compressible flow (det F ≠ 1) | installed (F1.3) |
| W1.3 | subregions exchange momentum only through the one traction σn | independent regional ledgers | independently forced regions | installed (F1.1) |

**New at this depth — quantitative slaving (candidate refinement of F1.2):**
on decaying ℝ³, `p = R_i R_j (u_i u_j)` exactly (Fourier check:
`(1/|ξ|²)(iξ_i)(iξ_j) = −ξ_iξ_j/|ξ|²` = symbol of `R_iR_j`), so by
Calderón–Zygmund theory `‖p‖_{L^q} ≤ C_q ‖u‖²_{L^{2q}}` for `1<q<∞`.
*Deleted freedom:* independent pressure amplitude — pressure carries no
size of its own, only a universal quadratic bill on the same field's size.
*Witness:* free field with posed pressure of arbitrary amplitude.
*Truth test:* exact operator identity; scaling consistent (both sides scale
as λ² under F3.1). **Status: candidate refinement, promotion pending.**

**New at this depth — exact typing of the Restricted-Euler amputation
(candidate refinement of F7.4/F1.2):** the pressure Hessian splits exactly
as
`∂_i∂_j p = −(δ_ij/3)(|S|²−½|ω|²) + PV(K_ij * (|S|²−½|ω|²))`
with `K_ij` the traceless kernel (Fourier: `ξ_iξ_j/|ξ|² = δ_ij/3 +
(ξ_iξ_j/|ξ|² − δ_ij/3)`). The isotropic third of the Hessian is slaved
*locally and pointwise*; only the traceless part is global. Restricted
Euler keeps exactly the locally-slaved third and deletes the traceless PV
part — the amputation is now an exact operator statement, not a
description. *Truth test:* exact Fourier identity; trace of the PV part is
zero, matching `Δp` lock. **Status: candidate refinement, promotion
pending.**

## Depth 2 — forced by root + one-field coherence

Installed: compatibility and Biot–Savart (F2.1), no finite propagation
(F2.3), quartic far-field cancellation (F2.4). Each passes the witness
test (independently posed (S,ω) pairs; local-equation free fields keep
compact support; nonzero-mean ω decays only cubically).

**Verified one-line join (provenance annotations, not new nodes):**
- S ≠ 0 trace-free ⟹ λ₁ > 0 > λ₃ (if λ₁ ≤ 0, all λ ≤ 0 with zero sum ⟹ S = 0).
- ω·Sω > 0 at a point ⟹ λ₁ > 0 there ⟹ λ₃ < 0 there: **pointwise
  stretching forces pointwise co-located compression.** Hangs off
  F7.1+F7.2 only; recombination, filed as provenance.
- Trace-free Newton identity `tr S³ = 3 det S`, so Betchov reads
  `∫ det S dx = −¼ ∫ ω·Sω dx`: global stretching is minus four times the
  integrated strain determinant. Recombination of F6.2; provenance.

## Depth 3 — forced by the evolution law (scaling, energy, history)

Installed: exact ν-carrying scaling (F3.1), supercritical energy (F3.2),
scale-selective viscosity (F3.3), energy monotonicity and packet
non-closure (F5.1–F5.2), circulation mutability with zero pressure torque
(F5.3), sign-indefinite helicity dissipation (F5.4). All pass the witness
test trivially (free fields obey none of them).

**Verified exact class fact (candidate refinement of F6.1):** on the
planar invariant class `u=(u₁(x₁,x₂),u₂(x₁,x₂),0)`:
`ω = ω₃e₃`, `S₁₃ = S₂₃ = 0`, and `S₃₃ = ∂₃u₃ = 0`, hence `Sω ≡ 0` — the
stretching **vector** vanishes identically, not merely its ω-projection.
Production is intrinsically three-dimensional as an exact statement, not a
slogan. *Witness:* generic 3D fields have `Sω ≠ 0`. **Status: candidate
refinement, promotion pending.**

## Depth 4 — the continuation ladder (classical proved theorems, absent
from the fact tier except BKM)

The file's authority boundary admits classical proved theorems; only BKM
(F4.3) is installed. The walk generates the rest of the ladder as
**candidate extensions**, each a proved deletion of exit freedom:

| id | theorem (source) | deleted freedom |
|---|---|---|
| L1 | local smooth existence/uniqueness, lifespan bounded below by datum size (Leray 1934; Kato) | instantaneous exit |
| L2 | small `Ḣ^{1/2}` (or `L³`) datum ⟹ global smooth (Fujita–Kato 1964; Kato 1984) | small-critical exit; threshold `‖u₀‖_{Ḣ^{1/2}}/ν` is scale-invariant, consistent with F3.1 |
| L3 | planar class globally regular (Leray; Ladyzhenskaya) — mechanism exhibited above: `Sω ≡ 0` | planar exit |
| L4 | axisymmetric without swirl globally regular (Ukhovskii–Yudovich 1968; Ladyzhenskaya 1968) | swirl-free axisymmetric exit |
| L5 | LPS continuation: `u ∈ L^q_t L^p_x`, `2/q+3/p=1`, `p>3` ⟹ smooth (Ladyzhenskaya–Prodi–Serrin; Giga) | exit with finite subcritical mixed norm |
| L6 | endpoint `L^∞_t L³_x` continuation (Escauriaza–Seregin–Šverák 2003) | exit with bounded critical norm |
| L7 | CKN: suitable weak solutions have singular set of vanishing one-dimensional parabolic Hausdorff measure (Caffarelli–Kohn–Nirenberg 1982) | singular curves, sheets, and finitely-fast-moving singular points |
| L8 | Leray structure: singular times compact with `H^{1/2}`-measure zero; unforced decaying solutions eventually smooth | recurrent singular epochs; late-time exit |

**Family-level witness (free side):** the Constantin–Lax–Majda model
(1985) keeps a Hilbert-transform vortex-stretching nonlinearity, deletes
the bundled transport + slaved pressure + incompressibility + viscosity,
and blows up in finite time from smooth data — and smallness does not save
it (quadratic homogeneity only delays `t* ~ 1/‖ω₀‖`). Every ladder rung is
therefore participation-bought, not generic to smooth quadratic
evolutions. The witness test passes for the family.

**Derived conjunction (the narrowed door).** Because each rung is proved
on the same solution class, any exit of the participant must
simultaneously be: genuinely three-dimensional (L3), with swirl or
asymmetry (L4), from data large in the scale-invariant norm (L2), after a
positive smooth lifespan (L1), with every subcritical mixed norm infinite
(L5), with the critical `L³` norm unbounded (L6), with infinite vorticity
action (F4.3), on a singular set of vanishing parabolic 1-measure (L7),
within a compact `H^{1/2}`-null set of times before eventual smoothness
(L8). This conjunction carries exactly the premise weight of its conjuncts
and nothing more; it asserts no mechanism.

## Depth 5 — what remains free (the frontier, unchanged)

Participation, as installed plus the candidates above, still deletes none
of: the sign/direction of interscale transfer, alignment persistence,
eigenframe turning sense, or continuation at large critical size. These
are the deepest undeleted freedoms, all signed/history-typed, all hanging
under F4/F7 and the material-time law. The walk confirms the standing
census: the next genuine ontological fact, if it exists, is a
participation-forced sign deletion along one finite-energy history. No
candidate at this depth is proposed here, because none is derived.

## Truth-test summary

Every non-installed item above is one of:
- an exact identity verified in this walk (Riesz slaving; Hessian CZ
  split; planar `Sω ≡ 0`; trace-free eigenvalue split; Newton/Betchov
  restatement), or
- a named classical theorem awaiting an independent primary-source check
  before canonical integration.

No signed, directional, or mechanism claim is made anywhere in this walk
beyond what the cited theorems prove.
