---
theorem_id: forward-gold-selected-critical-strain-goodlambda-strain-equation-direct-test-20260626
status: direct-test-fails-reduces-to-pressure-hessian-balanced-affine-tail-exclusion
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge: SelectedCriticalStrainCapacityGoodLambda.A
refined_hinge: PressureHessianBalancedAffineTailExclusion.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-critical-strain-capacity-levelset-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-packet-strain-tower-coercion-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-betchov-strain-vorticity-net-vs-rectified-clock-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-crossband-decay-core-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-localized-affine-global-matching-scaling-audit-20260626.md
---

# Selected Critical Strain Good-Lambda Strain-Equation Direct Test

The current hinge is:

```text
SelectedCriticalStrainCapacityGoodLambda.A
```

It asks for a strict level-tail improvement for the selected laminar
strain/pressure-Hessian field.  This note tests whether the strain equation,
pressure incompressibility, or Betchov identity supplies that strict
good-lambda gain.

## 1. Exact strain equation

Let:

```math
B=\nabla u,
\qquad
S={B+B^T\over2},
\qquad
\Omega={B-B^T\over2}.
```

For incompressible Navier--Stokes:

```math
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0,
```

the strain equation is:

```math
(D_t-\nu\Delta)S
=
-(S^2+\Omega^2)-\nabla^2p
```

with:

```math
-\Delta p=\operatorname{tr}(S^2+\Omega^2).
```

Thus pressure is not detached.  It is the elliptic incompressibility partner
of the same strain/vorticity packet.

## 2. Top-eigenvalue level test

Let \(e\) be a top strain eigenvector with:

```math
Se=\lambda e.
```

At a smooth point where the eigenvalue is simple:

```math
D_t\lambda
=
-\lambda^2
+|\Omega e|^2
-e\cdot\nabla^2p\,e
+\nu e\cdot\Delta S\,e.
```

The positive high-level strain lobe is therefore sustained by the coupled
pressure-Hessian/vorticity/viscous packet.  The equation gives attachment to
the same participation law, but it does not give a one-sided decay estimate
for the positive level set:

```math
\{ \lambda>\Lambda \}.
```

The pressure-Hessian term has the exact wrong freedom for a direct De Giorgi or
good-lambda argument: it can cancel the damping term \(-\lambda^2\) on the
selected lobe.

## 3. Calderon-Zygmund pressure does not add the missing exponent

The pressure Hessian is a singular integral of the quadratic gradient source:

```math
\nabla^2p
=
\mathcal R_i\mathcal R_j
\bigl(\partial_i u_k\,\partial_j u_k\bigr)
```

schematically, after harmless trace conventions.

Energy gives:

```math
\nabla u\in L^2_{t,x},
```

so the pressure source is only:

```math
(\nabla u)^2\in L^1_{t,x}.
```

Calderon-Zygmund does not turn an \(L^1\) source into the strict capacity-tail
decay needed for:

```math
\int |\Sigma|^{5/2}\,d\mu_{\rm cap}<\infty.
```

At best it keeps the pressure Hessian tied to the same critical source.  It
does not produce the missing half-power beyond \(L^2\) strain.

## 4. Betchov gives signed net control, not rectified level gain

On the periodic whole packet, the Betchov identity gives:

```math
\int \operatorname{tr}(S^3)\,dx
=
-{3\over4}\int \omega\cdot S\omega\,dx.
```

This is a real incompressibility identity.  It says global signed strain
self-amplification and signed vorticity stretching are the same ledger.

The selected critical strain capacity tail is a positive/rectified object.  It
requires control of high positive levels:

```math
\mu_{\rm cap}\{|\Sigma|>\lambda\}
```

or:

```math
\int |\Sigma|^{5/2}\,d\mu_{\rm cap}.
```

Signed Betchov cancellation can be large while positive and negative lobes
both have large rectified mass.  Therefore Betchov does not yield the strict
good-lambda coefficient.

## 5. Affine pressure-Hessian balance saturates the test

The local affine profile:

```math
u(x,t)=A(t)x,
\qquad
\operatorname{tr}A(t)=0,
\qquad
A(t)=A(t)^T,
```

with:

```math
p(x,t)
=
-{1\over2}x\cdot(\dot A(t)+A(t)^2)x
```

satisfies the local incompressible Navier--Stokes equation with \(\Delta u=0\).
Here the pressure Hessian is exactly:

```math
\nabla^2p=-(\dot A+A^2).
```

So an arbitrary smooth trace-free strain-time profile can be balanced by the
pressure Hessian at the local material-packet level.  Localizing and matching
periodically keeps raw heat-scale costs radius-weighted while the normalized
strain action remains order one.

Thus the strain equation does not forbid the critical half-tail profile.  It
identifies the pressure-Hessian partner that allows it.

## 6. Result

The direct strain-equation / pressure / Betchov route does not prove:

```text
SelectedCriticalStrainCapacityGoodLambda.A.
```

It reduces the hinge to the global original-history exclusion of the only
surviving model:

```text
PressureHessianBalancedAffineTailExclusion.A
```

Plain statement:

For one original smooth transported Navier-Stokes history, exclude a selected
laminar high-ratio terminal half-tail made of pressure-Hessian-balanced affine
strain packets whose raw heat/energy/collar costs are summable while their
selected \(|\Sigma|^{5/2}\) capacity bills have the critical divergent tail.

This is not a local strain-equation theorem.  It must use a genuinely global
same-history constraint, or a bounded-below same-material reserve that sees the
pressure-Hessian-balanced affine tail before rectification.
