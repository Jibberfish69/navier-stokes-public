# V6 Four-Bridge Source Note

This note records the exact monograph-V6 source surfaces that matter most for
the Navier-Stokes four-bridge program.

## Direct Proof Boundary

The authoritative proof-bearing source for Navier-Stokes remains the legacy NS
TeX/PDF corpus under:

- `/Users/thomasbirnie/Documents/Research-Consolidation/Millennium Prize Problems/Navier-Stokes`

The V6 monograph does not currently expose a dedicated
`monograph-V6/problems/navier-stokes/**` theorem subtree. So V6 should be read
as a synthesis and bridge-sharpening family, not as a replacement for the
direct Navier-Stokes proof base.

## Primary V6 Synthesis Sources

### 1. Entire Picture Working Spine

- `/Users/thomasbirnie/Desktop/ToE/ToE/monograph-V6/Volume11-Appendices/11.7-WorkingNote-Spine/11.7.9-TheEntirePictureWorkingSpine.tex`

Why it matters:

- strongest V6 source for spectral-depth, coercivity, projection, and feedback
  language
- helps express why the fourth bridge feeds back into scale control instead of
  terminating the argument

## 2. Obstruction Algebraization Bridge

- `/Users/thomasbirnie/Desktop/ToE/ToE/monograph-V6/Volume11-Appendices/11.7-WorkingNote-Spine/11.7.11-ObstructionAlgebraizationBridge.tex`

Why it matters:

- strongest V6 theorem-heavy scaffold for obstruction language
- sharpens the curvature/obstruction/gluing story around the fourth bridge
- supports the curvature-to-scale feedback and curvature-to-Euclidean pullback
  notes
- after the March 18 refresh, it also sharpens the warrant-side language that
  treats sheaf-gluing failure and holonomy defect as two readouts of one global
  obstruction phenomenon

## 3. Scale Resolution Extracts

- `/Users/thomasbirnie/Desktop/ToE/ToE/monograph-V6/Audit/scale-resolution/ScaleResolution_Extracts.md`

Why it matters:

- generated scale/resolution index for finding V6 reinforcement language
- useful as a search aide only, not as proof evidence

## 4. Support Extraction Descent

- `/Users/thomasbirnie/Desktop/ToE/ToE/monograph-V6/Volume11-Appendices/11.7-WorkingNote-Spine/11.7.20-SupportExtractionDescent.tex`

Why it matters:

- observed as a fresh Marvin-side contribution
- currently not a direct Navier-Stokes import
- tracked because it is strong support-extraction / torsor-descent work, but it
  presently sharpens Hodge-style obstruction localization rather than a named NS
  bridge

## Four-Bridge Mapping

- `Scale-Barrier Principle`
  Direct proof base:
  `Section_2-_Scale-Barrier_Principle.tex`
  V6 reinforcement:
  `11.7.9-TheEntirePictureWorkingSpine.tex`
- `Monotone Functional Q(t)`
  Direct proof base:
  `Section_3-_Monotone_Functional.tex`
  V6 reinforcement:
  no direct `Q(t)` theorem file found yet
- `Non-Sobolev Compactness`
  Direct proof base:
  `Section_4-_Non-Sobolev_Compactness.tex`,
  `Compactness Proof for Discrete Navier–Stokes Solutions.tex`
  V6 reinforcement:
  loop-level synthesis only so far
- `Curvature-Based Regularity`
  Direct proof base:
  `Section_5-_Curvature-Based_Regularity.tex`,
  `Gradient_Control_Through_Geometric_Arguments.tex`
  V6 reinforcement:
  `11.7.11-ObstructionAlgebraizationBridge.tex`
- `Closed-Loop Feedback`
  Direct proof base:
  `Section_6-_Interdependencies_Among_Principles.tex`
  V6 reinforcement:
  `11.7.9-TheEntirePictureWorkingSpine.tex`,
  `11.7.11-ObstructionAlgebraizationBridge.tex`

## Extraction Rule

Chat Y and any other monograph-side extractor should read the Navier-Stokes lane
through these surfaces first:

- [proof-source-pack.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/proof-source-pack.md)
- [authoritative-source-discovery.yaml](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/authoritative-source-discovery.yaml)
- [source-grounded-framework-map.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/source-grounded-framework-map.md)
- [theorem-to-warrant.yaml](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-to-warrant.yaml)

The V6 synthesis files should sharpen those local NS surfaces, not silently
replace them.
