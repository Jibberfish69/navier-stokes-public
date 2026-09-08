# Nonlinear Closure Source-Pack

## Target Obligation

- `debt-frontier-nonlinear-tensor-closure-u-n-tensor-u-n-u-tensor-u-on-the-classical-equation`
- `Frontier: Nonlinear tensor closure `u^(n) tensor u^(n) -> u tensor u` on the classical equation`

## Exact Nonlinear Limit Statement

Let `u^(n)` be a classical approximation family on `(0,T) x R^3` solving the **same** incompressible Navier-Stokes equation, sharing the divergence-free initial data class, and carrying the uniform energy, temporal derivative, and scale-barrier tail control assumed in the current compactness package. After extracting a subsequence, there exists a limit `u` such that for every fixed radius `R`, `u^(n) -> u` strongly in `L^2(0,T;L^2(B_R))`. The nonlinear closure claim is that under these hypotheses

```text
u^(n) ⊗ u^(n) -> u ⊗ u
```

strongly in `L^1(0,T;L^1(B_R))` for every ball `B_R`, hence as a distributional tensor and as the nonlinear convection term in the classical weak formulation.

## Where Compactness Feeds the Closure

The compactness package documented in `/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/compactness-package.md` (and summarized in `/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/bridge-memos/compactness.md`) upgrades the weak spacetime control to local strong `L^2`. Those strong local convergences are the only feed for the closure: the first factor in the tensor difference carries the `u^(n) - u` strong convergence, and the second factor remains uniformly bounded in `L^2_t L^2_x` by the energy surface, so the product shrinks to zero in `L^1_t L^1_loc,x`.

This is the same approximation surface described in the scale-barrier source pack, so the closure interface is tightly anchored to the high-frequency decay without ever leaving the classical equation.

## Product Space Needed for the Nonlinear Term

The target product space is `L^1(0,T;L^1(B_R))` for each radius `R`, which follows from combining:

1. Uniform `L^∞(0,T;L^2_x)` energy control to bound each tensor factor;
2. Strong convergence in `L^2((0,T);L^2(B_R))` to zero out the difference factor;
3. A local integrability upgrade for the pressure/forcing terms so no exotic Sobolev traces are introduced at this step.

If the same convergence can be upgraded to `L^1_t L^{3/2}_x` locality, that is even stronger, but `L^1_t L^1_loc` is the minimal referee-level space that lets the nonlinear term be inserted into the weak formulation on the same surface.

## What Is Still Missing

- A fully spelled-out subsequence selection on the fixed classical approximation scheme so that the strong convergence used above is anchored to the exact theorem surface rather than to sliding regularizations.
- An explicit verification that the resulting limit `u` still solves the classical Navier-Stokes equation (pressure recovery, divergence-free limit, and boundaryless domain bookkeeping).
- Pressure-related integrability statements ensuring that `u^(n) ⊗ u^(n)` actually converges in the desired product space without invoking auxiliary modified dynamics.

## Excluding Hidden Modified-Equation Work

All objects and estimates in this pack live on the **classical** equation: the approximation family must not be defined only for a hyperviscous, filtered, or otherwise smoothed surrogate. Any smoothing used during the proof must be removable, and every tail control input must be re-proven for the classical sequence itself, as emphasized in the source frontier realistic boundary (`source-frontier.yaml`) and in the scale-barrier source pack (§ `theorem interface`). Hidden modified equations are therefore excluded by construction: the tape is cut as soon as the classical limit is asserted, and no new PDE is introduced to carry the nonlinear closure burden.

## Local Anchors

- `/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/compactness-package.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/bridge-memos/compactness.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/scale-barrier-source-pack.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/spine.md`
