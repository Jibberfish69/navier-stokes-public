# Euler Compactness Discharge Source Pack

## Frontier Target

Discharge the compactness / nonlinear-closure bridge on one fixed Euler
approximation family:

1. strong local compactness of the approximation family;
2. convergence of the nonlinear tensor to the exact Euler limit tensor.

## Euler Setup

Fix one Euler approximation family once and for all. Let `(u^{(n)},p^{(n)})`
solve

```math
\partial_t u^{(n)} + (u^{(n)}\cdot\nabla)u^{(n)} + \nabla p^{(n)} = 0,
\qquad
\nabla\cdot u^{(n)} = 0.
```

The mirror keeps the parent low/high compactness architecture, but the uniform
inputs can no longer be justified by viscous smoothing alone.

## Mediating Object

- `euler_nonlinear_compactness_upgrade_operator`
- domain: a fixed Euler approximation family together with a weak limit
  candidate `u`
- codomain: `\mathfrak K_{R,N}^E[u^{(n)},u]`
- theorem interface: vanishing defect implies strong local `L^2` convergence
  and tensor closure on the same Euler surface

Define

```math
\mathfrak K_{R,N}^E[u^{(n)},u]
:=
\limsup_{n\to\infty}\|P_{<N}(u^{(n)}-u)\|_{L^2(0,T;L^2(B_R))}
+
\sup_m\|P_{\ge N}u^{(m)}\|_{L^2(0,T;L^2(B_R))}.
```

## Honest Boundary

The parent Aubin-Lions-style compactness step does not come for free on Euler,
because its uniform bounds and time-derivative control still have to be earned
on a genuine Euler family. So the compactness architecture survives in theorem
shape, but it remains conditional on an Euler control family strong enough to
supply:

1. time compactness in a negative norm;
2. low-mode compactness on one fixed family;
3. the scale-barrier tail bound.

## Local Anchors

- [nonlinear-closure-discharge-source-pack.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/nonlinear-closure-discharge-source-pack.md)
- [scale-barrier-source-pack.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/scale-barrier-source-pack.md)
- [theorem-construction/route-b-euler-closure-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/route-b-euler-closure-theorem.md)
