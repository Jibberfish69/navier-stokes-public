# Navier-Stokes Legacy Corpus Audit

Status: working audit

This note classifies the older recovered Navier-Stokes documents against the current live route:

- classical four-body route on the Euclidean theorem surface
- `Scale-Barrier Principle`
- `Monotone Functional Q(t)`
- `Non-Sobolev Compactness`
- `Curvature-Based Regularity`
- closed-loop warrant still unresolved on the fourth bridge

## Roots Checked

The original authoring material was checked in these live recovery roots:

- `Desktop/Navier-stokes`
- `my_project/project-documents/priority`
- `Research-Consolidation/problems/navier-stokes/external-paper`
- `Research-Consolidation/problems/navier-stokes/submission-bundle`

The broader forensic recovery roots were also checked:

- `NS-FORENSIC-CORPUS/Consolidated-NS-TEX-PDF-Corpus`
- `NS-FORENSIC-CORPUS/PDFs/Recovered/RecoveredFolderMarker`
- `NS-FORENSIC-CORPUS/TeX/Recovered/RecoveredFolderMarker`
- `NS-FORENSIC-CORPUS/problems-navier-stokes/source-forensics`

## Keep And Mine

These are mathematically relevant to the live four-body route and should stay in the source stack.

- `Section 2- Scale-Barrier Principle.tex`
  - Relevant: yes.
  - Role: upstream scale-tail control.
  - Where it belongs now: `theorem-construction/scale-barrier-package.md`, `scale-high-side-remainder-packet.md`, `scale-cubic-tail-absorption-lemma.md`.
  - Status: old section is heuristic-heavy, but the idea is still central.

- `Section 3- Monotone Functional.tex`
  - Relevant: yes.
  - Role: named `Q(t)` bridge.
  - Where it belongs now: `theorem-construction/monotone-functional-package.md`, `bridge-memos/monotone-functional.md`, `post-monotone-cascade-carrier-object.md`.
  - Status: keep as a live named bridge, but it is necessary and not sufficient.

- `Energy Boundedness via Q(t) for Global Regularity.tex`
  - Relevant: yes.
  - Role: alternate statement of the same `Q(t)` bridge.
  - Status: keep only as a companion proof note; do not let it replace the canonical `Q(t)` bridge package.

- `Energy Boundedness via Q(t) - A Refined Framework for Global Regularity.tex`
  - Relevant: yes, but duplicate of the same bridge family.
  - Status: keep only if it contributes a distinct estimate or handoff; otherwise demote to historical duplicate.

- `Section 4- Non-Sobolev Compactness.tex`
  - Relevant: yes.
  - Role: downstream compactness and nonlinear closure.
  - Where it belongs now: `compactness-upgrade-lemma.md`, `bridge-memos/compactness.md`, `Strong Convergence in L2 Using Compactness.tex`.
  - Status: use as the compactness kernel, not as an independent proof of regularity.

- `Strong Convergence in L2 Using Compactness.tex`
  - Relevant: yes.
  - Role: the compactness handoff to strong `L^2` convergence.
  - Status: keep.

- `Compactness Proof for Discrete Navier--Stokes Solutions.tex`
  - Relevant: yes.
  - Role: compactness support for approximation families.
  - Status: keep as a support branch for the compactness slot.

- `Section 5- Curvature-Based Regularity.tex`
  - Relevant: yes, but source-faithful curvature branch.
  - Role: curvature/Ricci gradient control on a geometric carrier.
  - Where it belongs now: `curvature-based-regularity-discharge-source-pack.md`, `curvature-to-euclidean-pullback-target.md`.
  - Status: provenance branch until the same-surface Euclidean pullback is proved.

- `Gradient Control Through Geometric Arguments.tex`
  - Relevant: yes.
  - Role: local geometric gradient control companion.
  - Status: keep as the strongest direct source-faithful curvature companion.

- `Section 6- Interdependencies Among Principles.tex`
  - Relevant: yes.
  - Role: loop / feedback logic between the four bodies.
  - Status: keep as the circuit map, not as the proof on its own.

## Keep As Manuscript Shells Only

These are useful as summary manuscripts or human-readable wrappers, but they are not the primary theorem source.

- `A Framework Toward the Millennium Prize Problem on the Navier--Stokes Equations.tex`
- `A Rigorous Theoretical Framework for Global Regularity of the Navier--Stokes Equations.tex`
- `A Unified Framework for the Global Regularity of 3D Navier--Stokes Equations...tex`
- `Global Regularity for the 3D Navier--Stokes Equations.tex`
- `Global Regularity Framework for Arbitrary Initial Data in L2.tex`
- `Conclusion- Smooth Solutions for All Time.tex`

