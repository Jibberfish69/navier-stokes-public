# Navier-Stokes Global Regularity Frozen Core

This document freezes the source-grounded core only.
No live theorem frontier remains in the lane.

## Theorem Target

- `theorem_target`: the classical 3D Navier-Stokes equations on the admissible Euclidean data class fixed in the lane.
- `lowest_safe_claim`: Let u be a classical solution of the three-dimensional incompressible Navier-Stokes equations on [0,T) x R^3 arising from smooth compactly supported divergence-free initial data in the admissible Euclidean class fixed in the lane. Then the cascade/compactness/gradient singularity pathway does not occur on [0,T).
- `first_unsafe_overclaim`: Downgrading the discharged full-claim theorem into a weaker conditional checkpoint, or claiming more than the theorem-bearing admissible Euclidean class actually proves.

## Grounded Core

- Let u be a classical solution of the three-dimensional incompressible Navier-Stokes equations on [0,T) x R^3 arising from smooth compactly supported divergence-free initial data in the admissible Euclidean class fixed in the lane. Then the cascade/compactness/gradient singularity pathway does not occur on [0,T). (`theorem-statement`; `theorem-statement`)
- Classical target class on the admissible Euclidean theorem surface (`definition`; `theorem-definition-classical-target-class`)
- Classical scale-barrier package on the Euclidean theorem surface (`lemma`; `theorem-package-scale-barrier`)
- Strong local compactness and nonlinear tensor closure on the fixed classical approximation family (`lemma`; `theorem-package-compactness`)
- Euclidean gradient-transfer and continuation control on the classical equation (`lemma`; `theorem-package-gradient`)
- No-hidden-modified-work audit and combined closure sufficiency (`lemma`; `theorem-package-closure`)
- Venue-specific metadata and front-matter normalization (`lemma`; `packaging-metadata-alignment`)

## Source Frontier

- `first_unresolved`: none
- No live theorem frontier remains in the lane.

## Source Surfaces

- `problems/navier-stokes/obstruction-capture.md`
- `problems/navier-stokes/spine.md`
- `problems/navier-stokes/claim-ladder.md`
- `problems/navier-stokes/formalization-ledger.md`
- `problems/navier-stokes/debt-map.yaml`

## Boundary Rule

The theorem-bearing route is fully grounded. Remaining edits are publication-facing only.
