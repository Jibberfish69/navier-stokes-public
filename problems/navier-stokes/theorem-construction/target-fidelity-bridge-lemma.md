# Target-Fidelity Bridge Lemma

## Role

This lemma discharges the first bridge in the Navier-Stokes theorem chain: why success for a regularized or morphic-regularized system is not itself a solution of the classical Clay target.

## Statement

Let the theorem target be the classical three-dimensional incompressible Navier-Stokes equation on the admissible data class fixed in the paper. Suppose a separate argument establishes global smoothness for a modified equation obtained by adding extra dissipation, hyper-viscosity, morphic smoothing, or any other non-classical term. Then that result does not prove the classical target unless one also proves, on the same admissibility surface, that the modified solutions converge back to a smooth solution of the original equation with all theorem-critical bounds preserved in the limit.

Equivalently: theorem-target fidelity forbids counting modified-equation smoothness as closure of the original Navier-Stokes problem.

## Proof Sketch

1. The theorem target fixes both the equation and the admissible data surface.
2. Any added dissipation or surrogate term changes the dynamical system being solved.
3. A proof for that altered system therefore proves regularity for the altered system only.
4. To transfer the result back to the classical equation, one needs a same-surface limit theorem showing that the extra term becomes inessential while the regularity-critical bounds survive.
5. Without that transfer theorem, the modified-equation success remains diagnostic, not theorem-bearing.

## Consequence For The Route

Once target fidelity is imposed, the surviving route has to work directly on the classical equation. That is why the remaining proof must be built from classical energy control, classical cascade suppression, classical compactness, and classical gradient control rather than from regularization success.
