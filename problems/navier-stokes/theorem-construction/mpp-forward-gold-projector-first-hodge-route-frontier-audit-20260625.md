---
theorem_id: forward-gold-projector-first-hodge-route-frontier-audit-20260625
status: projector-first-route-accepted-pressure-sector-closed-primitive-pls-driver-remains
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Audits the projector-first Hodge route against the live full-clock frontier.
  The route is correct: pressure is eliminated before differentiation, so
  pressure is not a top-order dynamic variable and the old pressure-graph
  driver is demoted.  The moving material Hodge projector produces only normal
  constraint motion, while tangent energy changes through the moving material
  Stokes form.  Since \(\dot G=-2ASA^\top\), that tangent motion is strain/
  metric service on the same transported packet.  This closes the pressure/
  Hodge/collar sector as a sector reduction.  It does not by itself prove the
  finite graph-compatible PLS clock; the remaining rectified positive action is
  the primitive low-high material strain/projector/collar driver already
  identified in the live edge.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-projector-first-pressure-elimination-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rdriver-strain-vorticity-recombination-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-driver-post-tangent-normal-closure-audit-20260625.md
---

# Projector-First Hodge Route Frontier Audit

Date: 2026-06-25

## 0. Result

The projector-first route is the right pressure route.

Start with the material operators

```math
D_Aw=\operatorname{div}_a(Aw),
\qquad
\mathcal G_A\pi=A^\top\nabla_a\pi,
\qquad
L_A=D_A\mathcal G_A,
```

and

```math
\mathbb P_A=I-\mathcal G_A L_A^{-1}D_A.
```

Applying \(\mathbb P_A\) to the material equation

```math
\partial_t v+\mathcal G_Aq
=
\nu\operatorname{div}_a(G\nabla_av),
\qquad
D_Av=0
```

gives

```math
\nabla_t^A v:=\mathbb P_A\partial_t v
=
\nu\mathbb P_A\operatorname{div}_a(G\nabla_av).
```

So pressure is no longer a differentiated top-order variable.  It is the
constraint multiplier enforcing \(D_Av=0\).

This closes the old pressure-graph mistake:

```math
\text{do not differentiate }L_Gq=R\text{ as the primary clock equation.}
```

The correct dynamic object is the moving constrained bundle
\(\ker D_A\) and its material Stokes form.

## 1. Projector motion is normal constraint motion

Differentiate

```math
\mathbb P_A=I-\mathcal G_A L_A^{-1}D_A.
```

Then

```math
\dot{\mathbb P}_A
=
-\dot{\mathcal G}_AL_A^{-1}D_A
+\mathcal G_AL_A^{-1}\dot L_AL_A^{-1}D_A
-\mathcal G_AL_A^{-1}\dot D_A.
```

On a constrained field \(v\), \(D_Av=0\), so

```math
\dot{\mathbb P}_Av
=
-\mathcal G_AL_A^{-1}\dot D_Av.
```

Since

```math
\dot D_Av=\operatorname{div}_a(\dot A\,v),
\qquad
\dot A=-AB,
\qquad
B=\nabla_xu,
```

we obtain

```math
\dot{\mathbb P}_Av
=
\mathcal G_AL_A^{-1}\operatorname{div}_a(ABv)
```

up to the fixed sign convention for \(L_A\).

The right side lies in the gradient/normal range.  For every tangent field
\(h\in\ker D_A\),

```math
\langle \dot{\mathbb P}_Av,h\rangle=0
```

with the same material Hodge pairing and boundary/collar normalization.

Thus projector motion does not create an independent tangent pressure clock.

## 2. Tangent motion is moving Stokes-form motion

The tangent energy is carried by the material Stokes form

```math
\mathfrak a_A(h,h)=\int G\nabla_ah:\nabla_ah\,da,
\qquad
G=AA^\top .
```

The coefficient identity is

```math
\dot G
=
\dot A A^\top+A\dot A^\top
=
-2ASA^\top .
```

Therefore

```math
\dot{\mathfrak a}_A(h,h)
=
\int \dot G\nabla_ah:\nabla_ah\,da
+\text{transport/collar commutators}.
```

The principal positive part is strain/metric service:

```math
[\dot{\mathfrak a}_A(h,h)]_+
\le
C\lambda_+(S)\mathfrak a_A(h,h)
+r_A(h,h).
```

The antisymmetric part of \(B=S+\Omega\) is not a metric-growth source here.
It is gauge/skew frame rotation at the \(G=AA^\top\) level, with only
Hodge/frame commutators left in the same packet bookkeeping.

## 3. Shell consequence

Let

```math
\Pi_j(t)=\chi_j(\mathcal S_A(t))\mathbb P_A(t),
\qquad
h_j=\Pi_jv,
```

where \(\mathcal S_A\) is the material Stokes operator on \(\ker D_A\).  The
shell equation has the form

```math
{d\over dt}{1\over2}\|h_j\|_2^2
+\nu\langle \mathcal S_Ah_j,h_j\rangle
=
\langle \dot\Pi_jv,h_j\rangle
+r_j^{legal}.
```

The pressure force is absent from the principal tangent equation.  The moving
selector/Stokes contribution satisfies the same split already installed:

```math
\left[\langle \dot\Pi_jv,h_j\rangle\right]_+
\le
\varepsilon\nu\langle \mathcal S_Ah_j,h_j\rangle
+C e_j\lambda_+(S)\mathbf 1_{\{\lambda_+(S)>\delta2^{2j}\}}
+r_j^{legal}.
```

The subheat part is absorbed by viscosity.  The superheat part is the
strain/frame material-service coordinate, not a pressure source.

## 4. Frontier placement

The projector-first route proves the pressure/Hodge/collar sector reduction:

```math
d\Omega_N^{press/RHS}
+d\Omega_N^{collar}
\le
C_Nd\Omega_N^{rel.defect}
+C_Nd\Omega_N^{Hodge/projector}
+C_Nd\Omega_N^{strain}
+C_NdD_N^{vis}
+dR_N^{legal}.
```

The remaining frontier is still the graph-compatible primitive PLS driver:

```math
\int_0^{T_*}
\sum_jw_j
\left[
\left\langle
H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
\right]_+dt
<\infty .
```

Here \(\mathcal M_{<j-C,N}\) is the same moving low material deformation
coefficient: strain, material Stokes/projector motion, collar motion,
coefficient/frame motion, annular stress service, and viscous graph service.

So the projector-first route removes the false pressure obstruction.  It does
not create a standalone entropy for the primitive low-high material deformation
driver.  The live closure remains a bounded-below same-material storage, or an
equivalent finite-action theorem, for that full graph-compatible primitive PLS
clock.
