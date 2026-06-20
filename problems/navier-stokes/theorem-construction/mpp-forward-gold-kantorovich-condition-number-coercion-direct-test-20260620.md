---
ns_viewer:
  theorem_id: forward-gold-kantorovich-condition-number-coercion-direct-test-20260620
  status: direct-test-complete-not-independent-supplier
  proof_role: forward_gold_condition_number_coercion_test
  logical_landing_node: unweighted_terminal_critical_action_reserve
  edge_effect: "Tests whether Kantorovich-type condition-number inequalities can turn moving-frame or affine-metric participation into the missing heat-scale coercion. They cannot produce the needed condition-number bound; they only spend one once terminal strain-tail/action control is already available."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-affine-readout-condition-number-budget-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-lagrangian-deformation-coercion-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-deformation-path-action-equivalence-direct-test-20260620.md
  downstream_consequence: "Kantorovich is useful as a metric-conversion lemma under a preinstalled uniform condition number. It is not a forward-gold supplier for the terminal heat-scale pulse. The missing input remains terminal strain-tail integrability, deformation path action/no-waste, or the unweighted selected critical-action reserve on the actual carrier."
---

# MPP Forward-Gold Kantorovich / Condition-Number Coercion Direct Test

Date: 2026-06-20

## Status

Direct test complete.  Kantorovich-type inequalities do not close the
forward-gold heat-scale obstruction from current inputs.

They say:

```math
\text{bounded condition number}
\Longrightarrow
\text{primal and dual quadratic readouts are comparable}.
\tag{KCT.1}
```

They do not say:

```math
\text{Navier--Stokes participation}
\Longrightarrow
\text{bounded terminal condition number}.
\tag{KCT.2}
```

The missing bound in `(KCT.2)` is exactly the terminal strain-tail/action
budget already isolated by the affine, Lagrangian, and deformation-path tests.

## 1. The Kantorovich inequality in the relevant form

Let \(G\) be a positive definite \(3\times3\) matrix with eigenvalues in
\([m,M]\), \(0<m\le M\).  For every nonzero vector \(\xi\),

```math
\langle G\xi,\xi\rangle
\langle G^{-1}\xi,\xi\rangle
\le
{(M+m)^2\over4Mm}|\xi|^4.
\tag{KCT.3}
```

Writing

```math
\kappa(G):={M\over m},
\tag{KCT.4}
```

the constant is

```math
K(\kappa)
=
{(\kappa+1)^2\over4\kappa}.
\tag{KCT.5}
```

Thus Kantorovich gives a useful comparison only after \(\kappa(G)\) is
uniformly bounded.  As \(\kappa(G)\to\infty\),

```math
K(\kappa)\sim {\kappa\over4}.
\tag{KCT.6}
```

So the inequality degenerates exactly when the moving metric becomes
anisotropic.

## 2. Moving-frame interpretation

Let \(F(t)\) be a material deformation gradient:

```math
\dot F(t)=\nabla u(X(t),t)F(t),
\qquad
\det F(t)=1.
\tag{KCT.7}
```

The induced metric is

```math
G(t)=F(t)^TF(t).
\tag{KCT.8}
```

The condition number of \(G\) is the square of the condition number of \(F\):

```math
\kappa(G(t))=\kappa(F(t))^2.
\tag{KCT.9}
```

Let

```math
S(t)={1\over2}\left(\nabla u+\nabla u^T\right)(X(t),t).
\tag{KCT.10}
```

The standard singular-value differential comparison gives

```math
{d\over dt}\log \kappa(F(t))
\le
2\|S(t)\|_{op}.
\tag{KCT.11}
```

Therefore

```math
\log \kappa(G(t))
\le
\log\kappa(G(0))
+
4\int_0^t\|S(\tau)\|_{op}\,d\tau.
\tag{KCT.12}
```

So a uniform Kantorovich constant follows from a terminal strain-tail bound:

```math
\int_0^{T_*}\|S(\tau)\|_{op}\,d\tau<\infty.
\tag{KCT.13}
```

