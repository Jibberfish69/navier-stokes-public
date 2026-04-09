# Navier-Stokes Global Regularity Frozen Core

This document freezes the source-grounded core only.
Anything beyond the frontier below is machine extension and must remain quarantined until promoted.

## Theorem Target

- `theorem_target`: the official Clay Navier-Stokes problem in dimension 3 for the incompressible equations on R^3 or T^3.
- `lowest_safe_claim`: For every smooth divergence-free rapidly decaying initial datum u^0 on R^3, with f = 0, there exist u,p in C^\infty(R^3 x [0,\infty)) solving the three-dimensional incompressible Navier-Stokes equations and satisfying int_{R^3} |u(x,t)|^2 dx < C for all t >= 0.
- `first_unsafe_overclaim`: Replacing the official Clay statement by a weaker route-local or data-class-local statement.

## Grounded Core

- For every smooth divergence-free rapidly decaying initial datum u^0 on R^3, with f = 0, there exist u,p in C^\infty(R^3 x [0,\infty)) solving the three-dimensional incompressible Navier-Stokes equations and satisfying int_{R^3} |u(x,t)|^2 dx < C for all t >= 0. (`theorem-statement`; `theorem-statement`)
- replace the torus carrier block by a continuum coherent sector for curved D. (`definition`; `marvin-upstream-8e939525d3f2`)
- The exact sector does not define the physical carrier. (`definition`; `marvin-upstream-16fa51055da0`)
- Theorem 2.1 (Classical Closure) (`lemma`; `warrant-theorem-2.1`)

## Source Frontier

- `first_unresolved`: construct theorem-grade measure / dynamics on the global twisted continuum (`definition`; `marvin-upstream-2adc051dd3a8`)
- construct theorem-grade measure / dynamics on the global twisted continuum (`definition`; `marvin-upstream-2adc051dd3a8`)
- + spectral floor on K_D^\perp (`lemma`; `marvin-upstream-269065c546af`)
- with the coherent class controlling `X_ pers  ` and the spectral floor (`lemma`; `marvin-upstream-558cbb8323fd`)
- `Obs _ glue  `, (`lemma`; `marvin-upstream-5d4a55021542`)
- prove that the persistent obstruction/support readout globalizes strongly (`lemma`; `marvin-upstream-8880078593dc`)
- but Hodge still has to prove that persistent support on that object globalizes (`lemma`; `marvin-upstream-0fdc65ea42d5`)

## Source Surfaces

- `problems/navier-stokes/obstruction-capture.md`
- `problems/navier-stokes/spine.md`
- `problems/navier-stokes/claim-ladder.md`
- `problems/navier-stokes/formalization-ledger.md`
- `problems/navier-stokes/debt-map.yaml`
- `system/meta/collaboration/marvin-feeds/navier-stokes.yaml`
- `problems/navier-stokes/marvin-ingest-notes.yaml`
- `/Users/thomasbirnie/Desktop/ToE/ToE/mpp-ns/theorem-construction/weighted-exact-projection-resonant-shell-theorem-candidate.md`

## Boundary Rule

Everything beyond the grounded core is machine extension until it survives falsification and promotion.