Why:

- They mostly restate the same four-body circuit.
- They are useful for exposition, manuscript shaping, or route summary.
- They should not outrank the section-level source family or the bridge-discharge packs.

## Revive And Reframe

These are not useless, but they need reframing before they can be used in the live route.

- `Comparisons to Known Results.tex`
  - Use only as literature positioning and gap framing.
  - Do not use as theorem authority.

- `General Framework for Partial Differential Equations (PDEs).tex`
  - Use only as abstract language for a container or transfer mechanism.
  - Too generic to serve as live NS theorem support.

- `Mild Initial Conditions for Global Regularity.tex`
  - Useful only if the theorem target is explicitly `H^1`-based.
  - The current live route is not using this as the core theorem surface.

- `Rigorous Mapping Between Discrete and Continuous Representations of the Navier--Stokes Equations and Proof of Global Smoothness.tex`
  - Useful for discrete-to-continuous approximation and compactness language.
  - Its "proof of smoothness" claim is too broad for the current live route and must be subordinated to the explicit bridge packages.

- `Proof of Global Regularity for Morphic-Regularized Navier-Stokes Equations.tex`
  - Useful only as a surrogate / regularized comparison.
  - Not a live proof of the classical target.

## Duplicate Draft Families

These are repeated manuscript variants of the same broad claim and should be treated as one family, not as separate proof authority.

- `navier_stokes_proof.tex`
- `navier_stokes_proo2f.tex`
- `navier_stokes_proof3.tex`

They repeat the same four-body story with different packaging.
Keep at most one as a historical manuscript shell.

Likewise, the `Global Regularity...` / `Toward Global Regularity...` / `A Framework Toward...` titles are variant wrappers around the same route skeleton.

## Current Live Direction

The live route should mine the legacy corpus like this:

1. `Section 2` into the scale-barrier dyadic package.
2. `Section 3` into the named `Q(t)` bridge.
3. `Section 4` and `Strong Convergence in L2` into compactness closure.
4. `Section 5` and `Gradient Control Through Geometric Arguments` into the curvature provenance branch.
5. `Section 6` into the feedback-loop map.

The decisive unresolved issue remains the fourth bridge:

- either carry the source-faithful curvature branch through an explicit Euclidean pullback theorem,
- or explicitly replace it with a labeled Euclidean upgrade branch and stop pretending the old geometric note is already the final theorem surface.

## Imported Into The Main Live Corpus

These were the legacy files most worth importing into the live corpus because
they filled actual proof gaps rather than just adding another wrapper. That
import is now reflected in the live source packs.

- `Section 5- Curvature-Based Regularity.tex`
  - Why it matters: source-faithful fourth-bridge provenance.
  - What it fills: the original Ricci-damped gradient-control branch.
  - Live import surface: `curvature-based-regularity-discharge-source-pack.md`.

- `Gradient Control Through Geometric Arguments.tex`
  - Why it matters: direct companion to `Section 5`.
  - What it fills: the explicit geometric gradient estimate used by the source-faithful fourth bridge.
  - Live import surface: `curvature-based-regularity-discharge-source-pack.md`.

- `Section 6- Interdependencies Among Principles.tex`
  - Why it matters: the only old source file that states the loop structure directly.
  - What it fills: the explicit feedback map `S -> Q -> C -> G -> S`.
  - Live import surface: `interdependencies-discharge-source-pack.md`.

- `Strong Convergence in L2 Using Compactness.tex`
  - Why it matters: the cleanest compactness handoff file in the old stack.
  - What it fills: the `Q(t)` to strong `L^2` convergence bridge after tail control is in place.
  - Live import surface: `compactness-discharge-source-pack.md`.

- `Compactness Proof for Discrete Navier-Stokes Solutions.tex`
  - Why it matters: second compactness companion, useful if the live route wants an approximation-family version of the compactness handoff.
  - What it fills: approximation-to-limit language for the compactness slot.
  - Live import surface: `compactness-discharge-source-pack.md`.

- `Energy Boundedness via Q(t) for Global Regularity.tex`
  - Why it matters: the clearest old standalone `Q(t)` companion.
  - What it fills: a named monotone-functional bridge that can be aligned with the live `Q(t)` slot.
  - Live import surface: `monotone-functional-discharge-source-pack.md`.

Not gap-fillers:

- `A Framework Toward...`
- `A Rigorous Theoretical Framework...`
- `A Unified Framework...`
- `Global Regularity...`
- `Conclusion...`

These are manuscript wrappers and summaries. They are useful for exposition, but they do not fill a theorem gap the way `Section 5`, `Section 6`, and the compactness/Q(t) companions do.