That is not a new estimate.  It is the same condition-number / affine
deformation comparability service already isolated in
`AffineReadoutConditionNumberBudget.A`.

## 3. Heat-scale counter-scaling

Take a trace-free strain matrix \(S_0\ne0\) and put, on a packet of radius
\(r\) and heat time \(r^2\),

```math
S_r(t,x)=r^{-2}S_0.
\tag{KCT.14}
```

Along a material trajectory inside the packet,

```math
\int_{I_r}\|S_r(t)\|_{op}\,dt
=
r^{-2}\|S_0\|_{op}r^2
=
\|S_0\|_{op}.
\tag{KCT.15}
```

Thus one heat-scale event can change the deformation condition number by an
order-one factor.

The physical \(L^2\) strain cost of the same event is radius-discounted:

```math
\int_{I_r}\int_{B_r}|S_r|^2\,dx\,dt
\simeq
r^{-4}\,r^3\,r^2
=
r.
\tag{KCT.16}
```

Along a dyadic terminal chain \(r_j=2^{-j}\),

```math
\sum_j r_j<\infty,
\tag{KCT.17}
```

while the unweighted deformation/condition-number action can have one
order-one event at every scale:

```math
\sum_j
\int_{I_{r_j}}\|S_{r_j}(t)\|_{op}\,dt
=\infty.
\tag{KCT.18}
```

This is the same radius discount already seen in the material stress-work,
deformation-path, and selected critical-action ledgers.

## 4. Endpoint condition number can also miss path action

Endpoint Kantorovich control is weaker than path action.  Let \(S_0\) be
trace-free and apply \(S_0\) for half a normalized heat window and \(-S_0\) for
the second half.  In normalized time,

```math
\dot F=S_0F
\quad\text{then}\quad
\dot F=-S_0F.
\tag{KCT.19}
```

The endpoint may satisfy

```math
F_{\rm end}=I,
\qquad
G_{\rm end}=I,
\qquad
\kappa(G_{\rm end})=1.
\tag{KCT.20}
```

But the path action is positive:

```math
\int\|S(s)\|_{op}\,ds>0,
\qquad
\int\|S(s)\|_{op}^2\,ds>0.
\tag{KCT.21}
```

Thus an endpoint metric comparison, even with perfect Kantorovich constant at
the endpoint, cannot pay the accumulated selected terminal action.  The route
needs path control, not only endpoint metric control.

## 5. Consequence for forward gold

Kantorovich can be used safely as a consumer lemma:

```math
\boxed{
\text{UniformConditionNumber.A}
\Longrightarrow
\text{moving-metric and fixed-metric readouts are comparable}.
}
\tag{KCT.22}
```

But the theorem needed by forward gold is the producer:

```math
\boxed{
\text{terminal same-fluid participation}
\Longrightarrow
\text{UniformConditionNumber.A or unweighted path action}.
}
\tag{KCT.23}
```

Current Navier--Stokes inputs do not prove `(KCT.23)`.  Finite energy,
incompressibility, and physical dissipation allow the heat-scale model
`(KCT.14)--(KCT.18)`.  Endpoint metric control also allows the cancellation
model `(KCT.19)--(KCT.21)`.

## Exact reduction

The Kantorovich route reduces to one of the already isolated real suppliers:

```math
\boxed{
\text{TerminalCollarStrainIntegrability.A}
}
\tag{KCT.24}
```

or

```math
\boxed{
\text{UnweightedDeformationPathAction.A}
}
\tag{KCT.25}
```

or, in the native selected-carrier language,

```math
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A}.
}
\tag{KCT.26}
```

## Verdict

Kantorovich is useful once the metric is already uniformly nondegenerate.  It
does not create that nondegeneracy.

For the terminal heat-scale packet, the condition-number/action cost can be
order one in normalized variables while its physical strain-square cost is
only order \(r\).  Therefore Kantorovich does not supply a new forward-gold
coercion theorem; it returns to terminal strain-tail integrability,
deformation path action, selected critical-strain Carleson control, strict
no-waste, or the unweighted selected critical-action reserve itself.
