# Navier-Stokes Source-Grounded Framework Map

This file exists to pin the live lane back to the original source stack when later theorem summaries drift.

## Original Four-Part Framework

The handed Navier-Stokes theory is now treated as a same-surface Euclidean four-principle cycle:

1. `Scale-Barrier Principle`
2. `Monotone Functional`
3. `Non-Sobolev Compactness`
4. `Euclidean Gradient-Transfer Coercivity`

## Arrow Structure From The Original Diagram

- `Scale-Barrier Principle -> Monotone Functional` (`reinforces`)
- `Monotone Functional -> Non-Sobolev Compactness` (`enables`)
- `Non-Sobolev Compactness -> Euclidean Gradient-Transfer Coercivity` (`supports`)
- `Euclidean Gradient-Transfer Coercivity -> Scale-Barrier Principle` (`strengthens`)

## Local Source Anchors

- `Millennium Prize Problems/Navier-Stokes/TeX/Route_B_Euclidean_Closure_Theorem.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Euclidean_Scale_Barrier_Recertification_Lemma.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Combined_Closure_Sufficiency_Lemma.tex`
- `Millennium Prize Problems/Navier-Stokes/PDFs/Naiver_stokes_draft_proof.pdf`
- `Millennium Prize Problems/Navier-Stokes/PDFs/Navier_Stokes_Proof_Complete.pdf`
- `Millennium Prize Problems/Navier-Stokes/TeX/Global Regularity Framework for Arbitrary Initial Data in L2.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Section_3-_Monotone_Functional.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Section_6-_Interdependencies_Among_Principles.tex`

## Marvin/V6 Synthesis Anchors

- `/Users/thomasbirnie/Desktop/ToE/ToE/monograph-V6/Volume11-Appendices/11.7-WorkingNote-Spine/11.7.9-TheEntirePictureWorkingSpine.tex`
- `/Users/thomasbirnie/Desktop/ToE/ToE/monograph-V6/Volume11-Appendices/11.7-WorkingNote-Spine/11.7.11-ObstructionAlgebraizationBridge.tex`
- `/Users/thomasbirnie/Desktop/ToE/ToE/monograph-V6/Audit/scale-resolution/ScaleResolution_Extracts.md`

These are synthesis anchors only.
They can strengthen the language around coercivity, projection, obstruction, and
feedback, but they are archived provenance and must not silently replace the direct
Euclidean NS proof-bearing files.

## Legacy Gap Fillers

These legacy documents fill real holes in the live route and should be retained
as direct source companions, not as decorative history:

- `Millennium Prize Problems/Navier-Stokes/TeX/Section_5-_Curvature-Based_Regularity.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Gradient_Control_Through_Geometric_Arguments.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Section_6-_Interdependencies_Among_Principles.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Strong_Convergence_in_L2_Using_Compactness.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Compactness_Proof_for_Discrete_Navier-Stokes_Solutions.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Energy_Boundedness_via_Q(t)_for_Global_Regularity.tex`

Role mapping:

- `Section 5` and `Gradient Control` preserve the archived curvature provenance
  for the old fourth bridge.
- `Section 6` preserves the explicit feedback loop `S -> Q -> C -> G -> S`.
- `Strong Convergence in L2` and `Compactness Proof for Discrete...` sharpen
  the compactness handoff once scale and `Q(t)` are fixed.
- `Energy Boundedness via Q(t)` preserves the clean named monotone bridge
  companion.

These filled actual gaps in the live corpus because the live route had bridge
packs and theorem-construction notes, but not the full original source family on
the theorem-bearing side in one place. The import now lives in:

- [monotone-functional-discharge-source-pack.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/monotone-functional-discharge-source-pack.md)
- [compactness-discharge-source-pack.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/compactness-discharge-source-pack.md)
- [curvature-based-regularity-discharge-source-pack.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/curvature-based-regularity-discharge-source-pack.md)
- [interdependencies-discharge-source-pack.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/interdependencies-discharge-source-pack.md)

## Correction Rule For The Lane

If a live theorem or paper surface describes the framework as only `scale + compactness + gradient`, that surface is source-misaligned and must be repaired before it is treated as authoritative.
If a live theorem or paper surface promotes the archived curvature / ontic / Marvin / Hodge material as active blocker status, that surface is also source-misaligned.
