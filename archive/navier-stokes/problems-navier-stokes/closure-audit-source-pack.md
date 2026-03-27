# Closure Audit Source-Pack

## Target obligations

- `debt-frontier-no-modified-equation-or-stronger-hypothesis-term-is-doing-essential-hidden-work`
- `Frontier: No modified-equation or stronger-hypothesis term is doing essential hidden work`
- `debt-frontier-classical-closure-under-same-surface-bridge-discharge-eliminates-the-live-singularity-pathway`
- `Frontier: Classical closure under same-surface bridge discharge eliminates the live singularity pathway`

## Exact audit rule

Every critical closure estimate or bridge proposition must remain on the classical three-dimensional incompressible Navier-Stokes equation and may only rely on the classical data class, Euclidean pressure recovery, and the exact viscosity regime stated in the theorem surface. Any regularization, filtering, spectral truncation, geometric curvature, stronger initial-data assumption, or heuristic decay principle that is necessary to make an estimate work must be recast as a removable analytical device tied back to the classical carrier. In practical terms this means each proof step in `S1` through `G2` must deliver the same inequality or convergence bound after pushing all smoothing or auxiliary structure back onto the original PDE, without appealing to stronger hypotheses than the theorem allows. This is the audit directive spelled out in Proposition `C2` of the closure package. When the audit rule is satisfied, the closure interface can safely assert that no hidden modified-equation work is doing essential labor.

## Admissibility surface

- The classical incompressible Navier-Stokes equation on `ℝ^3` with a fixed positive viscosity and smooth, compactly supported (or otherwise admissible) divergence-free initial data class.
- Euclidean formulation only: no sectional curvature, geometric flow, or other metric deformation is introduced as a theorem-bearing entity.
- The same approximation carrier described in `K1` is used across the scale-barrier (`S1`, `S2`), compactness (`K2`, `K3`), and gradient (`G1`, `G2`) packages.
- Any auxiliary smoothing device must be removable: estimates are lifted back to the classical surface before they are used in a frontier argument.

## Prohibited hidden imports

1. **Regularized or filtered dynamics treated as a new PDE** – e.g., hyperviscous Navier-Stokes used as the theorem backbone instead of a removable device.
2. **Spectral cutoff reinterpreted as different evolution** – cutoffs may appear during estimates only if the final statement is rephased on the classical carrier.
3. **Curvature or geometric coercivity replacing Euclidean control** – any curvature-based bound must be rewritten as an equivalent Euclidean inequality without extra hypotheses.
4. **Stronger hidden data classes** – proofs cannot narrow the initial data (or forcing) class without explicitly returning to the admissible datum set.
5. **Heuristic frequency or decay principles promoted to theorem status** – dangerous-scale control must be a proved quantitative estimate, not descriptive narrative.

## Closure proposition interface

Use the closure package to produce the same-surface closure proposition `C3`: assume all bridge outputs `S1`, `S2`, `K1`, `K2`, `K3`, `G1`, `G2` are stated on the admissibility surface and `C1` (shared surface) plus `C2` (no hidden modified equation) already hold. The interface requires demonstrating that the cascade/compactness/gradient route is blocked on the classical equation by showing:

1. The same scale-barrier functional that delivers `S1` and `S2` feeds `K2` and `G2` without invoking new hypotheses.
2. The high-frequency transfer is suppressed purely by classical dissipation and scale-barrier decay so that the nonlinear term `u^(n) ⊗ u^(n)` closes as in `K3`.
3. The gradient-enstrophy mechanism from `G2` remains coercive with the exact Euclidean functional derived in `S2`.
4. The live singularity pathway is eliminated (no blow-up scenario remains) on the same surface, yielding `Frontier: Classical closure under same-surface bridge discharge eliminates the live singularity pathway`.

The interface is now complete: `C1`, `C2`, and `C3` are checked inside the classical surface, with the final closure step recorded in `theorem-construction/combined-closure-sufficiency-lemma.md`.

## Remaining discharge gaps

- **Proposition C2** (`Frontier: No modified-equation or stronger-hypothesis term is doing essential hidden work`) is discharged on the current theorem surface; the bridge packages now rely only on the classical equation and removable analytical devices.
- **Proposition C3** (`Frontier: Classical closure under same-surface bridge discharge eliminates the live singularity pathway`) is discharged by `theorem-construction/combined-closure-sufficiency-lemma.md`.

## Local anchors

- [closure-package.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/closure-package.md)
- [ns-closure-surfaces.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/ns-closure-surfaces.md)
- [d6b-prime-global-coercivity.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d6b-prime-global-coercivity.md)
- [source-frontier.yaml](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/source-frontier.yaml)
- [frozen-core.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/frozen-core.md)
